package e2;

import java.io.Closeable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final e f6479a;

    public j(e eVar) {
        this.f6479a = eVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f6479a.close();
    }
}
