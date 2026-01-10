package x2;

import q1.f0;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class w implements x, s3.b {

    /* renamed from: e, reason: collision with root package name */
    public static final s.g f10968e = s3.c.a(20, new f0(9));

    /* renamed from: a, reason: collision with root package name */
    public final s3.d f10969a = new s3.d();

    /* renamed from: b, reason: collision with root package name */
    public x f10970b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f10971c;
    public boolean d;

    @Override // x2.x
    public final int a() {
        return this.f10970b.a();
    }

    @Override // s3.b
    public final s3.d b() {
        return this.f10969a;
    }

    @Override // x2.x
    public final Class c() {
        return this.f10970b.c();
    }

    @Override // x2.x
    public final synchronized void d() {
        this.f10969a.a();
        this.d = true;
        if (!this.f10971c) {
            this.f10970b.d();
            this.f10970b = null;
            f10968e.k(this);
        }
    }

    public final synchronized void e() {
        this.f10969a.a();
        if (!this.f10971c) {
            throw new IllegalStateException("Already unlocked");
        }
        this.f10971c = false;
        if (this.d) {
            d();
        }
    }

    @Override // x2.x
    public final Object get() {
        return this.f10970b.get();
    }
}
