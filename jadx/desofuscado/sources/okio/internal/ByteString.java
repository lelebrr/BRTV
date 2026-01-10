package okio.internal;

import j9.i;
import java.util.Arrays;
import okio.Base64;
import okio.Buffer;
import okio.SegmentedByteString;
import okio._JvmPlatformKt;
import r9.n;

/* compiled from: MyApplication */
/* renamed from: okio.internal.-ByteString, reason: invalid class name */
/* loaded from: classes.dex */
public final class ByteString {
    private static final char[] HEX_DIGIT_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x005c, code lost:
    
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final int codePointIndexToCharIndex(byte[] r18, int r19) {
        /*
            Method dump skipped, instructions count: 410
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.ByteString.codePointIndexToCharIndex(byte[], int):int");
    }

    public static final String commonBase64(okio.ByteString byteString) {
        i.f(byteString, "<this>");
        return Base64.encodeBase64$default(byteString.getData$okio(), null, 1, null);
    }

    public static final String commonBase64Url(okio.ByteString byteString) {
        i.f(byteString, "<this>");
        return Base64.encodeBase64(byteString.getData$okio(), Base64.getBASE64_URL_SAFE());
    }

    public static final int commonCompareTo(okio.ByteString byteString, okio.ByteString byteString2) {
        i.f(byteString, "<this>");
        i.f(byteString2, "other");
        int size = byteString.size();
        int size2 = byteString2.size();
        int iMin = Math.min(size, size2);
        for (int i6 = 0; i6 < iMin; i6++) {
            int i10 = byteString.getByte(i6) & 255;
            int i11 = byteString2.getByte(i6) & 255;
            if (i10 != i11) {
                return i10 < i11 ? -1 : 1;
            }
        }
        if (size == size2) {
            return 0;
        }
        return size < size2 ? -1 : 1;
    }

    public static final void commonCopyInto(okio.ByteString byteString, int i6, byte[] bArr, int i10, int i11) {
        i.f(byteString, "<this>");
        i.f(bArr, "target");
        x8.i.E(byteString.getData$okio(), i10, i6, bArr, i11 + i6);
    }

    public static final okio.ByteString commonDecodeBase64(String str) {
        i.f(str, "<this>");
        byte[] bArrDecodeBase64ToArray = Base64.decodeBase64ToArray(str);
        if (bArrDecodeBase64ToArray != null) {
            return new okio.ByteString(bArrDecodeBase64ToArray);
        }
        return null;
    }

    public static final okio.ByteString commonDecodeHex(String str) {
        i.f(str, "<this>");
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: ".concat(str).toString());
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i6 = 0; i6 < length; i6++) {
            int i10 = i6 * 2;
            bArr[i6] = (byte) (decodeHexDigit(str.charAt(i10 + 1)) + (decodeHexDigit(str.charAt(i10)) << 4));
        }
        return new okio.ByteString(bArr);
    }

    public static final okio.ByteString commonEncodeUtf8(String str) {
        i.f(str, "<this>");
        okio.ByteString byteString = new okio.ByteString(_JvmPlatformKt.asUtf8ToByteArray(str));
        byteString.setUtf8$okio(str);
        return byteString;
    }

    public static final boolean commonEndsWith(okio.ByteString byteString, okio.ByteString byteString2) {
        i.f(byteString, "<this>");
        i.f(byteString2, "suffix");
        return byteString.rangeEquals(byteString.size() - byteString2.size(), byteString2, 0, byteString2.size());
    }

    public static final boolean commonEquals(okio.ByteString byteString, Object obj) {
        i.f(byteString, "<this>");
        if (obj == byteString) {
            return true;
        }
        if (obj instanceof okio.ByteString) {
            okio.ByteString byteString2 = (okio.ByteString) obj;
            if (byteString2.size() == byteString.getData$okio().length && byteString2.rangeEquals(0, byteString.getData$okio(), 0, byteString.getData$okio().length)) {
                return true;
            }
        }
        return false;
    }

    public static final byte commonGetByte(okio.ByteString byteString, int i6) {
        i.f(byteString, "<this>");
        return byteString.getData$okio()[i6];
    }

    public static final int commonGetSize(okio.ByteString byteString) {
        i.f(byteString, "<this>");
        return byteString.getData$okio().length;
    }

    public static final int commonHashCode(okio.ByteString byteString) {
        i.f(byteString, "<this>");
        int hashCode$okio = byteString.getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int iHashCode = Arrays.hashCode(byteString.getData$okio());
        byteString.setHashCode$okio(iHashCode);
        return iHashCode;
    }

    public static final String commonHex(okio.ByteString byteString) {
        i.f(byteString, "<this>");
        char[] cArr = new char[byteString.getData$okio().length * 2];
        int i6 = 0;
        for (byte b8 : byteString.getData$okio()) {
            int i10 = i6 + 1;
            cArr[i6] = getHEX_DIGIT_CHARS()[(b8 >> 4) & 15];
            i6 += 2;
            cArr[i10] = getHEX_DIGIT_CHARS()[b8 & 15];
        }
        return new String(cArr);
    }

    public static final int commonIndexOf(okio.ByteString byteString, byte[] bArr, int i6) {
        i.f(byteString, "<this>");
        i.f(bArr, "other");
        int length = byteString.getData$okio().length - bArr.length;
        int iMax = Math.max(i6, 0);
        if (iMax > length) {
            return -1;
        }
        while (!SegmentedByteString.arrayRangeEquals(byteString.getData$okio(), iMax, bArr, 0, bArr.length)) {
            if (iMax == length) {
                return -1;
            }
            iMax++;
        }
        return iMax;
    }

    public static final byte[] commonInternalArray(okio.ByteString byteString) {
        i.f(byteString, "<this>");
        return byteString.getData$okio();
    }

    public static final int commonLastIndexOf(okio.ByteString byteString, okio.ByteString byteString2, int i6) {
        i.f(byteString, "<this>");
        i.f(byteString2, "other");
        return byteString.lastIndexOf(byteString2.internalArray$okio(), i6);
    }

    public static final okio.ByteString commonOf(byte[] bArr) {
        i.f(bArr, "data");
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        i.e(bArrCopyOf, "copyOf(...)");
        return new okio.ByteString(bArrCopyOf);
    }

    public static final boolean commonRangeEquals(okio.ByteString byteString, int i6, okio.ByteString byteString2, int i10, int i11) {
        i.f(byteString, "<this>");
        i.f(byteString2, "other");
        return byteString2.rangeEquals(i10, byteString.getData$okio(), i6, i11);
    }

    public static final boolean commonStartsWith(okio.ByteString byteString, okio.ByteString byteString2) {
        i.f(byteString, "<this>");
        i.f(byteString2, "prefix");
        return byteString.rangeEquals(0, byteString2, 0, byteString2.size());
    }

    public static final okio.ByteString commonSubstring(okio.ByteString byteString, int i6, int i10) {
        i.f(byteString, "<this>");
        int iResolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(byteString, i10);
        if (i6 < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        if (iResolveDefaultParameter <= byteString.getData$okio().length) {
            if (iResolveDefaultParameter - i6 >= 0) {
                return (i6 == 0 && iResolveDefaultParameter == byteString.getData$okio().length) ? byteString : new okio.ByteString(x8.i.G(byteString.getData$okio(), i6, iResolveDefaultParameter));
            }
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        throw new IllegalArgumentException(("endIndex > length(" + byteString.getData$okio().length + ')').toString());
    }

    public static final okio.ByteString commonToAsciiLowercase(okio.ByteString byteString) {
        i.f(byteString, "<this>");
        for (int i6 = 0; i6 < byteString.getData$okio().length; i6++) {
            byte b8 = byteString.getData$okio()[i6];
            if (b8 >= 65 && b8 <= 90) {
                byte[] data$okio = byteString.getData$okio();
                byte[] bArrCopyOf = Arrays.copyOf(data$okio, data$okio.length);
                i.e(bArrCopyOf, "copyOf(...)");
                bArrCopyOf[i6] = (byte) (b8 + 32);
                for (int i10 = i6 + 1; i10 < bArrCopyOf.length; i10++) {
                    byte b10 = bArrCopyOf[i10];
                    if (b10 >= 65 && b10 <= 90) {
                        bArrCopyOf[i10] = (byte) (b10 + 32);
                    }
                }
                return new okio.ByteString(bArrCopyOf);
            }
        }
        return byteString;
    }

    public static final okio.ByteString commonToAsciiUppercase(okio.ByteString byteString) {
        i.f(byteString, "<this>");
        for (int i6 = 0; i6 < byteString.getData$okio().length; i6++) {
            byte b8 = byteString.getData$okio()[i6];
            if (b8 >= 97 && b8 <= 122) {
                byte[] data$okio = byteString.getData$okio();
                byte[] bArrCopyOf = Arrays.copyOf(data$okio, data$okio.length);
                i.e(bArrCopyOf, "copyOf(...)");
                bArrCopyOf[i6] = (byte) (b8 - 32);
                for (int i10 = i6 + 1; i10 < bArrCopyOf.length; i10++) {
                    byte b10 = bArrCopyOf[i10];
                    if (b10 >= 97 && b10 <= 122) {
                        bArrCopyOf[i10] = (byte) (b10 - 32);
                    }
                }
                return new okio.ByteString(bArrCopyOf);
            }
        }
        return byteString;
    }

    public static final byte[] commonToByteArray(okio.ByteString byteString) {
        i.f(byteString, "<this>");
        byte[] data$okio = byteString.getData$okio();
        byte[] bArrCopyOf = Arrays.copyOf(data$okio, data$okio.length);
        i.e(bArrCopyOf, "copyOf(...)");
        return bArrCopyOf;
    }

    public static final okio.ByteString commonToByteString(byte[] bArr, int i6, int i10) {
        i.f(bArr, "<this>");
        int iResolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(bArr, i10);
        SegmentedByteString.checkOffsetAndCount(bArr.length, i6, iResolveDefaultParameter);
        return new okio.ByteString(x8.i.G(bArr, i6, iResolveDefaultParameter + i6));
    }

    public static final String commonToString(okio.ByteString byteString) {
        i.f(byteString, "<this>");
        if (byteString.getData$okio().length == 0) {
            return "[size=0]";
        }
        int iCodePointIndexToCharIndex = codePointIndexToCharIndex(byteString.getData$okio(), 64);
        if (iCodePointIndexToCharIndex != -1) {
            String strUtf8 = byteString.utf8();
            String strSubstring = strUtf8.substring(0, iCodePointIndexToCharIndex);
            i.e(strSubstring, "substring(...)");
            String strT = n.T(n.T(n.T(strSubstring, "\\", "\\\\"), "\n", "\\n"), "\r", "\\r");
            if (iCodePointIndexToCharIndex >= strUtf8.length()) {
                return "[text=" + strT + ']';
            }
            return "[size=" + byteString.getData$okio().length + " text=" + strT + "…]";
        }
        if (byteString.getData$okio().length <= 64) {
            return "[hex=" + byteString.hex() + ']';
        }
        StringBuilder sb = new StringBuilder("[size=");
        sb.append(byteString.getData$okio().length);
        sb.append(" hex=");
        int iResolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(byteString, 64);
        if (iResolveDefaultParameter > byteString.getData$okio().length) {
            throw new IllegalArgumentException(("endIndex > length(" + byteString.getData$okio().length + ')').toString());
        }
        if (iResolveDefaultParameter < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (iResolveDefaultParameter != byteString.getData$okio().length) {
            byteString = new okio.ByteString(x8.i.G(byteString.getData$okio(), 0, iResolveDefaultParameter));
        }
        sb.append(byteString.hex());
        sb.append("…]");
        return sb.toString();
    }

    public static final String commonUtf8(okio.ByteString byteString) {
        i.f(byteString, "<this>");
        String utf8$okio = byteString.getUtf8$okio();
        if (utf8$okio != null) {
            return utf8$okio;
        }
        String utf8String = _JvmPlatformKt.toUtf8String(byteString.internalArray$okio());
        byteString.setUtf8$okio(utf8String);
        return utf8String;
    }

    public static final void commonWrite(okio.ByteString byteString, Buffer buffer, int i6, int i10) {
        i.f(byteString, "<this>");
        i.f(buffer, "buffer");
        buffer.write(byteString.getData$okio(), i6, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int decodeHexDigit(char c5) {
        if ('0' <= c5 && c5 < ':') {
            return c5 - '0';
        }
        if ('a' <= c5 && c5 < 'g') {
            return c5 - 'W';
        }
        if ('A' <= c5 && c5 < 'G') {
            return c5 - '7';
        }
        throw new IllegalArgumentException("Unexpected hex digit: " + c5);
    }

    public static final char[] getHEX_DIGIT_CHARS() {
        return HEX_DIGIT_CHARS;
    }

    public static final boolean commonEndsWith(okio.ByteString byteString, byte[] bArr) {
        i.f(byteString, "<this>");
        i.f(bArr, "suffix");
        return byteString.rangeEquals(byteString.size() - bArr.length, bArr, 0, bArr.length);
    }

    public static final int commonLastIndexOf(okio.ByteString byteString, byte[] bArr, int i6) {
        i.f(byteString, "<this>");
        i.f(bArr, "other");
        for (int iMin = Math.min(SegmentedByteString.resolveDefaultParameter(byteString, i6), byteString.getData$okio().length - bArr.length); -1 < iMin; iMin--) {
            if (SegmentedByteString.arrayRangeEquals(byteString.getData$okio(), iMin, bArr, 0, bArr.length)) {
                return iMin;
            }
        }
        return -1;
    }

    public static final boolean commonRangeEquals(okio.ByteString byteString, int i6, byte[] bArr, int i10, int i11) {
        i.f(byteString, "<this>");
        i.f(bArr, "other");
        return i6 >= 0 && i6 <= byteString.getData$okio().length - i11 && i10 >= 0 && i10 <= bArr.length - i11 && SegmentedByteString.arrayRangeEquals(byteString.getData$okio(), i6, bArr, i10, i11);
    }

    public static final boolean commonStartsWith(okio.ByteString byteString, byte[] bArr) {
        i.f(byteString, "<this>");
        i.f(bArr, "prefix");
        return byteString.rangeEquals(0, bArr, 0, bArr.length);
    }

    public static /* synthetic */ void getHEX_DIGIT_CHARS$annotations() {
    }
}
