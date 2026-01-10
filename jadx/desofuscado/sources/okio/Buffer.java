package okio;

import a.e;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.C;
import androidx.media3.exoplayer.MediaPeriodQueue;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import androidx.media3.extractor.ts.PsExtractor;
import com.lzy.okgo.cache.CacheEntity;
import j9.i;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import okhttp3.internal.connection.RealConnection;
import r9.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class Buffer implements BufferedSource, BufferedSink, Cloneable, ByteChannel {
    public Segment head;
    private long size;

    /* compiled from: MyApplication */
    public static final class UnsafeCursor implements Closeable {
        public Buffer buffer;
        public byte[] data;
        public boolean readWrite;
        private Segment segment;
        public long offset = -1;
        public int start = -1;
        public int end = -1;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            this.buffer = null;
            setSegment$okio(null);
            this.offset = -1L;
            this.data = null;
            this.start = -1;
            this.end = -1;
        }

        public final long expandBuffer(int i6) {
            if (i6 <= 0) {
                throw new IllegalArgumentException(e.n(i6, "minByteCount <= 0: ").toString());
            }
            if (i6 > 8192) {
                throw new IllegalArgumentException(e.n(i6, "minByteCount > Segment.SIZE: ").toString());
            }
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            if (!this.readWrite) {
                throw new IllegalStateException("expandBuffer() only permitted for read/write buffers");
            }
            long size = buffer.size();
            Segment segmentWritableSegment$okio = buffer.writableSegment$okio(i6);
            int i10 = 8192 - segmentWritableSegment$okio.limit;
            segmentWritableSegment$okio.limit = 8192;
            long j10 = i10;
            buffer.setSize$okio(size + j10);
            setSegment$okio(segmentWritableSegment$okio);
            this.offset = size;
            this.data = segmentWritableSegment$okio.data;
            this.start = 8192 - i10;
            this.end = 8192;
            return j10;
        }

        public final Segment getSegment$okio() {
            return this.segment;
        }

        public final int next() {
            long j10 = this.offset;
            Buffer buffer = this.buffer;
            i.c(buffer);
            if (j10 == buffer.size()) {
                throw new IllegalStateException("no more bytes");
            }
            long j11 = this.offset;
            return seek(j11 == -1 ? 0L : j11 + (this.end - this.start));
        }

        public final long resizeBuffer(long j10) {
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            if (!this.readWrite) {
                throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers");
            }
            long size = buffer.size();
            if (j10 <= size) {
                if (j10 < 0) {
                    throw new IllegalArgumentException(e.o(j10, "newSize < 0: ").toString());
                }
                long j11 = size - j10;
                while (true) {
                    if (j11 <= 0) {
                        break;
                    }
                    Segment segment = buffer.head;
                    i.c(segment);
                    Segment segment2 = segment.prev;
                    i.c(segment2);
                    int i6 = segment2.limit;
                    long j12 = i6 - segment2.pos;
                    if (j12 > j11) {
                        segment2.limit = i6 - ((int) j11);
                        break;
                    }
                    buffer.head = segment2.pop();
                    SegmentPool.recycle(segment2);
                    j11 -= j12;
                }
                setSegment$okio(null);
                this.offset = j10;
                this.data = null;
                this.start = -1;
                this.end = -1;
            } else if (j10 > size) {
                long j13 = j10 - size;
                boolean z7 = true;
                for (long j14 = 0; j13 > j14; j14 = 0) {
                    Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
                    int iMin = (int) Math.min(j13, 8192 - segmentWritableSegment$okio.limit);
                    segmentWritableSegment$okio.limit += iMin;
                    j13 -= iMin;
                    if (z7) {
                        setSegment$okio(segmentWritableSegment$okio);
                        this.offset = size;
                        this.data = segmentWritableSegment$okio.data;
                        int i10 = segmentWritableSegment$okio.limit;
                        this.start = i10 - iMin;
                        this.end = i10;
                        z7 = false;
                    }
                }
            }
            buffer.setSize$okio(j10);
            return size;
        }

        public final int seek(long j10) {
            Segment segmentPush;
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            if (j10 < -1 || j10 > buffer.size()) {
                throw new ArrayIndexOutOfBoundsException("offset=" + j10 + " > size=" + buffer.size());
            }
            if (j10 == -1 || j10 == buffer.size()) {
                setSegment$okio(null);
                this.offset = j10;
                this.data = null;
                this.start = -1;
                this.end = -1;
                return -1;
            }
            long size = buffer.size();
            Segment segment$okio = buffer.head;
            long j11 = 0;
            if (getSegment$okio() != null) {
                long j12 = this.offset;
                int i6 = this.start;
                i.c(getSegment$okio());
                long j13 = j12 - (i6 - r9.pos);
                if (j13 > j10) {
                    segmentPush = segment$okio;
                    segment$okio = getSegment$okio();
                    size = j13;
                } else {
                    segmentPush = getSegment$okio();
                    j11 = j13;
                }
            } else {
                segmentPush = segment$okio;
            }
            if (size - j10 > j10 - j11) {
                while (true) {
                    i.c(segmentPush);
                    int i10 = segmentPush.limit;
                    int i11 = segmentPush.pos;
                    if (j10 < (i10 - i11) + j11) {
                        break;
                    }
                    j11 += i10 - i11;
                    segmentPush = segmentPush.next;
                }
            } else {
                while (size > j10) {
                    i.c(segment$okio);
                    segment$okio = segment$okio.prev;
                    i.c(segment$okio);
                    size -= segment$okio.limit - segment$okio.pos;
                }
                j11 = size;
                segmentPush = segment$okio;
            }
            if (this.readWrite) {
                i.c(segmentPush);
                if (segmentPush.shared) {
                    Segment segmentUnsharedCopy = segmentPush.unsharedCopy();
                    if (buffer.head == segmentPush) {
                        buffer.head = segmentUnsharedCopy;
                    }
                    segmentPush = segmentPush.push(segmentUnsharedCopy);
                    Segment segment = segmentPush.prev;
                    i.c(segment);
                    segment.pop();
                }
            }
            setSegment$okio(segmentPush);
            this.offset = j10;
            i.c(segmentPush);
            this.data = segmentPush.data;
            int i12 = segmentPush.pos + ((int) (j10 - j11));
            this.start = i12;
            int i13 = segmentPush.limit;
            this.end = i13;
            return i13 - i12;
        }

        public final void setSegment$okio(Segment segment) {
            this.segment = segment;
        }
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, OutputStream outputStream, long j10, long j11, int i6, Object obj) throws IOException {
        if ((i6 & 2) != 0) {
            j10 = 0;
        }
        long j12 = j10;
        if ((i6 & 4) != 0) {
            j11 = buffer.size - j12;
        }
        return buffer.copyTo(outputStream, j12, j11);
    }

    private final ByteString digest(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        Segment segment = this.head;
        if (segment != null) {
            byte[] bArr = segment.data;
            int i6 = segment.pos;
            messageDigest.update(bArr, i6, segment.limit - i6);
            Segment segment2 = segment.next;
            i.c(segment2);
            while (segment2 != segment) {
                byte[] bArr2 = segment2.data;
                int i10 = segment2.pos;
                messageDigest.update(bArr2, i10, segment2.limit - i10);
                segment2 = segment2.next;
                i.c(segment2);
            }
        }
        byte[] bArrDigest = messageDigest.digest();
        i.e(bArrDigest, "digest(...)");
        return new ByteString(bArrDigest);
    }

    private final ByteString hmac(String str, ByteString byteString) throws IllegalStateException, NoSuchAlgorithmException, InvalidKeyException {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.internalArray$okio(), str));
            Segment segment = this.head;
            if (segment != null) {
                byte[] bArr = segment.data;
                int i6 = segment.pos;
                mac.update(bArr, i6, segment.limit - i6);
                Segment segment2 = segment.next;
                i.c(segment2);
                while (segment2 != segment) {
                    byte[] bArr2 = segment2.data;
                    int i10 = segment2.pos;
                    mac.update(bArr2, i10, segment2.limit - i10);
                    segment2 = segment2.next;
                    i.c(segment2);
                }
            }
            byte[] bArrDoFinal = mac.doFinal();
            i.e(bArrDoFinal, "doFinal(...)");
            return new ByteString(bArrDoFinal);
        } catch (InvalidKeyException e5) {
            throw new IllegalArgumentException(e5);
        }
    }

    public static /* synthetic */ UnsafeCursor readAndWriteUnsafe$default(Buffer buffer, UnsafeCursor unsafeCursor, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            unsafeCursor = SegmentedByteString.getDEFAULT__new_UnsafeCursor();
        }
        return buffer.readAndWriteUnsafe(unsafeCursor);
    }

    public static /* synthetic */ UnsafeCursor readUnsafe$default(Buffer buffer, UnsafeCursor unsafeCursor, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            unsafeCursor = SegmentedByteString.getDEFAULT__new_UnsafeCursor();
        }
        return buffer.readUnsafe(unsafeCursor);
    }

    public static /* synthetic */ Buffer writeTo$default(Buffer buffer, OutputStream outputStream, long j10, int i6, Object obj) throws IOException {
        if ((i6 & 2) != 0) {
            j10 = buffer.size;
        }
        return buffer.writeTo(outputStream, j10);
    }

    /* renamed from: -deprecated_getByte, reason: not valid java name */
    public final byte m140deprecated_getByte(long j10) {
        return getByte(j10);
    }

    /* renamed from: -deprecated_size, reason: not valid java name */
    public final long m141deprecated_size() {
        return this.size;
    }

    public final void clear() throws EOFException {
        skip(size());
    }

    public final long completeSegmentByteCount() {
        long size = size();
        if (size == 0) {
            return 0L;
        }
        Segment segment = this.head;
        i.c(segment);
        Segment segment2 = segment.prev;
        i.c(segment2);
        if (segment2.limit < 8192 && segment2.owner) {
            size -= r3 - segment2.pos;
        }
        return size;
    }

    public final Buffer copy() {
        Buffer buffer = new Buffer();
        if (size() != 0) {
            Segment segment = this.head;
            i.c(segment);
            Segment segmentSharedCopy = segment.sharedCopy();
            buffer.head = segmentSharedCopy;
            segmentSharedCopy.prev = segmentSharedCopy;
            segmentSharedCopy.next = segmentSharedCopy;
            for (Segment segment2 = segment.next; segment2 != segment; segment2 = segment2.next) {
                Segment segment3 = segmentSharedCopy.prev;
                i.c(segment3);
                i.c(segment2);
                segment3.push(segment2.sharedCopy());
            }
            buffer.setSize$okio(size());
        }
        return buffer;
    }

    public final Buffer copyTo(OutputStream outputStream) throws IOException {
        i.f(outputStream, "out");
        return copyTo$default(this, outputStream, 0L, 0L, 6, (Object) null);
    }

    @Override // okio.BufferedSink
    public Buffer emit() {
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer emitCompleteSegments() {
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Buffer) {
            Buffer buffer = (Buffer) obj;
            if (size() == buffer.size()) {
                if (size() == 0) {
                    return true;
                }
                Segment segment = this.head;
                i.c(segment);
                Segment segment2 = buffer.head;
                i.c(segment2);
                int i6 = segment.pos;
                int i10 = segment2.pos;
                long j10 = 0;
                while (j10 < size()) {
                    long jMin = Math.min(segment.limit - i6, segment2.limit - i10);
                    long j11 = 0;
                    while (j11 < jMin) {
                        int i11 = i6 + 1;
                        int i12 = i10 + 1;
                        if (segment.data[i6] == segment2.data[i10]) {
                            j11++;
                            i6 = i11;
                            i10 = i12;
                        }
                    }
                    if (i6 == segment.limit) {
                        segment = segment.next;
                        i.c(segment);
                        i6 = segment.pos;
                    }
                    if (i10 == segment2.limit) {
                        segment2 = segment2.next;
                        i.c(segment2);
                        i10 = segment2.pos;
                    }
                    j10 += jMin;
                }
                return true;
            }
        }
        return false;
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        return this.size == 0;
    }

    public final byte getByte(long j10) {
        SegmentedByteString.checkOffsetAndCount(size(), j10, 1L);
        Segment segment = this.head;
        if (segment == null) {
            i.c(null);
            throw null;
        }
        if (size() - j10 < j10) {
            long size = size();
            while (size > j10) {
                segment = segment.prev;
                i.c(segment);
                size -= segment.limit - segment.pos;
            }
            return segment.data[(int) ((segment.pos + j10) - size)];
        }
        long j11 = 0;
        while (true) {
            int i6 = segment.limit;
            int i10 = segment.pos;
            long j12 = (i6 - i10) + j11;
            if (j12 > j10) {
                return segment.data[(int) ((i10 + j10) - j11)];
            }
            segment = segment.next;
            i.c(segment);
            j11 = j12;
        }
    }

    public int hashCode() {
        Segment segment = this.head;
        if (segment == null) {
            return 0;
        }
        int i6 = 1;
        do {
            int i10 = segment.limit;
            for (int i11 = segment.pos; i11 < i10; i11++) {
                i6 = (i6 * 31) + segment.data[i11];
            }
            segment = segment.next;
            i.c(segment);
        } while (segment != this.head);
        return i6;
    }

    public final ByteString hmacSha1(ByteString byteString) {
        i.f(byteString, CacheEntity.KEY);
        return hmac("HmacSHA1", byteString);
    }

    public final ByteString hmacSha256(ByteString byteString) {
        i.f(byteString, CacheEntity.KEY);
        return hmac("HmacSHA256", byteString);
    }

    public final ByteString hmacSha512(ByteString byteString) {
        i.f(byteString, CacheEntity.KEY);
        return hmac("HmacSHA512", byteString);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b8) {
        return indexOf(b8, 0L, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(ByteString byteString) {
        i.f(byteString, "targetBytes");
        return indexOfElement(byteString, 0L);
    }

    @Override // okio.BufferedSource
    public InputStream inputStream() {
        return new InputStream() { // from class: okio.Buffer.inputStream.1
            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(Buffer.this.size(), Integer.MAX_VALUE);
            }

            @Override // java.io.InputStream
            public int read() {
                if (Buffer.this.size() > 0) {
                    return Buffer.this.readByte() & 255;
                }
                return -1;
            }

            public String toString() {
                return Buffer.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i6, int i10) {
                i.f(bArr, "sink");
                return Buffer.this.read(bArr, i6, i10);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }
        };
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    public final ByteString md5() {
        return digest("MD5");
    }

    @Override // okio.BufferedSink
    public OutputStream outputStream() {
        return new OutputStream() { // from class: okio.Buffer.outputStream.1
            public String toString() {
                return Buffer.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int i6) {
                Buffer.this.writeByte(i6);
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i6, int i10) {
                i.f(bArr, "data");
                Buffer.this.write(bArr, i6, i10);
            }

            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
            }
        };
    }

    @Override // okio.BufferedSource
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j10, ByteString byteString) {
        i.f(byteString, "bytes");
        return rangeEquals(j10, byteString, 0, byteString.size());
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        i.f(byteBuffer, "sink");
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), segment.limit - segment.pos);
        byteBuffer.put(segment.data, segment.pos, iMin);
        int i6 = segment.pos + iMin;
        segment.pos = i6;
        this.size -= iMin;
        if (i6 == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return iMin;
    }

    @Override // okio.BufferedSource
    public long readAll(Sink sink) throws IOException {
        i.f(sink, "sink");
        long size = size();
        if (size > 0) {
            sink.write(this, size);
        }
        return size;
    }

    public final UnsafeCursor readAndWriteUnsafe() {
        return readAndWriteUnsafe$default(this, null, 1, null);
    }

    @Override // okio.BufferedSource
    public byte readByte() throws EOFException {
        if (size() == 0) {
            throw new EOFException();
        }
        Segment segment = this.head;
        i.c(segment);
        int i6 = segment.pos;
        int i10 = segment.limit;
        int i11 = i6 + 1;
        byte b8 = segment.data[i6];
        setSize$okio(size() - 1);
        if (i11 == i10) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i11;
        }
        return b8;
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray() {
        return readByteArray(size());
    }

    @Override // okio.BufferedSource
    public ByteString readByteString() {
        return readByteString(size());
    }

    @Override // okio.BufferedSource
    public long readDecimalLong() throws EOFException {
        if (size() == 0) {
            throw new EOFException();
        }
        int i6 = 0;
        long j10 = 0;
        long j11 = -7;
        boolean z7 = false;
        boolean z10 = false;
        do {
            Segment segment = this.head;
            i.c(segment);
            byte[] bArr = segment.data;
            int i10 = segment.pos;
            int i11 = segment.limit;
            while (i10 < i11) {
                byte b8 = bArr[i10];
                if (b8 >= 48 && b8 <= 57) {
                    int i12 = 48 - b8;
                    if (j10 < okio.internal.Buffer.OVERFLOW_ZONE || (j10 == okio.internal.Buffer.OVERFLOW_ZONE && i12 < j11)) {
                        Buffer bufferWriteByte = new Buffer().writeDecimalLong(j10).writeByte((int) b8);
                        if (!z7) {
                            bufferWriteByte.readByte();
                        }
                        throw new NumberFormatException("Number too large: " + bufferWriteByte.readUtf8());
                    }
                    j10 = (j10 * 10) + i12;
                } else {
                    if (b8 != 45 || i6 != 0) {
                        z10 = true;
                        break;
                    }
                    j11--;
                    z7 = true;
                }
                i10++;
                i6++;
            }
            if (i10 == i11) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i10;
            }
            if (z10) {
                break;
            }
        } while (this.head != null);
        setSize$okio(size() - i6);
        if (i6 >= (z7 ? 2 : 1)) {
            return z7 ? j10 : -j10;
        }
        if (size() == 0) {
            throw new EOFException();
        }
        StringBuilder sbW = e.w(z7 ? "Expected a digit" : "Expected a digit or '-'", " but was 0x");
        sbW.append(SegmentedByteString.toHexString(getByte(0L)));
        throw new NumberFormatException(sbW.toString());
    }

    public final Buffer readFrom(InputStream inputStream) throws IOException {
        i.f(inputStream, "input");
        readFrom(inputStream, Long.MAX_VALUE, true);
        return this;
    }

    @Override // okio.BufferedSource
    public void readFully(Buffer buffer, long j10) throws EOFException {
        i.f(buffer, "sink");
        if (size() >= j10) {
            buffer.write(this, j10);
        } else {
            buffer.write(this, size());
            throw new EOFException();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a1 A[EDGE_INSN: B:43:0x00a1->B:37:0x00a1 BREAK  A[LOOP:0: B:5:0x000d->B:45:?], SYNTHETIC] */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long readHexadecimalUnsignedLong() throws java.io.EOFException {
        /*
            r15 = this;
            long r0 = r15.size()
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto Lab
            r0 = 0
            r4 = r2
            r1 = 0
        Ld:
            okio.Segment r6 = r15.head
            j9.i.c(r6)
            byte[] r7 = r6.data
            int r8 = r6.pos
            int r9 = r6.limit
        L18:
            if (r8 >= r9) goto L8d
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L27
            r11 = 57
            if (r10 > r11) goto L27
            int r11 = r10 + (-48)
            goto L3c
        L27:
            r11 = 97
            if (r10 < r11) goto L32
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L32
            int r11 = r10 + (-87)
            goto L3c
        L32:
            r11 = 65
            if (r10 < r11) goto L71
            r11 = 70
            if (r10 > r11) goto L71
            int r11 = r10 + (-55)
        L3c:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L4c
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L18
        L4c:
            okio.Buffer r0 = new okio.Buffer
            r0.<init>()
            okio.Buffer r0 = r0.writeHexadecimalUnsignedLong(r4)
            okio.Buffer r0 = r0.writeByte(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Number too large: "
            r2.<init>(r3)
            java.lang.String r0 = r0.readUtf8()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L71:
            if (r0 == 0) goto L75
            r1 = 1
            goto L8d
        L75:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.<init>(r2)
            java.lang.String r2 = okio.SegmentedByteString.toHexString(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L8d:
            if (r8 != r9) goto L99
            okio.Segment r7 = r6.pop()
            r15.head = r7
            okio.SegmentPool.recycle(r6)
            goto L9b
        L99:
            r6.pos = r8
        L9b:
            if (r1 != 0) goto La1
            okio.Segment r6 = r15.head
            if (r6 != 0) goto Ld
        La1:
            long r1 = r15.size()
            long r6 = (long) r0
            long r1 = r1 - r6
            r15.setSize$okio(r1)
            return r4
        Lab:
            java.io.EOFException r0 = new java.io.EOFException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.readHexadecimalUnsignedLong():long");
    }

    @Override // okio.BufferedSource
    public int readInt() throws EOFException {
        if (size() < 4) {
            throw new EOFException();
        }
        Segment segment = this.head;
        i.c(segment);
        int i6 = segment.pos;
        int i10 = segment.limit;
        if (i10 - i6 < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = segment.data;
        int i11 = i6 + 3;
        int i12 = ((bArr[i6 + 1] & 255) << 16) | ((bArr[i6] & 255) << 24) | ((bArr[i6 + 2] & 255) << 8);
        int i13 = i6 + 4;
        int i14 = (bArr[i11] & 255) | i12;
        setSize$okio(size() - 4);
        if (i13 == i10) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i13;
        }
        return i14;
    }

    @Override // okio.BufferedSource
    public int readIntLe() throws EOFException {
        return SegmentedByteString.reverseBytes(readInt());
    }

    @Override // okio.BufferedSource
    public long readLong() throws EOFException {
        if (size() < 8) {
            throw new EOFException();
        }
        Segment segment = this.head;
        i.c(segment);
        int i6 = segment.pos;
        int i10 = segment.limit;
        if (i10 - i6 < 8) {
            return ((readInt() & 4294967295L) << 32) | (4294967295L & readInt());
        }
        byte[] bArr = segment.data;
        int i11 = i6 + 7;
        long j10 = ((bArr[i6 + 3] & 255) << 32) | ((bArr[i6] & 255) << 56) | ((bArr[i6 + 1] & 255) << 48) | ((bArr[i6 + 2] & 255) << 40) | ((bArr[i6 + 4] & 255) << 24) | ((bArr[i6 + 5] & 255) << 16) | ((bArr[i6 + 6] & 255) << 8);
        int i12 = i6 + 8;
        long j11 = j10 | (bArr[i11] & 255);
        setSize$okio(size() - 8);
        if (i12 == i10) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i12;
        }
        return j11;
    }

    @Override // okio.BufferedSource
    public long readLongLe() throws EOFException {
        return SegmentedByteString.reverseBytes(readLong());
    }

    @Override // okio.BufferedSource
    public short readShort() throws EOFException {
        if (size() < 2) {
            throw new EOFException();
        }
        Segment segment = this.head;
        i.c(segment);
        int i6 = segment.pos;
        int i10 = segment.limit;
        if (i10 - i6 < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = segment.data;
        int i11 = i6 + 1;
        int i12 = (bArr[i6] & 255) << 8;
        int i13 = i6 + 2;
        int i14 = (bArr[i11] & 255) | i12;
        setSize$okio(size() - 2);
        if (i13 == i10) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i13;
        }
        return (short) i14;
    }

    @Override // okio.BufferedSource
    public short readShortLe() throws EOFException {
        return SegmentedByteString.reverseBytes(readShort());
    }

    @Override // okio.BufferedSource
    public String readString(Charset charset) {
        i.f(charset, "charset");
        return readString(this.size, charset);
    }

    public final UnsafeCursor readUnsafe() {
        return readUnsafe$default(this, null, 1, null);
    }

    @Override // okio.BufferedSource
    public String readUtf8() {
        return readString(this.size, a.f9611a);
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() throws EOFException {
        int i6;
        int i10;
        int i11;
        if (size() == 0) {
            throw new EOFException();
        }
        byte b8 = getByte(0L);
        if ((b8 & 128) == 0) {
            i6 = b8 & 127;
            i10 = 1;
            i11 = 0;
        } else if ((b8 & 224) == 192) {
            i6 = b8 & 31;
            i10 = 2;
            i11 = 128;
        } else if ((b8 & 240) == 224) {
            i6 = b8 & 15;
            i10 = 3;
            i11 = 2048;
        } else {
            if ((b8 & 248) != 240) {
                skip(1L);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            i6 = b8 & 7;
            i10 = 4;
            i11 = C.DEFAULT_BUFFER_SEGMENT_SIZE;
        }
        long j10 = i10;
        if (size() < j10) {
            StringBuilder sbU = e.u(i10, "size < ", ": ");
            sbU.append(size());
            sbU.append(" (to read code point prefixed 0x");
            sbU.append(SegmentedByteString.toHexString(b8));
            sbU.append(')');
            throw new EOFException(sbU.toString());
        }
        for (int i12 = 1; i12 < i10; i12++) {
            long j11 = i12;
            byte b10 = getByte(j11);
            if ((b10 & 192) != 128) {
                skip(j11);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            i6 = (i6 << 6) | (b10 & Utf8.REPLACEMENT_BYTE);
        }
        skip(j10);
        return i6 > 1114111 ? Utf8.REPLACEMENT_CODE_POINT : ((55296 > i6 || i6 >= 57344) && i6 >= i11) ? i6 : Utf8.REPLACEMENT_CODE_POINT;
    }

    @Override // okio.BufferedSource
    public String readUtf8Line() throws EOFException {
        long jIndexOf = indexOf((byte) 10);
        if (jIndexOf != -1) {
            return okio.internal.Buffer.readUtf8Line(this, jIndexOf);
        }
        if (size() != 0) {
            return readUtf8(size());
        }
        return null;
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict() throws EOFException {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public boolean request(long j10) {
        return this.size >= j10;
    }

    @Override // okio.BufferedSource
    public void require(long j10) throws EOFException {
        if (this.size < j10) {
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    public int select(Options options) throws EOFException {
        i.f(options, "options");
        int iSelectPrefix$default = okio.internal.Buffer.selectPrefix$default(this, options, false, 2, null);
        if (iSelectPrefix$default == -1) {
            return -1;
        }
        skip(options.getByteStrings$okio()[iSelectPrefix$default].size());
        return iSelectPrefix$default;
    }

    public final void setSize$okio(long j10) {
        this.size = j10;
    }

    public final ByteString sha1() {
        return digest("SHA-1");
    }

    public final ByteString sha256() {
        return digest("SHA-256");
    }

    public final ByteString sha512() {
        return digest("SHA-512");
    }

    public final long size() {
        return this.size;
    }

    @Override // okio.BufferedSource
    public void skip(long j10) throws EOFException {
        while (j10 > 0) {
            Segment segment = this.head;
            if (segment == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j10, segment.limit - segment.pos);
            long j11 = iMin;
            setSize$okio(size() - j11);
            j10 -= j11;
            int i6 = segment.pos + iMin;
            segment.pos = i6;
            if (i6 == segment.limit) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }

    public final ByteString snapshot() {
        if (size() <= 2147483647L) {
            return snapshot((int) size());
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + size()).toString());
    }

    @Override // okio.Source
    public Timeout timeout() {
        return Timeout.NONE;
    }

    public String toString() {
        return snapshot().toString();
    }

    public final Segment writableSegment$okio(int i6) {
        if (i6 < 1 || i6 > 8192) {
            throw new IllegalArgumentException("unexpected capacity");
        }
        Segment segment = this.head;
        if (segment != null) {
            i.c(segment);
            Segment segment2 = segment.prev;
            i.c(segment2);
            return (segment2.limit + i6 > 8192 || !segment2.owner) ? segment2.push(SegmentPool.take()) : segment2;
        }
        Segment segmentTake = SegmentPool.take();
        this.head = segmentTake;
        segmentTake.prev = segmentTake;
        segmentTake.next = segmentTake;
        return segmentTake;
    }

    @Override // okio.BufferedSink
    public long writeAll(Source source) throws IOException {
        i.f(source, "source");
        long j10 = 0;
        while (true) {
            long j11 = source.read(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (j11 == -1) {
                return j10;
            }
            j10 += j11;
        }
    }

    public final Buffer writeTo(OutputStream outputStream) throws IOException {
        i.f(outputStream, "out");
        return writeTo$default(this, outputStream, 0L, 2, null);
    }

    public Buffer clone() {
        return copy();
    }

    public final Buffer copyTo(OutputStream outputStream, long j10) throws IOException {
        i.f(outputStream, "out");
        return copyTo$default(this, outputStream, j10, 0L, 4, (Object) null);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b8, long j10) {
        return indexOf(b8, j10, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(ByteString byteString, long j10) {
        int i6;
        int i10;
        i.f(byteString, "targetBytes");
        long size = 0;
        if (j10 < 0) {
            throw new IllegalArgumentException(e.o(j10, "fromIndex < 0: ").toString());
        }
        Segment segment = this.head;
        if (segment == null) {
            return -1L;
        }
        if (size() - j10 < j10) {
            size = size();
            while (size > j10) {
                segment = segment.prev;
                i.c(segment);
                size -= segment.limit - segment.pos;
            }
            if (byteString.size() == 2) {
                byte b8 = byteString.getByte(0);
                byte b10 = byteString.getByte(1);
                while (size < size()) {
                    byte[] bArr = segment.data;
                    i6 = (int) ((segment.pos + j10) - size);
                    int i11 = segment.limit;
                    while (i6 < i11) {
                        byte b11 = bArr[i6];
                        if (b11 == b8 || b11 == b10) {
                            i10 = segment.pos;
                        } else {
                            i6++;
                        }
                    }
                    size += segment.limit - segment.pos;
                    segment = segment.next;
                    i.c(segment);
                    j10 = size;
                }
                return -1L;
            }
            byte[] bArrInternalArray$okio = byteString.internalArray$okio();
            while (size < size()) {
                byte[] bArr2 = segment.data;
                i6 = (int) ((segment.pos + j10) - size);
                int i12 = segment.limit;
                while (i6 < i12) {
                    byte b12 = bArr2[i6];
                    for (byte b13 : bArrInternalArray$okio) {
                        if (b12 == b13) {
                            i10 = segment.pos;
                        }
                    }
                    i6++;
                }
                size += segment.limit - segment.pos;
                segment = segment.next;
                i.c(segment);
                j10 = size;
            }
            return -1L;
        }
        while (true) {
            long j11 = (segment.limit - segment.pos) + size;
            if (j11 > j10) {
                break;
            }
            segment = segment.next;
            i.c(segment);
            size = j11;
        }
        if (byteString.size() == 2) {
            byte b14 = byteString.getByte(0);
            byte b15 = byteString.getByte(1);
            while (size < size()) {
                byte[] bArr3 = segment.data;
                i6 = (int) ((segment.pos + j10) - size);
                int i13 = segment.limit;
                while (i6 < i13) {
                    byte b16 = bArr3[i6];
                    if (b16 == b14 || b16 == b15) {
                        i10 = segment.pos;
                    } else {
                        i6++;
                    }
                }
                size += segment.limit - segment.pos;
                segment = segment.next;
                i.c(segment);
                j10 = size;
            }
            return -1L;
        }
        byte[] bArrInternalArray$okio2 = byteString.internalArray$okio();
        while (size < size()) {
            byte[] bArr4 = segment.data;
            i6 = (int) ((segment.pos + j10) - size);
            int i14 = segment.limit;
            while (i6 < i14) {
                byte b17 = bArr4[i6];
                for (byte b18 : bArrInternalArray$okio2) {
                    if (b17 == b18) {
                        i10 = segment.pos;
                    }
                }
                i6++;
            }
            size += segment.limit - segment.pos;
            segment = segment.next;
            i.c(segment);
            j10 = size;
        }
        return -1L;
        return (i6 - i10) + size;
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j10, ByteString byteString, int i6, int i10) {
        i.f(byteString, "bytes");
        if (j10 < 0 || i6 < 0 || i10 < 0 || size() - j10 < i10 || byteString.size() - i6 < i10) {
            return false;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            if (getByte(i11 + j10) != byteString.getByte(i6 + i11)) {
                return false;
            }
        }
        return true;
    }

    public final UnsafeCursor readAndWriteUnsafe(UnsafeCursor unsafeCursor) {
        i.f(unsafeCursor, "unsafeCursor");
        return okio.internal.Buffer.commonReadAndWriteUnsafe(this, unsafeCursor);
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray(long j10) throws EOFException {
        if (j10 < 0 || j10 > 2147483647L) {
            throw new IllegalArgumentException(e.o(j10, "byteCount: ").toString());
        }
        if (size() < j10) {
            throw new EOFException();
        }
        byte[] bArr = new byte[(int) j10];
        readFully(bArr);
        return bArr;
    }

    @Override // okio.BufferedSource
    public ByteString readByteString(long j10) throws EOFException {
        if (j10 < 0 || j10 > 2147483647L) {
            throw new IllegalArgumentException(e.o(j10, "byteCount: ").toString());
        }
        if (size() < j10) {
            throw new EOFException();
        }
        if (j10 < PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            return new ByteString(readByteArray(j10));
        }
        ByteString byteStringSnapshot = snapshot((int) j10);
        skip(j10);
        return byteStringSnapshot;
    }

    public final Buffer readFrom(InputStream inputStream, long j10) throws IOException {
        i.f(inputStream, "input");
        if (j10 < 0) {
            throw new IllegalArgumentException(e.o(j10, "byteCount < 0: ").toString());
        }
        readFrom(inputStream, j10, false);
        return this;
    }

    @Override // okio.BufferedSource
    public String readString(long j10, Charset charset) throws EOFException {
        i.f(charset, "charset");
        if (j10 < 0 || j10 > 2147483647L) {
            throw new IllegalArgumentException(e.o(j10, "byteCount: ").toString());
        }
        if (this.size < j10) {
            throw new EOFException();
        }
        if (j10 == 0) {
            return "";
        }
        Segment segment = this.head;
        i.c(segment);
        int i6 = segment.pos;
        if (i6 + j10 > segment.limit) {
            return new String(readByteArray(j10), charset);
        }
        int i10 = (int) j10;
        String str = new String(segment.data, i6, i10, charset);
        int i11 = segment.pos + i10;
        segment.pos = i11;
        this.size -= j10;
        if (i11 == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return str;
    }

    public final UnsafeCursor readUnsafe(UnsafeCursor unsafeCursor) {
        i.f(unsafeCursor, "unsafeCursor");
        return okio.internal.Buffer.commonReadUnsafe(this, unsafeCursor);
    }

    @Override // okio.BufferedSource
    public String readUtf8(long j10) throws EOFException {
        return readString(j10, a.f9611a);
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict(long j10) throws EOFException {
        if (j10 < 0) {
            throw new IllegalArgumentException(e.o(j10, "limit < 0: ").toString());
        }
        long j11 = j10 != Long.MAX_VALUE ? j10 + 1 : Long.MAX_VALUE;
        long jIndexOf = indexOf((byte) 10, 0L, j11);
        if (jIndexOf != -1) {
            return okio.internal.Buffer.readUtf8Line(this, jIndexOf);
        }
        if (j11 < size() && getByte(j11 - 1) == 13 && getByte(j11) == 10) {
            return okio.internal.Buffer.readUtf8Line(this, j11);
        }
        Buffer buffer = new Buffer();
        copyTo(buffer, 0L, Math.min(32, size()));
        throw new EOFException("\\n not found: limit=" + Math.min(size(), j10) + " content=" + buffer.readByteString().hex() + (char) 8230);
    }

    @Override // okio.BufferedSink
    public Buffer writeByte(int i6) {
        Segment segmentWritableSegment$okio = writableSegment$okio(1);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i10 = segmentWritableSegment$okio.limit;
        segmentWritableSegment$okio.limit = i10 + 1;
        bArr[i10] = (byte) i6;
        setSize$okio(size() + 1);
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeDecimalLong(long j10) {
        boolean z7;
        if (j10 == 0) {
            return writeByte(48);
        }
        int i6 = 1;
        if (j10 < 0) {
            j10 = -j10;
            if (j10 < 0) {
                return writeUtf8("-9223372036854775808");
            }
            z7 = true;
        } else {
            z7 = false;
        }
        if (j10 >= 100000000) {
            i6 = j10 < MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US ? j10 < RealConnection.IDLE_CONNECTION_HEALTHY_NS ? j10 < C.NANOS_PER_SECOND ? 9 : 10 : j10 < 100000000000L ? 11 : 12 : j10 < 1000000000000000L ? j10 < 10000000000000L ? 13 : j10 < 100000000000000L ? 14 : 15 : j10 < 100000000000000000L ? j10 < 10000000000000000L ? 16 : 17 : j10 < 1000000000000000000L ? 18 : 19;
        } else if (j10 >= Renderer.DEFAULT_DURATION_TO_PROGRESS_US) {
            i6 = j10 < 1000000 ? j10 < SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US ? 5 : 6 : j10 < 10000000 ? 7 : 8;
        } else if (j10 >= 100) {
            i6 = j10 < 1000 ? 3 : 4;
        } else if (j10 >= 10) {
            i6 = 2;
        }
        if (z7) {
            i6++;
        }
        Segment segmentWritableSegment$okio = writableSegment$okio(i6);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i10 = segmentWritableSegment$okio.limit + i6;
        while (j10 != 0) {
            long j11 = 10;
            i10--;
            bArr[i10] = okio.internal.Buffer.getHEX_DIGIT_BYTES()[(int) (j10 % j11)];
            j10 /= j11;
        }
        if (z7) {
            bArr[i10 - 1] = 45;
        }
        segmentWritableSegment$okio.limit += i6;
        setSize$okio(size() + i6);
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeHexadecimalUnsignedLong(long j10) {
        if (j10 == 0) {
            return writeByte(48);
        }
        long j11 = (j10 >>> 1) | j10;
        long j12 = j11 | (j11 >>> 2);
        long j13 = j12 | (j12 >>> 4);
        long j14 = j13 | (j13 >>> 8);
        long j15 = j14 | (j14 >>> 16);
        long j16 = j15 | (j15 >>> 32);
        long j17 = j16 - ((j16 >>> 1) & 6148914691236517205L);
        long j18 = ((j17 >>> 2) & 3689348814741910323L) + (j17 & 3689348814741910323L);
        long j19 = ((j18 >>> 4) + j18) & 1085102592571150095L;
        long j20 = j19 + (j19 >>> 8);
        long j21 = j20 + (j20 >>> 16);
        int i6 = (int) ((((j21 & 63) + ((j21 >>> 32) & 63)) + 3) / 4);
        Segment segmentWritableSegment$okio = writableSegment$okio(i6);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i10 = segmentWritableSegment$okio.limit;
        for (int i11 = (i10 + i6) - 1; i11 >= i10; i11--) {
            bArr[i11] = okio.internal.Buffer.getHEX_DIGIT_BYTES()[(int) (15 & j10)];
            j10 >>>= 4;
        }
        segmentWritableSegment$okio.limit += i6;
        setSize$okio(size() + i6);
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeInt(int i6) {
        Segment segmentWritableSegment$okio = writableSegment$okio(4);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i10 = segmentWritableSegment$okio.limit;
        bArr[i10] = (byte) ((i6 >>> 24) & 255);
        bArr[i10 + 1] = (byte) ((i6 >>> 16) & 255);
        bArr[i10 + 2] = (byte) ((i6 >>> 8) & 255);
        bArr[i10 + 3] = (byte) (i6 & 255);
        segmentWritableSegment$okio.limit = i10 + 4;
        setSize$okio(size() + 4);
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeIntLe(int i6) {
        return writeInt(SegmentedByteString.reverseBytes(i6));
    }

    @Override // okio.BufferedSink
    public Buffer writeLong(long j10) {
        Segment segmentWritableSegment$okio = writableSegment$okio(8);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i6 = segmentWritableSegment$okio.limit;
        bArr[i6] = (byte) ((j10 >>> 56) & 255);
        bArr[i6 + 1] = (byte) ((j10 >>> 48) & 255);
        bArr[i6 + 2] = (byte) ((j10 >>> 40) & 255);
        bArr[i6 + 3] = (byte) ((j10 >>> 32) & 255);
        bArr[i6 + 4] = (byte) ((j10 >>> 24) & 255);
        bArr[i6 + 5] = (byte) ((j10 >>> 16) & 255);
        bArr[i6 + 6] = (byte) ((j10 >>> 8) & 255);
        bArr[i6 + 7] = (byte) (j10 & 255);
        segmentWritableSegment$okio.limit = i6 + 8;
        setSize$okio(size() + 8);
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeLongLe(long j10) {
        return writeLong(SegmentedByteString.reverseBytes(j10));
    }

    @Override // okio.BufferedSink
    public Buffer writeShort(int i6) {
        Segment segmentWritableSegment$okio = writableSegment$okio(2);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i10 = segmentWritableSegment$okio.limit;
        bArr[i10] = (byte) ((i6 >>> 8) & 255);
        bArr[i10 + 1] = (byte) (i6 & 255);
        segmentWritableSegment$okio.limit = i10 + 2;
        setSize$okio(size() + 2);
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeShortLe(int i6) {
        return writeShort((int) SegmentedByteString.reverseBytes((short) i6));
    }

    public final Buffer writeTo(OutputStream outputStream, long j10) throws IOException {
        i.f(outputStream, "out");
        SegmentedByteString.checkOffsetAndCount(this.size, 0L, j10);
        Segment segment = this.head;
        while (j10 > 0) {
            i.c(segment);
            int iMin = (int) Math.min(j10, segment.limit - segment.pos);
            outputStream.write(segment.data, segment.pos, iMin);
            int i6 = segment.pos + iMin;
            segment.pos = i6;
            long j11 = iMin;
            this.size -= j11;
            j10 -= j11;
            if (i6 == segment.limit) {
                Segment segmentPop = segment.pop();
                this.head = segmentPop;
                SegmentPool.recycle(segment);
                segment = segmentPop;
            }
        }
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeUtf8CodePoint(int i6) {
        if (i6 < 128) {
            writeByte(i6);
        } else if (i6 < 2048) {
            Segment segmentWritableSegment$okio = writableSegment$okio(2);
            byte[] bArr = segmentWritableSegment$okio.data;
            int i10 = segmentWritableSegment$okio.limit;
            bArr[i10] = (byte) ((i6 >> 6) | 192);
            bArr[i10 + 1] = (byte) ((i6 & 63) | 128);
            segmentWritableSegment$okio.limit = i10 + 2;
            setSize$okio(size() + 2);
        } else if (55296 <= i6 && i6 < 57344) {
            writeByte(63);
        } else if (i6 < 65536) {
            Segment segmentWritableSegment$okio2 = writableSegment$okio(3);
            byte[] bArr2 = segmentWritableSegment$okio2.data;
            int i11 = segmentWritableSegment$okio2.limit;
            bArr2[i11] = (byte) ((i6 >> 12) | 224);
            bArr2[i11 + 1] = (byte) (((i6 >> 6) & 63) | 128);
            bArr2[i11 + 2] = (byte) ((i6 & 63) | 128);
            segmentWritableSegment$okio2.limit = i11 + 3;
            setSize$okio(size() + 3);
        } else {
            if (i6 > 1114111) {
                throw new IllegalArgumentException("Unexpected code point: 0x" + SegmentedByteString.toHexString(i6));
            }
            Segment segmentWritableSegment$okio3 = writableSegment$okio(4);
            byte[] bArr3 = segmentWritableSegment$okio3.data;
            int i12 = segmentWritableSegment$okio3.limit;
            bArr3[i12] = (byte) ((i6 >> 18) | PsExtractor.VIDEO_STREAM_MASK);
            bArr3[i12 + 1] = (byte) (((i6 >> 12) & 63) | 128);
            bArr3[i12 + 2] = (byte) (((i6 >> 6) & 63) | 128);
            bArr3[i12 + 3] = (byte) ((i6 & 63) | 128);
            segmentWritableSegment$okio3.limit = i12 + 4;
            setSize$okio(size() + 4);
        }
        return this;
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j10, long j11, int i6, Object obj) {
        if ((i6 & 2) != 0) {
            j10 = 0;
        }
        return buffer.copyTo(buffer2, j10, j11);
    }

    public final Buffer copyTo(OutputStream outputStream, long j10, long j11) throws IOException {
        i.f(outputStream, "out");
        SegmentedByteString.checkOffsetAndCount(this.size, j10, j11);
        if (j11 == 0) {
            return this;
        }
        Segment segment = this.head;
        while (true) {
            i.c(segment);
            int i6 = segment.limit;
            int i10 = segment.pos;
            if (j10 < i6 - i10) {
                break;
            }
            j10 -= i6 - i10;
            segment = segment.next;
        }
        while (j11 > 0) {
            i.c(segment);
            int iMin = (int) Math.min(segment.limit - r10, j11);
            outputStream.write(segment.data, (int) (segment.pos + j10), iMin);
            j11 -= iMin;
            segment = segment.next;
            j10 = 0;
        }
        return this;
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString byteString) throws IOException {
        i.f(byteString, "bytes");
        return indexOf(byteString, 0L);
    }

    @Override // okio.BufferedSink
    public Buffer writeString(String str, Charset charset) {
        i.f(str, "string");
        i.f(charset, "charset");
        return writeString(str, 0, str.length(), charset);
    }

    @Override // okio.BufferedSink
    public Buffer writeUtf8(String str) {
        i.f(str, "string");
        return writeUtf8(str, 0, str.length());
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j10, int i6, Object obj) {
        if ((i6 & 2) != 0) {
            j10 = 0;
        }
        return buffer.copyTo(buffer2, j10);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b8, long j10, long j11) {
        Segment segment;
        int i6;
        long size = 0;
        if (0 > j10 || j10 > j11) {
            throw new IllegalArgumentException(("size=" + size() + " fromIndex=" + j10 + " toIndex=" + j11).toString());
        }
        if (j11 > size()) {
            j11 = size();
        }
        if (j10 == j11 || (segment = this.head) == null) {
            return -1L;
        }
        if (size() - j10 < j10) {
            size = size();
            while (size > j10) {
                segment = segment.prev;
                i.c(segment);
                size -= segment.limit - segment.pos;
            }
            while (size < j11) {
                byte[] bArr = segment.data;
                int iMin = (int) Math.min(segment.limit, (segment.pos + j11) - size);
                i6 = (int) ((segment.pos + j10) - size);
                while (i6 < iMin) {
                    if (bArr[i6] != b8) {
                        i6++;
                    }
                }
                size += segment.limit - segment.pos;
                segment = segment.next;
                i.c(segment);
                j10 = size;
            }
            return -1L;
        }
        while (true) {
            long j12 = (segment.limit - segment.pos) + size;
            if (j12 > j10) {
                break;
            }
            segment = segment.next;
            i.c(segment);
            size = j12;
        }
        while (size < j11) {
            byte[] bArr2 = segment.data;
            int iMin2 = (int) Math.min(segment.limit, (segment.pos + j11) - size);
            i6 = (int) ((segment.pos + j10) - size);
            while (i6 < iMin2) {
                if (bArr2[i6] != b8) {
                    i6++;
                }
            }
            size += segment.limit - segment.pos;
            segment = segment.next;
            i.c(segment);
            j10 = size;
        }
        return -1L;
        return (i6 - segment.pos) + size;
    }

    @Override // okio.BufferedSource
    public <T> T select(TypedOptions<T> typedOptions) throws IOException {
        i.f(typedOptions, "options");
        int iSelect = select(typedOptions.getOptions$okio());
        if (iSelect == -1) {
            return null;
        }
        return typedOptions.get(iSelect);
    }

    public final ByteString snapshot(int i6) {
        if (i6 == 0) {
            return ByteString.EMPTY;
        }
        SegmentedByteString.checkOffsetAndCount(size(), 0L, i6);
        Segment segment = this.head;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i11 < i6) {
            i.c(segment);
            int i13 = segment.limit;
            int i14 = segment.pos;
            if (i13 != i14) {
                i11 += i13 - i14;
                i12++;
                segment = segment.next;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        byte[][] bArr = new byte[i12][];
        int[] iArr = new int[i12 * 2];
        Segment segment2 = this.head;
        int i15 = 0;
        while (i10 < i6) {
            i.c(segment2);
            bArr[i15] = segment2.data;
            i10 += segment2.limit - segment2.pos;
            iArr[i15] = Math.min(i10, i6);
            iArr[i15 + i12] = segment2.pos;
            segment2.shared = true;
            i15++;
            segment2 = segment2.next;
        }
        return new C0004SegmentedByteString(bArr, iArr);
    }

    @Override // okio.BufferedSink
    public Buffer writeUtf8(String str, int i6, int i10) {
        char cCharAt;
        i.f(str, "string");
        if (i6 < 0) {
            throw new IllegalArgumentException(e.n(i6, "beginIndex < 0: ").toString());
        }
        if (i10 >= i6) {
            if (i10 > str.length()) {
                StringBuilder sbU = e.u(i10, "endIndex > string.length: ", " > ");
                sbU.append(str.length());
                throw new IllegalArgumentException(sbU.toString().toString());
            }
            while (i6 < i10) {
                char cCharAt2 = str.charAt(i6);
                if (cCharAt2 < 128) {
                    Segment segmentWritableSegment$okio = writableSegment$okio(1);
                    byte[] bArr = segmentWritableSegment$okio.data;
                    int i11 = segmentWritableSegment$okio.limit - i6;
                    int iMin = Math.min(i10, 8192 - i11);
                    int i12 = i6 + 1;
                    bArr[i6 + i11] = (byte) cCharAt2;
                    while (true) {
                        i6 = i12;
                        if (i6 >= iMin || (cCharAt = str.charAt(i6)) >= 128) {
                            break;
                        }
                        i12 = i6 + 1;
                        bArr[i6 + i11] = (byte) cCharAt;
                    }
                    int i13 = segmentWritableSegment$okio.limit;
                    int i14 = (i11 + i6) - i13;
                    segmentWritableSegment$okio.limit = i13 + i14;
                    setSize$okio(size() + i14);
                } else {
                    if (cCharAt2 < 2048) {
                        Segment segmentWritableSegment$okio2 = writableSegment$okio(2);
                        byte[] bArr2 = segmentWritableSegment$okio2.data;
                        int i15 = segmentWritableSegment$okio2.limit;
                        bArr2[i15] = (byte) ((cCharAt2 >> 6) | 192);
                        bArr2[i15 + 1] = (byte) ((cCharAt2 & '?') | 128);
                        segmentWritableSegment$okio2.limit = i15 + 2;
                        setSize$okio(size() + 2);
                    } else if (cCharAt2 >= 55296 && cCharAt2 <= 57343) {
                        int i16 = i6 + 1;
                        char cCharAt3 = i16 < i10 ? str.charAt(i16) : (char) 0;
                        if (cCharAt2 <= 56319 && 56320 <= cCharAt3 && cCharAt3 < 57344) {
                            int i17 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + C.DEFAULT_BUFFER_SEGMENT_SIZE;
                            Segment segmentWritableSegment$okio3 = writableSegment$okio(4);
                            byte[] bArr3 = segmentWritableSegment$okio3.data;
                            int i18 = segmentWritableSegment$okio3.limit;
                            bArr3[i18] = (byte) ((i17 >> 18) | PsExtractor.VIDEO_STREAM_MASK);
                            bArr3[i18 + 1] = (byte) (((i17 >> 12) & 63) | 128);
                            bArr3[i18 + 2] = (byte) (((i17 >> 6) & 63) | 128);
                            bArr3[i18 + 3] = (byte) ((i17 & 63) | 128);
                            segmentWritableSegment$okio3.limit = i18 + 4;
                            setSize$okio(size() + 4);
                            i6 += 2;
                        } else {
                            writeByte(63);
                            i6 = i16;
                        }
                    } else {
                        Segment segmentWritableSegment$okio4 = writableSegment$okio(3);
                        byte[] bArr4 = segmentWritableSegment$okio4.data;
                        int i19 = segmentWritableSegment$okio4.limit;
                        bArr4[i19] = (byte) ((cCharAt2 >> '\f') | 224);
                        bArr4[i19 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                        bArr4[i19 + 2] = (byte) ((cCharAt2 & '?') | 128);
                        segmentWritableSegment$okio4.limit = i19 + 3;
                        setSize$okio(size() + 3);
                    }
                    i6++;
                }
            }
            return this;
        }
        throw new IllegalArgumentException(e.m(i10, i6, "endIndex < beginIndex: ", " < ").toString());
    }

    @Override // okio.BufferedSource
    public void readFully(byte[] bArr) throws EOFException {
        i.f(bArr, "sink");
        int i6 = 0;
        while (i6 < bArr.length) {
            int i10 = read(bArr, i6, bArr.length - i6);
            if (i10 == -1) {
                throw new EOFException();
            }
            i6 += i10;
        }
    }

    @Override // okio.BufferedSink
    public Buffer writeString(String str, int i6, int i10, Charset charset) {
        i.f(str, "string");
        i.f(charset, "charset");
        if (i6 < 0) {
            throw new IllegalArgumentException(e.n(i6, "beginIndex < 0: ").toString());
        }
        if (i10 >= i6) {
            if (i10 <= str.length()) {
                if (charset.equals(a.f9611a)) {
                    return writeUtf8(str, i6, i10);
                }
                String strSubstring = str.substring(i6, i10);
                i.e(strSubstring, "substring(...)");
                byte[] bytes = strSubstring.getBytes(charset);
                i.e(bytes, "getBytes(...)");
                return write(bytes, 0, bytes.length);
            }
            StringBuilder sbU = e.u(i10, "endIndex > string.length: ", " > ");
            sbU.append(str.length());
            throw new IllegalArgumentException(sbU.toString().toString());
        }
        throw new IllegalArgumentException(e.m(i10, i6, "endIndex < beginIndex: ", " < ").toString());
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        i.f(byteBuffer, "source");
        int iRemaining = byteBuffer.remaining();
        int i6 = iRemaining;
        while (i6 > 0) {
            Segment segmentWritableSegment$okio = writableSegment$okio(1);
            int iMin = Math.min(i6, 8192 - segmentWritableSegment$okio.limit);
            byteBuffer.get(segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, iMin);
            i6 -= iMin;
            segmentWritableSegment$okio.limit += iMin;
        }
        this.size += iRemaining;
        return iRemaining;
    }

    @Override // okio.BufferedSource
    public int read(byte[] bArr) {
        i.f(bArr, "sink");
        return read(bArr, 0, bArr.length);
    }

    private final void readFrom(InputStream inputStream, long j10, boolean z7) throws IOException {
        while (true) {
            if (j10 <= 0 && !z7) {
                return;
            }
            Segment segmentWritableSegment$okio = writableSegment$okio(1);
            int i6 = inputStream.read(segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, (int) Math.min(j10, 8192 - segmentWritableSegment$okio.limit));
            if (i6 == -1) {
                if (segmentWritableSegment$okio.pos == segmentWritableSegment$okio.limit) {
                    this.head = segmentWritableSegment$okio.pop();
                    SegmentPool.recycle(segmentWritableSegment$okio);
                }
                if (!z7) {
                    throw new EOFException();
                }
                return;
            }
            segmentWritableSegment$okio.limit += i6;
            long j11 = i6;
            this.size += j11;
            j10 -= j11;
        }
    }

    @Override // okio.BufferedSource
    public int read(byte[] bArr, int i6, int i10) {
        i.f(bArr, "sink");
        SegmentedByteString.checkOffsetAndCount(bArr.length, i6, i10);
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(i10, segment.limit - segment.pos);
        byte[] bArr2 = segment.data;
        int i11 = segment.pos;
        x8.i.E(bArr2, i6, i11, bArr, i11 + iMin);
        segment.pos += iMin;
        setSize$okio(size() - iMin);
        if (segment.pos == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return iMin;
    }

    public final Buffer copyTo(Buffer buffer, long j10) {
        i.f(buffer, "out");
        return copyTo(buffer, j10, this.size - j10);
    }

    @Override // okio.BufferedSink
    public Buffer write(ByteString byteString) {
        i.f(byteString, "byteString");
        byteString.write$okio(this, 0, byteString.size());
        return this;
    }

    public final Buffer copyTo(Buffer buffer, long j10, long j11) {
        i.f(buffer, "out");
        SegmentedByteString.checkOffsetAndCount(size(), j10, j11);
        if (j11 != 0) {
            buffer.setSize$okio(buffer.size() + j11);
            Segment segment = this.head;
            while (true) {
                i.c(segment);
                int i6 = segment.limit;
                int i10 = segment.pos;
                if (j10 < i6 - i10) {
                    break;
                }
                j10 -= i6 - i10;
                segment = segment.next;
            }
            while (j11 > 0) {
                i.c(segment);
                Segment segmentSharedCopy = segment.sharedCopy();
                int i11 = segmentSharedCopy.pos + ((int) j10);
                segmentSharedCopy.pos = i11;
                segmentSharedCopy.limit = Math.min(i11 + ((int) j11), segmentSharedCopy.limit);
                Segment segment2 = buffer.head;
                if (segment2 == null) {
                    segmentSharedCopy.prev = segmentSharedCopy;
                    segmentSharedCopy.next = segmentSharedCopy;
                    buffer.head = segmentSharedCopy;
                } else {
                    i.c(segment2);
                    Segment segment3 = segment2.prev;
                    i.c(segment3);
                    segment3.push(segmentSharedCopy);
                }
                j11 -= segmentSharedCopy.limit - segmentSharedCopy.pos;
                segment = segment.next;
                j10 = 0;
            }
        }
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer write(ByteString byteString, int i6, int i10) {
        i.f(byteString, "byteString");
        byteString.write$okio(this, i6, i10);
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer write(byte[] bArr) {
        i.f(bArr, "source");
        return write(bArr, 0, bArr.length);
    }

    @Override // okio.BufferedSink
    public Buffer write(byte[] bArr, int i6, int i10) {
        i.f(bArr, "source");
        long j10 = i10;
        SegmentedByteString.checkOffsetAndCount(bArr.length, i6, j10);
        int i11 = i10 + i6;
        while (i6 < i11) {
            Segment segmentWritableSegment$okio = writableSegment$okio(1);
            int iMin = Math.min(i11 - i6, 8192 - segmentWritableSegment$okio.limit);
            int i12 = i6 + iMin;
            x8.i.E(bArr, segmentWritableSegment$okio.limit, i6, segmentWritableSegment$okio.data, i12);
            segmentWritableSegment$okio.limit += iMin;
            i6 = i12;
        }
        setSize$okio(size() + j10);
        return this;
    }

    @Override // okio.Source
    public long read(Buffer buffer, long j10) {
        i.f(buffer, "sink");
        if (j10 < 0) {
            throw new IllegalArgumentException(e.o(j10, "byteCount < 0: ").toString());
        }
        if (size() == 0) {
            return -1L;
        }
        if (j10 > size()) {
            j10 = size();
        }
        buffer.write(this, j10);
        return j10;
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    public Buffer buffer() {
        return this;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    public Buffer getBuffer() {
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer write(Source source, long j10) throws IOException {
        i.f(source, "source");
        while (j10 > 0) {
            long j11 = source.read(this, j10);
            if (j11 == -1) {
                throw new EOFException();
            }
            j10 -= j11;
        }
        return this;
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString byteString, long j10) throws IOException {
        int i6;
        long j11 = j10;
        i.f(byteString, "bytes");
        if (byteString.size() <= 0) {
            throw new IllegalArgumentException("bytes is empty");
        }
        long size = 0;
        if (j11 >= 0) {
            Segment segment = this.head;
            if (segment != null) {
                if (size() - j11 < j11) {
                    size = size();
                    while (size > j11) {
                        segment = segment.prev;
                        i.c(segment);
                        size -= segment.limit - segment.pos;
                    }
                    byte[] bArrInternalArray$okio = byteString.internalArray$okio();
                    byte b8 = bArrInternalArray$okio[0];
                    int size2 = byteString.size();
                    long size3 = (size() - size2) + 1;
                    while (size < size3) {
                        byte[] bArr = segment.data;
                        long j12 = size3;
                        int iMin = (int) Math.min(segment.limit, (segment.pos + size3) - size);
                        i6 = (int) ((segment.pos + j11) - size);
                        while (i6 < iMin) {
                            if (bArr[i6] == b8 && okio.internal.Buffer.rangeEquals(segment, i6 + 1, bArrInternalArray$okio, 1, size2)) {
                                return (i6 - segment.pos) + size;
                            }
                            i6++;
                        }
                        size += segment.limit - segment.pos;
                        segment = segment.next;
                        i.c(segment);
                        j11 = size;
                        size3 = j12;
                    }
                } else {
                    while (true) {
                        long j13 = (segment.limit - segment.pos) + size;
                        if (j13 > j11) {
                            break;
                        }
                        segment = segment.next;
                        i.c(segment);
                        size = j13;
                    }
                    byte[] bArrInternalArray$okio2 = byteString.internalArray$okio();
                    byte b10 = bArrInternalArray$okio2[0];
                    int size4 = byteString.size();
                    long size5 = (size() - size4) + 1;
                    while (size < size5) {
                        byte[] bArr2 = segment.data;
                        long j14 = size5;
                        int iMin2 = (int) Math.min(segment.limit, (segment.pos + size5) - size);
                        i6 = (int) ((segment.pos + j11) - size);
                        while (i6 < iMin2) {
                            if (bArr2[i6] == b10 && okio.internal.Buffer.rangeEquals(segment, i6 + 1, bArrInternalArray$okio2, 1, size4)) {
                                return (i6 - segment.pos) + size;
                            }
                            i6++;
                        }
                        size += segment.limit - segment.pos;
                        segment = segment.next;
                        i.c(segment);
                        j11 = size;
                        size5 = j14;
                    }
                }
            }
            return -1L;
        }
        throw new IllegalArgumentException(e.o(j11, "fromIndex < 0: ").toString());
    }

    @Override // okio.Sink
    public void write(Buffer buffer, long j10) {
        Segment segment;
        i.f(buffer, "source");
        if (buffer != this) {
            SegmentedByteString.checkOffsetAndCount(buffer.size(), 0L, j10);
            while (j10 > 0) {
                Segment segment2 = buffer.head;
                i.c(segment2);
                int i6 = segment2.limit;
                i.c(buffer.head);
                if (j10 < i6 - r1.pos) {
                    Segment segment3 = this.head;
                    if (segment3 != null) {
                        i.c(segment3);
                        segment = segment3.prev;
                    } else {
                        segment = null;
                    }
                    if (segment != null && segment.owner) {
                        if ((segment.limit + j10) - (segment.shared ? 0 : segment.pos) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                            Segment segment4 = buffer.head;
                            i.c(segment4);
                            segment4.writeTo(segment, (int) j10);
                            buffer.setSize$okio(buffer.size() - j10);
                            setSize$okio(size() + j10);
                            return;
                        }
                    }
                    Segment segment5 = buffer.head;
                    i.c(segment5);
                    buffer.head = segment5.split((int) j10);
                }
                Segment segment6 = buffer.head;
                i.c(segment6);
                long j11 = segment6.limit - segment6.pos;
                buffer.head = segment6.pop();
                Segment segment7 = this.head;
                if (segment7 == null) {
                    this.head = segment6;
                    segment6.prev = segment6;
                    segment6.next = segment6;
                } else {
                    i.c(segment7);
                    Segment segment8 = segment7.prev;
                    i.c(segment8);
                    segment8.push(segment6).compact();
                }
                buffer.setSize$okio(buffer.size() - j11);
                setSize$okio(size() + j11);
                j10 -= j11;
            }
            return;
        }
        throw new IllegalArgumentException("source == this");
    }
}
