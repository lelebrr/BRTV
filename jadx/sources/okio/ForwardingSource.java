package okio;

import j9.i;
import java.io.IOException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class ForwardingSource implements Source {
    private final Source delegate;

    public ForwardingSource(Source source) {
        i.f(source, "delegate");
        this.delegate = source;
    }

    /* renamed from: -deprecated_delegate, reason: not valid java name */
    public final Source m156deprecated_delegate() {
        return this.delegate;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    public final Source delegate() {
        return this.delegate;
    }

    @Override // okio.Source
    public long read(Buffer buffer, long j10) throws IOException {
        i.f(buffer, "sink");
        return this.delegate.read(buffer, j10);
    }

    @Override // okio.Source
    public Timeout timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }
}
