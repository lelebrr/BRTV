package d2;

import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p extends n {

    /* renamed from: a, reason: collision with root package name */
    public final n5.d f6046a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f6047b;

    /* renamed from: c, reason: collision with root package name */
    public BufferedSource f6048c;

    public p(BufferedSource bufferedSource, n5.d dVar) {
        this.f6046a = dVar;
        this.f6048c = bufferedSource;
    }

    @Override // d2.n
    public final n5.d a() {
        return this.f6046a;
    }

    @Override // d2.n
    public final synchronized BufferedSource b() {
        if (this.f6047b) {
            throw new IllegalStateException("closed");
        }
        BufferedSource bufferedSource = this.f6048c;
        if (bufferedSource != null) {
            return bufferedSource;
        }
        FileSystem fileSystem = FileSystem.SYSTEM;
        j9.i.c(null);
        BufferedSource bufferedSourceBuffer = Okio.buffer(fileSystem.source(null));
        this.f6048c = bufferedSourceBuffer;
        return bufferedSourceBuffer;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f6047b = true;
        BufferedSource bufferedSource = this.f6048c;
        if (bufferedSource != null) {
            r2.f.a(bufferedSource);
        }
    }
}
