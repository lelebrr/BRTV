package n3;

import ea.q;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g implements d, c {

    /* renamed from: a, reason: collision with root package name */
    public final d f8439a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f8440b;

    /* renamed from: c, reason: collision with root package name */
    public volatile f f8441c;
    public volatile c d;

    /* renamed from: e, reason: collision with root package name */
    public int f8442e = 3;
    public int f = 3;

    /* renamed from: g, reason: collision with root package name */
    public boolean f8443g;

    public g(Object obj, d dVar) {
        this.f8440b = obj;
        this.f8439a = dVar;
    }

    @Override // n3.d, n3.c
    public final boolean a() {
        boolean z7;
        synchronized (this.f8440b) {
            try {
                z7 = this.d.a() || this.f8441c.a();
            } finally {
            }
        }
        return z7;
    }

    @Override // n3.c
    public final boolean b() {
        boolean z7;
        synchronized (this.f8440b) {
            z7 = this.f8442e == 3;
        }
        return z7;
    }

    @Override // n3.d
    public final boolean c(c cVar) {
        boolean z7;
        synchronized (this.f8440b) {
            try {
                d dVar = this.f8439a;
                z7 = (dVar == null || dVar.c(this)) && cVar.equals(this.f8441c) && this.f8442e != 2;
            } finally {
            }
        }
        return z7;
    }

    @Override // n3.c
    public final void clear() {
        synchronized (this.f8440b) {
            this.f8443g = false;
            this.f8442e = 3;
            this.f = 3;
            this.d.clear();
            this.f8441c.clear();
        }
    }

    @Override // n3.c
    public final boolean d(c cVar) {
        if (!(cVar instanceof g)) {
            return false;
        }
        g gVar = (g) cVar;
        if (this.f8441c == null) {
            if (gVar.f8441c != null) {
                return false;
            }
        } else if (!this.f8441c.d(gVar.f8441c)) {
            return false;
        }
        if (this.d == null) {
            if (gVar.d != null) {
                return false;
            }
        } else if (!this.d.d(gVar.d)) {
            return false;
        }
        return true;
    }

    @Override // n3.c
    public final void e() {
        synchronized (this.f8440b) {
            try {
                this.f8443g = true;
                try {
                    if (this.f8442e != 4 && this.f != 1) {
                        this.f = 1;
                        this.d.e();
                    }
                    if (this.f8443g && this.f8442e != 1) {
                        this.f8442e = 1;
                        this.f8441c.e();
                    }
                    this.f8443g = false;
                } catch (Throwable th) {
                    this.f8443g = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // n3.d
    public final boolean f(c cVar) {
        boolean z7;
        synchronized (this.f8440b) {
            try {
                d dVar = this.f8439a;
                z7 = (dVar == null || dVar.f(this)) && cVar.equals(this.f8441c) && !a();
            } finally {
            }
        }
        return z7;
    }

    @Override // n3.d
    public final void g(c cVar) {
        synchronized (this.f8440b) {
            try {
                if (cVar.equals(this.d)) {
                    this.f = 4;
                    return;
                }
                this.f8442e = 4;
                d dVar = this.f8439a;
                if (dVar != null) {
                    dVar.g(this);
                }
                if (!q.c(this.f)) {
                    this.d.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // n3.d
    public final d getRoot() {
        d root;
        synchronized (this.f8440b) {
            try {
                d dVar = this.f8439a;
                root = dVar != null ? dVar.getRoot() : this;
            } catch (Throwable th) {
                throw th;
            }
        }
        return root;
    }

    @Override // n3.d
    public final boolean h(c cVar) {
        boolean z7;
        synchronized (this.f8440b) {
            try {
                d dVar = this.f8439a;
                z7 = (dVar == null || dVar.h(this)) && (cVar.equals(this.f8441c) || this.f8442e != 4);
            } finally {
            }
        }
        return z7;
    }

    @Override // n3.c
    public final boolean i() {
        boolean z7;
        synchronized (this.f8440b) {
            z7 = this.f8442e == 4;
        }
        return z7;
    }

    @Override // n3.c
    public final boolean isRunning() {
        boolean z7;
        synchronized (this.f8440b) {
            z7 = true;
            if (this.f8442e != 1) {
                z7 = false;
            }
        }
        return z7;
    }

    @Override // n3.d
    public final void j(c cVar) {
        synchronized (this.f8440b) {
            try {
                if (!cVar.equals(this.f8441c)) {
                    this.f = 5;
                    return;
                }
                this.f8442e = 5;
                d dVar = this.f8439a;
                if (dVar != null) {
                    dVar.j(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // n3.c
    public final void pause() {
        synchronized (this.f8440b) {
            try {
                if (!q.c(this.f)) {
                    this.f = 2;
                    this.d.pause();
                }
                if (!q.c(this.f8442e)) {
                    this.f8442e = 2;
                    this.f8441c.pause();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
