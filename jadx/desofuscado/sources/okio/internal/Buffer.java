package okio.internal;

import a.e;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.C;
import androidx.media3.exoplayer.MediaPeriodQueue;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import androidx.media3.extractor.ts.PsExtractor;
import i9.p;
import j9.i;
import java.io.EOFException;
import java.io.IOException;
import okhttp3.internal.connection.RealConnection;
import okio.Buffer;
import okio.ByteString;
import okio.C0004SegmentedByteString;
import okio.Options;
import okio.Segment;
import okio.SegmentPool;
import okio.SegmentedByteString;
import okio.Sink;
import okio.Source;
import okio.Utf8;
import okio._JvmPlatformKt;

/* compiled from: MyApplication */
/* renamed from: okio.internal.-Buffer, reason: invalid class name */
/* loaded from: classes.dex */
public final class Buffer {
    private static final byte[] HEX_DIGIT_BYTES = _JvmPlatformKt.asUtf8ToByteArray("0123456789abcdef");
    public static final long OVERFLOW_DIGIT_START = -7;
    public static final long OVERFLOW_ZONE = -922337203685477580L;
    public static final int SEGMENTING_THRESHOLD = 4096;

    public static final void commonClear(okio.Buffer buffer) throws EOFException {
        i.f(buffer, "<this>");
        buffer.skip(buffer.size());
    }

    public static final void commonClose(Buffer.UnsafeCursor unsafeCursor) {
        i.f(unsafeCursor, "<this>");
        if (unsafeCursor.buffer == null) {
            throw new IllegalStateException("not attached to a buffer");
        }
        unsafeCursor.buffer = null;
        unsafeCursor.setSegment$okio(null);
        unsafeCursor.offset = -1L;
        unsafeCursor.data = null;
        unsafeCursor.start = -1;
        unsafeCursor.end = -1;
    }

    public static final long commonCompleteSegmentByteCount(okio.Buffer buffer) {
        i.f(buffer, "<this>");
        long size = buffer.size();
        if (size == 0) {
            return 0L;
        }
        Segment segment = buffer.head;
        i.c(segment);
        Segment segment2 = segment.prev;
        i.c(segment2);
        return (segment2.limit >= 8192 || !segment2.owner) ? size : size - (r2 - segment2.pos);
    }

    public static final okio.Buffer commonCopy(okio.Buffer buffer) {
        i.f(buffer, "<this>");
        okio.Buffer buffer2 = new okio.Buffer();
        if (buffer.size() == 0) {
            return buffer2;
        }
        Segment segment = buffer.head;
        i.c(segment);
        Segment segmentSharedCopy = segment.sharedCopy();
        buffer2.head = segmentSharedCopy;
        segmentSharedCopy.prev = segmentSharedCopy;
        segmentSharedCopy.next = segmentSharedCopy;
        for (Segment segment2 = segment.next; segment2 != segment; segment2 = segment2.next) {
            Segment segment3 = segmentSharedCopy.prev;
            i.c(segment3);
            i.c(segment2);
            segment3.push(segment2.sharedCopy());
        }
        buffer2.setSize$okio(buffer.size());
        return buffer2;
    }

    public static final okio.Buffer commonCopyTo(okio.Buffer buffer, okio.Buffer buffer2, long j10, long j11) {
        i.f(buffer, "<this>");
        i.f(buffer2, "out");
        SegmentedByteString.checkOffsetAndCount(buffer.size(), j10, j11);
        if (j11 == 0) {
            return buffer;
        }
        buffer2.setSize$okio(buffer2.size() + j11);
        Segment segment = buffer.head;
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
            Segment segment2 = buffer2.head;
            if (segment2 == null) {
                segmentSharedCopy.prev = segmentSharedCopy;
                segmentSharedCopy.next = segmentSharedCopy;
                buffer2.head = segmentSharedCopy;
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
        return buffer;
    }

    public static final boolean commonEquals(okio.Buffer buffer, Object obj) {
        i.f(buffer, "<this>");
        if (buffer == obj) {
            return true;
        }
        if (!(obj instanceof okio.Buffer)) {
            return false;
        }
        okio.Buffer buffer2 = (okio.Buffer) obj;
        if (buffer.size() != buffer2.size()) {
            return false;
        }
        if (buffer.size() == 0) {
            return true;
        }
        Segment segment = buffer.head;
        i.c(segment);
        Segment segment2 = buffer2.head;
        i.c(segment2);
        int i6 = segment.pos;
        int i10 = segment2.pos;
        long j10 = 0;
        while (j10 < buffer.size()) {
            long jMin = Math.min(segment.limit - i6, segment2.limit - i10);
            long j11 = 0;
            while (j11 < jMin) {
                int i11 = i6 + 1;
                int i12 = i10 + 1;
                if (segment.data[i6] != segment2.data[i10]) {
                    return false;
                }
                j11++;
                i6 = i11;
                i10 = i12;
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

    public static final long commonExpandBuffer(Buffer.UnsafeCursor unsafeCursor, int i6) {
        i.f(unsafeCursor, "<this>");
        if (i6 <= 0) {
            throw new IllegalArgumentException(e.n(i6, "minByteCount <= 0: ").toString());
        }
        if (i6 > 8192) {
            throw new IllegalArgumentException(e.n(i6, "minByteCount > Segment.SIZE: ").toString());
        }
        okio.Buffer buffer = unsafeCursor.buffer;
        if (buffer == null) {
            throw new IllegalStateException("not attached to a buffer");
        }
        if (!unsafeCursor.readWrite) {
            throw new IllegalStateException("expandBuffer() only permitted for read/write buffers");
        }
        long size = buffer.size();
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(i6);
        int i10 = 8192 - segmentWritableSegment$okio.limit;
        segmentWritableSegment$okio.limit = 8192;
        long j10 = i10;
        buffer.setSize$okio(size + j10);
        unsafeCursor.setSegment$okio(segmentWritableSegment$okio);
        unsafeCursor.offset = size;
        unsafeCursor.data = segmentWritableSegment$okio.data;
        unsafeCursor.start = 8192 - i10;
        unsafeCursor.end = 8192;
        return j10;
    }

    public static final byte commonGet(okio.Buffer buffer, long j10) {
        i.f(buffer, "<this>");
        SegmentedByteString.checkOffsetAndCount(buffer.size(), j10, 1L);
        Segment segment = buffer.head;
        if (segment == null) {
            i.c(null);
            throw null;
        }
        if (buffer.size() - j10 < j10) {
            long size = buffer.size();
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

    public static final int commonHashCode(okio.Buffer buffer) {
        i.f(buffer, "<this>");
        Segment segment = buffer.head;
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
        } while (segment != buffer.head);
        return i6;
    }

    public static final long commonIndexOf(okio.Buffer buffer, byte b8, long j10, long j11) {
        Segment segment;
        int i6;
        i.f(buffer, "<this>");
        long size = 0;
        if (0 > j10 || j10 > j11) {
            throw new IllegalArgumentException(("size=" + buffer.size() + " fromIndex=" + j10 + " toIndex=" + j11).toString());
        }
        if (j11 > buffer.size()) {
            j11 = buffer.size();
        }
        if (j10 == j11 || (segment = buffer.head) == null) {
            return -1L;
        }
        if (buffer.size() - j10 < j10) {
            size = buffer.size();
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

    public static final long commonIndexOfElement(okio.Buffer buffer, ByteString byteString, long j10) {
        int i6;
        int i10;
        i.f(buffer, "<this>");
        i.f(byteString, "targetBytes");
        long size = 0;
        if (j10 < 0) {
            throw new IllegalArgumentException(e.o(j10, "fromIndex < 0: ").toString());
        }
        Segment segment = buffer.head;
        if (segment == null) {
            return -1L;
        }
        if (buffer.size() - j10 < j10) {
            size = buffer.size();
            while (size > j10) {
                segment = segment.prev;
                i.c(segment);
                size -= segment.limit - segment.pos;
            }
            if (byteString.size() == 2) {
                byte b8 = byteString.getByte(0);
                byte b10 = byteString.getByte(1);
                while (size < buffer.size()) {
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
            } else {
                byte[] bArrInternalArray$okio = byteString.internalArray$okio();
                while (size < buffer.size()) {
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
            while (size < buffer.size()) {
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
        } else {
            byte[] bArrInternalArray$okio2 = byteString.internalArray$okio();
            while (size < buffer.size()) {
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
        }
        return -1L;
        return (i6 - i10) + size;
    }

    public static final int commonNext(Buffer.UnsafeCursor unsafeCursor) {
        i.f(unsafeCursor, "<this>");
        long j10 = unsafeCursor.offset;
        okio.Buffer buffer = unsafeCursor.buffer;
        i.c(buffer);
        if (j10 == buffer.size()) {
            throw new IllegalStateException("no more bytes");
        }
        long j11 = unsafeCursor.offset;
        return unsafeCursor.seek(j11 == -1 ? 0L : j11 + (unsafeCursor.end - unsafeCursor.start));
    }

    public static final boolean commonRangeEquals(okio.Buffer buffer, long j10, ByteString byteString, int i6, int i10) {
        i.f(buffer, "<this>");
        i.f(byteString, "bytes");
        if (j10 < 0 || i6 < 0 || i10 < 0 || buffer.size() - j10 < i10 || byteString.size() - i6 < i10) {
            return false;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            if (buffer.getByte(i11 + j10) != byteString.getByte(i6 + i11)) {
                return false;
            }
        }
        return true;
    }

    public static final int commonRead(okio.Buffer buffer, byte[] bArr) {
        i.f(buffer, "<this>");
        i.f(bArr, "sink");
        return buffer.read(bArr, 0, bArr.length);
    }

    public static final long commonReadAll(okio.Buffer buffer, Sink sink) throws IOException {
        i.f(buffer, "<this>");
        i.f(sink, "sink");
        long size = buffer.size();
        if (size > 0) {
            sink.write(buffer, size);
        }
        return size;
    }

    public static final Buffer.UnsafeCursor commonReadAndWriteUnsafe(okio.Buffer buffer, Buffer.UnsafeCursor unsafeCursor) {
        i.f(buffer, "<this>");
        i.f(unsafeCursor, "unsafeCursor");
        Buffer.UnsafeCursor unsafeCursorResolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(unsafeCursor);
        if (unsafeCursorResolveDefaultParameter.buffer != null) {
            throw new IllegalStateException("already attached to a buffer");
        }
        unsafeCursorResolveDefaultParameter.buffer = buffer;
        unsafeCursorResolveDefaultParameter.readWrite = true;
        return unsafeCursorResolveDefaultParameter;
    }

    public static final byte commonReadByte(okio.Buffer buffer) throws EOFException {
        i.f(buffer, "<this>");
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        Segment segment = buffer.head;
        i.c(segment);
        int i6 = segment.pos;
        int i10 = segment.limit;
        int i11 = i6 + 1;
        byte b8 = segment.data[i6];
        buffer.setSize$okio(buffer.size() - 1);
        if (i11 == i10) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i11;
        }
        return b8;
    }

    public static final byte[] commonReadByteArray(okio.Buffer buffer) {
        i.f(buffer, "<this>");
        return buffer.readByteArray(buffer.size());
    }

    public static final ByteString commonReadByteString(okio.Buffer buffer) {
        i.f(buffer, "<this>");
        return buffer.readByteString(buffer.size());
    }

    public static final long commonReadDecimalLong(okio.Buffer buffer) throws EOFException {
        i.f(buffer, "<this>");
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        int i6 = 0;
        long j10 = 0;
        long j11 = -7;
        boolean z7 = false;
        boolean z10 = false;
        do {
            Segment segment = buffer.head;
            i.c(segment);
            byte[] bArr = segment.data;
            int i10 = segment.pos;
            int i11 = segment.limit;
            while (i10 < i11) {
                byte b8 = bArr[i10];
                if (b8 >= 48 && b8 <= 57) {
                    int i12 = 48 - b8;
                    if (j10 < OVERFLOW_ZONE || (j10 == OVERFLOW_ZONE && i12 < j11)) {
                        okio.Buffer bufferWriteByte = new okio.Buffer().writeDecimalLong(j10).writeByte((int) b8);
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
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i10;
            }
            if (z10) {
                break;
            }
        } while (buffer.head != null);
        buffer.setSize$okio(buffer.size() - i6);
        if (i6 >= (z7 ? 2 : 1)) {
            return z7 ? j10 : -j10;
        }
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        StringBuilder sbW = e.w(z7 ? "Expected a digit" : "Expected a digit or '-'", " but was 0x");
        sbW.append(SegmentedByteString.toHexString(buffer.getByte(0L)));
        throw new NumberFormatException(sbW.toString());
    }

    public static final void commonReadFully(okio.Buffer buffer, byte[] bArr) throws EOFException {
        i.f(buffer, "<this>");
        i.f(bArr, "sink");
        int i6 = 0;
        while (i6 < bArr.length) {
            int i10 = buffer.read(bArr, i6, bArr.length - i6);
            if (i10 == -1) {
                throw new EOFException();
            }
            i6 += i10;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a6 A[EDGE_INSN: B:43:0x00a6->B:37:0x00a6 BREAK  A[LOOP:0: B:5:0x0012->B:45:?], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final long commonReadHexadecimalUnsignedLong(okio.Buffer r15) throws java.io.EOFException {
        /*
            java.lang.String r0 = "<this>"
            j9.i.f(r15, r0)
            long r0 = r15.size()
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto Lb0
            r0 = 0
            r4 = r2
            r1 = 0
        L12:
            okio.Segment r6 = r15.head
            j9.i.c(r6)
            byte[] r7 = r6.data
            int r8 = r6.pos
            int r9 = r6.limit
        L1d:
            if (r8 >= r9) goto L92
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L2c
            r11 = 57
            if (r10 > r11) goto L2c
            int r11 = r10 + (-48)
            goto L41
        L2c:
            r11 = 97
            if (r10 < r11) goto L37
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L37
            int r11 = r10 + (-87)
            goto L41
        L37:
            r11 = 65
            if (r10 < r11) goto L76
            r11 = 70
            if (r10 > r11) goto L76
            int r11 = r10 + (-55)
        L41:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L51
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L1d
        L51:
            okio.Buffer r15 = new okio.Buffer
            r15.<init>()
            okio.Buffer r15 = r15.writeHexadecimalUnsignedLong(r4)
            okio.Buffer r15 = r15.writeByte(r10)
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Number too large: "
            r1.<init>(r2)
            java.lang.String r15 = r15.readUtf8()
            r1.append(r15)
            java.lang.String r15 = r1.toString()
            r0.<init>(r15)
            throw r0
        L76:
            if (r0 == 0) goto L7a
            r1 = 1
            goto L92
        L7a:
            java.lang.NumberFormatException r15 = new java.lang.NumberFormatException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Expected leading [0-9a-fA-F] character but was 0x"
            r0.<init>(r1)
            java.lang.String r1 = okio.SegmentedByteString.toHexString(r10)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r15.<init>(r0)
            throw r15
        L92:
            if (r8 != r9) goto L9e
            okio.Segment r7 = r6.pop()
            r15.head = r7
            okio.SegmentPool.recycle(r6)
            goto La0
        L9e:
            r6.pos = r8
        La0:
            if (r1 != 0) goto La6
            okio.Segment r6 = r15.head
            if (r6 != 0) goto L12
        La6:
            long r1 = r15.size()
            long r6 = (long) r0
            long r1 = r1 - r6
            r15.setSize$okio(r1)
            return r4
        Lb0:
            java.io.EOFException r15 = new java.io.EOFException
            r15.<init>()
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.Buffer.commonReadHexadecimalUnsignedLong(okio.Buffer):long");
    }

    public static final int commonReadInt(okio.Buffer buffer) throws EOFException {
        i.f(buffer, "<this>");
        if (buffer.size() < 4) {
            throw new EOFException();
        }
        Segment segment = buffer.head;
        i.c(segment);
        int i6 = segment.pos;
        int i10 = segment.limit;
        if (i10 - i6 < 4) {
            return (buffer.readByte() & 255) | ((buffer.readByte() & 255) << 24) | ((buffer.readByte() & 255) << 16) | ((buffer.readByte() & 255) << 8);
        }
        byte[] bArr = segment.data;
        int i11 = i6 + 3;
        int i12 = ((bArr[i6 + 1] & 255) << 16) | ((bArr[i6] & 255) << 24) | ((bArr[i6 + 2] & 255) << 8);
        int i13 = i6 + 4;
        int i14 = (bArr[i11] & 255) | i12;
        buffer.setSize$okio(buffer.size() - 4);
        if (i13 == i10) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i13;
        }
        return i14;
    }

    public static final long commonReadLong(okio.Buffer buffer) throws EOFException {
        i.f(buffer, "<this>");
        if (buffer.size() < 8) {
            throw new EOFException();
        }
        Segment segment = buffer.head;
        i.c(segment);
        int i6 = segment.pos;
        int i10 = segment.limit;
        if (i10 - i6 < 8) {
            return ((buffer.readInt() & 4294967295L) << 32) | (4294967295L & buffer.readInt());
        }
        byte[] bArr = segment.data;
        int i11 = i6 + 7;
        long j10 = ((bArr[i6 + 3] & 255) << 32) | ((bArr[i6] & 255) << 56) | ((bArr[i6 + 1] & 255) << 48) | ((bArr[i6 + 2] & 255) << 40) | ((bArr[i6 + 4] & 255) << 24) | ((bArr[i6 + 5] & 255) << 16) | ((bArr[i6 + 6] & 255) << 8);
        int i12 = i6 + 8;
        long j11 = j10 | (bArr[i11] & 255);
        buffer.setSize$okio(buffer.size() - 8);
        if (i12 == i10) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i12;
        }
        return j11;
    }

    public static final short commonReadShort(okio.Buffer buffer) throws EOFException {
        i.f(buffer, "<this>");
        if (buffer.size() < 2) {
            throw new EOFException();
        }
        Segment segment = buffer.head;
        i.c(segment);
        int i6 = segment.pos;
        int i10 = segment.limit;
        if (i10 - i6 < 2) {
            return (short) ((buffer.readByte() & 255) | ((buffer.readByte() & 255) << 8));
        }
        byte[] bArr = segment.data;
        int i11 = i6 + 1;
        int i12 = (bArr[i6] & 255) << 8;
        int i13 = i6 + 2;
        int i14 = (bArr[i11] & 255) | i12;
        buffer.setSize$okio(buffer.size() - 2);
        if (i13 == i10) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i13;
        }
        return (short) i14;
    }

    public static final Buffer.UnsafeCursor commonReadUnsafe(okio.Buffer buffer, Buffer.UnsafeCursor unsafeCursor) {
        i.f(buffer, "<this>");
        i.f(unsafeCursor, "unsafeCursor");
        Buffer.UnsafeCursor unsafeCursorResolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(unsafeCursor);
        if (unsafeCursorResolveDefaultParameter.buffer != null) {
            throw new IllegalStateException("already attached to a buffer");
        }
        unsafeCursorResolveDefaultParameter.buffer = buffer;
        unsafeCursorResolveDefaultParameter.readWrite = false;
        return unsafeCursorResolveDefaultParameter;
    }

    public static final String commonReadUtf8(okio.Buffer buffer, long j10) throws EOFException {
        i.f(buffer, "<this>");
        if (j10 < 0 || j10 > 2147483647L) {
            throw new IllegalArgumentException(e.o(j10, "byteCount: ").toString());
        }
        if (buffer.size() < j10) {
            throw new EOFException();
        }
        if (j10 == 0) {
            return "";
        }
        Segment segment = buffer.head;
        i.c(segment);
        int i6 = segment.pos;
        if (i6 + j10 > segment.limit) {
            return _Utf8Kt.commonToUtf8String$default(buffer.readByteArray(j10), 0, 0, 3, null);
        }
        int i10 = (int) j10;
        String strCommonToUtf8String = _Utf8Kt.commonToUtf8String(segment.data, i6, i6 + i10);
        segment.pos += i10;
        buffer.setSize$okio(buffer.size() - j10);
        if (segment.pos == segment.limit) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return strCommonToUtf8String;
    }

    public static final int commonReadUtf8CodePoint(okio.Buffer buffer) throws EOFException {
        int i6;
        int i10;
        int i11;
        i.f(buffer, "<this>");
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        byte b8 = buffer.getByte(0L);
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
                buffer.skip(1L);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            i6 = b8 & 7;
            i10 = 4;
            i11 = C.DEFAULT_BUFFER_SEGMENT_SIZE;
        }
        long j10 = i10;
        if (buffer.size() < j10) {
            StringBuilder sbU = e.u(i10, "size < ", ": ");
            sbU.append(buffer.size());
            sbU.append(" (to read code point prefixed 0x");
            sbU.append(SegmentedByteString.toHexString(b8));
            sbU.append(')');
            throw new EOFException(sbU.toString());
        }
        for (int i12 = 1; i12 < i10; i12++) {
            long j11 = i12;
            byte b10 = buffer.getByte(j11);
            if ((b10 & 192) != 128) {
                buffer.skip(j11);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            i6 = (i6 << 6) | (b10 & Utf8.REPLACEMENT_BYTE);
        }
        buffer.skip(j10);
        return i6 > 1114111 ? Utf8.REPLACEMENT_CODE_POINT : ((55296 > i6 || i6 >= 57344) && i6 >= i11) ? i6 : Utf8.REPLACEMENT_CODE_POINT;
    }

    public static final String commonReadUtf8Line(okio.Buffer buffer) {
        i.f(buffer, "<this>");
        long jIndexOf = buffer.indexOf((byte) 10);
        if (jIndexOf != -1) {
            return readUtf8Line(buffer, jIndexOf);
        }
        if (buffer.size() != 0) {
            return buffer.readUtf8(buffer.size());
        }
        return null;
    }

    public static final String commonReadUtf8LineStrict(okio.Buffer buffer, long j10) throws EOFException {
        i.f(buffer, "<this>");
        if (j10 < 0) {
            throw new IllegalArgumentException(e.o(j10, "limit < 0: ").toString());
        }
        long j11 = j10 != Long.MAX_VALUE ? j10 + 1 : Long.MAX_VALUE;
        long jIndexOf = buffer.indexOf((byte) 10, 0L, j11);
        if (jIndexOf != -1) {
            return readUtf8Line(buffer, jIndexOf);
        }
        if (j11 < buffer.size() && buffer.getByte(j11 - 1) == 13 && buffer.getByte(j11) == 10) {
            return readUtf8Line(buffer, j11);
        }
        okio.Buffer buffer2 = new okio.Buffer();
        buffer.copyTo(buffer2, 0L, Math.min(32, buffer.size()));
        throw new EOFException("\\n not found: limit=" + Math.min(buffer.size(), j10) + " content=" + buffer2.readByteString().hex() + (char) 8230);
    }

    public static final long commonResizeBuffer(Buffer.UnsafeCursor unsafeCursor, long j10) {
        i.f(unsafeCursor, "<this>");
        okio.Buffer buffer = unsafeCursor.buffer;
        if (buffer == null) {
            throw new IllegalStateException("not attached to a buffer");
        }
        if (!unsafeCursor.readWrite) {
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
            unsafeCursor.setSegment$okio(null);
            unsafeCursor.offset = j10;
            unsafeCursor.data = null;
            unsafeCursor.start = -1;
            unsafeCursor.end = -1;
        } else if (j10 > size) {
            long j13 = j10 - size;
            boolean z7 = true;
            for (long j14 = 0; j13 > j14; j14 = 0) {
                Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
                int iMin = (int) Math.min(j13, 8192 - segmentWritableSegment$okio.limit);
                segmentWritableSegment$okio.limit += iMin;
                j13 -= iMin;
                if (z7) {
                    unsafeCursor.setSegment$okio(segmentWritableSegment$okio);
                    unsafeCursor.offset = size;
                    unsafeCursor.data = segmentWritableSegment$okio.data;
                    int i10 = segmentWritableSegment$okio.limit;
                    unsafeCursor.start = i10 - iMin;
                    unsafeCursor.end = i10;
                    z7 = false;
                }
            }
        }
        buffer.setSize$okio(j10);
        return size;
    }

    public static final int commonSeek(Buffer.UnsafeCursor unsafeCursor, long j10) {
        Segment segmentPush;
        i.f(unsafeCursor, "<this>");
        okio.Buffer buffer = unsafeCursor.buffer;
        if (buffer == null) {
            throw new IllegalStateException("not attached to a buffer");
        }
        if (j10 < -1 || j10 > buffer.size()) {
            throw new ArrayIndexOutOfBoundsException("offset=" + j10 + " > size=" + buffer.size());
        }
        if (j10 == -1 || j10 == buffer.size()) {
            unsafeCursor.setSegment$okio(null);
            unsafeCursor.offset = j10;
            unsafeCursor.data = null;
            unsafeCursor.start = -1;
            unsafeCursor.end = -1;
            return -1;
        }
        long size = buffer.size();
        Segment segment$okio = buffer.head;
        long j11 = 0;
        if (unsafeCursor.getSegment$okio() != null) {
            long j12 = unsafeCursor.offset;
            int i6 = unsafeCursor.start;
            i.c(unsafeCursor.getSegment$okio());
            long j13 = j12 - (i6 - r9.pos);
            if (j13 > j10) {
                segmentPush = segment$okio;
                segment$okio = unsafeCursor.getSegment$okio();
                size = j13;
            } else {
                segmentPush = unsafeCursor.getSegment$okio();
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
        if (unsafeCursor.readWrite) {
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
        unsafeCursor.setSegment$okio(segmentPush);
        unsafeCursor.offset = j10;
        i.c(segmentPush);
        unsafeCursor.data = segmentPush.data;
        int i12 = segmentPush.pos + ((int) (j10 - j11));
        unsafeCursor.start = i12;
        int i13 = segmentPush.limit;
        unsafeCursor.end = i13;
        return i13 - i12;
    }

    public static final int commonSelect(okio.Buffer buffer, Options options) throws EOFException {
        i.f(buffer, "<this>");
        i.f(options, "options");
        int iSelectPrefix$default = selectPrefix$default(buffer, options, false, 2, null);
        if (iSelectPrefix$default == -1) {
            return -1;
        }
        buffer.skip(options.getByteStrings$okio()[iSelectPrefix$default].size());
        return iSelectPrefix$default;
    }

    public static final void commonSkip(okio.Buffer buffer, long j10) throws EOFException {
        i.f(buffer, "<this>");
        while (j10 > 0) {
            Segment segment = buffer.head;
            if (segment == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j10, segment.limit - segment.pos);
            long j11 = iMin;
            buffer.setSize$okio(buffer.size() - j11);
            j10 -= j11;
            int i6 = segment.pos + iMin;
            segment.pos = i6;
            if (i6 == segment.limit) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }

    public static final ByteString commonSnapshot(okio.Buffer buffer) {
        i.f(buffer, "<this>");
        if (buffer.size() <= 2147483647L) {
            return buffer.snapshot((int) buffer.size());
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + buffer.size()).toString());
    }

    public static final Segment commonWritableSegment(okio.Buffer buffer, int i6) {
        i.f(buffer, "<this>");
        if (i6 < 1 || i6 > 8192) {
            throw new IllegalArgumentException("unexpected capacity");
        }
        Segment segment = buffer.head;
        if (segment != null) {
            i.c(segment);
            Segment segment2 = segment.prev;
            i.c(segment2);
            return (segment2.limit + i6 > 8192 || !segment2.owner) ? segment2.push(SegmentPool.take()) : segment2;
        }
        Segment segmentTake = SegmentPool.take();
        buffer.head = segmentTake;
        segmentTake.prev = segmentTake;
        segmentTake.next = segmentTake;
        return segmentTake;
    }

    public static final okio.Buffer commonWrite(okio.Buffer buffer, ByteString byteString, int i6, int i10) {
        i.f(buffer, "<this>");
        i.f(byteString, "byteString");
        byteString.write$okio(buffer, i6, i10);
        return buffer;
    }

    public static /* synthetic */ okio.Buffer commonWrite$default(okio.Buffer buffer, ByteString byteString, int i6, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i6 = 0;
        }
        if ((i11 & 4) != 0) {
            i10 = byteString.size();
        }
        i.f(buffer, "<this>");
        i.f(byteString, "byteString");
        byteString.write$okio(buffer, i6, i10);
        return buffer;
    }

    public static final long commonWriteAll(okio.Buffer buffer, Source source) throws IOException {
        i.f(buffer, "<this>");
        i.f(source, "source");
        long j10 = 0;
        while (true) {
            long j11 = source.read(buffer, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (j11 == -1) {
                return j10;
            }
            j10 += j11;
        }
    }

    public static final okio.Buffer commonWriteByte(okio.Buffer buffer, int i6) {
        i.f(buffer, "<this>");
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i10 = segmentWritableSegment$okio.limit;
        segmentWritableSegment$okio.limit = i10 + 1;
        bArr[i10] = (byte) i6;
        buffer.setSize$okio(buffer.size() + 1);
        return buffer;
    }

    public static final okio.Buffer commonWriteDecimalLong(okio.Buffer buffer, long j10) {
        boolean z7;
        i.f(buffer, "<this>");
        if (j10 == 0) {
            return buffer.writeByte(48);
        }
        int i6 = 1;
        if (j10 < 0) {
            j10 = -j10;
            if (j10 < 0) {
                return buffer.writeUtf8("-9223372036854775808");
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
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(i6);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i10 = segmentWritableSegment$okio.limit + i6;
        while (j10 != 0) {
            long j11 = 10;
            i10--;
            bArr[i10] = getHEX_DIGIT_BYTES()[(int) (j10 % j11)];
            j10 /= j11;
        }
        if (z7) {
            bArr[i10 - 1] = 45;
        }
        segmentWritableSegment$okio.limit += i6;
        buffer.setSize$okio(buffer.size() + i6);
        return buffer;
    }

    public static final okio.Buffer commonWriteHexadecimalUnsignedLong(okio.Buffer buffer, long j10) {
        i.f(buffer, "<this>");
        if (j10 == 0) {
            return buffer.writeByte(48);
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
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(i6);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i10 = segmentWritableSegment$okio.limit;
        for (int i11 = (i10 + i6) - 1; i11 >= i10; i11--) {
            bArr[i11] = getHEX_DIGIT_BYTES()[(int) (15 & j10)];
            j10 >>>= 4;
        }
        segmentWritableSegment$okio.limit += i6;
        buffer.setSize$okio(buffer.size() + i6);
        return buffer;
    }

    public static final okio.Buffer commonWriteInt(okio.Buffer buffer, int i6) {
        i.f(buffer, "<this>");
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(4);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i10 = segmentWritableSegment$okio.limit;
        bArr[i10] = (byte) ((i6 >>> 24) & 255);
        bArr[i10 + 1] = (byte) ((i6 >>> 16) & 255);
        bArr[i10 + 2] = (byte) ((i6 >>> 8) & 255);
        bArr[i10 + 3] = (byte) (i6 & 255);
        segmentWritableSegment$okio.limit = i10 + 4;
        buffer.setSize$okio(buffer.size() + 4);
        return buffer;
    }

    public static final okio.Buffer commonWriteLong(okio.Buffer buffer, long j10) {
        i.f(buffer, "<this>");
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(8);
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
        buffer.setSize$okio(buffer.size() + 8);
        return buffer;
    }

    public static final okio.Buffer commonWriteShort(okio.Buffer buffer, int i6) {
        i.f(buffer, "<this>");
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(2);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i10 = segmentWritableSegment$okio.limit;
        bArr[i10] = (byte) ((i6 >>> 8) & 255);
        bArr[i10 + 1] = (byte) (i6 & 255);
        segmentWritableSegment$okio.limit = i10 + 2;
        buffer.setSize$okio(buffer.size() + 2);
        return buffer;
    }

    public static final okio.Buffer commonWriteUtf8(okio.Buffer buffer, String str, int i6, int i10) {
        char cCharAt;
        i.f(buffer, "<this>");
        i.f(str, "string");
        if (i6 < 0) {
            throw new IllegalArgumentException(e.n(i6, "beginIndex < 0: ").toString());
        }
        if (i10 < i6) {
            throw new IllegalArgumentException(e.m(i10, i6, "endIndex < beginIndex: ", " < ").toString());
        }
        if (i10 > str.length()) {
            StringBuilder sbU = e.u(i10, "endIndex > string.length: ", " > ");
            sbU.append(str.length());
            throw new IllegalArgumentException(sbU.toString().toString());
        }
        while (i6 < i10) {
            char cCharAt2 = str.charAt(i6);
            if (cCharAt2 < 128) {
                Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
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
                buffer.setSize$okio(buffer.size() + i14);
            } else {
                if (cCharAt2 < 2048) {
                    Segment segmentWritableSegment$okio2 = buffer.writableSegment$okio(2);
                    byte[] bArr2 = segmentWritableSegment$okio2.data;
                    int i15 = segmentWritableSegment$okio2.limit;
                    bArr2[i15] = (byte) ((cCharAt2 >> 6) | 192);
                    bArr2[i15 + 1] = (byte) ((cCharAt2 & '?') | 128);
                    segmentWritableSegment$okio2.limit = i15 + 2;
                    buffer.setSize$okio(buffer.size() + 2);
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    Segment segmentWritableSegment$okio3 = buffer.writableSegment$okio(3);
                    byte[] bArr3 = segmentWritableSegment$okio3.data;
                    int i16 = segmentWritableSegment$okio3.limit;
                    bArr3[i16] = (byte) ((cCharAt2 >> '\f') | 224);
                    bArr3[i16 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                    bArr3[i16 + 2] = (byte) ((cCharAt2 & '?') | 128);
                    segmentWritableSegment$okio3.limit = i16 + 3;
                    buffer.setSize$okio(buffer.size() + 3);
                } else {
                    int i17 = i6 + 1;
                    char cCharAt3 = i17 < i10 ? str.charAt(i17) : (char) 0;
                    if (cCharAt2 > 56319 || 56320 > cCharAt3 || cCharAt3 >= 57344) {
                        buffer.writeByte(63);
                        i6 = i17;
                    } else {
                        int i18 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + C.DEFAULT_BUFFER_SEGMENT_SIZE;
                        Segment segmentWritableSegment$okio4 = buffer.writableSegment$okio(4);
                        byte[] bArr4 = segmentWritableSegment$okio4.data;
                        int i19 = segmentWritableSegment$okio4.limit;
                        bArr4[i19] = (byte) ((i18 >> 18) | PsExtractor.VIDEO_STREAM_MASK);
                        bArr4[i19 + 1] = (byte) (((i18 >> 12) & 63) | 128);
                        bArr4[i19 + 2] = (byte) (((i18 >> 6) & 63) | 128);
                        bArr4[i19 + 3] = (byte) ((i18 & 63) | 128);
                        segmentWritableSegment$okio4.limit = i19 + 4;
                        buffer.setSize$okio(buffer.size() + 4);
                        i6 += 2;
                    }
                }
                i6++;
            }
        }
        return buffer;
    }

    public static final okio.Buffer commonWriteUtf8CodePoint(okio.Buffer buffer, int i6) {
        i.f(buffer, "<this>");
        if (i6 < 128) {
            buffer.writeByte(i6);
        } else if (i6 < 2048) {
            Segment segmentWritableSegment$okio = buffer.writableSegment$okio(2);
            byte[] bArr = segmentWritableSegment$okio.data;
            int i10 = segmentWritableSegment$okio.limit;
            bArr[i10] = (byte) ((i6 >> 6) | 192);
            bArr[i10 + 1] = (byte) ((i6 & 63) | 128);
            segmentWritableSegment$okio.limit = i10 + 2;
            buffer.setSize$okio(buffer.size() + 2);
        } else if (55296 <= i6 && i6 < 57344) {
            buffer.writeByte(63);
        } else if (i6 < 65536) {
            Segment segmentWritableSegment$okio2 = buffer.writableSegment$okio(3);
            byte[] bArr2 = segmentWritableSegment$okio2.data;
            int i11 = segmentWritableSegment$okio2.limit;
            bArr2[i11] = (byte) ((i6 >> 12) | 224);
            bArr2[i11 + 1] = (byte) (((i6 >> 6) & 63) | 128);
            bArr2[i11 + 2] = (byte) ((i6 & 63) | 128);
            segmentWritableSegment$okio2.limit = i11 + 3;
            buffer.setSize$okio(buffer.size() + 3);
        } else {
            if (i6 > 1114111) {
                throw new IllegalArgumentException("Unexpected code point: 0x" + SegmentedByteString.toHexString(i6));
            }
            Segment segmentWritableSegment$okio3 = buffer.writableSegment$okio(4);
            byte[] bArr3 = segmentWritableSegment$okio3.data;
            int i12 = segmentWritableSegment$okio3.limit;
            bArr3[i12] = (byte) ((i6 >> 18) | PsExtractor.VIDEO_STREAM_MASK);
            bArr3[i12 + 1] = (byte) (((i6 >> 12) & 63) | 128);
            bArr3[i12 + 2] = (byte) (((i6 >> 6) & 63) | 128);
            bArr3[i12 + 3] = (byte) ((i6 & 63) | 128);
            segmentWritableSegment$okio3.limit = i12 + 4;
            buffer.setSize$okio(buffer.size() + 4);
        }
        return buffer;
    }

    public static final byte[] getHEX_DIGIT_BYTES() {
        return HEX_DIGIT_BYTES;
    }

    public static final boolean rangeEquals(Segment segment, int i6, byte[] bArr, int i10, int i11) {
        i.f(segment, "segment");
        i.f(bArr, "bytes");
        int i12 = segment.limit;
        byte[] bArr2 = segment.data;
        while (i10 < i11) {
            if (i6 == i12) {
                segment = segment.next;
                i.c(segment);
                byte[] bArr3 = segment.data;
                bArr2 = bArr3;
                i6 = segment.pos;
                i12 = segment.limit;
            }
            if (bArr2[i6] != bArr[i10]) {
                return false;
            }
            i6++;
            i10++;
        }
        return true;
    }

    public static final String readUtf8Line(okio.Buffer buffer, long j10) throws EOFException {
        i.f(buffer, "<this>");
        if (j10 > 0) {
            long j11 = j10 - 1;
            if (buffer.getByte(j11) == 13) {
                String utf8 = buffer.readUtf8(j11);
                buffer.skip(2L);
                return utf8;
            }
        }
        String utf82 = buffer.readUtf8(j10);
        buffer.skip(1L);
        return utf82;
    }

    public static final <T> T seek(okio.Buffer buffer, long j10, p pVar) {
        i.f(buffer, "<this>");
        i.f(pVar, "lambda");
        Segment segment = buffer.head;
        if (segment == null) {
            return (T) pVar.invoke(null, -1L);
        }
        if (buffer.size() - j10 < j10) {
            long size = buffer.size();
            while (size > j10) {
                segment = segment.prev;
                i.c(segment);
                size -= segment.limit - segment.pos;
            }
            return (T) pVar.invoke(segment, Long.valueOf(size));
        }
        long j11 = 0;
        while (true) {
            long j12 = (segment.limit - segment.pos) + j11;
            if (j12 > j10) {
                return (T) pVar.invoke(segment, Long.valueOf(j11));
            }
            segment = segment.next;
            i.c(segment);
            j11 = j12;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0065, code lost:
    
        if (r19 == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0067, code lost:
    
        return -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0068, code lost:
    
        return r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final int selectPrefix(okio.Buffer r17, okio.Options r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 174
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.Buffer.selectPrefix(okio.Buffer, okio.Options, boolean):int");
    }

    public static /* synthetic */ int selectPrefix$default(okio.Buffer buffer, Options options, boolean z7, int i6, Object obj) {
        if ((i6 & 2) != 0) {
            z7 = false;
        }
        return selectPrefix(buffer, options, z7);
    }

    public static final int commonRead(okio.Buffer buffer, byte[] bArr, int i6, int i10) {
        i.f(buffer, "<this>");
        i.f(bArr, "sink");
        SegmentedByteString.checkOffsetAndCount(bArr.length, i6, i10);
        Segment segment = buffer.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(i10, segment.limit - segment.pos);
        byte[] bArr2 = segment.data;
        int i11 = segment.pos;
        x8.i.E(bArr2, i6, i11, bArr, i11 + iMin);
        segment.pos += iMin;
        buffer.setSize$okio(buffer.size() - iMin);
        if (segment.pos == segment.limit) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return iMin;
    }

    public static final byte[] commonReadByteArray(okio.Buffer buffer, long j10) throws EOFException {
        i.f(buffer, "<this>");
        if (j10 < 0 || j10 > 2147483647L) {
            throw new IllegalArgumentException(e.o(j10, "byteCount: ").toString());
        }
        if (buffer.size() < j10) {
            throw new EOFException();
        }
        byte[] bArr = new byte[(int) j10];
        buffer.readFully(bArr);
        return bArr;
    }

    public static final ByteString commonReadByteString(okio.Buffer buffer, long j10) throws EOFException {
        i.f(buffer, "<this>");
        if (j10 < 0 || j10 > 2147483647L) {
            throw new IllegalArgumentException(e.o(j10, "byteCount: ").toString());
        }
        if (buffer.size() < j10) {
            throw new EOFException();
        }
        if (j10 < PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            return new ByteString(buffer.readByteArray(j10));
        }
        ByteString byteStringSnapshot = buffer.snapshot((int) j10);
        buffer.skip(j10);
        return byteStringSnapshot;
    }

    public static final okio.Buffer commonWrite(okio.Buffer buffer, byte[] bArr) {
        i.f(buffer, "<this>");
        i.f(bArr, "source");
        return buffer.write(bArr, 0, bArr.length);
    }

    public static final okio.Buffer commonWrite(okio.Buffer buffer, byte[] bArr, int i6, int i10) {
        i.f(buffer, "<this>");
        i.f(bArr, "source");
        long j10 = i10;
        SegmentedByteString.checkOffsetAndCount(bArr.length, i6, j10);
        int i11 = i10 + i6;
        while (i6 < i11) {
            Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
            int iMin = Math.min(i11 - i6, 8192 - segmentWritableSegment$okio.limit);
            int i12 = i6 + iMin;
            x8.i.E(bArr, segmentWritableSegment$okio.limit, i6, segmentWritableSegment$okio.data, i12);
            segmentWritableSegment$okio.limit += iMin;
            i6 = i12;
        }
        buffer.setSize$okio(buffer.size() + j10);
        return buffer;
    }

    public static final void commonReadFully(okio.Buffer buffer, okio.Buffer buffer2, long j10) throws EOFException {
        i.f(buffer, "<this>");
        i.f(buffer2, "sink");
        if (buffer.size() >= j10) {
            buffer2.write(buffer, j10);
        } else {
            buffer2.write(buffer, buffer.size());
            throw new EOFException();
        }
    }

    public static final ByteString commonSnapshot(okio.Buffer buffer, int i6) {
        i.f(buffer, "<this>");
        if (i6 == 0) {
            return ByteString.EMPTY;
        }
        SegmentedByteString.checkOffsetAndCount(buffer.size(), 0L, i6);
        Segment segment = buffer.head;
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
        Segment segment2 = buffer.head;
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

    public static final okio.Buffer commonWrite(okio.Buffer buffer, Source source, long j10) throws IOException {
        i.f(buffer, "<this>");
        i.f(source, "source");
        while (j10 > 0) {
            long j11 = source.read(buffer, j10);
            if (j11 == -1) {
                throw new EOFException();
            }
            j10 -= j11;
        }
        return buffer;
    }

    public static final long commonRead(okio.Buffer buffer, okio.Buffer buffer2, long j10) {
        i.f(buffer, "<this>");
        i.f(buffer2, "sink");
        if (j10 < 0) {
            throw new IllegalArgumentException(e.o(j10, "byteCount < 0: ").toString());
        }
        if (buffer.size() == 0) {
            return -1L;
        }
        if (j10 > buffer.size()) {
            j10 = buffer.size();
        }
        buffer2.write(buffer, j10);
        return j10;
    }

    public static final void commonWrite(okio.Buffer buffer, okio.Buffer buffer2, long j10) {
        Segment segment;
        i.f(buffer, "<this>");
        i.f(buffer2, "source");
        if (buffer2 != buffer) {
            SegmentedByteString.checkOffsetAndCount(buffer2.size(), 0L, j10);
            while (j10 > 0) {
                Segment segment2 = buffer2.head;
                i.c(segment2);
                int i6 = segment2.limit;
                i.c(buffer2.head);
                if (j10 < i6 - r1.pos) {
                    Segment segment3 = buffer.head;
                    if (segment3 != null) {
                        i.c(segment3);
                        segment = segment3.prev;
                    } else {
                        segment = null;
                    }
                    if (segment != null && segment.owner) {
                        if ((segment.limit + j10) - (segment.shared ? 0 : segment.pos) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                            Segment segment4 = buffer2.head;
                            i.c(segment4);
                            segment4.writeTo(segment, (int) j10);
                            buffer2.setSize$okio(buffer2.size() - j10);
                            buffer.setSize$okio(buffer.size() + j10);
                            return;
                        }
                    }
                    Segment segment5 = buffer2.head;
                    i.c(segment5);
                    buffer2.head = segment5.split((int) j10);
                }
                Segment segment6 = buffer2.head;
                i.c(segment6);
                long j11 = segment6.limit - segment6.pos;
                buffer2.head = segment6.pop();
                Segment segment7 = buffer.head;
                if (segment7 == null) {
                    buffer.head = segment6;
                    segment6.prev = segment6;
                    segment6.next = segment6;
                } else {
                    i.c(segment7);
                    Segment segment8 = segment7.prev;
                    i.c(segment8);
                    segment8.push(segment6).compact();
                }
                buffer2.setSize$okio(buffer2.size() - j11);
                buffer.setSize$okio(buffer.size() + j11);
                j10 -= j11;
            }
            return;
        }
        throw new IllegalArgumentException("source == this");
    }

    public static /* synthetic */ void getHEX_DIGIT_BYTES$annotations() {
    }

    public static final long commonIndexOf(okio.Buffer buffer, ByteString byteString, long j10) {
        long j11;
        long j12 = j10;
        i.f(buffer, "<this>");
        i.f(byteString, "bytes");
        if (byteString.size() <= 0) {
            throw new IllegalArgumentException("bytes is empty");
        }
        long size = 0;
        if (j12 >= 0) {
            Segment segment = buffer.head;
            if (segment == null) {
                return -1L;
            }
            if (buffer.size() - j12 < j12) {
                size = buffer.size();
                while (size > j12) {
                    segment = segment.prev;
                    i.c(segment);
                    size -= segment.limit - segment.pos;
                }
                byte[] bArrInternalArray$okio = byteString.internalArray$okio();
                byte b8 = bArrInternalArray$okio[0];
                int size2 = byteString.size();
                long size3 = (buffer.size() - size2) + 1;
                while (size < size3) {
                    byte[] bArr = segment.data;
                    int iMin = (int) Math.min(segment.limit, (segment.pos + size3) - size);
                    for (int i6 = (int) ((segment.pos + j12) - size); i6 < iMin; i6++) {
                        if (bArr[i6] == b8 && rangeEquals(segment, i6 + 1, bArrInternalArray$okio, 1, size2)) {
                            j11 = i6 - segment.pos;
                        }
                    }
                    size += segment.limit - segment.pos;
                    segment = segment.next;
                    i.c(segment);
                    j12 = size;
                }
                return -1L;
            }
            while (true) {
                long j13 = (segment.limit - segment.pos) + size;
                if (j13 > j12) {
                    break;
                }
                segment = segment.next;
                i.c(segment);
                size = j13;
            }
            byte[] bArrInternalArray$okio2 = byteString.internalArray$okio();
            byte b10 = bArrInternalArray$okio2[0];
            int size4 = byteString.size();
            long size5 = (buffer.size() - size4) + 1;
            while (size < size5) {
                byte[] bArr2 = segment.data;
                long j14 = j12;
                int iMin2 = (int) Math.min(segment.limit, (segment.pos + size5) - size);
                for (int i10 = (int) ((segment.pos + j14) - size); i10 < iMin2; i10++) {
                    if (bArr2[i10] == b10 && rangeEquals(segment, i10 + 1, bArrInternalArray$okio2, 1, size4)) {
                        j11 = i10 - segment.pos;
                    }
                }
                size += segment.limit - segment.pos;
                segment = segment.next;
                i.c(segment);
                j12 = size;
            }
            return -1L;
            return j11 + size;
        }
        throw new IllegalArgumentException(e.o(j12, "fromIndex < 0: ").toString());
    }
}
