package p8;

import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends AtomicReference implements j8.b {

    /* renamed from: a, reason: collision with root package name */
    public final i8.c f8914a;

    public b(i8.c cVar) {
        this.f8914a = cVar;
    }

    @Override // j8.b
    public final void a() {
        m8.a.b(this);
    }

    public final boolean b() {
        return ((j8.b) get()) == m8.a.f8273a;
    }

    public final void c(Object obj) {
        if (b()) {
            return;
        }
        this.f8914a.f(obj);
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        return b.class.getSimpleName() + "{" + super.toString() + "}";
    }
}
