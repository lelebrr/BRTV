package androidx.media3.extractor;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.container.NalUnitUtil;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class AvcConfig {
    public final int bitdepthChroma;
    public final int bitdepthLuma;
    public final String codecs;
    public final int colorRange;
    public final int colorSpace;
    public final int colorTransfer;
    public final int height;
    public final List<byte[]> initializationData;
    public final int maxNumReorderFrames;
    public final int nalUnitLengthFieldLength;
    public final float pixelWidthHeightRatio;
    public final int width;

    private AvcConfig(List<byte[]> list, int i6, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, float f, String str) {
        this.initializationData = list;
        this.nalUnitLengthFieldLength = i6;
        this.width = i10;
        this.height = i11;
        this.bitdepthLuma = i12;
        this.bitdepthChroma = i13;
        this.colorSpace = i14;
        this.colorRange = i15;
        this.colorTransfer = i16;
        this.maxNumReorderFrames = i17;
        this.pixelWidthHeightRatio = f;
        this.codecs = str;
    }

    private static byte[] buildNalUnitForChild(ParsableByteArray parsableByteArray) {
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int position = parsableByteArray.getPosition();
        parsableByteArray.skipBytes(unsignedShort);
        return CodecSpecificDataUtil.buildNalUnit(parsableByteArray.getData(), position, unsignedShort);
    }

    public static AvcConfig parse(ParsableByteArray parsableByteArray) throws ParserException {
        String strBuildAvcCodecString;
        int i6;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        float f;
        try {
            parsableByteArray.skipBytes(4);
            int unsignedByte = (parsableByteArray.readUnsignedByte() & 3) + 1;
            if (unsignedByte == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int unsignedByte2 = parsableByteArray.readUnsignedByte() & 31;
            for (int i17 = 0; i17 < unsignedByte2; i17++) {
                arrayList.add(buildNalUnitForChild(parsableByteArray));
            }
            int unsignedByte3 = parsableByteArray.readUnsignedByte();
            for (int i18 = 0; i18 < unsignedByte3; i18++) {
                arrayList.add(buildNalUnitForChild(parsableByteArray));
            }
            if (unsignedByte2 > 0) {
                NalUnitUtil.SpsData spsNalUnit = NalUnitUtil.parseSpsNalUnit((byte[]) arrayList.get(0), NalUnitUtil.NAL_START_CODE.length, ((byte[]) arrayList.get(0)).length);
                int i19 = spsNalUnit.width;
                int i20 = spsNalUnit.height;
                int i21 = spsNalUnit.bitDepthLumaMinus8 + 8;
                int i22 = spsNalUnit.bitDepthChromaMinus8 + 8;
                int i23 = spsNalUnit.colorSpace;
                int i24 = spsNalUnit.colorRange;
                int i25 = spsNalUnit.colorTransfer;
                int i26 = spsNalUnit.maxNumReorderFrames;
                float f3 = spsNalUnit.pixelWidthHeightRatio;
                strBuildAvcCodecString = CodecSpecificDataUtil.buildAvcCodecString(spsNalUnit.profileIdc, spsNalUnit.constraintsFlagsAndReservedZero2Bits, spsNalUnit.levelIdc);
                i15 = i25;
                i16 = i26;
                f = f3;
                i12 = i22;
                i13 = i23;
                i14 = i24;
                i6 = i19;
                i10 = i20;
                i11 = i21;
            } else {
                strBuildAvcCodecString = null;
                i6 = -1;
                i10 = -1;
                i11 = -1;
                i12 = -1;
                i13 = -1;
                i14 = -1;
                i15 = -1;
                i16 = 16;
                f = 1.0f;
            }
            return new AvcConfig(arrayList, unsignedByte, i6, i10, i11, i12, i13, i14, i15, i16, f, strBuildAvcCodecString);
        } catch (ArrayIndexOutOfBoundsException e5) {
            throw ParserException.createForMalformedContainer("Error parsing AVC config", e5);
        }
    }
}
