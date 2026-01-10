package d7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b2 extends s5 {

    /* renamed from: a, reason: collision with root package name */
    public final s5 f6091a;

    /* renamed from: b, reason: collision with root package name */
    public s5 f6092b = s2.d;

    public b2(g2 g2Var) {
        this.f6091a = ((u1) g2Var.f.values()).listIterator(0);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f6092b.hasNext() || this.f6091a.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f6092b.hasNext()) {
            this.f6092b = ((q1) this.f6091a.next()).iterator();
        }
        return this.f6092b.next();
    }
}
