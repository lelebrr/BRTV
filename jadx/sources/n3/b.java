package n3;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements d, c {

    /* renamed from: a, reason: collision with root package name */
    public final Object f8411a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f8412b;

    /* renamed from: c, reason: collision with root package name */
    public volatile c f8413c;
    public volatile c d;

    /* renamed from: e, reason: collision with root package name */
    public int f8414e = 3;
    public int f = 3;

    public b(Object obj, d dVar) {
        this.f8411a = obj;
        this.f8412b = dVar;
    }

    @Override // n3.d, n3.c
    public final boolean a() {
        boolean z7;
        synchronized (this.f8411a) {
            try {
                z7 = this.f8413c.a() || this.d.a();
            } finally {
            }
        }
        return z7;
    }

    @Override // n3.c
    public final boolean b() {
        boolean z7;
        synchronized (this.f8411a) {
            try {
                z7 = this.f8414e == 3 && this.f == 3;
            } finally {
            }
        }
        return z7;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, n3.d] */
    @Override // n3.d
    public final boolean c(c cVar) {
        boolean z7;
        synchronized (this.f8411a) {
            ?? r12 = this.f8412b;
            z7 = (r12 == 0 || r12.c(this)) && cVar.equals(this.f8413c);
        }
        return z7;
    }

    @Override // n3.c
    public final void clear() {
        synchronized (this.f8411a) {
            try {
                this.f8414e = 3;
                this.f8413c.clear();
                if (this.f != 3) {
                    this.f = 3;
                    this.d.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // n3.c
    public final boolean d(c cVar) {
        if (!(cVar instanceof b)) {
            return false;
        }
        b bVar = (b) cVar;
        return this.f8413c.d(bVar.f8413c) && this.d.d(bVar.d);
    }

    @Override // n3.c
    public final void e() {
        synchronized (this.f8411a) {
            try {
                if (this.f8414e != 1) {
                    this.f8414e = 1;
                    this.f8413c.e();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, n3.d] */
    @Override // n3.d
    public final boolean f(c cVar) {
        boolean z7;
        int i6;
        synchronized (this.f8411a) {
            ?? r12 = this.f8412b;
            z7 = false;
            if (r12 == 0 || r12.f(this)) {
                if (this.f8414e != 5 ? cVar.equals(this.f8413c) : cVar.equals(this.d) && ((i6 = this.f) == 4 || i6 == 5)) {
                    z7 = true;
                }
            }
        }
        return z7;
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.Object, n3.d] */
    @Override // n3.d
    public final void g(c cVar) {
        synchronized (this.f8411a) {
            try {
                if (cVar.equals(this.f8413c)) {
                    this.f8414e = 4;
                } else if (cVar.equals(this.d)) {
                    this.f = 4;
                }
                ?? r42 = this.f8412b;
                if (r42 != 0) {
                    r42.g(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, n3.d] */
    @Override // n3.d
    public final d getRoot() {
        d root;
        synchronized (this.f8411a) {
            try {
                ?? r12 = this.f8412b;
                root = r12 != 0 ? r12.getRoot() : this;
            } catch (Throwable th) {
                throw th;
            }
        }
        return root;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, n3.d] */
    @Override // n3.d
    public final boolean h(c cVar) {
        boolean z7;
        synchronized (this.f8411a) {
            ?? r02 = this.f8412b;
            z7 = r02 == 0 || r02.h(this);
        }
        return z7;
    }

    @Override // n3.c
    public final boolean i() {
        boolean z7;
        synchronized (this.f8411a) {
            try {
                z7 = this.f8414e == 4 || this.f == 4;
            } finally {
            }
        }
        return z7;
    }

    @Override // n3.c
    public final boolean isRunning() {
        boolean z7;
        synchronized (this.f8411a) {
            try {
                z7 = true;
                if (this.f8414e != 1 && this.f != 1) {
                    z7 = false;
                }
            } finally {
            }
        }
        return z7;
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object, n3.d] */
    @Override // n3.d
    public final void j(c cVar) {
        synchronized (this.f8411a) {
            try {
                if (cVar.equals(this.d)) {
                    this.f = 5;
                    ?? r32 = this.f8412b;
                    if (r32 != 0) {
                        r32.j(this);
                    }
                    return;
                }
                this.f8414e = 5;
                if (this.f != 1) {
                    this.f = 1;
                    this.d.e();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // n3.c
    public final void pause() {
        synchronized (this.f8411a) {
            try {
                if (this.f8414e == 1) {
                    this.f8414e = 2;
                    this.f8413c.pause();
                }
                if (this.f == 1) {
                    this.f = 2;
                    this.d.pause();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
