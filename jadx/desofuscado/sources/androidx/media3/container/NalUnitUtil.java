package androidx.media3.container;

import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.UnstableApi;
import d7.c5;
import d7.g1;
import d7.s1;
import d7.u1;
import f7.b;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class NalUnitUtil {
    public static final int EXTENDED_SAR = 255;
    public static final int H264_NAL_UNIT_TYPE_AUD = 9;
    public static final int H264_NAL_UNIT_TYPE_IDR = 5;
    public static final int H264_NAL_UNIT_TYPE_NON_IDR = 1;
    public static final int H264_NAL_UNIT_TYPE_PARTITION_A = 2;
    public static final int H264_NAL_UNIT_TYPE_PPS = 8;
    public static final int H264_NAL_UNIT_TYPE_PREFIX = 14;
    public static final int H264_NAL_UNIT_TYPE_SEI = 6;
    public static final int H264_NAL_UNIT_TYPE_SPS = 7;
    public static final int H264_NAL_UNIT_TYPE_UNSPECIFIED = 24;
    public static final int H265_NAL_UNIT_TYPE_AUD = 35;
    public static final int H265_NAL_UNIT_TYPE_BLA_W_LP = 16;
    public static final int H265_NAL_UNIT_TYPE_CRA = 21;
    public static final int H265_NAL_UNIT_TYPE_PPS = 34;
    public static final int H265_NAL_UNIT_TYPE_PREFIX_SEI = 39;
    public static final int H265_NAL_UNIT_TYPE_RASL_R = 9;
    public static final int H265_NAL_UNIT_TYPE_SPS = 33;
    public static final int H265_NAL_UNIT_TYPE_SUFFIX_SEI = 40;
    public static final int H265_NAL_UNIT_TYPE_UNSPECIFIED = 48;
    public static final int H265_NAL_UNIT_TYPE_VPS = 32;
    private static final int INVALID_ID = -1;

    @Deprecated
    public static final int NAL_UNIT_TYPE_AUD = 9;

    @Deprecated
    public static final int NAL_UNIT_TYPE_IDR = 5;

    @Deprecated
    public static final int NAL_UNIT_TYPE_NON_IDR = 1;

    @Deprecated
    public static final int NAL_UNIT_TYPE_PARTITION_A = 2;

    @Deprecated
    public static final int NAL_UNIT_TYPE_PPS = 8;

    @Deprecated
    public static final int NAL_UNIT_TYPE_PREFIX = 14;

    @Deprecated
    public static final int NAL_UNIT_TYPE_SEI = 6;

    @Deprecated
    public static final int NAL_UNIT_TYPE_SPS = 7;
    private static final String TAG = "NalUnitUtil";
    public static final byte[] NAL_START_CODE = {0, 0, 0, 1};
    public static final float[] ASPECT_RATIO_IDC_VALUES = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    private static final Object scratchEscapePositionsLock = new Object();
    private static int[] scratchEscapePositions = new int[10];

    /* compiled from: MyApplication */
    public static final class H265LayerInfo {
        public final int layerIdInVps;
        public final int viewId;

        public H265LayerInfo(int i6, int i10) {
            this.layerIdInVps = i6;
            this.viewId = i10;
        }
    }

    /* compiled from: MyApplication */
    public static final class H265NalHeader {
        public final int layerId;
        public final int nalUnitType;
        public final int temporalId;

        public H265NalHeader(int i6, int i10, int i11) {
            this.nalUnitType = i6;
            this.layerId = i10;
            this.temporalId = i11;
        }
    }

    /* compiled from: MyApplication */
    public static final class H265ProfileTierLevel {
        public final int[] constraintBytes;
        public final int generalLevelIdc;
        public final int generalProfileCompatibilityFlags;
        public final int generalProfileIdc;
        public final int generalProfileSpace;
        public final boolean generalTierFlag;

        public H265ProfileTierLevel(int i6, boolean z7, int i10, int i11, int[] iArr, int i12) {
            this.generalProfileSpace = i6;
            this.generalTierFlag = z7;
            this.generalProfileIdc = i10;
            this.generalProfileCompatibilityFlags = i11;
            this.constraintBytes = iArr;
            this.generalLevelIdc = i12;
        }
    }

    /* compiled from: MyApplication */
    public static final class H265ProfileTierLevelsAndIndices {
        public final int[] indices;
        public final u1 profileTierLevels;

        public H265ProfileTierLevelsAndIndices(List<H265ProfileTierLevel> list, int[] iArr) {
            this.profileTierLevels = u1.n(list);
            this.indices = iArr;
        }
    }

    /* compiled from: MyApplication */
    public static final class H265RepFormat {
        public final int bitDepthChromaMinus8;
        public final int bitDepthLumaMinus8;
        public final int chromaFormatIdc;
        public final int height;
        public final int width;

        public H265RepFormat(int i6, int i10, int i11, int i12, int i13) {
            this.chromaFormatIdc = i6;
            this.bitDepthLumaMinus8 = i10;
            this.bitDepthChromaMinus8 = i11;
            this.width = i12;
            this.height = i13;
        }
    }

    /* compiled from: MyApplication */
    public static final class H265RepFormatsAndIndices {
        public final int[] indices;
        public final u1 repFormats;

        public H265RepFormatsAndIndices(List<H265RepFormat> list, int[] iArr) {
            this.repFormats = u1.n(list);
            this.indices = iArr;
        }
    }

    /* compiled from: MyApplication */
    public static final class H265Sei3dRefDisplayInfoData {
        public final int exponentRefDisplayWidth;
        public final int exponentRefViewingDist;
        public final int leftViewId;
        public final int mantissaRefDisplayWidth;
        public final int mantissaRefViewingDist;
        public final int numRefDisplays;
        public final int precRefDisplayWidth;
        public final int precRefViewingDist;
        public final int rightViewId;

        public H265Sei3dRefDisplayInfoData(int i6, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            this.precRefDisplayWidth = i6;
            this.precRefViewingDist = i10;
            this.numRefDisplays = i11;
            this.leftViewId = i12;
            this.rightViewId = i13;
            this.exponentRefDisplayWidth = i14;
            this.mantissaRefDisplayWidth = i15;
            this.exponentRefViewingDist = i16;
            this.mantissaRefViewingDist = i17;
        }
    }

    /* compiled from: MyApplication */
    public static final class H265SpsData {
        public final int bitDepthChromaMinus8;
        public final int bitDepthLumaMinus8;
        public final int chromaFormatIdc;
        public final int colorRange;
        public final int colorSpace;
        public final int colorTransfer;
        public final int height;
        public final int maxNumReorderPics;
        public final int maxSubLayersMinus1;
        public final H265NalHeader nalHeader;
        public final float pixelWidthHeightRatio;
        public final H265ProfileTierLevel profileTierLevel;
        public final int seqParameterSetId;
        public final int width;

        public H265SpsData(H265NalHeader h265NalHeader, int i6, H265ProfileTierLevel h265ProfileTierLevel, int i10, int i11, int i12, int i13, int i14, int i15, float f, int i16, int i17, int i18, int i19) {
            this.nalHeader = h265NalHeader;
            this.maxSubLayersMinus1 = i6;
            this.profileTierLevel = h265ProfileTierLevel;
            this.chromaFormatIdc = i10;
            this.bitDepthLumaMinus8 = i11;
            this.bitDepthChromaMinus8 = i12;
            this.seqParameterSetId = i13;
            this.width = i14;
            this.height = i15;
            this.pixelWidthHeightRatio = f;
            this.maxNumReorderPics = i16;
            this.colorSpace = i17;
            this.colorRange = i18;
            this.colorTransfer = i19;
        }
    }

    /* compiled from: MyApplication */
    public static final class H265VideoSignalInfo {
        public final int colorRange;
        public final int colorSpace;
        public final int colorTransfer;

        public H265VideoSignalInfo(int i6, int i10, int i11) {
            this.colorSpace = i6;
            this.colorRange = i10;
            this.colorTransfer = i11;
        }
    }

    /* compiled from: MyApplication */
    public static final class H265VideoSignalInfosAndIndices {
        public final int[] indices;
        public final u1 videoSignalInfos;

        public H265VideoSignalInfosAndIndices(List<H265VideoSignalInfo> list, int[] iArr) {
            this.videoSignalInfos = u1.n(list);
            this.indices = iArr;
        }
    }

    /* compiled from: MyApplication */
    public static final class H265VpsData {
        public final u1 layerInfos;
        public final H265NalHeader nalHeader;
        public final H265ProfileTierLevelsAndIndices profileTierLevelsAndIndices;
        public final H265RepFormatsAndIndices repFormatsAndIndices;
        public final H265VideoSignalInfosAndIndices videoSignalInfosAndIndices;

        public H265VpsData(H265NalHeader h265NalHeader, List<H265LayerInfo> list, H265ProfileTierLevelsAndIndices h265ProfileTierLevelsAndIndices, H265RepFormatsAndIndices h265RepFormatsAndIndices, H265VideoSignalInfosAndIndices h265VideoSignalInfosAndIndices) {
            u1 u1VarN;
            this.nalHeader = h265NalHeader;
            if (list != null) {
                u1VarN = u1.n(list);
            } else {
                g1 g1Var = u1.f6276b;
                u1VarN = c5.f6115e;
            }
            this.layerInfos = u1VarN;
            this.profileTierLevelsAndIndices = h265ProfileTierLevelsAndIndices;
            this.repFormatsAndIndices = h265RepFormatsAndIndices;
            this.videoSignalInfosAndIndices = h265VideoSignalInfosAndIndices;
        }
    }

    /* compiled from: MyApplication */
    public static final class PpsData {
        public final boolean bottomFieldPicOrderInFramePresentFlag;
        public final int picParameterSetId;
        public final int seqParameterSetId;

        public PpsData(int i6, int i10, boolean z7) {
            this.picParameterSetId = i6;
            this.seqParameterSetId = i10;
            this.bottomFieldPicOrderInFramePresentFlag = z7;
        }
    }

    /* compiled from: MyApplication */
    public static final class SpsData {
        public final int bitDepthChromaMinus8;
        public final int bitDepthLumaMinus8;
        public final int colorRange;
        public final int colorSpace;
        public final int colorTransfer;
        public final int constraintsFlagsAndReservedZero2Bits;
        public final boolean deltaPicOrderAlwaysZeroFlag;
        public final boolean frameMbsOnlyFlag;
        public final int frameNumLength;
        public final int height;
        public final int levelIdc;
        public final int maxNumRefFrames;
        public final int maxNumReorderFrames;
        public final int picOrderCntLsbLength;
        public final int picOrderCountType;
        public final float pixelWidthHeightRatio;
        public final int profileIdc;
        public final boolean separateColorPlaneFlag;
        public final int seqParameterSetId;
        public final int width;

        public SpsData(int i6, int i10, int i11, int i12, int i13, int i14, int i15, float f, int i16, int i17, boolean z7, boolean z10, int i18, int i19, int i20, boolean z11, int i21, int i22, int i23, int i24) {
            this.profileIdc = i6;
            this.constraintsFlagsAndReservedZero2Bits = i10;
            this.levelIdc = i11;
            this.seqParameterSetId = i12;
            this.maxNumRefFrames = i13;
            this.width = i14;
            this.height = i15;
            this.pixelWidthHeightRatio = f;
            this.bitDepthLumaMinus8 = i16;
            this.bitDepthChromaMinus8 = i17;
            this.separateColorPlaneFlag = z7;
            this.frameMbsOnlyFlag = z10;
            this.frameNumLength = i18;
            this.picOrderCountType = i19;
            this.picOrderCntLsbLength = i20;
            this.deltaPicOrderAlwaysZeroFlag = z11;
            this.colorSpace = i21;
            this.colorRange = i22;
            this.colorTransfer = i23;
            this.maxNumReorderFrames = i24;
        }
    }

    private NalUnitUtil() {
    }

    private static int applyConformanceWindowToHeight(int i6, int i10, int i11, int i12) {
        return i6 - ((i11 + i12) * (i10 == 1 ? 2 : 1));
    }

    private static int applyConformanceWindowToWidth(int i6, int i10, int i11, int i12) {
        int i13 = 2;
        if (i10 != 1 && i10 != 2) {
            i13 = 1;
        }
        return i6 - ((i11 + i12) * i13);
    }

    public static void clearPrefixFlags(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    private static String createCodecStringFromH265SpsPalyoad(ParsableNalUnitBitArray parsableNalUnitBitArray) {
        parsableNalUnitBitArray.skipBits(4);
        int bits = parsableNalUnitBitArray.readBits(3);
        parsableNalUnitBitArray.skipBit();
        H265ProfileTierLevel h265ProfileTierLevel = parseH265ProfileTierLevel(parsableNalUnitBitArray, true, bits, null);
        return CodecSpecificDataUtil.buildHevcCodecString(h265ProfileTierLevel.generalProfileSpace, h265ProfileTierLevel.generalTierFlag, h265ProfileTierLevel.generalProfileIdc, h265ProfileTierLevel.generalProfileCompatibilityFlags, h265ProfileTierLevel.constraintBytes, h265ProfileTierLevel.generalLevelIdc);
    }

    public static void discardToSps(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int i6 = 0;
        int i10 = 0;
        while (true) {
            int i11 = i6 + 1;
            if (i11 >= iPosition) {
                byteBuffer.clear();
                return;
            }
            int i12 = byteBuffer.get(i6) & 255;
            if (i10 == 3) {
                if (i12 == 1 && (byteBuffer.get(i11) & 31) == 7) {
                    ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
                    byteBufferDuplicate.position(i6 - 3);
                    byteBufferDuplicate.limit(iPosition);
                    byteBuffer.position(0);
                    byteBuffer.put(byteBufferDuplicate);
                    return;
                }
            } else if (i12 == 0) {
                i10++;
            }
            if (i12 != 0) {
                i10 = 0;
            }
            i6 = i11;
        }
    }

    public static int findNalUnit(byte[] bArr, int i6, int i10, boolean[] zArr) {
        int i11 = i10 - i6;
        Assertions.checkState(i11 >= 0);
        if (i11 == 0) {
            return i10;
        }
        if (zArr[0]) {
            clearPrefixFlags(zArr);
            return i6 - 3;
        }
        if (i11 > 1 && zArr[1] && bArr[i6] == 1) {
            clearPrefixFlags(zArr);
            return i6 - 2;
        }
        if (i11 > 2 && zArr[2] && bArr[i6] == 0 && bArr[i6 + 1] == 1) {
            clearPrefixFlags(zArr);
            return i6 - 1;
        }
        int i12 = i10 - 1;
        int i13 = i6 + 2;
        while (i13 < i12) {
            byte b8 = bArr[i13];
            if ((b8 & 254) == 0) {
                int i14 = i13 - 2;
                if (bArr[i14] == 0 && bArr[i13 - 1] == 0 && b8 == 1) {
                    clearPrefixFlags(zArr);
                    return i14;
                }
                i13 -= 2;
            }
            i13 += 3;
        }
        zArr[0] = i11 <= 2 ? !(i11 != 2 ? !(zArr[1] && bArr[i12] == 1) : !(zArr[2] && bArr[i10 + (-2)] == 0 && bArr[i12] == 1)) : bArr[i10 + (-3)] == 0 && bArr[i10 + (-2)] == 0 && bArr[i12] == 1;
        zArr[1] = i11 <= 1 ? zArr[2] && bArr[i12] == 0 : bArr[i10 + (-2)] == 0 && bArr[i12] == 0;
        zArr[2] = bArr[i12] == 0;
        return i10;
    }

    private static u1 findNalUnitPositions(byte[] bArr) {
        boolean[] zArr = new boolean[3];
        s1 s1VarK = u1.k();
        int i6 = 0;
        while (i6 < bArr.length) {
            int iFindNalUnit = findNalUnit(bArr, i6, bArr.length, zArr);
            if (iFindNalUnit != bArr.length) {
                s1VarK.a(Integer.valueOf(iFindNalUnit));
            }
            i6 = iFindNalUnit + 3;
        }
        return s1VarK.g();
    }

    private static int findNextUnescapeIndex(byte[] bArr, int i6, int i10) {
        while (i6 < i10 - 2) {
            if (bArr[i6] == 0 && bArr[i6 + 1] == 0 && bArr[i6 + 2] == 3) {
                return i6;
            }
            i6++;
        }
        return i10;
    }

    public static String getH265BaseLayerCodecsString(List<byte[]> list) {
        for (int i6 = 0; i6 < list.size(); i6++) {
            byte[] bArr = list.get(i6);
            int length = bArr.length;
            if (length > 3) {
                u1 u1VarFindNalUnitPositions = findNalUnitPositions(bArr);
                for (int i10 = 0; i10 < u1VarFindNalUnitPositions.size(); i10++) {
                    if (((Integer) u1VarFindNalUnitPositions.get(i10)).intValue() + 3 < length) {
                        ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, ((Integer) u1VarFindNalUnitPositions.get(i10)).intValue() + 3, length);
                        H265NalHeader h265NalHeader = parseH265NalHeader(parsableNalUnitBitArray);
                        if (h265NalHeader.nalUnitType == 33 && h265NalHeader.layerId == 0) {
                            return createCodecStringFromH265SpsPalyoad(parsableNalUnitBitArray);
                        }
                    }
                }
            }
        }
        return null;
    }

    public static int getH265NalUnitType(byte[] bArr, int i6) {
        return (bArr[i6 + 3] & 126) >> 1;
    }

    public static int getNalUnitType(byte[] bArr, int i6) {
        return bArr[i6 + 3] & 31;
    }

    public static boolean isDependedOn(byte[] bArr, int i6, int i10, Format format) {
        if (Objects.equals(format.sampleMimeType, MimeTypes.VIDEO_H264)) {
            return isH264NalUnitDependedOn(bArr[i6]);
        }
        if (Objects.equals(format.sampleMimeType, MimeTypes.VIDEO_H265)) {
            return isH265NalUnitDependedOn(bArr, i6, i10, format);
        }
        return true;
    }

    public static boolean isH264NalUnitDependedOn(byte b8) {
        if (((b8 & 96) >> 5) != 0) {
            return true;
        }
        int i6 = b8 & 31;
        return (i6 == 1 || i6 == 9 || i6 == 14) ? false : true;
    }

    private static boolean isH265NalUnitDependedOn(byte[] bArr, int i6, int i10, Format format) {
        H265NalHeader h265NalHeader = parseH265NalHeader(new ParsableNalUnitBitArray(bArr, i6, i10 + i6));
        int i11 = h265NalHeader.nalUnitType;
        if (i11 == 35) {
            return false;
        }
        return (i11 <= 14 && i11 % 2 == 0 && h265NalHeader.temporalId == format.maxSubLayers - 1) ? false : true;
    }

    @Deprecated
    public static boolean isNalUnitSei(String str, byte b8) {
        if (MimeTypes.VIDEO_H264.equals(str) && (b8 & 31) == 6) {
            return true;
        }
        return MimeTypes.VIDEO_H265.equals(str) && ((b8 & 126) >> 1) == 39;
    }

    public static int numberOfBytesInNalUnitHeader(Format format) {
        if (Objects.equals(format.sampleMimeType, MimeTypes.VIDEO_H264)) {
            return 1;
        }
        return (Objects.equals(format.sampleMimeType, MimeTypes.VIDEO_H265) || MimeTypes.containsCodecsCorrespondingToMimeType(format.codecs, MimeTypes.VIDEO_H265)) ? 2 : 0;
    }

    private static H265NalHeader parseH265NalHeader(ParsableNalUnitBitArray parsableNalUnitBitArray) {
        parsableNalUnitBitArray.skipBit();
        return new H265NalHeader(parsableNalUnitBitArray.readBits(6), parsableNalUnitBitArray.readBits(6), parsableNalUnitBitArray.readBits(3) - 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static androidx.media3.container.NalUnitUtil.H265ProfileTierLevel parseH265ProfileTierLevel(androidx.media3.container.ParsableNalUnitBitArray r19, boolean r20, int r21, androidx.media3.container.NalUnitUtil.H265ProfileTierLevel r22) {
        /*
            r0 = r19
            r1 = r21
            r2 = r22
            r3 = 6
            int[] r4 = new int[r3]
            r5 = 2
            r6 = 8
            r7 = 0
            if (r20 == 0) goto L42
            int r2 = r0.readBits(r5)
            boolean r8 = r19.readBit()
            r9 = 5
            int r9 = r0.readBits(r9)
            r10 = 0
            r11 = 0
        L1e:
            r12 = 32
            if (r10 >= r12) goto L2e
            boolean r12 = r19.readBit()
            if (r12 == 0) goto L2b
            r12 = 1
            int r12 = r12 << r10
            r11 = r11 | r12
        L2b:
            int r10 = r10 + 1
            goto L1e
        L2e:
            r10 = 0
        L2f:
            if (r10 >= r3) goto L3a
            int r12 = r0.readBits(r6)
            r4[r10] = r12
            int r10 = r10 + 1
            goto L2f
        L3a:
            r13 = r2
        L3b:
            r17 = r4
            r14 = r8
            r15 = r9
            r16 = r11
            goto L57
        L42:
            if (r2 == 0) goto L50
            int r3 = r2.generalProfileSpace
            boolean r8 = r2.generalTierFlag
            int r9 = r2.generalProfileIdc
            int r11 = r2.generalProfileCompatibilityFlags
            int[] r4 = r2.constraintBytes
            r13 = r3
            goto L3b
        L50:
            r17 = r4
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = 0
        L57:
            int r18 = r0.readBits(r6)
            r2 = 0
        L5c:
            if (r7 >= r1) goto L71
            boolean r3 = r19.readBit()
            if (r3 == 0) goto L66
            int r2 = r2 + 88
        L66:
            boolean r3 = r19.readBit()
            if (r3 == 0) goto L6e
            int r2 = r2 + 8
        L6e:
            int r7 = r7 + 1
            goto L5c
        L71:
            r0.skipBits(r2)
            if (r1 <= 0) goto L7c
            int r6 = r6 - r1
            int r6 = r6 * 2
            r0.skipBits(r6)
        L7c:
            androidx.media3.container.NalUnitUtil$H265ProfileTierLevel r0 = new androidx.media3.container.NalUnitUtil$H265ProfileTierLevel
            r12 = r0
            r12.<init>(r13, r14, r15, r16, r17, r18)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.container.NalUnitUtil.parseH265ProfileTierLevel(androidx.media3.container.ParsableNalUnitBitArray, boolean, int, androidx.media3.container.NalUnitUtil$H265ProfileTierLevel):androidx.media3.container.NalUnitUtil$H265ProfileTierLevel");
    }

    private static H265RepFormat parseH265RepFormat(ParsableNalUnitBitArray parsableNalUnitBitArray) {
        int i6;
        int i10;
        int bits;
        int bits2 = parsableNalUnitBitArray.readBits(16);
        int bits3 = parsableNalUnitBitArray.readBits(16);
        if (parsableNalUnitBitArray.readBit()) {
            int bits4 = parsableNalUnitBitArray.readBits(2);
            if (bits4 == 3) {
                parsableNalUnitBitArray.skipBit();
            }
            int bits5 = parsableNalUnitBitArray.readBits(4);
            bits = parsableNalUnitBitArray.readBits(4);
            i10 = bits5;
            i6 = bits4;
        } else {
            i6 = 0;
            i10 = 0;
            bits = 0;
        }
        if (parsableNalUnitBitArray.readBit()) {
            int unsignedExpGolombCodedInt = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            int unsignedExpGolombCodedInt2 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            int unsignedExpGolombCodedInt3 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            int unsignedExpGolombCodedInt4 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            bits2 = applyConformanceWindowToWidth(bits2, i6, unsignedExpGolombCodedInt, unsignedExpGolombCodedInt2);
            bits3 = applyConformanceWindowToHeight(bits3, i6, unsignedExpGolombCodedInt3, unsignedExpGolombCodedInt4);
        }
        return new H265RepFormat(i6, i10, bits, bits2, bits3);
    }

    private static H265RepFormatsAndIndices parseH265RepFormatsAndIndices(ParsableNalUnitBitArray parsableNalUnitBitArray, int i6) {
        int unsignedExpGolombCodedInt = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        int i10 = unsignedExpGolombCodedInt + 1;
        s1 s1VarL = u1.l(i10);
        int[] iArr = new int[i6];
        for (int i11 = 0; i11 < i10; i11++) {
            s1VarL.a(parseH265RepFormat(parsableNalUnitBitArray));
        }
        int i12 = 1;
        if (i10 <= 1 || !parsableNalUnitBitArray.readBit()) {
            while (i12 < i6) {
                iArr[i12] = Math.min(i12, unsignedExpGolombCodedInt);
                i12++;
            }
        } else {
            int iC = b.c(i10, RoundingMode.CEILING);
            while (i12 < i6) {
                iArr[i12] = parsableNalUnitBitArray.readBits(iC);
                i12++;
            }
        }
        return new H265RepFormatsAndIndices(s1VarL.g(), iArr);
    }

    public static H265Sei3dRefDisplayInfoData parseH265Sei3dRefDisplayInfo(byte[] bArr, int i6, int i10) {
        byte b8;
        int i11 = i6 + 2;
        do {
            i10--;
            b8 = bArr[i10];
            if (b8 != 0) {
                break;
            }
        } while (i10 > i11);
        if (b8 != 0 && i10 > i11) {
            ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, i11, i10 + 1);
            while (parsableNalUnitBitArray.canReadBits(16)) {
                int bits = parsableNalUnitBitArray.readBits(8);
                int i12 = 0;
                while (bits == 255) {
                    i12 += 255;
                    bits = parsableNalUnitBitArray.readBits(8);
                }
                int i13 = i12 + bits;
                int bits2 = parsableNalUnitBitArray.readBits(8);
                int i14 = 0;
                while (bits2 == 255) {
                    i14 += 255;
                    bits2 = parsableNalUnitBitArray.readBits(8);
                }
                int i15 = i14 + bits2;
                if (i15 == 0 || !parsableNalUnitBitArray.canReadBits(i15)) {
                    break;
                }
                if (i13 == 176) {
                    int unsignedExpGolombCodedInt = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                    boolean bit = parsableNalUnitBitArray.readBit();
                    int unsignedExpGolombCodedInt2 = bit ? parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() : 0;
                    int unsignedExpGolombCodedInt3 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                    int unsignedExpGolombCodedInt4 = -1;
                    int unsignedExpGolombCodedInt5 = -1;
                    int bits3 = -1;
                    int bits4 = -1;
                    int bits5 = -1;
                    int bits6 = -1;
                    for (int i16 = 0; i16 <= unsignedExpGolombCodedInt3; i16++) {
                        unsignedExpGolombCodedInt4 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                        unsignedExpGolombCodedInt5 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                        bits3 = parsableNalUnitBitArray.readBits(6);
                        if (bits3 == 63) {
                            return null;
                        }
                        bits4 = parsableNalUnitBitArray.readBits(bits3 == 0 ? Math.max(0, unsignedExpGolombCodedInt - 30) : Math.max(0, (bits3 + unsignedExpGolombCodedInt) - 31));
                        if (bit) {
                            bits5 = parsableNalUnitBitArray.readBits(6);
                            if (bits5 == 63) {
                                return null;
                            }
                            bits6 = parsableNalUnitBitArray.readBits(bits5 == 0 ? Math.max(0, unsignedExpGolombCodedInt2 - 30) : Math.max(0, (bits5 + unsignedExpGolombCodedInt2) - 31));
                        }
                        if (parsableNalUnitBitArray.readBit()) {
                            parsableNalUnitBitArray.skipBits(10);
                        }
                    }
                    return new H265Sei3dRefDisplayInfoData(unsignedExpGolombCodedInt, unsignedExpGolombCodedInt2, unsignedExpGolombCodedInt3 + 1, unsignedExpGolombCodedInt4, unsignedExpGolombCodedInt5, bits3, bits4, bits5, bits6);
                }
            }
        }
        return null;
    }

    public static H265SpsData parseH265SpsNalUnit(byte[] bArr, int i6, int i10, H265VpsData h265VpsData) {
        return parseH265SpsNalUnitPayload(bArr, i6 + 2, i10, parseH265NalHeader(new ParsableNalUnitBitArray(bArr, i6, i10)), h265VpsData);
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static androidx.media3.container.NalUnitUtil.H265SpsData parseH265SpsNalUnitPayload(byte[] r22, int r23, int r24, androidx.media3.container.NalUnitUtil.H265NalHeader r25, androidx.media3.container.NalUnitUtil.H265VpsData r26) {
        /*
            Method dump skipped, instructions count: 602
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.container.NalUnitUtil.parseH265SpsNalUnitPayload(byte[], int, int, androidx.media3.container.NalUnitUtil$H265NalHeader, androidx.media3.container.NalUnitUtil$H265VpsData):androidx.media3.container.NalUnitUtil$H265SpsData");
    }

    private static H265VideoSignalInfo parseH265VideoSignalInfo(ParsableNalUnitBitArray parsableNalUnitBitArray) {
        parsableNalUnitBitArray.skipBits(3);
        int i6 = parsableNalUnitBitArray.readBit() ? 1 : 2;
        int iIsoColorPrimariesToColorSpace = ColorInfo.isoColorPrimariesToColorSpace(parsableNalUnitBitArray.readBits(8));
        int iIsoTransferCharacteristicsToColorTransfer = ColorInfo.isoTransferCharacteristicsToColorTransfer(parsableNalUnitBitArray.readBits(8));
        parsableNalUnitBitArray.skipBits(8);
        return new H265VideoSignalInfo(iIsoColorPrimariesToColorSpace, i6, iIsoTransferCharacteristicsToColorTransfer);
    }

    private static H265VideoSignalInfosAndIndices parseH265VideoSignalInfosAndIndices(ParsableNalUnitBitArray parsableNalUnitBitArray, int i6, int i10, int[] iArr) {
        if (!parsableNalUnitBitArray.readBit() ? parsableNalUnitBitArray.readBit() : true) {
            parsableNalUnitBitArray.skipBit();
        }
        boolean bit = parsableNalUnitBitArray.readBit();
        boolean bit2 = parsableNalUnitBitArray.readBit();
        if (bit || bit2) {
            for (int i11 = 0; i11 < i10; i11++) {
                for (int i12 = 0; i12 < iArr[i11]; i12++) {
                    boolean bit3 = bit ? parsableNalUnitBitArray.readBit() : false;
                    boolean bit4 = bit2 ? parsableNalUnitBitArray.readBit() : false;
                    if (bit3) {
                        parsableNalUnitBitArray.skipBits(32);
                    }
                    if (bit4) {
                        parsableNalUnitBitArray.skipBits(18);
                    }
                }
            }
        }
        boolean bit5 = parsableNalUnitBitArray.readBit();
        int bits = bit5 ? parsableNalUnitBitArray.readBits(4) + 1 : i6;
        s1 s1VarL = u1.l(bits);
        int[] iArr2 = new int[i6];
        for (int i13 = 0; i13 < bits; i13++) {
            s1VarL.a(parseH265VideoSignalInfo(parsableNalUnitBitArray));
        }
        if (bit5 && bits > 1) {
            for (int i14 = 0; i14 < i6; i14++) {
                iArr2[i14] = parsableNalUnitBitArray.readBits(4);
            }
        }
        return new H265VideoSignalInfosAndIndices(s1VarL.g(), iArr2);
    }

    public static H265VpsData parseH265VpsNalUnit(byte[] bArr, int i6, int i10) {
        ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, i6, i10);
        return parseH265VpsNalUnitPayload(parsableNalUnitBitArray, parseH265NalHeader(parsableNalUnitBitArray));
    }

    /* JADX WARN: Removed duplicated region for block: B:273:0x0532  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x0547 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static androidx.media3.container.NalUnitUtil.H265VpsData parseH265VpsNalUnitPayload(androidx.media3.container.ParsableNalUnitBitArray r37, androidx.media3.container.NalUnitUtil.H265NalHeader r38) {
        /*
            Method dump skipped, instructions count: 1544
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.container.NalUnitUtil.parseH265VpsNalUnitPayload(androidx.media3.container.ParsableNalUnitBitArray, androidx.media3.container.NalUnitUtil$H265NalHeader):androidx.media3.container.NalUnitUtil$H265VpsData");
    }

    public static PpsData parsePpsNalUnit(byte[] bArr, int i6, int i10) {
        return parsePpsNalUnitPayload(bArr, i6 + 1, i10);
    }

    public static PpsData parsePpsNalUnitPayload(byte[] bArr, int i6, int i10) {
        ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, i6, i10);
        int unsignedExpGolombCodedInt = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        int unsignedExpGolombCodedInt2 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        parsableNalUnitBitArray.skipBit();
        return new PpsData(unsignedExpGolombCodedInt, unsignedExpGolombCodedInt2, parsableNalUnitBitArray.readBit());
    }

    public static SpsData parseSpsNalUnit(byte[] bArr, int i6, int i10) {
        return parseSpsNalUnitPayload(bArr, i6 + 1, i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:127:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x015d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static androidx.media3.container.NalUnitUtil.SpsData parseSpsNalUnitPayload(byte[] r32, int r33, int r34) {
        /*
            Method dump skipped, instructions count: 576
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.container.NalUnitUtil.parseSpsNalUnitPayload(byte[], int, int):androidx.media3.container.NalUnitUtil$SpsData");
    }

    private static void skipH265DpbSize(ParsableNalUnitBitArray parsableNalUnitBitArray, int i6, int[] iArr, int[] iArr2, boolean[][] zArr) {
        for (int i10 = 1; i10 < i6; i10++) {
            boolean bit = parsableNalUnitBitArray.readBit();
            int i11 = 0;
            while (i11 < iArr[i10]) {
                if ((i11 <= 0 || !bit) ? i11 == 0 : parsableNalUnitBitArray.readBit()) {
                    for (int i12 = 0; i12 < iArr2[i10]; i12++) {
                        if (zArr[i10][i12]) {
                            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                        }
                    }
                    parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                    parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                }
                i11++;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void skipH265HrdParameters(androidx.media3.container.ParsableNalUnitBitArray r8, boolean r9, int r10) {
        /*
            r0 = 0
            if (r9 == 0) goto L2e
            boolean r9 = r8.readBit()
            boolean r1 = r8.readBit()
            if (r9 != 0) goto L12
            if (r1 == 0) goto L10
            goto L12
        L10:
            r2 = 0
            goto L31
        L12:
            boolean r2 = r8.readBit()
            if (r2 == 0) goto L1d
            r3 = 19
            r8.skipBits(r3)
        L1d:
            r3 = 8
            r8.skipBits(r3)
            if (r2 == 0) goto L28
            r3 = 4
            r8.skipBits(r3)
        L28:
            r3 = 15
            r8.skipBits(r3)
            goto L31
        L2e:
            r9 = 0
            r1 = 0
            goto L10
        L31:
            r3 = 0
        L32:
            if (r3 > r10) goto L73
            boolean r4 = r8.readBit()
            if (r4 != 0) goto L3e
            boolean r4 = r8.readBit()
        L3e:
            if (r4 == 0) goto L45
            r8.readUnsignedExpGolombCodedInt()
            r4 = 0
            goto L49
        L45:
            boolean r4 = r8.readBit()
        L49:
            if (r4 != 0) goto L50
            int r4 = r8.readUnsignedExpGolombCodedInt()
            goto L51
        L50:
            r4 = 0
        L51:
            int r5 = r9 + r1
            r6 = 0
        L54:
            if (r6 >= r5) goto L70
            r7 = 0
        L57:
            if (r7 > r4) goto L6d
            r8.readUnsignedExpGolombCodedInt()
            r8.readUnsignedExpGolombCodedInt()
            if (r2 == 0) goto L67
            r8.readUnsignedExpGolombCodedInt()
            r8.readUnsignedExpGolombCodedInt()
        L67:
            r8.skipBit()
            int r7 = r7 + 1
            goto L57
        L6d:
            int r6 = r6 + 1
            goto L54
        L70:
            int r3 = r3 + 1
            goto L32
        L73:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.container.NalUnitUtil.skipH265HrdParameters(androidx.media3.container.ParsableNalUnitBitArray, boolean, int):void");
    }

    private static void skipH265ScalingList(ParsableNalUnitBitArray parsableNalUnitBitArray) {
        for (int i6 = 0; i6 < 4; i6++) {
            int i10 = 0;
            while (i10 < 6) {
                int i11 = 1;
                if (parsableNalUnitBitArray.readBit()) {
                    int iMin = Math.min(64, 1 << ((i6 << 1) + 4));
                    if (i6 > 1) {
                        parsableNalUnitBitArray.readSignedExpGolombCodedInt();
                    }
                    for (int i12 = 0; i12 < iMin; i12++) {
                        parsableNalUnitBitArray.readSignedExpGolombCodedInt();
                    }
                } else {
                    parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                }
                if (i6 == 3) {
                    i11 = 3;
                }
                i10 += i11;
            }
        }
    }

    private static void skipH265ShortTermReferencePictureSets(ParsableNalUnitBitArray parsableNalUnitBitArray) {
        int unsignedExpGolombCodedInt = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        int[] iArr = new int[0];
        int[] iArrCopyOf = new int[0];
        int i6 = -1;
        int i10 = -1;
        for (int i11 = 0; i11 < unsignedExpGolombCodedInt; i11++) {
            if (i11 == 0 || !parsableNalUnitBitArray.readBit()) {
                int unsignedExpGolombCodedInt2 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                int unsignedExpGolombCodedInt3 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                int[] iArr2 = new int[unsignedExpGolombCodedInt2];
                int i12 = 0;
                while (i12 < unsignedExpGolombCodedInt2) {
                    iArr2[i12] = (i12 > 0 ? iArr2[i12 - 1] : 0) - (parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 1);
                    parsableNalUnitBitArray.skipBit();
                    i12++;
                }
                int[] iArr3 = new int[unsignedExpGolombCodedInt3];
                int i13 = 0;
                while (i13 < unsignedExpGolombCodedInt3) {
                    iArr3[i13] = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 1 + (i13 > 0 ? iArr3[i13 - 1] : 0);
                    parsableNalUnitBitArray.skipBit();
                    i13++;
                }
                i6 = unsignedExpGolombCodedInt2;
                iArr = iArr2;
                i10 = unsignedExpGolombCodedInt3;
                iArrCopyOf = iArr3;
            } else {
                int i14 = i6 + i10;
                int unsignedExpGolombCodedInt4 = (1 - ((parsableNalUnitBitArray.readBit() ? 1 : 0) * 2)) * (parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 1);
                int i15 = i14 + 1;
                boolean[] zArr = new boolean[i15];
                for (int i16 = 0; i16 <= i14; i16++) {
                    if (parsableNalUnitBitArray.readBit()) {
                        zArr[i16] = true;
                    } else {
                        zArr[i16] = parsableNalUnitBitArray.readBit();
                    }
                }
                int[] iArr4 = new int[i15];
                int[] iArr5 = new int[i15];
                int i17 = 0;
                for (int i18 = i10 - 1; i18 >= 0; i18--) {
                    int i19 = iArrCopyOf[i18] + unsignedExpGolombCodedInt4;
                    if (i19 < 0 && zArr[i6 + i18]) {
                        iArr4[i17] = i19;
                        i17++;
                    }
                }
                if (unsignedExpGolombCodedInt4 < 0 && zArr[i14]) {
                    iArr4[i17] = unsignedExpGolombCodedInt4;
                    i17++;
                }
                for (int i20 = 0; i20 < i6; i20++) {
                    int i21 = iArr[i20] + unsignedExpGolombCodedInt4;
                    if (i21 < 0 && zArr[i20]) {
                        iArr4[i17] = i21;
                        i17++;
                    }
                }
                int[] iArrCopyOf2 = Arrays.copyOf(iArr4, i17);
                int i22 = 0;
                for (int i23 = i6 - 1; i23 >= 0; i23--) {
                    int i24 = iArr[i23] + unsignedExpGolombCodedInt4;
                    if (i24 > 0 && zArr[i23]) {
                        iArr5[i22] = i24;
                        i22++;
                    }
                }
                if (unsignedExpGolombCodedInt4 > 0 && zArr[i14]) {
                    iArr5[i22] = unsignedExpGolombCodedInt4;
                    i22++;
                }
                for (int i25 = 0; i25 < i10; i25++) {
                    int i26 = iArrCopyOf[i25] + unsignedExpGolombCodedInt4;
                    if (i26 > 0 && zArr[i6 + i25]) {
                        iArr5[i22] = i26;
                        i22++;
                    }
                }
                iArrCopyOf = Arrays.copyOf(iArr5, i22);
                iArr = iArrCopyOf2;
                i6 = i17;
                i10 = i22;
            }
        }
    }

    private static void skipHrdParameters(ParsableNalUnitBitArray parsableNalUnitBitArray) {
        int unsignedExpGolombCodedInt = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 1;
        parsableNalUnitBitArray.skipBits(8);
        for (int i6 = 0; i6 < unsignedExpGolombCodedInt; i6++) {
            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            parsableNalUnitBitArray.skipBit();
        }
        parsableNalUnitBitArray.skipBits(20);
    }

    private static void skipScalingList(ParsableNalUnitBitArray parsableNalUnitBitArray, int i6) {
        int signedExpGolombCodedInt = 8;
        int i10 = 8;
        for (int i11 = 0; i11 < i6; i11++) {
            if (signedExpGolombCodedInt != 0) {
                signedExpGolombCodedInt = ((parsableNalUnitBitArray.readSignedExpGolombCodedInt() + i10) + 256) % 256;
            }
            if (signedExpGolombCodedInt != 0) {
                i10 = signedExpGolombCodedInt;
            }
        }
    }

    private static void skipToH265VuiPresentFlagAfterDpbSize(ParsableNalUnitBitArray parsableNalUnitBitArray, int i6, boolean[][] zArr) {
        int unsignedExpGolombCodedInt = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 2;
        if (parsableNalUnitBitArray.readBit()) {
            parsableNalUnitBitArray.skipBits(unsignedExpGolombCodedInt);
        } else {
            for (int i10 = 1; i10 < i6; i10++) {
                for (int i11 = 0; i11 < i10; i11++) {
                    if (zArr[i10][i11]) {
                        parsableNalUnitBitArray.skipBits(unsignedExpGolombCodedInt);
                    }
                }
            }
        }
        int unsignedExpGolombCodedInt2 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        for (int i12 = 1; i12 <= unsignedExpGolombCodedInt2; i12++) {
            parsableNalUnitBitArray.skipBits(8);
        }
    }

    public static int unescapeStream(byte[] bArr, int i6) {
        int i10;
        synchronized (scratchEscapePositionsLock) {
            int iFindNextUnescapeIndex = 0;
            int i11 = 0;
            while (iFindNextUnescapeIndex < i6) {
                try {
                    iFindNextUnescapeIndex = findNextUnescapeIndex(bArr, iFindNextUnescapeIndex, i6);
                    if (iFindNextUnescapeIndex < i6) {
                        int[] iArr = scratchEscapePositions;
                        if (iArr.length <= i11) {
                            scratchEscapePositions = Arrays.copyOf(iArr, iArr.length * 2);
                        }
                        scratchEscapePositions[i11] = iFindNextUnescapeIndex;
                        iFindNextUnescapeIndex += 3;
                        i11++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            i10 = i6 - i11;
            int i12 = 0;
            int i13 = 0;
            for (int i14 = 0; i14 < i11; i14++) {
                int i15 = scratchEscapePositions[i14] - i13;
                System.arraycopy(bArr, i13, bArr, i12, i15);
                int i16 = i12 + i15;
                int i17 = i16 + 1;
                bArr[i16] = 0;
                i12 = i16 + 2;
                bArr[i17] = 0;
                i13 += i15 + 3;
            }
            System.arraycopy(bArr, i13, bArr, i12, i10 - i12);
        }
        return i10;
    }

    public static boolean isNalUnitSei(Format format, byte b8) {
        if ((Objects.equals(format.sampleMimeType, MimeTypes.VIDEO_H264) || MimeTypes.containsCodecsCorrespondingToMimeType(format.codecs, MimeTypes.VIDEO_H264)) && (b8 & 31) == 6) {
            return true;
        }
        return (Objects.equals(format.sampleMimeType, MimeTypes.VIDEO_H265) || MimeTypes.containsCodecsCorrespondingToMimeType(format.codecs, MimeTypes.VIDEO_H265)) && ((b8 & 126) >> 1) == 39;
    }
}
