package okio;

import a.e;
import com.lzy.okgo.cache.CacheEntity;
import ea.q;
import j9.i;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: MyApplication */
/* renamed from: okio.SegmentedByteString, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0004SegmentedByteString extends ByteString {
    private final transient int[] directory;
    private final transient byte[][] segments;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0004SegmentedByteString(byte[][] bArr, int[] iArr) {
        super(ByteString.EMPTY.getData$okio());
        i.f(bArr, "segments");
        i.f(iArr, "directory");
        this.segments = bArr;
        this.directory = iArr;
    }

    private final ByteString toByteString() {
        return new ByteString(toByteArray());
    }

    private final Object writeReplace() {
        ByteString byteString = toByteString();
        i.d(byteString, "null cannot be cast to non-null type java.lang.Object");
        return byteString;
    }

    @Override // okio.ByteString
    public ByteBuffer asByteBuffer() {
        ByteBuffer byteBufferAsReadOnlyBuffer = ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
        i.e(byteBufferAsReadOnlyBuffer, "asReadOnlyBuffer(...)");
        return byteBufferAsReadOnlyBuffer;
    }

    @Override // okio.ByteString
    public String base64() {
        return toByteString().base64();
    }

    @Override // okio.ByteString
    public String base64Url() {
        return toByteString().base64Url();
    }

    @Override // okio.ByteString
    public void copyInto(int i6, byte[] bArr, int i10, int i11) {
        i.f(bArr, "target");
        long j10 = i11;
        SegmentedByteString.checkOffsetAndCount(size(), i6, j10);
        SegmentedByteString.checkOffsetAndCount(bArr.length, i10, j10);
        int i12 = i11 + i6;
        int iSegment = okio.internal.SegmentedByteString.segment(this, i6);
        while (i6 < i12) {
            int i13 = iSegment == 0 ? 0 : getDirectory$okio()[iSegment - 1];
            int i14 = getDirectory$okio()[iSegment] - i13;
            int i15 = getDirectory$okio()[getSegments$okio().length + iSegment];
            int iMin = Math.min(i12, i14 + i13) - i6;
            int i16 = (i6 - i13) + i15;
            x8.i.E(getSegments$okio()[iSegment], i10, i16, bArr, i16 + iMin);
            i10 += iMin;
            i6 += iMin;
            iSegment++;
        }
    }

    @Override // okio.ByteString
    public ByteString digest$okio(String str) throws NoSuchAlgorithmException {
        i.f(str, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        int length = getSegments$okio().length;
        int i6 = 0;
        int i10 = 0;
        while (i6 < length) {
            int i11 = getDirectory$okio()[length + i6];
            int i12 = getDirectory$okio()[i6];
            messageDigest.update(getSegments$okio()[i6], i11, i12 - i10);
            i6++;
            i10 = i12;
        }
        byte[] bArrDigest = messageDigest.digest();
        i.c(bArrDigest);
        return new ByteString(bArrDigest);
    }

    @Override // okio.ByteString
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == size() && rangeEquals(0, byteString, 0, size())) {
                return true;
            }
        }
        return false;
    }

    public final int[] getDirectory$okio() {
        return this.directory;
    }

    public final byte[][] getSegments$okio() {
        return this.segments;
    }

    @Override // okio.ByteString
    public int getSize$okio() {
        return getDirectory$okio()[getSegments$okio().length - 1];
    }

    @Override // okio.ByteString
    public int hashCode() {
        int hashCode$okio = getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int length = getSegments$okio().length;
        int i6 = 0;
        int i10 = 1;
        int i11 = 0;
        while (i6 < length) {
            int i12 = getDirectory$okio()[length + i6];
            int i13 = getDirectory$okio()[i6];
            byte[] bArr = getSegments$okio()[i6];
            int i14 = (i13 - i11) + i12;
            while (i12 < i14) {
                i10 = (i10 * 31) + bArr[i12];
                i12++;
            }
            i6++;
            i11 = i13;
        }
        setHashCode$okio(i10);
        return i10;
    }

    @Override // okio.ByteString
    public String hex() {
        return toByteString().hex();
    }

    @Override // okio.ByteString
    public ByteString hmac$okio(String str, ByteString byteString) throws IllegalStateException, NoSuchAlgorithmException, InvalidKeyException {
        i.f(str, "algorithm");
        i.f(byteString, CacheEntity.KEY);
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            int length = getSegments$okio().length;
            int i6 = 0;
            int i10 = 0;
            while (i6 < length) {
                int i11 = getDirectory$okio()[length + i6];
                int i12 = getDirectory$okio()[i6];
                mac.update(getSegments$okio()[i6], i11, i12 - i10);
                i6++;
                i10 = i12;
            }
            byte[] bArrDoFinal = mac.doFinal();
            i.e(bArrDoFinal, "doFinal(...)");
            return new ByteString(bArrDoFinal);
        } catch (InvalidKeyException e5) {
            throw new IllegalArgumentException(e5);
        }
    }

    @Override // okio.ByteString
    public int indexOf(byte[] bArr, int i6) {
        i.f(bArr, "other");
        return toByteString().indexOf(bArr, i6);
    }

    @Override // okio.ByteString
    public byte[] internalArray$okio() {
        return toByteArray();
    }

    @Override // okio.ByteString
    public byte internalGet$okio(int i6) {
        SegmentedByteString.checkOffsetAndCount(getDirectory$okio()[getSegments$okio().length - 1], i6, 1L);
        int iSegment = okio.internal.SegmentedByteString.segment(this, i6);
        return getSegments$okio()[iSegment][(i6 - (iSegment == 0 ? 0 : getDirectory$okio()[iSegment - 1])) + getDirectory$okio()[getSegments$okio().length + iSegment]];
    }

    @Override // okio.ByteString
    public int lastIndexOf(byte[] bArr, int i6) {
        i.f(bArr, "other");
        return toByteString().lastIndexOf(bArr, i6);
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i6, ByteString byteString, int i10, int i11) {
        i.f(byteString, "other");
        if (i6 < 0 || i6 > size() - i11) {
            return false;
        }
        int i12 = i11 + i6;
        int iSegment = okio.internal.SegmentedByteString.segment(this, i6);
        while (i6 < i12) {
            int i13 = iSegment == 0 ? 0 : getDirectory$okio()[iSegment - 1];
            int i14 = getDirectory$okio()[iSegment] - i13;
            int i15 = getDirectory$okio()[getSegments$okio().length + iSegment];
            int iMin = Math.min(i12, i14 + i13) - i6;
            if (!byteString.rangeEquals(i10, getSegments$okio()[iSegment], (i6 - i13) + i15, iMin)) {
                return false;
            }
            i10 += iMin;
            i6 += iMin;
            iSegment++;
        }
        return true;
    }

    @Override // okio.ByteString
    public String string(Charset charset) {
        i.f(charset, "charset");
        return toByteString().string(charset);
    }

    @Override // okio.ByteString
    public ByteString substring(int i6, int i10) {
        int iResolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(this, i10);
        if (i6 < 0) {
            throw new IllegalArgumentException(q.f(i6, "beginIndex=", " < 0").toString());
        }
        if (iResolveDefaultParameter > size()) {
            StringBuilder sbU = e.u(iResolveDefaultParameter, "endIndex=", " > length(");
            sbU.append(size());
            sbU.append(')');
            throw new IllegalArgumentException(sbU.toString().toString());
        }
        int i11 = iResolveDefaultParameter - i6;
        if (i11 < 0) {
            throw new IllegalArgumentException(e.m(iResolveDefaultParameter, i6, "endIndex=", " < beginIndex=").toString());
        }
        if (i6 == 0 && iResolveDefaultParameter == size()) {
            return this;
        }
        if (i6 == iResolveDefaultParameter) {
            return ByteString.EMPTY;
        }
        int iSegment = okio.internal.SegmentedByteString.segment(this, i6);
        int iSegment2 = okio.internal.SegmentedByteString.segment(this, iResolveDefaultParameter - 1);
        byte[][] bArr = (byte[][]) x8.i.H(getSegments$okio(), iSegment, iSegment2 + 1);
        int[] iArr = new int[bArr.length * 2];
        if (iSegment <= iSegment2) {
            int i12 = iSegment;
            int i13 = 0;
            while (true) {
                iArr[i13] = Math.min(getDirectory$okio()[i12] - i6, i11);
                int i14 = i13 + 1;
                iArr[i13 + bArr.length] = getDirectory$okio()[getSegments$okio().length + i12];
                if (i12 == iSegment2) {
                    break;
                }
                i12++;
                i13 = i14;
            }
        }
        int i15 = iSegment != 0 ? getDirectory$okio()[iSegment - 1] : 0;
        int length = bArr.length;
        iArr[length] = (i6 - i15) + iArr[length];
        return new C0004SegmentedByteString(bArr, iArr);
    }

    @Override // okio.ByteString
    public ByteString toAsciiLowercase() {
        return toByteString().toAsciiLowercase();
    }

    @Override // okio.ByteString
    public ByteString toAsciiUppercase() {
        return toByteString().toAsciiUppercase();
    }

    @Override // okio.ByteString
    public byte[] toByteArray() {
        byte[] bArr = new byte[size()];
        int length = getSegments$okio().length;
        int i6 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i6 < length) {
            int i12 = getDirectory$okio()[length + i6];
            int i13 = getDirectory$okio()[i6];
            int i14 = i13 - i10;
            x8.i.E(getSegments$okio()[i6], i11, i12, bArr, i12 + i14);
            i11 += i14;
            i6++;
            i10 = i13;
        }
        return bArr;
    }

    @Override // okio.ByteString
    public String toString() {
        return toByteString().toString();
    }

    @Override // okio.ByteString
    public void write(OutputStream outputStream) throws IOException {
        i.f(outputStream, "out");
        int length = getSegments$okio().length;
        int i6 = 0;
        int i10 = 0;
        while (i6 < length) {
            int i11 = getDirectory$okio()[length + i6];
            int i12 = getDirectory$okio()[i6];
            outputStream.write(getSegments$okio()[i6], i11, i12 - i10);
            i6++;
            i10 = i12;
        }
    }

    @Override // okio.ByteString
    public void write$okio(Buffer buffer, int i6, int i10) {
        i.f(buffer, "buffer");
        int i11 = i6 + i10;
        int iSegment = okio.internal.SegmentedByteString.segment(this, i6);
        while (i6 < i11) {
            int i12 = iSegment == 0 ? 0 : getDirectory$okio()[iSegment - 1];
            int i13 = getDirectory$okio()[iSegment] - i12;
            int i14 = getDirectory$okio()[getSegments$okio().length + iSegment];
            int iMin = Math.min(i11, i13 + i12) - i6;
            int i15 = (i6 - i12) + i14;
            Segment segment = new Segment(getSegments$okio()[iSegment], i15, i15 + iMin, true, false);
            Segment segment2 = buffer.head;
            if (segment2 == null) {
                segment.prev = segment;
                segment.next = segment;
                buffer.head = segment;
            } else {
                i.c(segment2);
                Segment segment3 = segment2.prev;
                i.c(segment3);
                segment3.push(segment);
            }
            i6 += iMin;
            iSegment++;
        }
        buffer.setSize$okio(buffer.size() + i10);
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i6, byte[] bArr, int i10, int i11) {
        i.f(bArr, "other");
        if (i6 < 0 || i6 > size() - i11 || i10 < 0 || i10 > bArr.length - i11) {
            return false;
        }
        int i12 = i11 + i6;
        int iSegment = okio.internal.SegmentedByteString.segment(this, i6);
        while (i6 < i12) {
            int i13 = iSegment == 0 ? 0 : getDirectory$okio()[iSegment - 1];
            int i14 = getDirectory$okio()[iSegment] - i13;
            int i15 = getDirectory$okio()[getSegments$okio().length + iSegment];
            int iMin = Math.min(i12, i14 + i13) - i6;
            if (!SegmentedByteString.arrayRangeEquals(getSegments$okio()[iSegment], (i6 - i13) + i15, bArr, i10, iMin)) {
                return false;
            }
            i10 += iMin;
            i6 += iMin;
            iSegment++;
        }
        return true;
    }
}
