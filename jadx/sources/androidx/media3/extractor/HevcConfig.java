package androidx.media3.extractor;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.container.NalUnitUtil;
import java.util.Collections;
import java.util.List;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class HevcConfig {
    public final int bitdepthChroma;
    public final int bitdepthLuma;
    public final String codecs;
    public final int colorRange;
    public final int colorSpace;
    public final int colorTransfer;
    public final int height;
    public final List<byte[]> initializationData;
    public final int maxNumReorderPics;
    public final int maxSubLayers;
    public final int nalUnitLengthFieldLength;
    public final float pixelWidthHeightRatio;
    public final int stereoMode;
    public final NalUnitUtil.H265VpsData vpsData;
    public final int width;

    private HevcConfig(List<byte[]> list, int i6, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, float f, int i19, String str, NalUnitUtil.H265VpsData h265VpsData) {
        this.initializationData = list;
        this.nalUnitLengthFieldLength = i6;
        this.maxSubLayers = i10;
        this.width = i11;
        this.height = i12;
        this.bitdepthLuma = i13;
        this.bitdepthChroma = i14;
        this.colorSpace = i15;
        this.colorRange = i16;
        this.colorTransfer = i17;
        this.stereoMode = i18;
        this.pixelWidthHeightRatio = f;
        this.maxNumReorderPics = i19;
        this.codecs = str;
        this.vpsData = h265VpsData;
    }

    public static HevcConfig parse(ParsableByteArray parsableByteArray) throws ParserException {
        return parseImpl(parsableByteArray, false, null);
    }

    private static HevcConfig parseImpl(ParsableByteArray parsableByteArray, boolean z7, NalUnitUtil.H265VpsData h265VpsData) throws ParserException {
        int i6;
        NalUnitUtil.H265Sei3dRefDisplayInfoData h265Sei3dRefDisplayInfo;
        int i10;
        int i11;
        int i12;
        int i13;
        try {
            if (z7) {
                parsableByteArray.skipBytes(4);
            } else {
                parsableByteArray.skipBytes(21);
            }
            int unsignedByte = parsableByteArray.readUnsignedByte() & 3;
            int unsignedByte2 = parsableByteArray.readUnsignedByte();
            int position = parsableByteArray.getPosition();
            int i14 = 0;
            int i15 = 0;
            for (int i16 = 0; i16 < unsignedByte2; i16++) {
                parsableByteArray.skipBytes(1);
                int unsignedShort = parsableByteArray.readUnsignedShort();
                for (int i17 = 0; i17 < unsignedShort; i17++) {
                    int unsignedShort2 = parsableByteArray.readUnsignedShort();
                    i15 += unsignedShort2 + 4;
                    parsableByteArray.skipBytes(unsignedShort2);
                }
            }
            parsableByteArray.setPosition(position);
            byte[] bArr = new byte[i15];
            NalUnitUtil.H265VpsData h265VpsData2 = h265VpsData;
            String strBuildHevcCodecString = null;
            int i18 = 0;
            int i19 = 0;
            int i20 = -1;
            int i21 = -1;
            int i22 = -1;
            int i23 = -1;
            int i24 = -1;
            int i25 = -1;
            int i26 = -1;
            int i27 = -1;
            int i28 = -1;
            float f = 1.0f;
            int i29 = -1;
            while (i18 < unsignedByte2) {
                int unsignedByte3 = parsableByteArray.readUnsignedByte() & 63;
                int unsignedShort3 = parsableByteArray.readUnsignedShort();
                NalUnitUtil.H265VpsData h265VpsNalUnit = h265VpsData2;
                int i30 = 0;
                while (i30 < unsignedShort3) {
                    int unsignedShort4 = parsableByteArray.readUnsignedShort();
                    byte[] bArr2 = NalUnitUtil.NAL_START_CODE;
                    int i31 = unsignedByte2;
                    System.arraycopy(bArr2, i14, bArr, i19, bArr2.length);
                    int length = i19 + bArr2.length;
                    System.arraycopy(parsableByteArray.getData(), parsableByteArray.getPosition(), bArr, length, unsignedShort4);
                    if (unsignedByte3 == 32 && i30 == 0) {
                        h265VpsNalUnit = NalUnitUtil.parseH265VpsNalUnit(bArr, length, length + unsignedShort4);
                        i6 = unsignedShort3;
                    } else {
                        if (unsignedByte3 == 33 && i30 == 0) {
                            NalUnitUtil.H265SpsData h265SpsNalUnit = NalUnitUtil.parseH265SpsNalUnit(bArr, length, length + unsignedShort4, h265VpsNalUnit);
                            int i32 = h265SpsNalUnit.maxSubLayersMinus1 + 1;
                            int i33 = h265SpsNalUnit.width;
                            int i34 = h265SpsNalUnit.height;
                            i23 = h265SpsNalUnit.bitDepthLumaMinus8 + 8;
                            i24 = h265SpsNalUnit.bitDepthChromaMinus8 + 8;
                            int i35 = h265SpsNalUnit.colorSpace;
                            int i36 = h265SpsNalUnit.colorRange;
                            int i37 = h265SpsNalUnit.colorTransfer;
                            float f3 = h265SpsNalUnit.pixelWidthHeightRatio;
                            int i38 = h265SpsNalUnit.maxNumReorderPics;
                            NalUnitUtil.H265ProfileTierLevel h265ProfileTierLevel = h265SpsNalUnit.profileTierLevel;
                            if (h265ProfileTierLevel != null) {
                                i10 = i38;
                                i11 = i32;
                                i6 = unsignedShort3;
                                i12 = i34;
                                i13 = i33;
                                strBuildHevcCodecString = CodecSpecificDataUtil.buildHevcCodecString(h265ProfileTierLevel.generalProfileSpace, h265ProfileTierLevel.generalTierFlag, h265ProfileTierLevel.generalProfileIdc, h265ProfileTierLevel.generalProfileCompatibilityFlags, h265ProfileTierLevel.constraintBytes, h265ProfileTierLevel.generalLevelIdc);
                            } else {
                                i10 = i38;
                                i11 = i32;
                                i6 = unsignedShort3;
                                i12 = i34;
                                i13 = i33;
                            }
                            i20 = i11;
                            i21 = i13;
                            i25 = i35;
                            i22 = i12;
                            i29 = i10;
                            f = f3;
                            i27 = i37;
                            i26 = i36;
                        } else {
                            i6 = unsignedShort3;
                            if (unsignedByte3 == 39 && i30 == 0 && (h265Sei3dRefDisplayInfo = NalUnitUtil.parseH265Sei3dRefDisplayInfo(bArr, length, length + unsignedShort4)) != null && h265VpsNalUnit != null) {
                                i28 = h265Sei3dRefDisplayInfo.leftViewId == ((NalUnitUtil.H265LayerInfo) h265VpsNalUnit.layerInfos.get(0)).viewId ? 4 : 5;
                            }
                        }
                        i19 = length + unsignedShort4;
                        parsableByteArray.skipBytes(unsignedShort4);
                        i30++;
                        unsignedByte2 = i31;
                        unsignedShort3 = i6;
                        i14 = 0;
                    }
                    i19 = length + unsignedShort4;
                    parsableByteArray.skipBytes(unsignedShort4);
                    i30++;
                    unsignedByte2 = i31;
                    unsignedShort3 = i6;
                    i14 = 0;
                }
                i18++;
                h265VpsData2 = h265VpsNalUnit;
                i14 = 0;
            }
            return new HevcConfig(i15 == 0 ? Collections.emptyList() : Collections.singletonList(bArr), unsignedByte + 1, i20, i21, i22, i23, i24, i25, i26, i27, i28, f, i29, strBuildHevcCodecString, h265VpsData2);
        } catch (ArrayIndexOutOfBoundsException e5) {
            throw ParserException.createForMalformedContainer("Error parsing".concat(z7 ? "L-HEVC config" : "HEVC config"), e5);
        }
    }

    public static HevcConfig parseLayered(ParsableByteArray parsableByteArray, NalUnitUtil.H265VpsData h265VpsData) throws ParserException {
        return parseImpl(parsableByteArray, true, h265VpsData);
    }
}
