package z9;

import java.util.concurrent.Executor;
import t9.h0;
import t9.p;
import x9.t;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class c extends h0 implements Executor {

    /* renamed from: c, reason: collision with root package name */
    public static final c f11691c = new c();
    public static final p d;

    static {
        k kVar = k.f11703c;
        int i6 = t.f11131a;
        if (64 >= i6) {
            i6 = 64;
        }
        d = kVar.h(x9.a.i("kotlinx.coroutines.io.parallelism", i6, 0, 0, 12));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    @Override // t9.p
    public final void d(a9.i iVar, Runnable runnable) {
        d.d(iVar, runnable);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        d(a9.j.f179a, runnable);
    }

    @Override // t9.p
    public final String toString() {
        return "Dispatchers.IO";
    }
}
