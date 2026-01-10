package okio.internal;

import a.e;
import android.support.v4.media.session.PlaybackStateCompat;
import j9.i;
import java.io.EOFException;
import java.io.IOException;
import o9.d;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Options;
import okio.PeekSource;
import okio.SegmentedByteString;
import okio.Sink;
import okio.Timeout;

/* compiled from: MyApplication */
/* renamed from: okio.internal.-RealBufferedSource, reason: invalid class name */
/* loaded from: classes.dex */
public final class RealBufferedSource {
    public static final void commonClose(okio.RealBufferedSource realBufferedSource) throws IOException {
        i.f(realBufferedSource, "<this>");
        if (realBufferedSource.closed) {
            return;
        }
        realBufferedSource.closed = true;
        realBufferedSource.source.close();
        realBufferedSource.bufferField.clear();
    }

    public static final boolean commonExhausted(okio.RealBufferedSource realBufferedSource) {
        i.f(realBufferedSource, "<this>");
        if (realBufferedSource.closed) {
            throw new IllegalStateException("closed");
        }
        return realBufferedSource.bufferField.exhausted() && realBufferedSource.source.read(realBufferedSource.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
    }

    public static final long commonIndexOf(okio.RealBufferedSource realBufferedSource, byte b8, long j10, long j11) {
        i.f(realBufferedSource, "<this>");
        if (realBufferedSource.closed) {
            throw new IllegalStateException("closed");
        }
        if (0 > j10 || j10 > j11) {
            throw new IllegalArgumentException(("fromIndex=" + j10 + " toIndex=" + j11).toString());
        }
        while (j10 < j11) {
            long jIndexOf = realBufferedSource.bufferField.indexOf(b8, j10, j11);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            long size = realBufferedSource.bufferField.size();
            if (size >= j11 || realBufferedSource.source.read(realBufferedSource.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                break;
            }
            j10 = Math.max(j10, size);
        }
        return -1L;
    }

    public static final long commonIndexOfElement(okio.RealBufferedSource realBufferedSource, ByteString byteString, long j10) {
        i.f(realBufferedSource, "<this>");
        i.f(byteString, "targetBytes");
        if (realBufferedSource.closed) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long jIndexOfElement = realBufferedSource.bufferField.indexOfElement(byteString, j10);
            if (jIndexOfElement != -1) {
                return jIndexOfElement;
            }
            long size = realBufferedSource.bufferField.size();
            if (realBufferedSource.source.read(realBufferedSource.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            j10 = Math.max(j10, size);
        }
    }

    public static final BufferedSource commonPeek(okio.RealBufferedSource realBufferedSource) {
        i.f(realBufferedSource, "<this>");
        return Okio.buffer(new PeekSource(realBufferedSource));
    }

    public static final boolean commonRangeEquals(okio.RealBufferedSource realBufferedSource, long j10, ByteString byteString, int i6, int i10) {
        i.f(realBufferedSource, "<this>");
        i.f(byteString, "bytes");
        if (realBufferedSource.closed) {
            throw new IllegalStateException("closed");
        }
        if (j10 < 0 || i6 < 0 || i10 < 0 || byteString.size() - i6 < i10) {
            return false;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            long j11 = i11 + j10;
            if (!realBufferedSource.request(1 + j11) || realBufferedSource.bufferField.getByte(j11) != byteString.getByte(i6 + i11)) {
                return false;
            }
        }
        return true;
    }

    public static final long commonRead(okio.RealBufferedSource realBufferedSource, Buffer buffer, long j10) {
        i.f(realBufferedSource, "<this>");
        i.f(buffer, "sink");
        if (j10 < 0) {
            throw new IllegalArgumentException(e.o(j10, "byteCount < 0: ").toString());
        }
        if (realBufferedSource.closed) {
            throw new IllegalStateException("closed");
        }
        if (realBufferedSource.bufferField.size() == 0 && realBufferedSource.source.read(realBufferedSource.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1L;
        }
        return realBufferedSource.bufferField.read(buffer, Math.min(j10, realBufferedSource.bufferField.size()));
    }

    public static final long commonReadAll(okio.RealBufferedSource realBufferedSource, Sink sink) throws IOException {
        i.f(realBufferedSource, "<this>");
        i.f(sink, "sink");
        long j10 = 0;
        while (realBufferedSource.source.read(realBufferedSource.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
            long jCompleteSegmentByteCount = realBufferedSource.bufferField.completeSegmentByteCount();
            if (jCompleteSegmentByteCount > 0) {
                j10 += jCompleteSegmentByteCount;
                sink.write(realBufferedSource.bufferField, jCompleteSegmentByteCount);
            }
        }
        if (realBufferedSource.bufferField.size() <= 0) {
            return j10;
        }
        long size = j10 + realBufferedSource.bufferField.size();
        Buffer buffer = realBufferedSource.bufferField;
        sink.write(buffer, buffer.size());
        return size;
    }

    public static final byte commonReadByte(okio.RealBufferedSource realBufferedSource) throws EOFException {
        i.f(realBufferedSource, "<this>");
        realBufferedSource.require(1L);
        return realBufferedSource.bufferField.readByte();
    }

    public static final byte[] commonReadByteArray(okio.RealBufferedSource realBufferedSource, long j10) throws EOFException {
        i.f(realBufferedSource, "<this>");
        realBufferedSource.require(j10);
        return realBufferedSource.bufferField.readByteArray(j10);
    }

    public static final ByteString commonReadByteString(okio.RealBufferedSource realBufferedSource, long j10) throws EOFException {
        i.f(realBufferedSource, "<this>");
        realBufferedSource.require(j10);
        return realBufferedSource.bufferField.readByteString(j10);
    }

    public static final long commonReadDecimalLong(okio.RealBufferedSource realBufferedSource) throws EOFException {
        byte b8;
        i.f(realBufferedSource, "<this>");
        realBufferedSource.require(1L);
        long j10 = 0;
        while (true) {
            long j11 = j10 + 1;
            if (!realBufferedSource.request(j11)) {
                break;
            }
            b8 = realBufferedSource.bufferField.getByte(j10);
            if ((b8 < 48 || b8 > 57) && !(j10 == 0 && b8 == 45)) {
                break;
            }
            j10 = j11;
        }
        if (j10 == 0) {
            d.d(16);
            String string = Integer.toString(b8, 16);
            i.e(string, "toString(...)");
            throw new NumberFormatException("Expected a digit or '-' but was 0x".concat(string));
        }
        return realBufferedSource.bufferField.readDecimalLong();
    }

    public static final void commonReadFully(okio.RealBufferedSource realBufferedSource, byte[] bArr) throws EOFException {
        i.f(realBufferedSource, "<this>");
        i.f(bArr, "sink");
        try {
            realBufferedSource.require(bArr.length);
            realBufferedSource.bufferField.readFully(bArr);
        } catch (EOFException e5) {
            int i6 = 0;
            while (realBufferedSource.bufferField.size() > 0) {
                Buffer buffer = realBufferedSource.bufferField;
                int i10 = buffer.read(bArr, i6, (int) buffer.size());
                if (i10 == -1) {
                    throw new AssertionError();
                }
                i6 += i10;
            }
            throw e5;
        }
    }

    public static final long commonReadHexadecimalUnsignedLong(okio.RealBufferedSource realBufferedSource) throws EOFException {
        byte b8;
        i.f(realBufferedSource, "<this>");
        realBufferedSource.require(1L);
        int i6 = 0;
        while (true) {
            int i10 = i6 + 1;
            if (!realBufferedSource.request(i10)) {
                break;
            }
            b8 = realBufferedSource.bufferField.getByte(i6);
            if ((b8 < 48 || b8 > 57) && ((b8 < 97 || b8 > 102) && (b8 < 65 || b8 > 70))) {
                break;
            }
            i6 = i10;
        }
        if (i6 == 0) {
            d.d(16);
            String string = Integer.toString(b8, 16);
            i.e(string, "toString(...)");
            throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x".concat(string));
        }
        return realBufferedSource.bufferField.readHexadecimalUnsignedLong();
    }

    public static final int commonReadInt(okio.RealBufferedSource realBufferedSource) throws EOFException {
        i.f(realBufferedSource, "<this>");
        realBufferedSource.require(4L);
        return realBufferedSource.bufferField.readInt();
    }

    public static final int commonReadIntLe(okio.RealBufferedSource realBufferedSource) throws EOFException {
        i.f(realBufferedSource, "<this>");
        realBufferedSource.require(4L);
        return realBufferedSource.bufferField.readIntLe();
    }

    public static final long commonReadLong(okio.RealBufferedSource realBufferedSource) throws EOFException {
        i.f(realBufferedSource, "<this>");
        realBufferedSource.require(8L);
        return realBufferedSource.bufferField.readLong();
    }

    public static final long commonReadLongLe(okio.RealBufferedSource realBufferedSource) throws EOFException {
        i.f(realBufferedSource, "<this>");
        realBufferedSource.require(8L);
        return realBufferedSource.bufferField.readLongLe();
    }

    public static final short commonReadShort(okio.RealBufferedSource realBufferedSource) throws EOFException {
        i.f(realBufferedSource, "<this>");
        realBufferedSource.require(2L);
        return realBufferedSource.bufferField.readShort();
    }

    public static final short commonReadShortLe(okio.RealBufferedSource realBufferedSource) throws EOFException {
        i.f(realBufferedSource, "<this>");
        realBufferedSource.require(2L);
        return realBufferedSource.bufferField.readShortLe();
    }

    public static final String commonReadUtf8(okio.RealBufferedSource realBufferedSource, long j10) throws EOFException {
        i.f(realBufferedSource, "<this>");
        realBufferedSource.require(j10);
        return realBufferedSource.bufferField.readUtf8(j10);
    }

    public static final int commonReadUtf8CodePoint(okio.RealBufferedSource realBufferedSource) throws EOFException {
        i.f(realBufferedSource, "<this>");
        realBufferedSource.require(1L);
        byte b8 = realBufferedSource.bufferField.getByte(0L);
        if ((b8 & 224) == 192) {
            realBufferedSource.require(2L);
        } else if ((b8 & 240) == 224) {
            realBufferedSource.require(3L);
        } else if ((b8 & 248) == 240) {
            realBufferedSource.require(4L);
        }
        return realBufferedSource.bufferField.readUtf8CodePoint();
    }

    public static final String commonReadUtf8Line(okio.RealBufferedSource realBufferedSource) {
        i.f(realBufferedSource, "<this>");
        long jIndexOf = realBufferedSource.indexOf((byte) 10);
        if (jIndexOf != -1) {
            return Buffer.readUtf8Line(realBufferedSource.bufferField, jIndexOf);
        }
        if (realBufferedSource.bufferField.size() != 0) {
            return realBufferedSource.readUtf8(realBufferedSource.bufferField.size());
        }
        return null;
    }

    public static final String commonReadUtf8LineStrict(okio.RealBufferedSource realBufferedSource, long j10) throws EOFException {
        i.f(realBufferedSource, "<this>");
        if (j10 < 0) {
            throw new IllegalArgumentException(e.o(j10, "limit < 0: ").toString());
        }
        long j11 = j10 == Long.MAX_VALUE ? Long.MAX_VALUE : j10 + 1;
        long jIndexOf = realBufferedSource.indexOf((byte) 10, 0L, j11);
        if (jIndexOf != -1) {
            return Buffer.readUtf8Line(realBufferedSource.bufferField, jIndexOf);
        }
        if (j11 < Long.MAX_VALUE && realBufferedSource.request(j11) && realBufferedSource.bufferField.getByte(j11 - 1) == 13 && realBufferedSource.request(1 + j11) && realBufferedSource.bufferField.getByte(j11) == 10) {
            return Buffer.readUtf8Line(realBufferedSource.bufferField, j11);
        }
        Buffer buffer = new Buffer();
        Buffer buffer2 = realBufferedSource.bufferField;
        buffer2.copyTo(buffer, 0L, Math.min(32, buffer2.size()));
        throw new EOFException("\\n not found: limit=" + Math.min(realBufferedSource.bufferField.size(), j10) + " content=" + buffer.readByteString().hex() + (char) 8230);
    }

    public static final boolean commonRequest(okio.RealBufferedSource realBufferedSource, long j10) {
        i.f(realBufferedSource, "<this>");
        if (j10 < 0) {
            throw new IllegalArgumentException(e.o(j10, "byteCount < 0: ").toString());
        }
        if (realBufferedSource.closed) {
            throw new IllegalStateException("closed");
        }
        while (realBufferedSource.bufferField.size() < j10) {
            if (realBufferedSource.source.read(realBufferedSource.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return false;
            }
        }
        return true;
    }

    public static final void commonRequire(okio.RealBufferedSource realBufferedSource, long j10) throws EOFException {
        i.f(realBufferedSource, "<this>");
        if (!realBufferedSource.request(j10)) {
            throw new EOFException();
        }
    }

    public static final int commonSelect(okio.RealBufferedSource realBufferedSource, Options options) throws EOFException {
        i.f(realBufferedSource, "<this>");
        i.f(options, "options");
        if (realBufferedSource.closed) {
            throw new IllegalStateException("closed");
        }
        do {
            int iSelectPrefix = Buffer.selectPrefix(realBufferedSource.bufferField, options, true);
            if (iSelectPrefix != -2) {
                if (iSelectPrefix == -1) {
                    return -1;
                }
                realBufferedSource.bufferField.skip(options.getByteStrings$okio()[iSelectPrefix].size());
                return iSelectPrefix;
            }
        } while (realBufferedSource.source.read(realBufferedSource.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
        return -1;
    }

    public static final void commonSkip(okio.RealBufferedSource realBufferedSource, long j10) throws EOFException {
        i.f(realBufferedSource, "<this>");
        if (realBufferedSource.closed) {
            throw new IllegalStateException("closed");
        }
        while (j10 > 0) {
            if (realBufferedSource.bufferField.size() == 0 && realBufferedSource.source.read(realBufferedSource.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j10, realBufferedSource.bufferField.size());
            realBufferedSource.bufferField.skip(jMin);
            j10 -= jMin;
        }
    }

    public static final Timeout commonTimeout(okio.RealBufferedSource realBufferedSource) {
        i.f(realBufferedSource, "<this>");
        return realBufferedSource.source.timeout();
    }

    public static final String commonToString(okio.RealBufferedSource realBufferedSource) {
        i.f(realBufferedSource, "<this>");
        return "buffer(" + realBufferedSource.source + ')';
    }

    public static final byte[] commonReadByteArray(okio.RealBufferedSource realBufferedSource) throws IOException {
        i.f(realBufferedSource, "<this>");
        realBufferedSource.bufferField.writeAll(realBufferedSource.source);
        return realBufferedSource.bufferField.readByteArray();
    }

    public static final ByteString commonReadByteString(okio.RealBufferedSource realBufferedSource) throws IOException {
        i.f(realBufferedSource, "<this>");
        realBufferedSource.bufferField.writeAll(realBufferedSource.source);
        return realBufferedSource.bufferField.readByteString();
    }

    public static final String commonReadUtf8(okio.RealBufferedSource realBufferedSource) throws IOException {
        i.f(realBufferedSource, "<this>");
        realBufferedSource.bufferField.writeAll(realBufferedSource.source);
        return realBufferedSource.bufferField.readUtf8();
    }

    public static final void commonReadFully(okio.RealBufferedSource realBufferedSource, Buffer buffer, long j10) throws IOException {
        i.f(realBufferedSource, "<this>");
        i.f(buffer, "sink");
        try {
            realBufferedSource.require(j10);
            realBufferedSource.bufferField.readFully(buffer, j10);
        } catch (EOFException e5) {
            buffer.writeAll(realBufferedSource.bufferField);
            throw e5;
        }
    }

    public static final long commonIndexOf(okio.RealBufferedSource realBufferedSource, ByteString byteString, long j10) throws IOException {
        i.f(realBufferedSource, "<this>");
        i.f(byteString, "bytes");
        if (realBufferedSource.closed) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long jIndexOf = realBufferedSource.bufferField.indexOf(byteString, j10);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            long size = realBufferedSource.bufferField.size();
            if (realBufferedSource.source.read(realBufferedSource.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            j10 = Math.max(j10, (size - byteString.size()) + 1);
        }
    }

    public static final int commonRead(okio.RealBufferedSource realBufferedSource, byte[] bArr, int i6, int i10) {
        i.f(realBufferedSource, "<this>");
        i.f(bArr, "sink");
        long j10 = i10;
        SegmentedByteString.checkOffsetAndCount(bArr.length, i6, j10);
        if (realBufferedSource.bufferField.size() == 0 && realBufferedSource.source.read(realBufferedSource.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return realBufferedSource.bufferField.read(bArr, i6, (int) Math.min(j10, realBufferedSource.bufferField.size()));
    }
}
