package d7;

import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e5 extends k2 {
    public final transient z1 d;

    /* renamed from: e, reason: collision with root package name */
    public final transient Object[] f6134e;
    public final transient int f;

    public e5(z1 z1Var, Object[] objArr, int i6) {
        this.d = z1Var;
        this.f6134e = objArr;
        this.f = i6;
    }

    @Override // d7.q1, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        Object value = entry.getValue();
        return value != null && value.equals(this.d.get(key));
    }

    @Override // d7.q1
    public final int d(Object[] objArr, int i6) {
        return c().d(objArr, i6);
    }

    @Override // d7.q1
    public final boolean h() {
        return true;
    }

    @Override // d7.q1
    /* renamed from: i */
    public final s5 iterator() {
        return c().listIterator(0);
    }

    @Override // d7.k2
    public final u1 m() {
        return new d5(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f;
    }
}
