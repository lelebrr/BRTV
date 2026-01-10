package x2;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class r implements x {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f10954a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f10955b;

    /* renamed from: c, reason: collision with root package name */
    public final x f10956c;
    public final l d;

    /* renamed from: e, reason: collision with root package name */
    public final q f10957e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f10958g;

    public r(x xVar, boolean z7, boolean z10, q qVar, l lVar) {
        r3.f.c(xVar, "Argument must not be null");
        this.f10956c = xVar;
        this.f10954a = z7;
        this.f10955b = z10;
        this.f10957e = qVar;
        r3.f.c(lVar, "Argument must not be null");
        this.d = lVar;
    }

    @Override // x2.x
    public final int a() {
        return this.f10956c.a();
    }

    public final synchronized void b() {
        if (this.f10958g) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        this.f++;
    }

    @Override // x2.x
    public final Class c() {
        return this.f10956c.c();
    }

    @Override // x2.x
    public final synchronized void d() {
        if (this.f > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.f10958g) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.f10958g = true;
        if (this.f10955b) {
            this.f10956c.d();
        }
    }

    public final void e() {
        boolean z7;
        synchronized (this) {
            int i6 = this.f;
            if (i6 <= 0) {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
            z7 = true;
            int i10 = i6 - 1;
            this.f = i10;
            if (i10 != 0) {
                z7 = false;
            }
        }
        if (z7) {
            this.d.f(this.f10957e, this);
        }
    }

    @Override // x2.x
    public final Object get() {
        return this.f10956c.get();
    }

    public final synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.f10954a + ", listener=" + this.d + ", key=" + this.f10957e + ", acquired=" + this.f + ", isRecycled=" + this.f10958g + ", resource=" + this.f10956c + '}';
    }
}
