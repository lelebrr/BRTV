package androidx.media3.common;

import android.os.Bundle;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.util.Arrays;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class ColorInfo {
    public final int chromaBitdepth;
    public final int colorRange;
    public final int colorSpace;
    public final int colorTransfer;
    private int hashCode;
    public final byte[] hdrStaticInfo;
    public final int lumaBitdepth;
    public static final ColorInfo SDR_BT709_LIMITED = new Builder().setColorSpace(1).setColorRange(2).setColorTransfer(3).build();
    public static final ColorInfo SRGB_BT709_FULL = new Builder().setColorSpace(1).setColorRange(1).setColorTransfer(2).build();
    private static final String FIELD_COLOR_SPACE = Util.intToStringMaxRadix(0);
    private static final String FIELD_COLOR_RANGE = Util.intToStringMaxRadix(1);
    private static final String FIELD_COLOR_TRANSFER = Util.intToStringMaxRadix(2);
    private static final String FIELD_HDR_STATIC_INFO = Util.intToStringMaxRadix(3);
    private static final String FIELD_LUMA_BITDEPTH = Util.intToStringMaxRadix(4);
    private static final String FIELD_CHROMA_BITDEPTH = Util.intToStringMaxRadix(5);

    /* compiled from: MyApplication */
    public static final class Builder {
        private int chromaBitdepth;
        private int colorRange;
        private int colorSpace;
        private int colorTransfer;
        private byte[] hdrStaticInfo;
        private int lumaBitdepth;

        public ColorInfo build() {
            return new ColorInfo(this.colorSpace, this.colorRange, this.colorTransfer, this.hdrStaticInfo, this.lumaBitdepth, this.chromaBitdepth);
        }

        public Builder setChromaBitdepth(int i6) {
            this.chromaBitdepth = i6;
            return this;
        }

        public Builder setColorRange(int i6) {
            this.colorRange = i6;
            return this;
        }

        public Builder setColorSpace(int i6) {
            this.colorSpace = i6;
            return this;
        }

        public Builder setColorTransfer(int i6) {
            this.colorTransfer = i6;
            return this;
        }

        public Builder setHdrStaticInfo(byte[] bArr) {
            this.hdrStaticInfo = bArr;
            return this;
        }

        public Builder setLumaBitdepth(int i6) {
            this.lumaBitdepth = i6;
            return this;
        }

        public Builder() {
            this.colorSpace = -1;
            this.colorRange = -1;
            this.colorTransfer = -1;
            this.lumaBitdepth = -1;
            this.chromaBitdepth = -1;
        }

        private Builder(ColorInfo colorInfo) {
            this.colorSpace = colorInfo.colorSpace;
            this.colorRange = colorInfo.colorRange;
            this.colorTransfer = colorInfo.colorTransfer;
            this.hdrStaticInfo = colorInfo.hdrStaticInfo;
            this.lumaBitdepth = colorInfo.lumaBitdepth;
            this.chromaBitdepth = colorInfo.chromaBitdepth;
        }
    }

    private static String chromaBitdepthToString(int i6) {
        if (i6 == -1) {
            return "NA";
        }
        return i6 + "bit Chroma";
    }

    private static String colorRangeToString(int i6) {
        return i6 != -1 ? i6 != 1 ? i6 != 2 ? a.e.n(i6, "Undefined color range ") : "Limited range" : "Full range" : "Unset color range";
    }

    public static int colorSpaceToIsoColorPrimaries(int i6) {
        if (i6 != 2) {
            return i6 != 6 ? 1 : 9;
        }
        return 5;
    }

    public static int colorSpaceToIsoMatrixCoefficients(int i6) {
        if (i6 != 2) {
            return i6 != 6 ? 1 : 9;
        }
        return 6;
    }

    private static String colorSpaceToString(int i6) {
        return i6 != -1 ? i6 != 6 ? i6 != 1 ? i6 != 2 ? a.e.n(i6, "Undefined color space ") : "BT601" : "BT709" : "BT2020" : "Unset color space";
    }

    public static int colorTransferToIsoTransferCharacteristics(int i6) {
        if (i6 == 1) {
            return 8;
        }
        if (i6 == 2) {
            return 13;
        }
        if (i6 == 6) {
            return 16;
        }
        if (i6 != 7) {
            return i6 != 10 ? 1 : 4;
        }
        return 18;
    }

    private static String colorTransferToString(int i6) {
        return i6 != -1 ? i6 != 10 ? i6 != 1 ? i6 != 2 ? i6 != 3 ? i6 != 6 ? i6 != 7 ? a.e.n(i6, "Undefined color transfer ") : "HLG" : "ST2084 PQ" : "SDR SMPTE 170M" : "sRGB" : "Linear" : "Gamma 2.2" : "Unset color transfer";
    }

    public static ColorInfo fromBundle(Bundle bundle) {
        return new ColorInfo(bundle.getInt(FIELD_COLOR_SPACE, -1), bundle.getInt(FIELD_COLOR_RANGE, -1), bundle.getInt(FIELD_COLOR_TRANSFER, -1), bundle.getByteArray(FIELD_HDR_STATIC_INFO), bundle.getInt(FIELD_LUMA_BITDEPTH, -1), bundle.getInt(FIELD_CHROMA_BITDEPTH, -1));
    }

    public static boolean isEquivalentToAssumedSdrDefault(ColorInfo colorInfo) {
        int i6;
        int i10;
        int i11;
        int i12;
        if (colorInfo == null) {
            return true;
        }
        int i13 = colorInfo.colorSpace;
        return (i13 == -1 || i13 == 1 || i13 == 2) && ((i6 = colorInfo.colorRange) == -1 || i6 == 2) && (((i10 = colorInfo.colorTransfer) == -1 || i10 == 3) && colorInfo.hdrStaticInfo == null && (((i11 = colorInfo.chromaBitdepth) == -1 || i11 == 8) && ((i12 = colorInfo.lumaBitdepth) == -1 || i12 == 8)));
    }

    public static boolean isTransferHdr(ColorInfo colorInfo) {
        int i6;
        return colorInfo != null && ((i6 = colorInfo.colorTransfer) == 7 || i6 == 6);
    }

    public static int isoColorPrimariesToColorSpace(int i6) {
        if (i6 == 1) {
            return 1;
        }
        if (i6 != 9) {
            return (i6 == 4 || i6 == 5 || i6 == 6 || i6 == 7) ? 2 : -1;
        }
        return 6;
    }

    public static int isoTransferCharacteristicsToColorTransfer(int i6) {
        if (i6 == 1) {
            return 3;
        }
        if (i6 == 4) {
            return 10;
        }
        if (i6 == 13) {
            return 2;
        }
        if (i6 == 16) {
            return 6;
        }
        if (i6 != 18) {
            return (i6 == 6 || i6 == 7) ? 3 : -1;
        }
        return 7;
    }

    private static String lumaBitdepthToString(int i6) {
        if (i6 == -1) {
            return "NA";
        }
        return i6 + "bit Luma";
    }

    public Builder buildUpon() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ColorInfo.class != obj.getClass()) {
            return false;
        }
        ColorInfo colorInfo = (ColorInfo) obj;
        return this.colorSpace == colorInfo.colorSpace && this.colorRange == colorInfo.colorRange && this.colorTransfer == colorInfo.colorTransfer && Arrays.equals(this.hdrStaticInfo, colorInfo.hdrStaticInfo) && this.lumaBitdepth == colorInfo.lumaBitdepth && this.chromaBitdepth == colorInfo.chromaBitdepth;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = ((((Arrays.hashCode(this.hdrStaticInfo) + ((((((527 + this.colorSpace) * 31) + this.colorRange) * 31) + this.colorTransfer) * 31)) * 31) + this.lumaBitdepth) * 31) + this.chromaBitdepth;
        }
        return this.hashCode;
    }

    public boolean isBitdepthValid() {
        return (this.lumaBitdepth == -1 || this.chromaBitdepth == -1) ? false : true;
    }

    public boolean isDataSpaceValid() {
        return (this.colorSpace == -1 || this.colorRange == -1 || this.colorTransfer == -1) ? false : true;
    }

    public boolean isValid() {
        return isBitdepthValid() || isDataSpaceValid();
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(FIELD_COLOR_SPACE, this.colorSpace);
        bundle.putInt(FIELD_COLOR_RANGE, this.colorRange);
        bundle.putInt(FIELD_COLOR_TRANSFER, this.colorTransfer);
        bundle.putByteArray(FIELD_HDR_STATIC_INFO, this.hdrStaticInfo);
        bundle.putInt(FIELD_LUMA_BITDEPTH, this.lumaBitdepth);
        bundle.putInt(FIELD_CHROMA_BITDEPTH, this.chromaBitdepth);
        return bundle;
    }

    public String toLogString() {
        String str;
        String invariant = isDataSpaceValid() ? Util.formatInvariant("%s/%s/%s", colorSpaceToString(this.colorSpace), colorRangeToString(this.colorRange), colorTransferToString(this.colorTransfer)) : "NA/NA/NA";
        if (isBitdepthValid()) {
            str = this.lumaBitdepth + "/" + this.chromaBitdepth;
        } else {
            str = "NA/NA";
        }
        return ea.q.i(invariant, "/", str);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ColorInfo(");
        sb.append(colorSpaceToString(this.colorSpace));
        sb.append(", ");
        sb.append(colorRangeToString(this.colorRange));
        sb.append(", ");
        sb.append(colorTransferToString(this.colorTransfer));
        sb.append(", ");
        sb.append(this.hdrStaticInfo != null);
        sb.append(", ");
        sb.append(lumaBitdepthToString(this.lumaBitdepth));
        sb.append(", ");
        return a.e.t(sb, chromaBitdepthToString(this.chromaBitdepth), ")");
    }

    private ColorInfo(int i6, int i10, int i11, byte[] bArr, int i12, int i13) {
        this.colorSpace = i6;
        this.colorRange = i10;
        this.colorTransfer = i11;
        this.hdrStaticInfo = bArr;
        this.lumaBitdepth = i12;
        this.chromaBitdepth = i13;
    }
}
