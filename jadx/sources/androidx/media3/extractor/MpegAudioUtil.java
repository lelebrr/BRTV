package androidx.media3.extractor;

import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.UnstableApi;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class MpegAudioUtil {
    public static final int MAX_FRAME_SIZE_BYTES = 4096;
    private static final int SAMPLES_PER_FRAME_L1 = 384;
    private static final int SAMPLES_PER_FRAME_L2 = 1152;
    private static final int SAMPLES_PER_FRAME_L3_V1 = 1152;
    private static final int SAMPLES_PER_FRAME_L3_V2 = 576;
    private static final String[] MIME_TYPE_BY_LAYER = {MimeTypes.AUDIO_MPEG_L1, MimeTypes.AUDIO_MPEG_L2, MimeTypes.AUDIO_MPEG};
    private static final int[] SAMPLING_RATE_V1 = {44100, OpusUtil.SAMPLE_RATE, 32000};
    private static final int[] BITRATE_V1_L1 = {32000, 64000, 96000, 128000, 160000, DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND, 224000, AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND, 288000, 320000, 352000, 384000, 416000, 448000};
    private static final int[] BITRATE_V2_L1 = {32000, OpusUtil.SAMPLE_RATE, 56000, 64000, Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 96000, 112000, 128000, 144000, 160000, 176000, DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND, 224000, AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND};
    private static final int[] BITRATE_V1_L2 = {32000, OpusUtil.SAMPLE_RATE, 56000, 64000, Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 96000, 112000, 128000, 160000, DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND, 224000, AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND, 320000, 384000};
    public static final int MAX_RATE_BYTES_PER_SECOND = 40000;
    private static final int[] BITRATE_V1_L3 = {32000, MAX_RATE_BYTES_PER_SECOND, OpusUtil.SAMPLE_RATE, 56000, 64000, Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 96000, 112000, 128000, 160000, DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND, 224000, AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND, 320000};
    private static final int[] BITRATE_V2 = {8000, AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND, 24000, 32000, MAX_RATE_BYTES_PER_SECOND, OpusUtil.SAMPLE_RATE, 56000, 64000, Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 96000, 112000, 128000, 144000, 160000};

    /* compiled from: MyApplication */
    public static final class Header {
        public int bitrate;
        public int channels;
        public int frameSize;
        public String mimeType;
        public int sampleRate;
        public int samplesPerFrame;
        public int version;

        public Header() {
        }

        public boolean setForHeaderData(int i6) {
            int i10;
            int i11;
            int i12;
            int i13;
            if (!MpegAudioUtil.isMagicPresent(i6) || (i10 = (i6 >>> 19) & 3) == 1 || (i11 = (i6 >>> 17) & 3) == 0 || (i12 = (i6 >>> 12) & 15) == 0 || i12 == 15 || (i13 = (i6 >>> 10) & 3) == 3) {
                return false;
            }
            this.version = i10;
            this.mimeType = MpegAudioUtil.MIME_TYPE_BY_LAYER[3 - i11];
            int i14 = MpegAudioUtil.SAMPLING_RATE_V1[i13];
            this.sampleRate = i14;
            if (i10 == 2) {
                this.sampleRate = i14 / 2;
            } else if (i10 == 0) {
                this.sampleRate = i14 / 4;
            }
            int i15 = (i6 >>> 9) & 1;
            this.samplesPerFrame = MpegAudioUtil.getFrameSizeInSamples(i10, i11);
            if (i11 == 3) {
                int i16 = i10 == 3 ? MpegAudioUtil.BITRATE_V1_L1[i12 - 1] : MpegAudioUtil.BITRATE_V2_L1[i12 - 1];
                this.bitrate = i16;
                this.frameSize = (((i16 * 12) / this.sampleRate) + i15) * 4;
            } else {
                if (i10 == 3) {
                    int i17 = i11 == 2 ? MpegAudioUtil.BITRATE_V1_L2[i12 - 1] : MpegAudioUtil.BITRATE_V1_L3[i12 - 1];
                    this.bitrate = i17;
                    this.frameSize = ((i17 * 144) / this.sampleRate) + i15;
                } else {
                    int i18 = MpegAudioUtil.BITRATE_V2[i12 - 1];
                    this.bitrate = i18;
                    this.frameSize = (((i11 == 1 ? 72 : 144) * i18) / this.sampleRate) + i15;
                }
            }
            this.channels = ((i6 >> 6) & 3) == 3 ? 1 : 2;
            return true;
        }

        public Header(Header header) {
            this.version = header.version;
            this.mimeType = header.mimeType;
            this.frameSize = header.frameSize;
            this.sampleRate = header.sampleRate;
            this.channels = header.channels;
            this.bitrate = header.bitrate;
            this.samplesPerFrame = header.samplesPerFrame;
        }
    }

    private MpegAudioUtil() {
    }

    public static int getFrameSize(int i6) {
        int i10;
        int i11;
        int i12;
        int i13;
        if (!isMagicPresent(i6) || (i10 = (i6 >>> 19) & 3) == 1 || (i11 = (i6 >>> 17) & 3) == 0 || (i12 = (i6 >>> 12) & 15) == 0 || i12 == 15 || (i13 = (i6 >>> 10) & 3) == 3) {
            return -1;
        }
        int i14 = SAMPLING_RATE_V1[i13];
        if (i10 == 2) {
            i14 /= 2;
        } else if (i10 == 0) {
            i14 /= 4;
        }
        int i15 = (i6 >>> 9) & 1;
        if (i11 == 3) {
            return ((((i10 == 3 ? BITRATE_V1_L1[i12 - 1] : BITRATE_V2_L1[i12 - 1]) * 12) / i14) + i15) * 4;
        }
        int i16 = i10 == 3 ? i11 == 2 ? BITRATE_V1_L2[i12 - 1] : BITRATE_V1_L3[i12 - 1] : BITRATE_V2[i12 - 1];
        if (i10 == 3) {
            return ((i16 * 144) / i14) + i15;
        }
        return (((i11 == 1 ? 72 : 144) * i16) / i14) + i15;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getFrameSizeInSamples(int i6, int i10) {
        if (i10 == 1) {
            if (i6 == 3) {
                return 1152;
            }
            return SAMPLES_PER_FRAME_L3_V2;
        }
        if (i10 == 2) {
            return 1152;
        }
        if (i10 == 3) {
            return 384;
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isMagicPresent(int i6) {
        return (i6 & (-2097152)) == -2097152;
    }

    public static int parseMpegAudioFrameSampleCount(int i6) {
        int i10;
        int i11;
        if (!isMagicPresent(i6) || (i10 = (i6 >>> 19) & 3) == 1 || (i11 = (i6 >>> 17) & 3) == 0) {
            return -1;
        }
        int i12 = (i6 >>> 12) & 15;
        int i13 = (i6 >>> 10) & 3;
        if (i12 == 0 || i12 == 15 || i13 == 3) {
            return -1;
        }
        return getFrameSizeInSamples(i10, i11);
    }
}
