package d7;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b1 extends i1 implements Set {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c1 f6090a;

    public b1(c1 c1Var) {
        this.f6090a = c1Var;
    }

    @Override // d7.i1, d7.l1
    public final Collection delegate() {
        c1 c1Var = this.f6090a;
        return d0.k(c1Var.f.a(), c1Var.c());
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        return d0.j(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return d0.p(this);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [b7.n, java.lang.Object] */
    @Override // d7.i1, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        c1 c1Var = this.f6090a;
        if (!c1Var.f.containsKey(entry.getKey()) || !c1Var.f6104g.apply(entry.getKey())) {
            return false;
        }
        return c1Var.f.remove(entry.getKey(), entry.getValue());
    }
}
