package b7;

import java.io.Serializable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t implements n, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Object f3318a;

    public t(n nVar) {
        this.f3318a = nVar;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [b7.n, java.lang.Object] */
    @Override // b7.n
    public final boolean apply(Object obj) {
        return !this.f3318a.apply(obj);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [b7.n, java.lang.Object] */
    @Override // b7.n
    public final boolean equals(Object obj) {
        if (obj instanceof t) {
            return this.f3318a.equals(((t) obj).f3318a);
        }
        return false;
    }

    public final int hashCode() {
        return ~this.f3318a.hashCode();
    }

    public final String toString() {
        return "Predicates.not(" + this.f3318a + ")";
    }
}
