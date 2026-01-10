package d7;

import java.util.Arrays;
import java.util.Collection;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e2 extends q1 implements v4 {

    /* renamed from: b, reason: collision with root package name */
    public transient c5 f6129b;

    /* renamed from: c, reason: collision with root package name */
    public transient k2 f6130c;
    public final /* synthetic */ g2 d;

    public e2(g2 g2Var) {
        this.d = g2Var;
    }

    @Override // d7.v4
    public final int add(int i6, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // d7.v4
    public final int b(int i6, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // d7.q1
    public final u1 c() {
        c5 c5Var = this.f6129b;
        if (c5Var != null) {
            return c5Var;
        }
        u1 u1VarC = super.c();
        this.f6129b = (c5) u1VarC;
        return u1VarC;
    }

    @Override // d7.q1, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.d.f.containsKey(obj);
    }

    @Override // d7.v4
    public final int count(Object obj) {
        Collection collection = (Collection) this.d.f.get(obj);
        if (collection == null) {
            return 0;
        }
        return collection.size();
    }

    @Override // d7.q1
    public final int d(Object[] objArr, int i6) {
        s5 it = entrySet().iterator();
        while (it.hasNext()) {
            w4 w4Var = (w4) it.next();
            Arrays.fill(objArr, i6, w4Var.a() + i6, w4Var.b());
            i6 += w4Var.a();
        }
        return i6;
    }

    @Override // d7.v4
    public final Set elementSet() {
        return this.d.f.keySet();
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        return d0.h(this, obj);
    }

    @Override // d7.q1
    public final boolean h() {
        throw null;
    }

    @Override // java.util.Collection
    public final int hashCode() {
        return d0.p(entrySet());
    }

    @Override // d7.q1
    /* renamed from: i */
    public final s5 iterator() {
        return new h2(entrySet().iterator());
    }

    @Override // d7.v4
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public final k2 entrySet() {
        k2 i2Var = this.f6130c;
        if (i2Var == null) {
            i2Var = isEmpty() ? i5.f6179j : new i2(this);
            this.f6130c = i2Var;
        }
        return i2Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.d.f6149g;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return entrySet().toString();
    }
}
