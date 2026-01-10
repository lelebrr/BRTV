package d7;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y0 extends w implements e1, d1 {
    public final l5 f;

    /* renamed from: g, reason: collision with root package name */
    public final b7.o f6305g;

    public y0(l5 l5Var, b7.o oVar) {
        l5Var.getClass();
        this.f = l5Var;
        this.f6305g = oVar;
    }

    public static e0 o(Collection collection, x0 x0Var) {
        return collection instanceof Set ? d0.l((Set) collection, x0Var) : d0.k(collection, x0Var);
    }

    @Override // d7.w, d7.p4
    public final Collection a() {
        return (Set) super.a();
    }

    @Override // d7.e1
    public final l5 b() {
        return this.f;
    }

    @Override // d7.d1
    public final b7.n c() {
        return this.f6305g;
    }

    @Override // d7.p4
    public final void clear() {
        ((Set) super.a()).clear();
    }

    @Override // d7.p4
    public final boolean containsKey(Object obj) {
        return d().get(obj) != null;
    }

    @Override // d7.d1
    public final l5 e() {
        return this.f;
    }

    @Override // d7.w
    public final Map i() {
        return new u0(this);
    }

    @Override // d7.w
    public final Collection j() {
        return d0.l(this.f.a(), this.f6305g);
    }

    @Override // d7.w
    public final Set k() {
        return d().keySet();
    }

    @Override // d7.w
    public final v4 l() {
        return new w0(this);
    }

    @Override // d7.w
    public final Collection m() {
        return new c7.w(this);
    }

    public final boolean p(b7.n nVar) {
        Iterator it = this.f.d().entrySet().iterator();
        boolean z7 = false;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            e0 e0VarO = o((Collection) entry.getValue(), new x0(this, key));
            if (!e0VarO.isEmpty() && nVar.apply(new r1(key, e0VarO))) {
                if (e0VarO.size() == ((Collection) entry.getValue()).size()) {
                    it.remove();
                } else {
                    e0VarO.clear();
                }
                z7 = true;
            }
        }
        return z7;
    }

    @Override // d7.p4
    public final int size() {
        return ((Set) super.a()).size();
    }

    @Override // d7.w, d7.p4
    public final Set a() {
        return (Set) super.a();
    }

    @Override // d7.p4
    public final Set get(Object obj) {
        return (Set) o(this.f.get(obj), new x0(this, obj));
    }
}
