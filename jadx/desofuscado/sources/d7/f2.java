package d7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f2 extends q1 {

    /* renamed from: b, reason: collision with root package name */
    public final transient g2 f6142b;

    public f2(g2 g2Var) {
        this.f6142b = g2Var;
    }

    @Override // d7.q1, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f6142b.h(obj);
    }

    @Override // d7.q1
    public final int d(Object[] objArr, int i6) {
        g1 g1VarListIterator = ((u1) this.f6142b.f.values()).listIterator(0);
        while (g1VarListIterator.hasNext()) {
            i6 = ((q1) g1VarListIterator.next()).d(objArr, i6);
        }
        return i6;
    }

    @Override // d7.q1
    /* renamed from: i */
    public final s5 iterator() {
        g2 g2Var = this.f6142b;
        g2Var.getClass();
        return new b2(g2Var);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.f6142b.f6149g;
    }
}
