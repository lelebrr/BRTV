package okhttp3.internal.cache;

import i9.l;
import j9.i;
import java.io.EOFException;
import java.io.IOException;
import okio.Buffer;
import okio.ForwardingSink;
import okio.Sink;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class FaultHidingSink extends ForwardingSink {
    private boolean hasErrors;
    private final l onException;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FaultHidingSink(Sink sink, l lVar) {
        super(sink);
        i.f(sink, "delegate");
        i.f(lVar, "onException");
        this.onException = lVar;
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.hasErrors) {
            return;
        }
        try {
            super.close();
        } catch (IOException e5) {
            this.hasErrors = true;
            this.onException.invoke(e5);
        }
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
    public void flush() {
        if (this.hasErrors) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e5) {
            this.hasErrors = true;
            this.onException.invoke(e5);
        }
    }

    public final l getOnException() {
        return this.onException;
    }

    @Override // okio.ForwardingSink, okio.Sink
    public void write(Buffer buffer, long j10) throws EOFException {
        i.f(buffer, "source");
        if (this.hasErrors) {
            buffer.skip(j10);
            return;
        }
        try {
            super.write(buffer, j10);
        } catch (IOException e5) {
            this.hasErrors = true;
            this.onException.invoke(e5);
        }
    }
}
