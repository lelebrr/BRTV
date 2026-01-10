package d2;

import java.io.Closeable;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio;
import okio.Path;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m extends n {

    /* renamed from: a, reason: collision with root package name */
    public final Path f6041a;

    /* renamed from: b, reason: collision with root package name */
    public final FileSystem f6042b;

    /* renamed from: c, reason: collision with root package name */
    public final String f6043c;
    public final Closeable d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f6044e;
    public BufferedSource f;

    public m(Path path, FileSystem fileSystem, String str, Closeable closeable) {
        this.f6041a = path;
        this.f6042b = fileSystem;
        this.f6043c = str;
        this.d = closeable;
    }

    @Override // d2.n
    public final n5.d a() {
        return null;
    }

    @Override // d2.n
    public final synchronized BufferedSource b() {
        if (this.f6044e) {
            throw new IllegalStateException("closed");
        }
        BufferedSource bufferedSource = this.f;
        if (bufferedSource != null) {
            return bufferedSource;
        }
        BufferedSource bufferedSourceBuffer = Okio.buffer(this.f6042b.source(this.f6041a));
        this.f = bufferedSourceBuffer;
        return bufferedSourceBuffer;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            this.f6044e = true;
            BufferedSource bufferedSource = this.f;
            if (bufferedSource != null) {
                r2.f.a(bufferedSource);
            }
            Closeable closeable = this.d;
            if (closeable != null) {
                r2.f.a(closeable);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
