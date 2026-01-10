package x2;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import q1.f0;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class p implements s3.b {

    /* renamed from: w, reason: collision with root package name */
    public static final f0 f10926w = new f0(8);

    /* renamed from: a, reason: collision with root package name */
    public final o f10927a;

    /* renamed from: b, reason: collision with root package name */
    public final s3.d f10928b;

    /* renamed from: c, reason: collision with root package name */
    public final l f10929c;
    public final s.g d;

    /* renamed from: e, reason: collision with root package name */
    public final f0 f10930e;
    public final l f;

    /* renamed from: g, reason: collision with root package name */
    public final a3.f f10931g;

    /* renamed from: h, reason: collision with root package name */
    public final a3.f f10932h;

    /* renamed from: i, reason: collision with root package name */
    public final a3.f f10933i;

    /* renamed from: j, reason: collision with root package name */
    public final AtomicInteger f10934j;

    /* renamed from: k, reason: collision with root package name */
    public q f10935k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f10936l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f10937m;

    /* renamed from: n, reason: collision with root package name */
    public x f10938n;

    /* renamed from: o, reason: collision with root package name */
    public int f10939o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f10940p;

    /* renamed from: q, reason: collision with root package name */
    public t f10941q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f10942r;

    /* renamed from: s, reason: collision with root package name */
    public r f10943s;

    /* renamed from: t, reason: collision with root package name */
    public i f10944t;

    /* renamed from: u, reason: collision with root package name */
    public volatile boolean f10945u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f10946v;

    public p(a3.f fVar, a3.f fVar2, a3.f fVar3, a3.f fVar4, l lVar, l lVar2, s.g gVar) {
        f0 f0Var = f10926w;
        this.f10927a = new o(new ArrayList(2));
        this.f10928b = new s3.d();
        this.f10934j = new AtomicInteger();
        this.f10931g = fVar;
        this.f10932h = fVar2;
        this.f10933i = fVar4;
        this.f = lVar;
        this.f10929c = lVar2;
        this.d = gVar;
        this.f10930e = f0Var;
    }

    public final synchronized void a(n3.f fVar, r3.e eVar) {
        try {
            this.f10928b.a();
            o oVar = this.f10927a;
            oVar.getClass();
            oVar.f10925a.add(new n(fVar, eVar));
            if (this.f10940p) {
                e(1);
                m mVar = new m(this, fVar, 1);
                eVar.getClass();
                r3.n.j(mVar);
            } else if (this.f10942r) {
                e(1);
                m mVar2 = new m(this, fVar, 0);
                eVar.getClass();
                r3.n.j(mVar2);
            } else {
                r3.f.a("Cannot add callbacks to a cancelled EngineJob", !this.f10945u);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // s3.b
    public final s3.d b() {
        return this.f10928b;
    }

    public final void c() {
        if (f()) {
            return;
        }
        this.f10945u = true;
        i iVar = this.f10944t;
        iVar.A = true;
        f fVar = iVar.f10905y;
        if (fVar != null) {
            fVar.cancel();
        }
        l lVar = this.f;
        q qVar = this.f10935k;
        synchronized (lVar) {
            b3.x xVar = lVar.f10915a;
            xVar.getClass();
            HashMap map = xVar.f3222a;
            if (equals(map.get(qVar))) {
                map.remove(qVar);
            }
        }
    }

    public final void d() {
        r rVar;
        synchronized (this) {
            try {
                this.f10928b.a();
                r3.f.a("Not yet complete!", f());
                int iDecrementAndGet = this.f10934j.decrementAndGet();
                r3.f.a("Can't decrement below 0", iDecrementAndGet >= 0);
                if (iDecrementAndGet == 0) {
                    rVar = this.f10943s;
                    i();
                } else {
                    rVar = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (rVar != null) {
            rVar.e();
        }
    }

    public final synchronized void e(int i6) {
        r rVar;
        r3.f.a("Not yet complete!", f());
        if (this.f10934j.getAndAdd(i6) == 0 && (rVar = this.f10943s) != null) {
            rVar.b();
        }
    }

    public final boolean f() {
        return this.f10942r || this.f10940p || this.f10945u;
    }

    public final void g() {
        synchronized (this) {
            try {
                this.f10928b.a();
                if (this.f10945u) {
                    i();
                    return;
                }
                if (this.f10927a.f10925a.isEmpty()) {
                    throw new IllegalStateException("Received an exception without any callbacks to notify");
                }
                if (this.f10942r) {
                    throw new IllegalStateException("Already failed once");
                }
                this.f10942r = true;
                q qVar = this.f10935k;
                o oVar = this.f10927a;
                oVar.getClass();
                ArrayList arrayList = new ArrayList(oVar.f10925a);
                e(arrayList.size() + 1);
                this.f.e(this, qVar, null);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    n nVar = (n) it.next();
                    nVar.f10924b.execute(new m(this, nVar.f10923a, 0));
                }
                d();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h() {
        synchronized (this) {
            try {
                this.f10928b.a();
                if (this.f10945u) {
                    this.f10938n.d();
                    i();
                    return;
                }
                if (this.f10927a.f10925a.isEmpty()) {
                    throw new IllegalStateException("Received a resource without any callbacks to notify");
                }
                if (this.f10940p) {
                    throw new IllegalStateException("Already have resource");
                }
                f0 f0Var = this.f10930e;
                x xVar = this.f10938n;
                boolean z7 = this.f10936l;
                q qVar = this.f10935k;
                l lVar = this.f10929c;
                f0Var.getClass();
                this.f10943s = new r(xVar, z7, true, qVar, lVar);
                this.f10940p = true;
                o oVar = this.f10927a;
                oVar.getClass();
                ArrayList arrayList = new ArrayList(oVar.f10925a);
                e(arrayList.size() + 1);
                this.f.e(this, this.f10935k, this.f10943s);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    n nVar = (n) it.next();
                    nVar.f10924b.execute(new m(this, nVar.f10923a, 1));
                }
                d();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void i() {
        if (this.f10935k == null) {
            throw new IllegalArgumentException();
        }
        this.f10927a.f10925a.clear();
        this.f10935k = null;
        this.f10943s = null;
        this.f10938n = null;
        this.f10942r = false;
        this.f10945u = false;
        this.f10940p = false;
        this.f10946v = false;
        this.f10944t.m();
        this.f10944t = null;
        this.f10941q = null;
        this.f10939o = 0;
        this.d.k(this);
    }

    public final synchronized void j(n3.f fVar) {
        try {
            this.f10928b.a();
            o oVar = this.f10927a;
            oVar.f10925a.remove(new n(fVar, r3.f.f9497b));
            if (this.f10927a.f10925a.isEmpty()) {
                c();
                if (this.f10940p || this.f10942r) {
                    if (this.f10934j.get() == 0) {
                        i();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void k(i iVar) {
        this.f10944t = iVar;
        int iH = iVar.h(1);
        ((iH == 2 || iH == 3) ? this.f10931g : this.f10937m ? this.f10933i : this.f10932h).execute(iVar);
    }
}
