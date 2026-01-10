package o8;

import com.bumptech.glide.d;
import i8.c;
import j8.b;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import x4.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends AtomicReference implements c, b {

    /* renamed from: a, reason: collision with root package name */
    public final l8.a f8631a;

    /* renamed from: b, reason: collision with root package name */
    public final e f8632b;

    /* renamed from: c, reason: collision with root package name */
    public final e f8633c;
    public final u6.e d;

    public a(l8.a aVar) {
        e eVar = n8.a.d;
        e eVar2 = n8.a.f8505b;
        u6.e eVar3 = n8.a.f8506c;
        this.f8631a = aVar;
        this.f8632b = eVar;
        this.f8633c = eVar2;
        this.d = eVar3;
    }

    @Override // j8.b
    public final void a() {
        m8.a.b(this);
    }

    @Override // i8.c
    public final void b() {
        if (g()) {
            return;
        }
        lazySet(m8.a.f8273a);
        try {
            this.f8633c.getClass();
        } catch (Throwable th) {
            d.G(th);
            d.y(th);
        }
    }

    @Override // i8.c
    public final void c(b bVar) {
        if (m8.a.c(this, bVar)) {
            try {
                this.d.getClass();
            } catch (Throwable th) {
                d.G(th);
                bVar.a();
                d(th);
            }
        }
    }

    @Override // i8.c
    public final void d(Throwable th) {
        if (g()) {
            d.y(th);
            return;
        }
        lazySet(m8.a.f8273a);
        try {
            this.f8632b.accept(th);
        } catch (Throwable th2) {
            d.G(th2);
            d.y(new k8.b(Arrays.asList(th, th2)));
        }
    }

    @Override // i8.c
    public final void f(Object obj) {
        if (g()) {
            return;
        }
        try {
            this.f8631a.accept(obj);
        } catch (Throwable th) {
            d.G(th);
            ((b) get()).a();
            d(th);
        }
    }

    public final boolean g() {
        return get() == m8.a.f8273a;
    }
}
