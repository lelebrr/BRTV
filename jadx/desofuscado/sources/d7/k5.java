package d7;

import java.io.Serializable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k5 extends b5 implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final b5 f6204a;

    public k5(b5 b5Var) {
        this.f6204a = b5Var;
    }

    @Override // d7.b5
    public final b5 a() {
        return this.f6204a;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f6204a.compare(obj2, obj);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof k5) {
            return this.f6204a.equals(((k5) obj).f6204a);
        }
        return false;
    }

    public final int hashCode() {
        return -this.f6204a.hashCode();
    }

    public final String toString() {
        return this.f6204a + ".reverse()";
    }
}
