package r3;

import e3.w;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends InputStream {

    /* renamed from: c, reason: collision with root package name */
    public static final ArrayDeque f9492c;

    /* renamed from: a, reason: collision with root package name */
    public w f9493a;

    /* renamed from: b, reason: collision with root package name */
    public IOException f9494b;

    static {
        char[] cArr = n.f9510a;
        f9492c = new ArrayDeque(0);
    }

    public final void a() {
        this.f9494b = null;
        this.f9493a = null;
        ArrayDeque arrayDeque = f9492c;
        synchronized (arrayDeque) {
            arrayDeque.offer(this);
        }
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f9493a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f9493a.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i6) {
        this.f9493a.mark(i6);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        this.f9493a.getClass();
        return true;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        try {
            return this.f9493a.read();
        } catch (IOException e5) {
            this.f9494b = e5;
            throw e5;
        }
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        this.f9493a.reset();
    }

    @Override // java.io.InputStream
    public final long skip(long j10) throws IOException {
        try {
            return this.f9493a.skip(j10);
        } catch (IOException e5) {
            this.f9494b = e5;
            throw e5;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        try {
            return this.f9493a.read(bArr);
        } catch (IOException e5) {
            this.f9494b = e5;
            throw e5;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i6, int i10) throws IOException {
        try {
            return this.f9493a.read(bArr, i6, i10);
        } catch (IOException e5) {
            this.f9494b = e5;
            throw e5;
        }
    }
}
