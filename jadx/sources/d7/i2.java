package d7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i2 extends k2 {
    public final /* synthetic */ e2 d;

    public i2(e2 e2Var) {
        this.d = e2Var;
    }

    @Override // d7.q1, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof w4)) {
            return false;
        }
        w4 w4Var = (w4) obj;
        if (w4Var.a() <= 0) {
            return false;
        }
        return this.d.count(w4Var.b()) == w4Var.a();
    }

    @Override // d7.q1
    public final int d(Object[] objArr, int i6) {
        return c().d(objArr, i6);
    }

    @Override // d7.q1
    public final boolean h() {
        this.d.getClass();
        return true;
    }

    @Override // d7.k2, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.d.hashCode();
    }

    @Override // d7.q1
    /* renamed from: i */
    public final s5 iterator() {
        return c().listIterator(0);
    }

    @Override // d7.k2
    public final u1 m() {
        return new o2(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.d.d.f.keySet().size();
    }
}
