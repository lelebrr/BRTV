package com.alibaba.fastjson.util;

import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class Base64 {
    public static final char[] CA;
    public static final int[] IA;

    static {
        char[] charArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        CA = charArray;
        int[] iArr = new int[256];
        IA = iArr;
        Arrays.fill(iArr, -1);
        int length = charArray.length;
        for (int i6 = 0; i6 < length; i6++) {
            IA[CA[i6]] = i6;
        }
        IA[61] = 0;
    }

    public static byte[] decodeFast(char[] cArr, int i6, int i10) {
        int i11;
        int i12 = 0;
        if (i10 == 0) {
            return new byte[0];
        }
        int i13 = (i6 + i10) - 1;
        int i14 = i6;
        while (i14 < i13 && IA[cArr[i14]] < 0) {
            i14++;
        }
        while (i13 > 0 && IA[cArr[i13]] < 0) {
            i13--;
        }
        int i15 = cArr[i13] == '=' ? cArr[i13 + (-1)] == '=' ? 2 : 1 : 0;
        int i16 = (i13 - i14) + 1;
        if (i10 > 76) {
            i11 = (cArr[76] == '\r' ? i16 / 78 : 0) << 1;
        } else {
            i11 = 0;
        }
        int i17 = (((i16 - i11) * 6) >> 3) - i15;
        byte[] bArr = new byte[i17];
        int i18 = (i17 / 3) * 3;
        int i19 = 0;
        loop2: while (true) {
            int i20 = 0;
            while (i19 < i18) {
                int[] iArr = IA;
                int i21 = i14 + 4;
                int i22 = iArr[cArr[i14 + 3]] | (iArr[cArr[i14 + 1]] << 12) | (iArr[cArr[i14]] << 18) | (iArr[cArr[i14 + 2]] << 6);
                bArr[i19] = (byte) (i22 >> 16);
                int i23 = i19 + 2;
                bArr[i19 + 1] = (byte) (i22 >> 8);
                i19 += 3;
                bArr[i23] = (byte) i22;
                if (i11 <= 0 || (i20 = i20 + 1) != 19) {
                    i14 = i21;
                }
            }
            i14 += 6;
        }
        if (i19 < i17) {
            int i24 = 0;
            while (i14 <= i13 - i15) {
                i12 |= IA[cArr[i14]] << (18 - (i24 * 6));
                i24++;
                i14++;
            }
            int i25 = 16;
            while (i19 < i17) {
                bArr[i19] = (byte) (i12 >> i25);
                i25 -= 8;
                i19++;
            }
        }
        return bArr;
    }

    public static byte[] decodeFast(String str, int i6, int i10) {
        int i11;
        if (i10 == 0) {
            return new byte[0];
        }
        int i12 = (i6 + i10) - 1;
        int i13 = i6;
        while (i13 < i12 && IA[str.charAt(i13)] < 0) {
            i13++;
        }
        while (i12 > 0 && IA[str.charAt(i12)] < 0) {
            i12--;
        }
        int i14 = str.charAt(i12) == '=' ? str.charAt(i12 + (-1)) == '=' ? 2 : 1 : 0;
        int i15 = (i12 - i13) + 1;
        if (i10 > 76) {
            i11 = (str.charAt(76) == '\r' ? i15 / 78 : 0) << 1;
        } else {
            i11 = 0;
        }
        int i16 = (((i15 - i11) * 6) >> 3) - i14;
        byte[] bArr = new byte[i16];
        int i17 = (i16 / 3) * 3;
        int i18 = 0;
        int i19 = 0;
        while (i18 < i17) {
            int[] iArr = IA;
            int i20 = i13 + 4;
            int i21 = iArr[str.charAt(i13 + 3)] | (iArr[str.charAt(i13 + 1)] << 12) | (iArr[str.charAt(i13)] << 18) | (iArr[str.charAt(i13 + 2)] << 6);
            bArr[i18] = (byte) (i21 >> 16);
            int i22 = i18 + 2;
            bArr[i18 + 1] = (byte) (i21 >> 8);
            i18 += 3;
            bArr[i22] = (byte) i21;
            if (i11 <= 0 || (i19 = i19 + 1) != 19) {
                i13 = i20;
            } else {
                i13 += 6;
                i19 = 0;
            }
        }
        if (i18 < i16) {
            int i23 = 0;
            int i24 = 0;
            while (i13 <= i12 - i14) {
                i23 |= IA[str.charAt(i13)] << (18 - (i24 * 6));
                i24++;
                i13++;
            }
            int i25 = 16;
            while (i18 < i16) {
                bArr[i18] = (byte) (i23 >> i25);
                i25 -= 8;
                i18++;
            }
        }
        return bArr;
    }

    public static byte[] decodeFast(String str) {
        int i6;
        int length = str.length();
        if (length == 0) {
            return new byte[0];
        }
        int i10 = length - 1;
        int i11 = 0;
        while (i11 < i10 && IA[str.charAt(i11) & 255] < 0) {
            i11++;
        }
        while (i10 > 0 && IA[str.charAt(i10) & 255] < 0) {
            i10--;
        }
        int i12 = str.charAt(i10) == '=' ? str.charAt(i10 + (-1)) == '=' ? 2 : 1 : 0;
        int i13 = (i10 - i11) + 1;
        if (length > 76) {
            i6 = (str.charAt(76) == '\r' ? i13 / 78 : 0) << 1;
        } else {
            i6 = 0;
        }
        int i14 = (((i13 - i6) * 6) >> 3) - i12;
        byte[] bArr = new byte[i14];
        int i15 = (i14 / 3) * 3;
        int i16 = 0;
        int i17 = 0;
        while (i16 < i15) {
            int[] iArr = IA;
            int i18 = i11 + 4;
            int i19 = iArr[str.charAt(i11 + 3)] | (iArr[str.charAt(i11 + 1)] << 12) | (iArr[str.charAt(i11)] << 18) | (iArr[str.charAt(i11 + 2)] << 6);
            bArr[i16] = (byte) (i19 >> 16);
            int i20 = i16 + 2;
            bArr[i16 + 1] = (byte) (i19 >> 8);
            i16 += 3;
            bArr[i20] = (byte) i19;
            if (i6 <= 0 || (i17 = i17 + 1) != 19) {
                i11 = i18;
            } else {
                i11 += 6;
                i17 = 0;
            }
        }
        if (i16 < i14) {
            int i21 = 0;
            int i22 = 0;
            while (i11 <= i10 - i12) {
                i21 |= IA[str.charAt(i11)] << (18 - (i22 * 6));
                i22++;
                i11++;
            }
            int i23 = 16;
            while (i16 < i14) {
                bArr[i16] = (byte) (i21 >> i23);
                i23 -= 8;
                i16++;
            }
        }
        return bArr;
    }
}
