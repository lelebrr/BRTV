package okio;

import j9.i;
import java.io.IOException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class ForwardingSink implements Sink {
    private final Sink delegate;

    public ForwardingSink(Sink sink) {
        i.f(sink, "delegate");
        this.delegate = sink;
    }

    /* renamed from: -deprecated_delegate, reason: not valid java name */
    public final Sink m155deprecated_delegate() {
        return this.delegate;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    public final Sink delegate() {
        return this.delegate;
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        this.delegate.flush();
    }

    @Override // okio.Sink
    public Timeout timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }

    @Override // okio.Sink
    public void write(Buffer buffer, long j10) throws IOException {
        i.f(buffer, "source");
        this.delegate.write(buffer, j10);
    }
}
