package okio;

import a.e;
import com.lzy.okgo.cache.CacheEntity;
import j9.f;
import j9.i;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import r9.a;
import r9.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ByteString implements Serializable, Comparable<ByteString> {
    public static final Companion Companion = new Companion(null);
    public static final ByteString EMPTY = new ByteString(new byte[0]);
    private static final long serialVersionUID = 1;
    private final byte[] data;
    private transient int hashCode;
    private transient String utf8;

    /* compiled from: MyApplication */
    public static final class Companion {
        public /* synthetic */ Companion(f fVar) {
            this();
        }

        public static /* synthetic */ ByteString encodeString$default(Companion companion, String str, Charset charset, int i6, Object obj) {
            if ((i6 & 1) != 0) {
                charset = a.f9611a;
            }
            return companion.encodeString(str, charset);
        }

        public static /* synthetic */ ByteString of$default(Companion companion, byte[] bArr, int i6, int i10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                i6 = 0;
            }
            if ((i11 & 2) != 0) {
                i10 = SegmentedByteString.getDEFAULT__ByteString_size();
            }
            return companion.of(bArr, i6, i10);
        }

        /* renamed from: -deprecated_decodeBase64, reason: not valid java name */
        public final ByteString m145deprecated_decodeBase64(String str) {
            i.f(str, "string");
            return decodeBase64(str);
        }

        /* renamed from: -deprecated_decodeHex, reason: not valid java name */
        public final ByteString m146deprecated_decodeHex(String str) {
            i.f(str, "string");
            return decodeHex(str);
        }

        /* renamed from: -deprecated_encodeString, reason: not valid java name */
        public final ByteString m147deprecated_encodeString(String str, Charset charset) {
            i.f(str, "string");
            i.f(charset, "charset");
            return encodeString(str, charset);
        }

        /* renamed from: -deprecated_encodeUtf8, reason: not valid java name */
        public final ByteString m148deprecated_encodeUtf8(String str) {
            i.f(str, "string");
            return encodeUtf8(str);
        }

        /* renamed from: -deprecated_of, reason: not valid java name */
        public final ByteString m149deprecated_of(ByteBuffer byteBuffer) {
            i.f(byteBuffer, "buffer");
            return of(byteBuffer);
        }

        /* renamed from: -deprecated_read, reason: not valid java name */
        public final ByteString m151deprecated_read(InputStream inputStream, int i6) {
            i.f(inputStream, "inputstream");
            return read(inputStream, i6);
        }

        public final ByteString decodeBase64(String str) {
            i.f(str, "<this>");
            byte[] bArrDecodeBase64ToArray = Base64.decodeBase64ToArray(str);
            if (bArrDecodeBase64ToArray != null) {
                return new ByteString(bArrDecodeBase64ToArray);
            }
            return null;
        }

        public final ByteString decodeHex(String str) {
            i.f(str, "<this>");
            if (str.length() % 2 != 0) {
                throw new IllegalArgumentException("Unexpected hex string: ".concat(str).toString());
            }
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            for (int i6 = 0; i6 < length; i6++) {
                int i10 = i6 * 2;
                bArr[i6] = (byte) (okio.internal.ByteString.decodeHexDigit(str.charAt(i10 + 1)) + (okio.internal.ByteString.decodeHexDigit(str.charAt(i10)) << 4));
            }
            return new ByteString(bArr);
        }

        public final ByteString encodeString(String str, Charset charset) {
            i.f(str, "<this>");
            i.f(charset, "charset");
            byte[] bytes = str.getBytes(charset);
            i.e(bytes, "getBytes(...)");
            return new ByteString(bytes);
        }

        public final ByteString encodeUtf8(String str) {
            i.f(str, "<this>");
            ByteString byteString = new ByteString(_JvmPlatformKt.asUtf8ToByteArray(str));
            byteString.setUtf8$okio(str);
            return byteString;
        }

        public final ByteString of(ByteBuffer byteBuffer) {
            i.f(byteBuffer, "<this>");
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            return new ByteString(bArr);
        }

        public final ByteString read(InputStream inputStream, int i6) throws IOException {
            i.f(inputStream, "<this>");
            if (i6 < 0) {
                throw new IllegalArgumentException(e.n(i6, "byteCount < 0: ").toString());
            }
            byte[] bArr = new byte[i6];
            int i10 = 0;
            while (i10 < i6) {
                int i11 = inputStream.read(bArr, i10, i6 - i10);
                if (i11 == -1) {
                    throw new EOFException();
                }
                i10 += i11;
            }
            return new ByteString(bArr);
        }

        private Companion() {
        }

        /* renamed from: -deprecated_of, reason: not valid java name */
        public final ByteString m150deprecated_of(byte[] bArr, int i6, int i10) {
            i.f(bArr, "array");
            return of(bArr, i6, i10);
        }

        public final ByteString of(byte... bArr) {
            i.f(bArr, "data");
            byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
            i.e(bArrCopyOf, "copyOf(...)");
            return new ByteString(bArrCopyOf);
        }

        public final ByteString of(byte[] bArr, int i6, int i10) {
            i.f(bArr, "<this>");
            int iResolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(bArr, i10);
            SegmentedByteString.checkOffsetAndCount(bArr.length, i6, iResolveDefaultParameter);
            return new ByteString(x8.i.G(bArr, i6, iResolveDefaultParameter + i6));
        }
    }

    public ByteString(byte[] bArr) {
        i.f(bArr, "data");
        this.data = bArr;
    }

    public static /* synthetic */ void copyInto$default(ByteString byteString, int i6, byte[] bArr, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: copyInto");
        }
        if ((i12 & 1) != 0) {
            i6 = 0;
        }
        if ((i12 & 4) != 0) {
            i10 = 0;
        }
        byteString.copyInto(i6, bArr, i10, i11);
    }

    public static final ByteString decodeBase64(String str) {
        return Companion.decodeBase64(str);
    }

    public static final ByteString decodeHex(String str) {
        return Companion.decodeHex(str);
    }

    public static final ByteString encodeString(String str, Charset charset) {
        return Companion.encodeString(str, charset);
    }

    public static final ByteString encodeUtf8(String str) {
        return Companion.encodeUtf8(str);
    }

    public static /* synthetic */ int indexOf$default(ByteString byteString, ByteString byteString2, int i6, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: indexOf");
        }
        if ((i10 & 2) != 0) {
            i6 = 0;
        }
        return byteString.indexOf(byteString2, i6);
    }

    public static /* synthetic */ int lastIndexOf$default(ByteString byteString, ByteString byteString2, int i6, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lastIndexOf");
        }
        if ((i10 & 2) != 0) {
            i6 = SegmentedByteString.getDEFAULT__ByteString_size();
        }
        return byteString.lastIndexOf(byteString2, i6);
    }

    public static final ByteString of(ByteBuffer byteBuffer) {
        return Companion.of(byteBuffer);
    }

    public static final ByteString read(InputStream inputStream, int i6) throws IOException {
        return Companion.read(inputStream, i6);
    }

    private final void readObject(ObjectInputStream objectInputStream) throws IllegalAccessException, NoSuchFieldException, IOException, SecurityException, IllegalArgumentException {
        ByteString byteString = Companion.read(objectInputStream, objectInputStream.readInt());
        Field declaredField = ByteString.class.getDeclaredField("data");
        declaredField.setAccessible(true);
        declaredField.set(this, byteString.data);
    }

    public static /* synthetic */ ByteString substring$default(ByteString byteString, int i6, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: substring");
        }
        if ((i11 & 1) != 0) {
            i6 = 0;
        }
        if ((i11 & 2) != 0) {
            i10 = SegmentedByteString.getDEFAULT__ByteString_size();
        }
        return byteString.substring(i6, i10);
    }

    private final void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.data.length);
        objectOutputStream.write(this.data);
    }

    /* renamed from: -deprecated_getByte, reason: not valid java name */
    public final byte m143deprecated_getByte(int i6) {
        return getByte(i6);
    }

    /* renamed from: -deprecated_size, reason: not valid java name */
    public final int m144deprecated_size() {
        return size();
    }

    public ByteBuffer asByteBuffer() {
        ByteBuffer byteBufferAsReadOnlyBuffer = ByteBuffer.wrap(this.data).asReadOnlyBuffer();
        i.e(byteBufferAsReadOnlyBuffer, "asReadOnlyBuffer(...)");
        return byteBufferAsReadOnlyBuffer;
    }

    public String base64() {
        return Base64.encodeBase64$default(getData$okio(), null, 1, null);
    }

    public String base64Url() {
        return Base64.encodeBase64(getData$okio(), Base64.getBASE64_URL_SAFE());
    }

    public void copyInto(int i6, byte[] bArr, int i10, int i11) {
        i.f(bArr, "target");
        x8.i.E(getData$okio(), i10, i6, bArr, i11 + i6);
    }

    public ByteString digest$okio(String str) throws NoSuchAlgorithmException {
        i.f(str, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.update(this.data, 0, size());
        byte[] bArrDigest = messageDigest.digest();
        i.c(bArrDigest);
        return new ByteString(bArrDigest);
    }

    public final boolean endsWith(ByteString byteString) {
        i.f(byteString, "suffix");
        return rangeEquals(size() - byteString.size(), byteString, 0, byteString.size());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == getData$okio().length && byteString.rangeEquals(0, getData$okio(), 0, getData$okio().length)) {
                return true;
            }
        }
        return false;
    }

    public final byte getByte(int i6) {
        return internalGet$okio(i6);
    }

    public final byte[] getData$okio() {
        return this.data;
    }

    public final int getHashCode$okio() {
        return this.hashCode;
    }

    public int getSize$okio() {
        return getData$okio().length;
    }

    public final String getUtf8$okio() {
        return this.utf8;
    }

    public int hashCode() {
        int hashCode$okio = getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int iHashCode = Arrays.hashCode(getData$okio());
        setHashCode$okio(iHashCode);
        return iHashCode;
    }

    public String hex() {
        char[] cArr = new char[getData$okio().length * 2];
        int i6 = 0;
        for (byte b8 : getData$okio()) {
            int i10 = i6 + 1;
            cArr[i6] = okio.internal.ByteString.getHEX_DIGIT_CHARS()[(b8 >> 4) & 15];
            i6 += 2;
            cArr[i10] = okio.internal.ByteString.getHEX_DIGIT_CHARS()[b8 & 15];
        }
        return new String(cArr);
    }

    public ByteString hmac$okio(String str, ByteString byteString) throws IllegalStateException, NoSuchAlgorithmException, InvalidKeyException {
        i.f(str, "algorithm");
        i.f(byteString, CacheEntity.KEY);
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            byte[] bArrDoFinal = mac.doFinal(this.data);
            i.e(bArrDoFinal, "doFinal(...)");
            return new ByteString(bArrDoFinal);
        } catch (InvalidKeyException e5) {
            throw new IllegalArgumentException(e5);
        }
    }

    public ByteString hmacSha1(ByteString byteString) {
        i.f(byteString, CacheEntity.KEY);
        return hmac$okio("HmacSHA1", byteString);
    }

    public ByteString hmacSha256(ByteString byteString) {
        i.f(byteString, CacheEntity.KEY);
        return hmac$okio("HmacSHA256", byteString);
    }

    public ByteString hmacSha512(ByteString byteString) {
        i.f(byteString, CacheEntity.KEY);
        return hmac$okio("HmacSHA512", byteString);
    }

    public final int indexOf(ByteString byteString) {
        i.f(byteString, "other");
        return indexOf$default(this, byteString, 0, 2, (Object) null);
    }

    public byte[] internalArray$okio() {
        return getData$okio();
    }

    public byte internalGet$okio(int i6) {
        return getData$okio()[i6];
    }

    public final int lastIndexOf(ByteString byteString) {
        i.f(byteString, "other");
        return lastIndexOf$default(this, byteString, 0, 2, (Object) null);
    }

    public final ByteString md5() {
        return digest$okio("MD5");
    }

    public boolean rangeEquals(int i6, ByteString byteString, int i10, int i11) {
        i.f(byteString, "other");
        return byteString.rangeEquals(i10, getData$okio(), i6, i11);
    }

    public final void setHashCode$okio(int i6) {
        this.hashCode = i6;
    }

    public final void setUtf8$okio(String str) {
        this.utf8 = str;
    }

    public final ByteString sha1() {
        return digest$okio("SHA-1");
    }

    public final ByteString sha256() {
        return digest$okio("SHA-256");
    }

    public final ByteString sha512() {
        return digest$okio("SHA-512");
    }

    public final int size() {
        return getSize$okio();
    }

    public final boolean startsWith(ByteString byteString) {
        i.f(byteString, "prefix");
        return rangeEquals(0, byteString, 0, byteString.size());
    }

    public String string(Charset charset) {
        i.f(charset, "charset");
        return new String(this.data, charset);
    }

    public final ByteString substring() {
        return substring$default(this, 0, 0, 3, null);
    }

    public ByteString toAsciiLowercase() {
        for (int i6 = 0; i6 < getData$okio().length; i6++) {
            byte b8 = getData$okio()[i6];
            if (b8 >= 65 && b8 <= 90) {
                byte[] data$okio = getData$okio();
                byte[] bArrCopyOf = Arrays.copyOf(data$okio, data$okio.length);
                i.e(bArrCopyOf, "copyOf(...)");
                bArrCopyOf[i6] = (byte) (b8 + 32);
                for (int i10 = i6 + 1; i10 < bArrCopyOf.length; i10++) {
                    byte b10 = bArrCopyOf[i10];
                    if (b10 >= 65 && b10 <= 90) {
                        bArrCopyOf[i10] = (byte) (b10 + 32);
                    }
                }
                return new ByteString(bArrCopyOf);
            }
        }
        return this;
    }

    public ByteString toAsciiUppercase() {
        for (int i6 = 0; i6 < getData$okio().length; i6++) {
            byte b8 = getData$okio()[i6];
            if (b8 >= 97 && b8 <= 122) {
                byte[] data$okio = getData$okio();
                byte[] bArrCopyOf = Arrays.copyOf(data$okio, data$okio.length);
                i.e(bArrCopyOf, "copyOf(...)");
                bArrCopyOf[i6] = (byte) (b8 - 32);
                for (int i10 = i6 + 1; i10 < bArrCopyOf.length; i10++) {
                    byte b10 = bArrCopyOf[i10];
                    if (b10 >= 97 && b10 <= 122) {
                        bArrCopyOf[i10] = (byte) (b10 - 32);
                    }
                }
                return new ByteString(bArrCopyOf);
            }
        }
        return this;
    }

    public byte[] toByteArray() {
        byte[] data$okio = getData$okio();
        byte[] bArrCopyOf = Arrays.copyOf(data$okio, data$okio.length);
        i.e(bArrCopyOf, "copyOf(...)");
        return bArrCopyOf;
    }

    public String toString() {
        if (getData$okio().length == 0) {
            return "[size=0]";
        }
        int iCodePointIndexToCharIndex = okio.internal.ByteString.codePointIndexToCharIndex(getData$okio(), 64);
        if (iCodePointIndexToCharIndex != -1) {
            String strUtf8 = utf8();
            String strSubstring = strUtf8.substring(0, iCodePointIndexToCharIndex);
            i.e(strSubstring, "substring(...)");
            String strT = n.T(n.T(n.T(strSubstring, "\\", "\\\\"), "\n", "\\n"), "\r", "\\r");
            if (iCodePointIndexToCharIndex >= strUtf8.length()) {
                return "[text=" + strT + ']';
            }
            return "[size=" + getData$okio().length + " text=" + strT + "…]";
        }
        if (getData$okio().length <= 64) {
            return "[hex=" + hex() + ']';
        }
        StringBuilder sb = new StringBuilder("[size=");
        sb.append(getData$okio().length);
        sb.append(" hex=");
        int iResolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(this, 64);
        if (iResolveDefaultParameter > getData$okio().length) {
            throw new IllegalArgumentException(("endIndex > length(" + getData$okio().length + ')').toString());
        }
        if (iResolveDefaultParameter < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        sb.append((iResolveDefaultParameter == getData$okio().length ? this : new ByteString(x8.i.G(getData$okio(), 0, iResolveDefaultParameter))).hex());
        sb.append("…]");
        return sb.toString();
    }

    public String utf8() {
        String utf8$okio = getUtf8$okio();
        if (utf8$okio != null) {
            return utf8$okio;
        }
        String utf8String = _JvmPlatformKt.toUtf8String(internalArray$okio());
        setUtf8$okio(utf8String);
        return utf8String;
    }

    public void write(OutputStream outputStream) throws IOException {
        i.f(outputStream, "out");
        outputStream.write(this.data);
    }

    public void write$okio(Buffer buffer, int i6, int i10) {
        i.f(buffer, "buffer");
        okio.internal.ByteString.commonWrite(this, buffer, i6, i10);
    }

    public static /* synthetic */ int indexOf$default(ByteString byteString, byte[] bArr, int i6, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: indexOf");
        }
        if ((i10 & 2) != 0) {
            i6 = 0;
        }
        return byteString.indexOf(bArr, i6);
    }

    public static final ByteString of(byte... bArr) {
        return Companion.of(bArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002c A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002a A[ORIG_RETURN, RETURN] */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int compareTo(okio.ByteString r10) {
        /*
            r9 = this;
            java.lang.String r0 = "other"
            j9.i.f(r10, r0)
            int r0 = r9.size()
            int r1 = r10.size()
            int r2 = java.lang.Math.min(r0, r1)
            r3 = 0
            r4 = 0
        L13:
            r5 = -1
            r6 = 1
            if (r4 >= r2) goto L2e
            byte r7 = r9.getByte(r4)
            r7 = r7 & 255(0xff, float:3.57E-43)
            byte r8 = r10.getByte(r4)
            r8 = r8 & 255(0xff, float:3.57E-43)
            if (r7 != r8) goto L28
            int r4 = r4 + 1
            goto L13
        L28:
            if (r7 >= r8) goto L2c
        L2a:
            r3 = -1
            goto L34
        L2c:
            r3 = 1
            goto L34
        L2e:
            if (r0 != r1) goto L31
            goto L34
        L31:
            if (r0 >= r1) goto L2c
            goto L2a
        L34:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.ByteString.compareTo(okio.ByteString):int");
    }

    public final boolean endsWith(byte[] bArr) {
        i.f(bArr, "suffix");
        return rangeEquals(size() - bArr.length, bArr, 0, bArr.length);
    }

    public final int indexOf(byte[] bArr) {
        i.f(bArr, "other");
        return indexOf$default(this, bArr, 0, 2, (Object) null);
    }

    public final int lastIndexOf(byte[] bArr) {
        i.f(bArr, "other");
        return lastIndexOf$default(this, bArr, 0, 2, (Object) null);
    }

    public boolean rangeEquals(int i6, byte[] bArr, int i10, int i11) {
        i.f(bArr, "other");
        return i6 >= 0 && i6 <= getData$okio().length - i11 && i10 >= 0 && i10 <= bArr.length - i11 && SegmentedByteString.arrayRangeEquals(getData$okio(), i6, bArr, i10, i11);
    }

    public final boolean startsWith(byte[] bArr) {
        i.f(bArr, "prefix");
        return rangeEquals(0, bArr, 0, bArr.length);
    }

    public final ByteString substring(int i6) {
        return substring$default(this, i6, 0, 2, null);
    }

    public static /* synthetic */ int lastIndexOf$default(ByteString byteString, byte[] bArr, int i6, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lastIndexOf");
        }
        if ((i10 & 2) != 0) {
            i6 = SegmentedByteString.getDEFAULT__ByteString_size();
        }
        return byteString.lastIndexOf(bArr, i6);
    }

    public static final ByteString of(byte[] bArr, int i6, int i10) {
        return Companion.of(bArr, i6, i10);
    }

    public final int indexOf(ByteString byteString, int i6) {
        i.f(byteString, "other");
        return indexOf(byteString.internalArray$okio(), i6);
    }

    public final int lastIndexOf(ByteString byteString, int i6) {
        i.f(byteString, "other");
        return lastIndexOf(byteString.internalArray$okio(), i6);
    }

    public ByteString substring(int i6, int i10) {
        int iResolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(this, i10);
        if (i6 >= 0) {
            if (iResolveDefaultParameter <= getData$okio().length) {
                if (iResolveDefaultParameter - i6 >= 0) {
                    return (i6 == 0 && iResolveDefaultParameter == getData$okio().length) ? this : new ByteString(x8.i.G(getData$okio(), i6, iResolveDefaultParameter));
                }
                throw new IllegalArgumentException("endIndex < beginIndex");
            }
            throw new IllegalArgumentException(("endIndex > length(" + getData$okio().length + ')').toString());
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    public int indexOf(byte[] bArr, int i6) {
        i.f(bArr, "other");
        int length = getData$okio().length - bArr.length;
        int iMax = Math.max(i6, 0);
        if (iMax <= length) {
            while (!SegmentedByteString.arrayRangeEquals(getData$okio(), iMax, bArr, 0, bArr.length)) {
                if (iMax != length) {
                    iMax++;
                }
            }
            return iMax;
        }
        return -1;
    }

    public int lastIndexOf(byte[] bArr, int i6) {
        i.f(bArr, "other");
        for (int iMin = Math.min(SegmentedByteString.resolveDefaultParameter(this, i6), getData$okio().length - bArr.length); -1 < iMin; iMin--) {
            if (SegmentedByteString.arrayRangeEquals(getData$okio(), iMin, bArr, 0, bArr.length)) {
                return iMin;
            }
        }
        return -1;
    }
}
