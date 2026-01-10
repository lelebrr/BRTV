package androidx.lifecycle;

import android.os.Looper;
import androidx.fragment.app.FragmentActivity;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class d0 {

    /* renamed from: k, reason: collision with root package name */
    public static final Object f1950k = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Object f1951a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final m.f f1952b = new m.f();

    /* renamed from: c, reason: collision with root package name */
    public int f1953c = 0;
    public boolean d;

    /* renamed from: e, reason: collision with root package name */
    public volatile Object f1954e;
    public volatile Object f;

    /* renamed from: g, reason: collision with root package name */
    public int f1955g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f1956h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f1957i;

    /* renamed from: j, reason: collision with root package name */
    public final a.f f1958j;

    public d0() {
        Object obj = f1950k;
        this.f = obj;
        this.f1958j = new a.f(5, this);
        this.f1954e = obj;
        this.f1955g = -1;
    }

    public static void a(String str) {
        l.a.V().f7921r.getClass();
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException(a.e.r("Cannot invoke ", str, " on a background thread"));
        }
    }

    public final void b(c0 c0Var) {
        if (c0Var.f1945b) {
            if (!c0Var.i()) {
                c0Var.d(false);
                return;
            }
            int i6 = c0Var.f1946c;
            int i10 = this.f1955g;
            if (i6 >= i10) {
                return;
            }
            c0Var.f1946c = i10;
            c0Var.f1944a.c(this.f1954e);
        }
    }

    public final void c(c0 c0Var) {
        if (this.f1956h) {
            this.f1957i = true;
            return;
        }
        this.f1956h = true;
        do {
            this.f1957i = false;
            if (c0Var != null) {
                b(c0Var);
                c0Var = null;
            } else {
                m.f fVar = this.f1952b;
                fVar.getClass();
                m.d dVar = new m.d(fVar);
                fVar.f8110c.put(dVar, Boolean.FALSE);
                while (dVar.hasNext()) {
                    b((c0) ((Map.Entry) dVar.next()).getValue());
                    if (this.f1957i) {
                        break;
                    }
                }
            }
        } while (this.f1957i);
        this.f1956h = false;
    }

    public final Object d() {
        Object obj = this.f1954e;
        if (obj != f1950k) {
            return obj;
        }
        return null;
    }

    public final void e(FragmentActivity fragmentActivity, e0 e0Var) {
        Object obj;
        a("observe");
        if (fragmentActivity.d.d == o.f1980a) {
            return;
        }
        b0 b0Var = new b0(this, fragmentActivity, e0Var);
        m.f fVar = this.f1952b;
        m.c cVarC = fVar.c(e0Var);
        if (cVarC != null) {
            obj = cVarC.f8103b;
        } else {
            m.c cVar = new m.c(e0Var, b0Var);
            fVar.d++;
            m.c cVar2 = fVar.f8109b;
            if (cVar2 == null) {
                fVar.f8108a = cVar;
                fVar.f8109b = cVar;
            } else {
                cVar2.f8104c = cVar;
                cVar.d = cVar2;
                fVar.f8109b = cVar;
            }
            obj = null;
        }
        c0 c0Var = (c0) obj;
        if (c0Var != null && !c0Var.h(fragmentActivity)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (c0Var != null) {
            return;
        }
        fragmentActivity.d.a(b0Var);
    }

    public final void h(Object obj) {
        boolean z7;
        synchronized (this.f1951a) {
            z7 = this.f == f1950k;
            this.f = obj;
        }
        if (z7) {
            l.a.V().W(this.f1958j);
        }
    }

    public void i(e0 e0Var) {
        a("removeObserver");
        c0 c0Var = (c0) this.f1952b.d(e0Var);
        if (c0Var == null) {
            return;
        }
        c0Var.g();
        c0Var.d(false);
    }

    public void j(Object obj) {
        a("setValue");
        this.f1955g++;
        this.f1954e = obj;
        c(null);
    }

    public void f() {
    }

    public void g() {
    }
}
