package e2;

import java.io.EOFException;
import java.io.IOException;
import okio.Buffer;
import okio.ForwardingSink;
import okio.Sink;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i extends ForwardingSink {

    /* renamed from: a, reason: collision with root package name */
    public final aa.c f6477a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f6478b;

    public i(Sink sink, aa.c cVar) {
        super(sink);
        this.f6477a = cVar;
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            super.close();
        } catch (IOException e5) {
            this.f6478b = true;
            this.f6477a.invoke(e5);
        }
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
    public final void flush() {
        try {
            super.flush();
        } catch (IOException e5) {
            this.f6478b = true;
            this.f6477a.invoke(e5);
        }
    }

    @Override // okio.ForwardingSink, okio.Sink
    public final void write(Buffer buffer, long j10) throws EOFException {
        if (this.f6478b) {
            buffer.skip(j10);
            return;
        }
        try {
            super.write(buffer, j10);
        } catch (IOException e5) {
            this.f6478b = true;
            this.f6477a.invoke(e5);
        }
    }
}
