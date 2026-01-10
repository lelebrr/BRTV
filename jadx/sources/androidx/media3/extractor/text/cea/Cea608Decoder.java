package androidx.media3.extractor.text.cea;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.flac.FlacConstants;
import androidx.media3.extractor.metadata.dvbsi.AppInfoTableDecoder;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleDecoderException;
import androidx.media3.extractor.text.SubtitleInputBuffer;
import androidx.media3.extractor.text.SubtitleOutputBuffer;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.media3.extractor.ts.TsExtractor;
import com.alibaba.fastjson.asm.Opcodes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class Cea608Decoder extends CeaDecoder {
    private static final int CC_FIELD_FLAG = 1;
    private static final byte CC_IMPLICIT_DATA_HEADER = -4;
    private static final int CC_MODE_PAINT_ON = 3;
    private static final int CC_MODE_POP_ON = 2;
    private static final int CC_MODE_ROLL_UP = 1;
    private static final int CC_MODE_UNKNOWN = 0;
    private static final int CC_TYPE_FLAG = 2;
    private static final int CC_VALID_FLAG = 4;
    private static final byte CTRL_BACKSPACE = 33;
    private static final byte CTRL_CARRIAGE_RETURN = 45;
    private static final byte CTRL_DELETE_TO_END_OF_ROW = 36;
    private static final byte CTRL_END_OF_CAPTION = 47;
    private static final byte CTRL_ERASE_DISPLAYED_MEMORY = 44;
    private static final byte CTRL_ERASE_NON_DISPLAYED_MEMORY = 46;
    private static final byte CTRL_RESUME_CAPTION_LOADING = 32;
    private static final byte CTRL_RESUME_DIRECT_CAPTIONING = 41;
    private static final byte CTRL_RESUME_TEXT_DISPLAY = 43;
    private static final byte CTRL_ROLL_UP_CAPTIONS_2_ROWS = 37;
    private static final byte CTRL_ROLL_UP_CAPTIONS_3_ROWS = 38;
    private static final byte CTRL_ROLL_UP_CAPTIONS_4_ROWS = 39;
    private static final byte CTRL_TEXT_RESTART = 42;
    private static final int DEFAULT_CAPTIONS_ROW_COUNT = 4;
    public static final long MIN_DATA_CHANNEL_TIMEOUT_MS = 16000;
    private static final int NTSC_CC_CHANNEL_1 = 0;
    private static final int NTSC_CC_CHANNEL_2 = 1;
    private static final int NTSC_CC_FIELD_1 = 0;
    private static final int NTSC_CC_FIELD_2 = 1;
    private static final int STYLE_ITALICS = 7;
    private static final int STYLE_UNCHANGED = 8;
    private static final String TAG = "Cea608Decoder";
    private int captionMode;
    private int captionRowCount;
    private List<Cue> cues;
    private boolean isCaptionValid;
    private boolean isInCaptionService;
    private long lastCueUpdateUs;
    private List<Cue> lastCues;
    private final int packetLength;
    private byte repeatableControlCc1;
    private byte repeatableControlCc2;
    private boolean repeatableControlSet;
    private final int selectedChannel;
    private final int selectedField;
    private final long validDataChannelTimeoutUs;
    private static final int[] ROW_INDICES = {11, 1, 3, 12, 14, 5, 7, 9};
    private static final int[] COLUMN_INDICES = {0, 4, 8, 12, 16, 20, 24, 28};
    private static final int[] STYLE_COLORS = {-1, -16711936, -16776961, -16711681, -65536, -256, -65281};
    private static final int[] BASIC_CHARACTER_SET = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, AppInfoTableDecoder.APPLICATION_INFORMATION_TABLE_ID, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632};
    private static final int[] SPECIAL_CHARACTER_SET = {174, Opcodes.ARETURN, PsExtractor.PRIVATE_STREAM_1, 191, 8482, Opcodes.IF_ICMPGE, Opcodes.IF_ICMPGT, 9834, 224, 32, 232, 226, 234, 238, 244, 251};
    private static final int[] SPECIAL_ES_FR_CHARACTER_SET = {Opcodes.INSTANCEOF, 201, 211, 218, 220, 252, 8216, Opcodes.IF_ICMPLT, 42, 39, 8212, Opcodes.RET, 8480, 8226, 8220, 8221, 192, 194, Opcodes.IFNONNULL, 200, 202, 203, 235, 206, 207, 239, 212, 217, 249, 219, 171, Opcodes.NEW};
    private static final int[] SPECIAL_PT_DE_CHARACTER_SET = {195, 227, 205, 204, 236, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, Opcodes.IF_ACMPEQ, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};
    private static final boolean[] ODD_PARITY_BYTE_TABLE = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};
    private final ParsableByteArray ccData = new ParsableByteArray();
    private final ArrayList<CueBuilder> cueBuilders = new ArrayList<>();
    private CueBuilder currentCueBuilder = new CueBuilder(0, 4);
    private int currentChannel = 0;

    /* compiled from: MyApplication */
    public static final class CueBuilder {
        private static final int BASE_ROW = 15;
        private static final int SCREEN_CHARWIDTH = 32;
        private int captionMode;
        private int captionRowCount;
        private int indent;
        private int row;
        private int tabOffset;
        private final List<CueStyle> cueStyles = new ArrayList();
        private final List<SpannableString> rolledUpCaptions = new ArrayList();
        private final StringBuilder captionStringBuilder = new StringBuilder();

        /* compiled from: MyApplication */
        public static class CueStyle {
            public int start;
            public final int style;
            public final boolean underline;

            public CueStyle(int i6, boolean z7, int i10) {
                this.style = i6;
                this.underline = z7;
                this.start = i10;
            }
        }

        public CueBuilder(int i6, int i10) {
            reset(i6);
            this.captionRowCount = i10;
        }

        private SpannableString buildCurrentLine() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.captionStringBuilder);
            int length = spannableStringBuilder.length();
            int i6 = 0;
            int i10 = -1;
            int i11 = -1;
            int i12 = 0;
            int i13 = -1;
            int i14 = -1;
            boolean z7 = false;
            while (i6 < this.cueStyles.size()) {
                CueStyle cueStyle = this.cueStyles.get(i6);
                boolean z10 = cueStyle.underline;
                int i15 = cueStyle.style;
                if (i15 != 8) {
                    boolean z11 = i15 == 7;
                    if (i15 != 7) {
                        i14 = Cea608Decoder.STYLE_COLORS[i15];
                    }
                    z7 = z11;
                }
                int i16 = cueStyle.start;
                i6++;
                if (i16 != (i6 < this.cueStyles.size() ? this.cueStyles.get(i6).start : length)) {
                    if (i10 != -1 && !z10) {
                        setUnderlineSpan(spannableStringBuilder, i10, i16);
                        i10 = -1;
                    } else if (i10 == -1 && z10) {
                        i10 = i16;
                    }
                    if (i11 != -1 && !z7) {
                        setItalicSpan(spannableStringBuilder, i11, i16);
                        i11 = -1;
                    } else if (i11 == -1 && z7) {
                        i11 = i16;
                    }
                    if (i14 != i13) {
                        setColorSpan(spannableStringBuilder, i12, i16, i13);
                        i13 = i14;
                        i12 = i16;
                    }
                }
            }
            if (i10 != -1 && i10 != length) {
                setUnderlineSpan(spannableStringBuilder, i10, length);
            }
            if (i11 != -1 && i11 != length) {
                setItalicSpan(spannableStringBuilder, i11, length);
            }
            if (i12 != length) {
                setColorSpan(spannableStringBuilder, i12, length, i13);
            }
            return new SpannableString(spannableStringBuilder);
        }

        private static void setColorSpan(SpannableStringBuilder spannableStringBuilder, int i6, int i10, int i11) {
            if (i11 == -1) {
                return;
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i11), i6, i10, 33);
        }

        private static void setItalicSpan(SpannableStringBuilder spannableStringBuilder, int i6, int i10) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i6, i10, 33);
        }

        private static void setUnderlineSpan(SpannableStringBuilder spannableStringBuilder, int i6, int i10) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i6, i10, 33);
        }

        public void append(char c5) {
            if (this.captionStringBuilder.length() < 32) {
                this.captionStringBuilder.append(c5);
            }
        }

        public void backspace() {
            int length = this.captionStringBuilder.length();
            if (length > 0) {
                this.captionStringBuilder.delete(length - 1, length);
                for (int size = this.cueStyles.size() - 1; size >= 0; size--) {
                    CueStyle cueStyle = this.cueStyles.get(size);
                    int i6 = cueStyle.start;
                    if (i6 != length) {
                        return;
                    }
                    cueStyle.start = i6 - 1;
                }
            }
        }

        public Cue build(int i6) {
            float f;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i10 = 0; i10 < this.rolledUpCaptions.size(); i10++) {
                spannableStringBuilder.append((CharSequence) this.rolledUpCaptions.get(i10));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) buildCurrentLine());
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int i11 = this.indent + this.tabOffset;
            int length = (32 - i11) - spannableStringBuilder.length();
            int i12 = i11 - length;
            if (i6 == Integer.MIN_VALUE) {
                i6 = (this.captionMode != 2 || (Math.abs(i12) >= 3 && length >= 0)) ? (this.captionMode != 2 || i12 <= 0) ? 0 : 2 : 1;
            }
            if (i6 != 1) {
                if (i6 == 2) {
                    i11 = 32 - length;
                }
                f = ((i11 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f = 0.5f;
            }
            int i13 = this.row;
            if (i13 > 7) {
                i13 -= 17;
            } else if (this.captionMode == 1) {
                i13 -= this.captionRowCount - 1;
            }
            return new Cue.Builder().setText(spannableStringBuilder).setTextAlignment(Layout.Alignment.ALIGN_NORMAL).setLine(i13, 1).setPosition(f).setPositionAnchor(i6).build();
        }

        public boolean isEmpty() {
            return this.cueStyles.isEmpty() && this.rolledUpCaptions.isEmpty() && this.captionStringBuilder.length() == 0;
        }

        public void reset(int i6) {
            this.captionMode = i6;
            this.cueStyles.clear();
            this.rolledUpCaptions.clear();
            this.captionStringBuilder.setLength(0);
            this.row = 15;
            this.indent = 0;
            this.tabOffset = 0;
        }

        public void rollUp() {
            this.rolledUpCaptions.add(buildCurrentLine());
            this.captionStringBuilder.setLength(0);
            this.cueStyles.clear();
            int iMin = Math.min(this.captionRowCount, this.row);
            while (this.rolledUpCaptions.size() >= iMin) {
                this.rolledUpCaptions.remove(0);
            }
        }

        public void setCaptionMode(int i6) {
            this.captionMode = i6;
        }

        public void setCaptionRowCount(int i6) {
            this.captionRowCount = i6;
        }

        public void setStyle(int i6, boolean z7) {
            this.cueStyles.add(new CueStyle(i6, z7, this.captionStringBuilder.length()));
        }
    }

    public Cea608Decoder(String str, int i6, long j10) {
        if (j10 != C.TIME_UNSET) {
            Assertions.checkArgument(j10 >= MIN_DATA_CHANNEL_TIMEOUT_MS);
            this.validDataChannelTimeoutUs = j10 * 1000;
        } else {
            this.validDataChannelTimeoutUs = C.TIME_UNSET;
        }
        this.packetLength = MimeTypes.APPLICATION_MP4CEA608.equals(str) ? 2 : 3;
        if (i6 == 1) {
            this.selectedChannel = 0;
            this.selectedField = 0;
        } else if (i6 == 2) {
            this.selectedChannel = 1;
            this.selectedField = 0;
        } else if (i6 == 3) {
            this.selectedChannel = 0;
            this.selectedField = 1;
        } else if (i6 != 4) {
            Log.w(TAG, "Invalid channel. Defaulting to CC1.");
            this.selectedChannel = 0;
            this.selectedField = 0;
        } else {
            this.selectedChannel = 1;
            this.selectedField = 1;
        }
        setCaptionMode(0);
        resetCueBuilders();
        this.isInCaptionService = true;
        this.lastCueUpdateUs = C.TIME_UNSET;
    }

    private static char getBasicChar(byte b8) {
        return (char) BASIC_CHARACTER_SET[(b8 & 127) - 32];
    }

    private static int getChannel(byte b8) {
        return (b8 >> 3) & 1;
    }

    private List<Cue> getDisplayCues() {
        int size = this.cueBuilders.size();
        ArrayList arrayList = new ArrayList(size);
        int iMin = 2;
        for (int i6 = 0; i6 < size; i6++) {
            Cue cueBuild = this.cueBuilders.get(i6).build(Integer.MIN_VALUE);
            arrayList.add(cueBuild);
            if (cueBuild != null) {
                iMin = Math.min(iMin, cueBuild.positionAnchor);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            Cue cue = (Cue) arrayList.get(i10);
            if (cue != null) {
                if (cue.positionAnchor != iMin) {
                    cue = (Cue) Assertions.checkNotNull(this.cueBuilders.get(i10).build(iMin));
                }
                arrayList2.add(cue);
            }
        }
        return arrayList2;
    }

    private static char getExtendedEsFrChar(byte b8) {
        return (char) SPECIAL_ES_FR_CHARACTER_SET[b8 & 31];
    }

    private static char getExtendedPtDeChar(byte b8) {
        return (char) SPECIAL_PT_DE_CHARACTER_SET[b8 & 31];
    }

    private static char getExtendedWestEuropeanChar(byte b8, byte b10) {
        return (b8 & 1) == 0 ? getExtendedEsFrChar(b10) : getExtendedPtDeChar(b10);
    }

    private static char getSpecialNorthAmericanChar(byte b8) {
        return (char) SPECIAL_CHARACTER_SET[b8 & 15];
    }

    private void handleMidrowCtrl(byte b8) {
        this.currentCueBuilder.append(' ');
        this.currentCueBuilder.setStyle((b8 >> 1) & 7, (b8 & 1) == 1);
    }

    private void handleMiscCode(byte b8) {
        if (b8 == 32) {
            setCaptionMode(2);
            return;
        }
        if (b8 == 41) {
            setCaptionMode(3);
            return;
        }
        switch (b8) {
            case 37:
                setCaptionMode(1);
                setCaptionRowCount(2);
                break;
            case FlacConstants.STREAM_INFO_BLOCK_SIZE /* 38 */:
                setCaptionMode(1);
                setCaptionRowCount(3);
                break;
            case NalUnitUtil.H265_NAL_UNIT_TYPE_PREFIX_SEI /* 39 */:
                setCaptionMode(1);
                setCaptionRowCount(4);
                break;
            default:
                int i6 = this.captionMode;
                if (i6 != 0) {
                    if (b8 == 33) {
                        this.currentCueBuilder.backspace();
                        break;
                    } else {
                        switch (b8) {
                            case 44:
                                this.cues = Collections.emptyList();
                                int i10 = this.captionMode;
                                if (i10 == 1 || i10 == 3) {
                                    resetCueBuilders();
                                    break;
                                }
                            case TsExtractor.TS_STREAM_TYPE_MHAS /* 45 */:
                                if (i6 == 1 && !this.currentCueBuilder.isEmpty()) {
                                    this.currentCueBuilder.rollUp();
                                    break;
                                }
                                break;
                            case 46:
                                resetCueBuilders();
                                break;
                            case 47:
                                this.cues = getDisplayCues();
                                resetCueBuilders();
                                break;
                        }
                    }
                }
                break;
        }
    }

    private void handlePreambleAddressCode(byte b8, byte b10) {
        int i6 = ROW_INDICES[b8 & 7];
        if ((b10 & CTRL_RESUME_CAPTION_LOADING) != 0) {
            i6++;
        }
        if (i6 != this.currentCueBuilder.row) {
            if (this.captionMode != 1 && !this.currentCueBuilder.isEmpty()) {
                CueBuilder cueBuilder = new CueBuilder(this.captionMode, this.captionRowCount);
                this.currentCueBuilder = cueBuilder;
                this.cueBuilders.add(cueBuilder);
            }
            this.currentCueBuilder.row = i6;
        }
        boolean z7 = (b10 & 16) == 16;
        boolean z10 = (b10 & 1) == 1;
        int i10 = (b10 >> 1) & 7;
        this.currentCueBuilder.setStyle(z7 ? 8 : i10, z10);
        if (z7) {
            this.currentCueBuilder.indent = COLUMN_INDICES[i10];
        }
    }

    private static boolean isCtrlCode(byte b8) {
        return (b8 & 224) == 0;
    }

    private static boolean isExtendedWestEuropeanChar(byte b8, byte b10) {
        return (b8 & 246) == 18 && (b10 & 224) == 32;
    }

    private static boolean isMidrowCtrlCode(byte b8, byte b10) {
        return (b8 & 247) == 17 && (b10 & 240) == 32;
    }

    private static boolean isMiscCode(byte b8, byte b10) {
        return (b8 & 246) == 20 && (b10 & 240) == 32;
    }

    private static boolean isPreambleAddressCode(byte b8, byte b10) {
        return (b8 & 240) == 16 && (b10 & 192) == 64;
    }

    private static boolean isRepeatable(byte b8) {
        return (b8 & 240) == 16;
    }

    private boolean isRepeatedCommand(boolean z7, byte b8, byte b10) {
        if (!z7 || !isRepeatable(b8)) {
            this.repeatableControlSet = false;
        } else {
            if (this.repeatableControlSet && this.repeatableControlCc1 == b8 && this.repeatableControlCc2 == b10) {
                this.repeatableControlSet = false;
                return true;
            }
            this.repeatableControlSet = true;
            this.repeatableControlCc1 = b8;
            this.repeatableControlCc2 = b10;
        }
        return false;
    }

    private static boolean isServiceSwitchCommand(byte b8) {
        return (b8 & 246) == 20;
    }

    private static boolean isSpecialNorthAmericanChar(byte b8, byte b10) {
        return (b8 & 247) == 17 && (b10 & 240) == 48;
    }

    private static boolean isTabCtrlCode(byte b8, byte b10) {
        return (b8 & 247) == 23 && b10 >= 33 && b10 <= 35;
    }

    private static boolean isXdsControlCode(byte b8) {
        return 1 <= b8 && b8 <= 15;
    }

    private void maybeUpdateIsInCaptionService(byte b8, byte b10) {
        if (isXdsControlCode(b8)) {
            this.isInCaptionService = false;
            return;
        }
        if (isServiceSwitchCommand(b8)) {
            if (b10 != 32 && b10 != 47) {
                switch (b10) {
                    case 37:
                    case FlacConstants.STREAM_INFO_BLOCK_SIZE /* 38 */:
                    case NalUnitUtil.H265_NAL_UNIT_TYPE_PREFIX_SEI /* 39 */:
                        break;
                    default:
                        switch (b10) {
                            case AacUtil.AUDIO_OBJECT_TYPE_AAC_XHE /* 42 */:
                            case 43:
                                this.isInCaptionService = false;
                                break;
                        }
                }
            }
            this.isInCaptionService = true;
        }
    }

    private void resetCueBuilders() {
        this.currentCueBuilder.reset(this.captionMode);
        this.cueBuilders.clear();
        this.cueBuilders.add(this.currentCueBuilder);
    }

    private void setCaptionMode(int i6) {
        int i10 = this.captionMode;
        if (i10 == i6) {
            return;
        }
        this.captionMode = i6;
        if (i6 == 3) {
            for (int i11 = 0; i11 < this.cueBuilders.size(); i11++) {
                this.cueBuilders.get(i11).setCaptionMode(i6);
            }
            return;
        }
        resetCueBuilders();
        if (i10 == 3 || i6 == 1 || i6 == 0) {
            this.cues = Collections.emptyList();
        }
    }

    private void setCaptionRowCount(int i6) {
        this.captionRowCount = i6;
        this.currentCueBuilder.setCaptionRowCount(i6);
    }

    private boolean shouldClearStuckCaptions() {
        return (this.validDataChannelTimeoutUs == C.TIME_UNSET || this.lastCueUpdateUs == C.TIME_UNSET || getPositionUs() - this.lastCueUpdateUs < this.validDataChannelTimeoutUs) ? false : true;
    }

    private boolean updateAndVerifyCurrentChannel(byte b8) {
        if (isCtrlCode(b8)) {
            this.currentChannel = getChannel(b8);
        }
        return this.currentChannel == this.selectedChannel;
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    public Subtitle createSubtitle() {
        List<Cue> list = this.cues;
        this.lastCues = list;
        return new CeaSubtitle((List) Assertions.checkNotNull(list));
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0063  */
    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void decode(androidx.media3.extractor.text.SubtitleInputBuffer r10) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.extractor.text.cea.Cea608Decoder.decode(androidx.media3.extractor.text.SubtitleInputBuffer):void");
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder, androidx.media3.decoder.Decoder
    public /* bridge */ /* synthetic */ SubtitleInputBuffer dequeueInputBuffer() throws SubtitleDecoderException {
        return super.dequeueInputBuffer();
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder, androidx.media3.decoder.Decoder
    public void flush() {
        super.flush();
        this.cues = null;
        this.lastCues = null;
        setCaptionMode(0);
        setCaptionRowCount(4);
        resetCueBuilders();
        this.isCaptionValid = false;
        this.repeatableControlSet = false;
        this.repeatableControlCc1 = (byte) 0;
        this.repeatableControlCc2 = (byte) 0;
        this.currentChannel = 0;
        this.isInCaptionService = true;
        this.lastCueUpdateUs = C.TIME_UNSET;
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder, androidx.media3.decoder.Decoder
    public String getName() {
        return TAG;
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    public boolean isNewSubtitleDataAvailable() {
        return this.cues != this.lastCues;
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    public /* bridge */ /* synthetic */ void queueInputBuffer(SubtitleInputBuffer subtitleInputBuffer) throws SubtitleDecoderException {
        super.queueInputBuffer(subtitleInputBuffer);
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder, androidx.media3.extractor.text.SubtitleDecoder
    public /* bridge */ /* synthetic */ void setPositionUs(long j10) {
        super.setPositionUs(j10);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.media3.extractor.text.cea.CeaDecoder, androidx.media3.decoder.Decoder
    public SubtitleOutputBuffer dequeueOutputBuffer() throws SubtitleDecoderException {
        SubtitleOutputBuffer availableOutputBuffer;
        SubtitleOutputBuffer subtitleOutputBufferDequeueOutputBuffer = super.dequeueOutputBuffer();
        if (subtitleOutputBufferDequeueOutputBuffer != null) {
            return subtitleOutputBufferDequeueOutputBuffer;
        }
        if (!shouldClearStuckCaptions() || (availableOutputBuffer = getAvailableOutputBuffer()) == null) {
            return null;
        }
        this.cues = Collections.emptyList();
        this.lastCueUpdateUs = C.TIME_UNSET;
        availableOutputBuffer.setContent(getPositionUs(), createSubtitle(), Long.MAX_VALUE);
        return availableOutputBuffer;
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder, androidx.media3.decoder.Decoder
    public void release() {
    }
}
