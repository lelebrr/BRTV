package p8;

import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends AtomicReference implements i8.c, j8.b {

    /* renamed from: a, reason: collision with root package name */
    public final i8.c f8926a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicReference f8927b = new AtomicReference();

    public f(i8.c cVar) {
        this.f8926a = cVar;
    }

    @Override // j8.b
    public final void a() {
        m8.a.b(this.f8927b);
        m8.a.b(this);
    }

    @Override // i8.c
    public final void b() {
        this.f8926a.b();
    }

    @Override // i8.c
    public final void c(j8.b bVar) {
        m8.a.c(this.f8927b, bVar);
    }

    @Override // i8.c
    public final void d(Throwable th) {
        this.f8926a.d(th);
    }

    @Override // i8.c
    public final void f(Object obj) {
        this.f8926a.f(obj);
    }
}
