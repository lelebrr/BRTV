package com.alibaba.fastjson.util;

import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.asm.Opcodes;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Arrays;
import java.util.Properties;
import okio.Utf8;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class IOUtils {
    public static final char[] ASCII_CHARS;
    public static final char[] CA;
    static final char[] DigitOnes;
    static final char[] DigitTens;
    public static final String FASTJSON_COMPATIBLEWITHFIELDNAME = "fastjson.compatibleWithFieldName";
    public static final String FASTJSON_COMPATIBLEWITHJAVABEAN = "fastjson.compatibleWithJavaBean";
    public static final String FASTJSON_PROPERTIES = "fastjson.properties";
    public static final int[] IA;
    static final char[] digits;
    public static final char[] replaceChars;
    static final int[] sizeTable;
    public static final byte[] specicalFlags_doubleQuotes;
    public static final boolean[] specicalFlags_doubleQuotesFlags;
    public static final byte[] specicalFlags_singleQuotes;
    public static final boolean[] specicalFlags_singleQuotesFlags;
    public static final Properties DEFAULT_PROPERTIES = new Properties();
    public static final Charset UTF8 = Charset.forName("UTF-8");
    public static final char[] DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public static final boolean[] firstIdentifierFlags = new boolean[256];
    public static final boolean[] identifierFlags = new boolean[256];

    static {
        char c5 = 0;
        while (true) {
            boolean[] zArr = firstIdentifierFlags;
            if (c5 >= zArr.length) {
                break;
            }
            if (c5 >= 'A' && c5 <= 'Z') {
                zArr[c5] = true;
            } else if (c5 >= 'a' && c5 <= 'z') {
                zArr[c5] = true;
            } else if (c5 == '_' || c5 == '$') {
                zArr[c5] = true;
            }
            c5 = (char) (c5 + 1);
        }
        char c8 = 0;
        while (true) {
            boolean[] zArr2 = identifierFlags;
            if (c8 < zArr2.length) {
                if (c8 >= 'A' && c8 <= 'Z') {
                    zArr2[c8] = true;
                } else if (c8 >= 'a' && c8 <= 'z') {
                    zArr2[c8] = true;
                } else if (c8 == '_') {
                    zArr2[c8] = true;
                } else if (c8 >= '0' && c8 <= '9') {
                    zArr2[c8] = true;
                }
                c8 = (char) (c8 + 1);
            } else {
                try {
                    break;
                } catch (Throwable unused) {
                }
            }
        }
        loadPropertiesFromFile();
        byte[] bArr = new byte[Opcodes.IF_ICMPLT];
        specicalFlags_doubleQuotes = bArr;
        byte[] bArr2 = new byte[Opcodes.IF_ICMPLT];
        specicalFlags_singleQuotes = bArr2;
        specicalFlags_doubleQuotesFlags = new boolean[Opcodes.IF_ICMPLT];
        specicalFlags_singleQuotesFlags = new boolean[Opcodes.IF_ICMPLT];
        replaceChars = new char[93];
        bArr[0] = 4;
        bArr[1] = 4;
        bArr[2] = 4;
        bArr[3] = 4;
        bArr[4] = 4;
        bArr[5] = 4;
        bArr[6] = 4;
        bArr[7] = 4;
        bArr[8] = 1;
        bArr[9] = 1;
        bArr[10] = 1;
        bArr[11] = 4;
        bArr[12] = 1;
        bArr[13] = 1;
        bArr[34] = 1;
        bArr[92] = 1;
        bArr2[0] = 4;
        bArr2[1] = 4;
        bArr2[2] = 4;
        bArr2[3] = 4;
        bArr2[4] = 4;
        bArr2[5] = 4;
        bArr2[6] = 4;
        bArr2[7] = 4;
        bArr2[8] = 1;
        bArr2[9] = 1;
        bArr2[10] = 1;
        bArr2[11] = 4;
        bArr2[12] = 1;
        bArr2[13] = 1;
        bArr2[92] = 1;
        bArr2[39] = 1;
        for (int i6 = 14; i6 <= 31; i6++) {
            specicalFlags_doubleQuotes[i6] = 4;
            specicalFlags_singleQuotes[i6] = 4;
        }
        for (int i10 = 127; i10 < 160; i10++) {
            specicalFlags_doubleQuotes[i10] = 4;
            specicalFlags_singleQuotes[i10] = 4;
        }
        for (int i11 = 0; i11 < 161; i11++) {
            specicalFlags_doubleQuotesFlags[i11] = specicalFlags_doubleQuotes[i11] != 0;
            specicalFlags_singleQuotesFlags[i11] = specicalFlags_singleQuotes[i11] != 0;
        }
        char[] cArr = replaceChars;
        cArr[0] = '0';
        cArr[1] = '1';
        cArr[2] = '2';
        cArr[3] = '3';
        cArr[4] = '4';
        cArr[5] = '5';
        cArr[6] = '6';
        cArr[7] = '7';
        cArr[8] = 'b';
        cArr[9] = 't';
        cArr[10] = 'n';
        cArr[11] = 'v';
        cArr[12] = 'f';
        cArr[13] = 'r';
        cArr[34] = '\"';
        cArr[39] = '\'';
        cArr[47] = '/';
        cArr[92] = '\\';
        ASCII_CHARS = new char[]{'0', '0', '0', '1', '0', '2', '0', '3', '0', '4', '0', '5', '0', '6', '0', '7', '0', '8', '0', '9', '0', 'A', '0', 'B', '0', 'C', '0', 'D', '0', 'E', '0', 'F', '1', '0', '1', '1', '1', '2', '1', '3', '1', '4', '1', '5', '1', '6', '1', '7', '1', '8', '1', '9', '1', 'A', '1', 'B', '1', 'C', '1', 'D', '1', 'E', '1', 'F', '2', '0', '2', '1', '2', '2', '2', '3', '2', '4', '2', '5', '2', '6', '2', '7', '2', '8', '2', '9', '2', 'A', '2', 'B', '2', 'C', '2', 'D', '2', 'E', '2', 'F'};
        digits = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
        DigitTens = new char[]{'0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9'};
        DigitOnes = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
        sizeTable = new int[]{9, 99, 999, 9999, 99999, 999999, 9999999, 99999999, 999999999, Integer.MAX_VALUE};
        char[] charArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        CA = charArray;
        int[] iArr = new int[256];
        IA = iArr;
        Arrays.fill(iArr, -1);
        int length = charArray.length;
        for (int i12 = 0; i12 < length; i12++) {
            IA[CA[i12]] = i12;
        }
        IA[61] = 0;
    }

    public static void close(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static void decode(CharsetDecoder charsetDecoder, ByteBuffer byteBuffer, CharBuffer charBuffer) throws CharacterCodingException {
        try {
            CoderResult coderResultDecode = charsetDecoder.decode(byteBuffer, charBuffer, true);
            if (!coderResultDecode.isUnderflow()) {
                coderResultDecode.throwException();
            }
            CoderResult coderResultFlush = charsetDecoder.flush(charBuffer);
            if (coderResultFlush.isUnderflow()) {
                return;
            }
            coderResultFlush.throwException();
        } catch (CharacterCodingException e5) {
            throw new JSONException("utf8 decode error, " + e5.getMessage(), e5);
        }
    }

    public static byte[] decodeBase64(char[] cArr, int i6, int i10) {
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

    public static int decodeUTF8(byte[] bArr, int i6, int i10, char[] cArr) {
        int i11 = i6 + i10;
        int iMin = Math.min(i10, cArr.length);
        int i12 = 0;
        while (i12 < iMin) {
            byte b8 = bArr[i6];
            if (b8 < 0) {
                break;
            }
            i6++;
            cArr[i12] = (char) b8;
            i12++;
        }
        while (i6 < i11) {
            int i13 = i6 + 1;
            byte b10 = bArr[i6];
            if (b10 >= 0) {
                cArr[i12] = (char) b10;
                i12++;
                i6 = i13;
            } else {
                if ((b10 >> 5) != -2 || (b10 & 30) == 0) {
                    if ((b10 >> 4) == -2) {
                        int i14 = i6 + 2;
                        if (i14 < i11) {
                            byte b11 = bArr[i13];
                            i6 += 3;
                            byte b12 = bArr[i14];
                            if ((b10 != -32 || (b11 & 224) != 128) && (b11 & 192) == 128 && (b12 & 192) == 128) {
                                char c5 = (char) (((b11 << 6) ^ (b10 << 12)) ^ ((-123008) ^ b12));
                                if (c5 >= 55296 && c5 < 57344) {
                                    return -1;
                                }
                                cArr[i12] = c5;
                                i12++;
                            }
                        }
                        return -1;
                    }
                    if ((b10 >> 3) == -2 && i6 + 3 < i11) {
                        byte b13 = bArr[i13];
                        int i15 = i6 + 3;
                        byte b14 = bArr[i6 + 2];
                        i6 += 4;
                        byte b15 = bArr[i15];
                        int i16 = (((b10 << 18) ^ (b13 << 12)) ^ (b14 << 6)) ^ (3678080 ^ b15);
                        if ((b13 & 192) == 128 && (b14 & 192) == 128 && (b15 & 192) == 128 && i16 >= 65536 && i16 < 1114112) {
                            int i17 = i12 + 1;
                            cArr[i12] = (char) ((i16 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
                            i12 += 2;
                            cArr[i17] = (char) ((i16 & AnalyticsListener.EVENT_DRM_KEYS_LOADED) + Utf8.LOG_SURROGATE_HEADER);
                        }
                    }
                    return -1;
                }
                if (i13 >= i11) {
                    return -1;
                }
                i6 += 2;
                byte b16 = bArr[i13];
                if ((b16 & 192) != 128) {
                    return -1;
                }
                cArr[i12] = (char) ((b16 ^ (b10 << 6)) ^ Utf8.MASK_2BYTES);
                i12++;
            }
        }
        return i12;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007e  */
    /* JADX WARN: Type inference failed for: r3v0, types: [char, int] */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v7, types: [int] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int encodeUTF8(char[] r9, int r10, int r11, byte[] r12) {
        /*
            Method dump skipped, instructions count: 193
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.util.IOUtils.encodeUTF8(char[], int, int, byte[]):int");
    }

    public static boolean firstIdentifier(char c5) {
        boolean[] zArr = firstIdentifierFlags;
        return c5 < zArr.length && zArr[c5];
    }

    public static void getChars(long j10, int i6, char[] cArr) {
        char c5;
        if (j10 < 0) {
            j10 = -j10;
            c5 = '-';
        } else {
            c5 = 0;
        }
        while (j10 > 2147483647L) {
            long j11 = j10 / 100;
            int i10 = (int) (j10 - (((j11 << 6) + (j11 << 5)) + (j11 << 2)));
            cArr[i6 - 1] = DigitOnes[i10];
            i6 -= 2;
            cArr[i6] = DigitTens[i10];
            j10 = j11;
        }
        int i11 = (int) j10;
        while (i11 >= 65536) {
            int i12 = i11 / 100;
            int i13 = i11 - (((i12 << 6) + (i12 << 5)) + (i12 << 2));
            cArr[i6 - 1] = DigitOnes[i13];
            i6 -= 2;
            cArr[i6] = DigitTens[i13];
            i11 = i12;
        }
        while (true) {
            int i14 = (52429 * i11) >>> 19;
            int i15 = i6 - 1;
            cArr[i15] = digits[i11 - ((i14 << 3) + (i14 << 1))];
            if (i14 == 0) {
                break;
            }
            i11 = i14;
            i6 = i15;
        }
        if (c5 != 0) {
            cArr[i6 - 2] = c5;
        }
    }

    public static String getStringProperty(String str) {
        String property;
        try {
            property = System.getProperty(str);
        } catch (SecurityException unused) {
            property = null;
        }
        return property == null ? DEFAULT_PROPERTIES.getProperty(str) : property;
    }

    public static boolean isIdent(char c5) {
        boolean[] zArr = identifierFlags;
        return c5 < zArr.length && zArr[c5];
    }

    public static boolean isValidJsonpQueryParam(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int length = str.length();
        for (int i6 = 0; i6 < length; i6++) {
            char cCharAt = str.charAt(i6);
            if (cCharAt != '.' && !isIdent(cCharAt)) {
                return false;
            }
        }
        return true;
    }

    public static void loadPropertiesFromFile() throws IOException {
        InputStream inputStream = (InputStream) AccessController.doPrivileged(new PrivilegedAction<InputStream>() { // from class: com.alibaba.fastjson.util.IOUtils.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public InputStream run() {
                ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
                return contextClassLoader != null ? contextClassLoader.getResourceAsStream(IOUtils.FASTJSON_PROPERTIES) : ClassLoader.getSystemResourceAsStream(IOUtils.FASTJSON_PROPERTIES);
            }
        });
        if (inputStream != null) {
            try {
                DEFAULT_PROPERTIES.load(inputStream);
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public static String readAll(Reader reader) throws IOException {
        StringBuilder sb = new StringBuilder();
        try {
            char[] cArr = new char[2048];
            while (true) {
                int i6 = reader.read(cArr, 0, 2048);
                if (i6 < 0) {
                    return sb.toString();
                }
                sb.append(cArr, 0, i6);
            }
        } catch (Exception e5) {
            throw new JSONException("read string from reader error", e5);
        }
    }

    public static int stringSize(long j10) {
        long j11 = 10;
        for (int i6 = 1; i6 < 19; i6++) {
            if (j10 < j11) {
                return i6;
            }
            j11 *= 10;
        }
        return 19;
    }

    public static int stringSize(int i6) {
        int i10 = 0;
        while (i6 > sizeTable[i10]) {
            i10++;
        }
        return i10 + 1;
    }

    public static void getChars(int i6, int i10, char[] cArr) {
        char c5;
        if (i6 < 0) {
            i6 = -i6;
            c5 = '-';
        } else {
            c5 = 0;
        }
        while (i6 >= 65536) {
            int i11 = i6 / 100;
            int i12 = i6 - (((i11 << 6) + (i11 << 5)) + (i11 << 2));
            cArr[i10 - 1] = DigitOnes[i12];
            i10 -= 2;
            cArr[i10] = DigitTens[i12];
            i6 = i11;
        }
        while (true) {
            int i13 = (52429 * i6) >>> 19;
            int i14 = i10 - 1;
            cArr[i14] = digits[i6 - ((i13 << 3) + (i13 << 1))];
            if (i13 == 0) {
                break;
            }
            i6 = i13;
            i10 = i14;
        }
        if (c5 != 0) {
            cArr[i10 - 2] = c5;
        }
    }

    public static byte[] decodeBase64(String str, int i6, int i10) {
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

    public static void getChars(byte b8, int i6, char[] cArr) {
        char c5;
        int i10;
        if (b8 < 0) {
            c5 = '-';
            i10 = -b8;
        } else {
            c5 = 0;
            i10 = b8;
        }
        while (true) {
            int i11 = (52429 * i10) >>> 19;
            int i12 = i6 - 1;
            cArr[i12] = digits[i10 - ((i11 << 3) + (i11 << 1))];
            if (i11 == 0) {
                break;
            }
            i10 = i11;
            i6 = i12;
        }
        if (c5 != 0) {
            cArr[i6 - 2] = c5;
        }
    }

    public static byte[] decodeBase64(String str) {
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
