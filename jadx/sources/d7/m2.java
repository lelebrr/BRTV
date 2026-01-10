package d7;

import java.util.Iterator;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m2 extends k2 {
    public final /* synthetic */ int d = 0;

    /* renamed from: e, reason: collision with root package name */
    public final transient Object f6217e;

    public m2(n2 n2Var) {
        this.f6217e = n2Var;
    }

    @Override // d7.k2, d7.q1
    public u1 c() {
        switch (this.d) {
            case 1:
                return u1.r(this.f6217e);
            default:
                return super.c();
        }
    }

    @Override // d7.q1, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        switch (this.d) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return ((n2) this.f6217e).g(entry.getKey(), entry.getValue());
            default:
                return this.f6217e.equals(obj);
        }
    }

    @Override // d7.q1
    public int d(Object[] objArr, int i6) {
        switch (this.d) {
            case 1:
                objArr[i6] = this.f6217e;
                return i6 + 1;
            default:
                return super.d(objArr, i6);
        }
    }

    @Override // d7.q1
    public final boolean h() {
        switch (this.d) {
        }
        return false;
    }

    @Override // d7.k2, java.util.Collection, java.util.Set
    public int hashCode() {
        switch (this.d) {
            case 1:
                return this.f6217e.hashCode();
            default:
                return super.hashCode();
        }
    }

    @Override // d7.q1
    /* renamed from: i */
    public final s5 iterator() {
        switch (this.d) {
            case 0:
                n2 n2Var = (n2) this.f6217e;
                n2Var.getClass();
                return new a2(n2Var);
            default:
                return new v2(this.f6217e);
        }
    }

    @Override // d7.q1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        switch (this.d) {
            case 0:
                n2 n2Var = (n2) this.f6217e;
                n2Var.getClass();
                return new a2(n2Var);
            default:
                return super.iterator();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        switch (this.d) {
            case 0:
                return ((n2) this.f6217e).f6149g;
            default:
                return 1;
        }
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        switch (this.d) {
            case 1:
                return "[" + this.f6217e.toString() + ']';
            default:
                return super.toString();
        }
    }

    public m2(Object obj) {
        obj.getClass();
        this.f6217e = obj;
    }
}
