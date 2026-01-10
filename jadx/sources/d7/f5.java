package d7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f5 extends k2 {
    public final transient z1 d;

    /* renamed from: e, reason: collision with root package name */
    public final transient g5 f6144e;

    public f5(z1 z1Var, g5 g5Var) {
        this.d = z1Var;
        this.f6144e = g5Var;
    }

    @Override // d7.k2, d7.q1
    public final u1 c() {
        return this.f6144e;
    }

    @Override // d7.q1, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.d.get(obj) != null;
    }

    @Override // d7.q1
    public final int d(Object[] objArr, int i6) {
        return this.f6144e.d(objArr, i6);
    }

    @Override // d7.q1
    public final boolean h() {
        return true;
    }

    @Override // d7.q1
    /* renamed from: i */
    public final s5 iterator() {
        return this.f6144e.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return ((h5) this.d).f;
    }
}
