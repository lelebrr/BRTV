package okio;

import j9.i;
import java.util.Arrays;
import okio.ByteString;

/* compiled from: MyApplication */
/* renamed from: okio.-Base64, reason: invalid class name */
/* loaded from: classes.dex */
public final class Base64 {
    private static final byte[] BASE64;
    private static final byte[] BASE64_URL_SAFE;

    static {
        ByteString.Companion companion = ByteString.Companion;
        BASE64 = companion.encodeUtf8("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").getData$okio();
        BASE64_URL_SAFE = companion.encodeUtf8("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_").getData$okio();
    }

    public static final byte[] decodeBase64ToArray(String str) {
        int i6;
        char cCharAt;
        i.f(str, "<this>");
        int length = str.length();
        while (length > 0 && ((cCharAt = str.charAt(length - 1)) == '=' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == ' ' || cCharAt == '\t')) {
            length--;
        }
        int i10 = (int) ((length * 6) / 8);
        byte[] bArr = new byte[i10];
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < length; i14++) {
            char cCharAt2 = str.charAt(i14);
            if ('A' <= cCharAt2 && cCharAt2 < '[') {
                i6 = cCharAt2 - 'A';
            } else if ('a' <= cCharAt2 && cCharAt2 < '{') {
                i6 = cCharAt2 - 'G';
            } else if ('0' <= cCharAt2 && cCharAt2 < ':') {
                i6 = cCharAt2 + 4;
            } else if (cCharAt2 == '+' || cCharAt2 == '-') {
                i6 = 62;
            } else if (cCharAt2 == '/' || cCharAt2 == '_') {
                i6 = 63;
            } else {
                if (cCharAt2 != '\n' && cCharAt2 != '\r' && cCharAt2 != ' ' && cCharAt2 != '\t') {
                    return null;
                }
            }
            i12 = (i12 << 6) | i6;
            i11++;
            if (i11 % 4 == 0) {
                bArr[i13] = (byte) (i12 >> 16);
                int i15 = i13 + 2;
                bArr[i13 + 1] = (byte) (i12 >> 8);
                i13 += 3;
                bArr[i15] = (byte) i12;
            }
        }
        int i16 = i11 % 4;
        if (i16 == 1) {
            return null;
        }
        if (i16 == 2) {
            bArr[i13] = (byte) ((i12 << 12) >> 16);
            i13++;
        } else if (i16 == 3) {
            int i17 = i12 << 6;
            int i18 = i13 + 1;
            bArr[i13] = (byte) (i17 >> 16);
            i13 += 2;
            bArr[i18] = (byte) (i17 >> 8);
        }
        if (i13 == i10) {
            return bArr;
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, i13);
        i.e(bArrCopyOf, "copyOf(...)");
        return bArrCopyOf;
    }

    public static final String encodeBase64(byte[] bArr, byte[] bArr2) {
        i.f(bArr, "<this>");
        i.f(bArr2, "map");
        byte[] bArr3 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i6 = 0;
        int i10 = 0;
        while (i6 < length) {
            byte b8 = bArr[i6];
            int i11 = i6 + 2;
            byte b10 = bArr[i6 + 1];
            i6 += 3;
            byte b11 = bArr[i11];
            bArr3[i10] = bArr2[(b8 & 255) >> 2];
            bArr3[i10 + 1] = bArr2[((b8 & 3) << 4) | ((b10 & 255) >> 4)];
            int i12 = i10 + 3;
            bArr3[i10 + 2] = bArr2[((b10 & 15) << 2) | ((b11 & 255) >> 6)];
            i10 += 4;
            bArr3[i12] = bArr2[b11 & Utf8.REPLACEMENT_BYTE];
        }
        int length2 = bArr.length - length;
        if (length2 == 1) {
            byte b12 = bArr[i6];
            bArr3[i10] = bArr2[(b12 & 255) >> 2];
            bArr3[i10 + 1] = bArr2[(b12 & 3) << 4];
            bArr3[i10 + 2] = 61;
            bArr3[i10 + 3] = 61;
        } else if (length2 == 2) {
            int i13 = i6 + 1;
            byte b13 = bArr[i6];
            byte b14 = bArr[i13];
            bArr3[i10] = bArr2[(b13 & 255) >> 2];
            bArr3[i10 + 1] = bArr2[((b13 & 3) << 4) | ((b14 & 255) >> 4)];
            bArr3[i10 + 2] = bArr2[(b14 & 15) << 2];
            bArr3[i10 + 3] = 61;
        }
        return _JvmPlatformKt.toUtf8String(bArr3);
    }

    public static /* synthetic */ String encodeBase64$default(byte[] bArr, byte[] bArr2, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            bArr2 = BASE64;
        }
        return encodeBase64(bArr, bArr2);
    }

    public static final byte[] getBASE64() {
        return BASE64;
    }

    public static final byte[] getBASE64_URL_SAFE() {
        return BASE64_URL_SAFE;
    }

    public static /* synthetic */ void getBASE64$annotations() {
    }

    public static /* synthetic */ void getBASE64_URL_SAFE$annotations() {
    }
}
