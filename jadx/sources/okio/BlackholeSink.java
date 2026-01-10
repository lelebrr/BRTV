package okio;

import j9.i;
import java.io.EOFException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class BlackholeSink implements Sink {
    @Override // okio.Sink
    public Timeout timeout() {
        return Timeout.NONE;
    }

    @Override // okio.Sink
    public void write(Buffer buffer, long j10) throws EOFException {
        i.f(buffer, "source");
        buffer.skip(j10);
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() {
    }
}
