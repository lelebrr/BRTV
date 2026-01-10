package okio;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.Charset;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public interface BufferedSink extends Sink, WritableByteChannel {
    Buffer buffer();

    BufferedSink emit() throws IOException;

    BufferedSink emitCompleteSegments() throws IOException;

    @Override // okio.Sink, java.io.Flushable
    void flush() throws IOException;

    Buffer getBuffer();

    OutputStream outputStream();

    BufferedSink write(ByteString byteString) throws IOException;

    BufferedSink write(ByteString byteString, int i6, int i10) throws IOException;

    BufferedSink write(Source source, long j10) throws IOException;

    BufferedSink write(byte[] bArr) throws IOException;

    BufferedSink write(byte[] bArr, int i6, int i10) throws IOException;

    long writeAll(Source source) throws IOException;

    BufferedSink writeByte(int i6) throws IOException;

    BufferedSink writeDecimalLong(long j10) throws IOException;

    BufferedSink writeHexadecimalUnsignedLong(long j10) throws IOException;

    BufferedSink writeInt(int i6) throws IOException;

    BufferedSink writeIntLe(int i6) throws IOException;

    BufferedSink writeLong(long j10) throws IOException;

    BufferedSink writeLongLe(long j10) throws IOException;

    BufferedSink writeShort(int i6) throws IOException;

    BufferedSink writeShortLe(int i6) throws IOException;

    BufferedSink writeString(String str, int i6, int i10, Charset charset) throws IOException;

    BufferedSink writeString(String str, Charset charset) throws IOException;

    BufferedSink writeUtf8(String str) throws IOException;

    BufferedSink writeUtf8(String str, int i6, int i10) throws IOException;

    BufferedSink writeUtf8CodePoint(int i6) throws IOException;
}
