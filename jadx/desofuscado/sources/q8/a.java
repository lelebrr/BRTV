package q8;

import java.util.concurrent.TimeUnit;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends i8.e {

    /* renamed from: a, reason: collision with root package name */
    public final j8.a f9317a;

    /* renamed from: b, reason: collision with root package name */
    public final j8.a f9318b;

    /* renamed from: c, reason: collision with root package name */
    public final j8.a f9319c;
    public final c d;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f9320e;

    public a(c cVar) {
        this.d = cVar;
        j8.a aVar = new j8.a(1);
        this.f9317a = aVar;
        j8.a aVar2 = new j8.a(0);
        this.f9318b = aVar2;
        j8.a aVar3 = new j8.a(1);
        this.f9319c = aVar3;
        aVar3.b(aVar);
        aVar3.b(aVar2);
    }

    @Override // j8.b
    public final void a() {
        if (this.f9320e) {
            return;
        }
        this.f9320e = true;
        this.f9319c.a();
    }

    @Override // i8.e
    public final j8.b b(Runnable runnable, TimeUnit timeUnit) {
        return this.f9320e ? m8.b.f8275a : this.d.d(runnable, timeUnit, this.f9318b);
    }

    @Override // i8.e
    public final void c(p8.d dVar) {
        if (this.f9320e) {
            return;
        }
        this.d.d(dVar, TimeUnit.MILLISECONDS, this.f9317a);
    }
}
