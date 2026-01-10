package d7;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y4 extends z {

    /* renamed from: c, reason: collision with root package name */
    public final v4 f6311c;
    public final Object d;

    public y4(v4 v4Var, b7.n nVar) {
        v4Var.getClass();
        this.f6311c = v4Var;
        nVar.getClass();
        this.d = nVar;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [b7.n, java.lang.Object] */
    @Override // d7.z, d7.v4
    public final int add(int i6, Object obj) {
        ?? r02 = this.d;
        boolean zApply = r02.apply(obj);
        Serializable serializable = (Serializable) r02;
        if (zApply) {
            return this.f6311c.add(i6, obj);
        }
        throw new IllegalArgumentException(b7.b.s("Element %s does not match predicate %s", obj, serializable));
    }

    @Override // d7.v4
    public final int b(int i6, Object obj) {
        d0.d(i6, "occurrences");
        if (i6 == 0) {
            return count(obj);
        }
        if (contains(obj)) {
            return this.f6311c.b(i6, obj);
        }
        return 0;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [b7.n, java.lang.Object] */
    @Override // d7.z
    public final Set c() {
        return d0.l(this.f6311c.elementSet(), this.d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        elementSet().clear();
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [b7.n, java.lang.Object] */
    @Override // d7.v4
    public final int count(Object obj) {
        int iCount = this.f6311c.count(obj);
        if (iCount <= 0 || !this.d.apply(obj)) {
            return 0;
        }
        return iCount;
    }

    @Override // d7.z
    public final Set d() {
        return d0.l(this.f6311c.entrySet(), new x4(this));
    }

    @Override // d7.z
    public final int e() {
        return elementSet().size();
    }

    @Override // d7.z
    public final Iterator f() {
        throw new AssertionError("should never be called");
    }

    @Override // d7.z
    public final Iterator g() {
        throw new AssertionError("should never be called");
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [b7.n, java.lang.Object] */
    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        Iterator it = this.f6311c.iterator();
        ?? r12 = this.d;
        it.getClass();
        r12.getClass();
        return new s0(it, r12);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        long jA = 0;
        while (entrySet().iterator().hasNext()) {
            jA += ((w4) r0.next()).a();
        }
        return r4.b.K(jA);
    }
}
