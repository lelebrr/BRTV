package d7;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c1 extends w implements e1, d1 {
    public final l5 f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f6104g;

    public c1(l5 l5Var, b7.n nVar) {
        l5Var.getClass();
        this.f = l5Var;
        this.f6104g = nVar;
    }

    @Override // d7.w, d7.p4
    public final Collection a() {
        return (Set) super.a();
    }

    @Override // d7.e1
    public final l5 b() {
        return this.f;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [b7.n, java.lang.Object] */
    @Override // d7.d1
    public final b7.n c() {
        return new b7.p(this.f6104g, i4.f6175a);
    }

    @Override // d7.p4
    public final void clear() {
        keySet().clear();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [b7.n, java.lang.Object] */
    @Override // d7.p4
    public final boolean containsKey(Object obj) {
        if (this.f.containsKey(obj)) {
            return this.f6104g.apply(obj);
        }
        return false;
    }

    @Override // d7.d1
    public final l5 e() {
        return this.f;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [b7.n, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v0, types: [b7.n, java.lang.Object] */
    @Override // d7.w
    public final Map i() {
        Map mapD = this.f.d();
        ?? r12 = this.f6104g;
        r12.getClass();
        b7.p pVar = new b7.p(r12, i4.f6175a);
        if (mapD instanceof l4) {
            l4 l4Var = (l4) mapD;
            return new l4(l4Var.d, b7.b.a(l4Var.f6211e, pVar));
        }
        mapD.getClass();
        return new l4(mapD, r12, pVar);
    }

    @Override // d7.w
    public final Collection j() {
        return new b1(this);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [b7.n, java.lang.Object] */
    @Override // d7.w
    public final Set k() {
        return d0.l(this.f.keySet(), this.f6104g);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [b7.n, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v0, types: [b7.n, java.lang.Object] */
    @Override // d7.w
    public final v4 l() {
        v4 v4VarF = this.f.f();
        boolean z7 = v4VarF instanceof y4;
        ?? r22 = this.f6104g;
        if (!z7) {
            return new y4(v4VarF, r22);
        }
        y4 y4Var = (y4) v4VarF;
        return new y4(y4Var.f6311c, b7.b.a(y4Var.d, r22));
    }

    @Override // d7.w
    public final Collection m() {
        return new c7.w(this);
    }

    @Override // d7.p4
    public final int size() {
        Iterator it = d().values().iterator();
        int size = 0;
        while (it.hasNext()) {
            size += ((Collection) it.next()).size();
        }
        return size;
    }

    @Override // d7.w, d7.p4
    public final Set a() {
        return (Set) super.a();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [b7.n, java.lang.Object] */
    @Override // d7.p4
    public final Set get(Object obj) {
        Collection a1Var;
        boolean zApply = this.f6104g.apply(obj);
        l5 l5Var = this.f;
        if (zApply) {
            a1Var = l5Var.get(obj);
        } else {
            a1Var = l5Var instanceof l5 ? new a1(0, obj) : new z0(obj);
        }
        return (Set) a1Var;
    }
}
