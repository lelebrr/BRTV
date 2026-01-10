package b7;

import d7.i4;
import java.io.Serializable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p implements n, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Object f3313a;

    /* renamed from: b, reason: collision with root package name */
    public final i4 f3314b;

    public p(n nVar, i4 i4Var) {
        nVar.getClass();
        this.f3313a = nVar;
        this.f3314b = i4Var;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [b7.n, java.lang.Object] */
    @Override // b7.n
    public final boolean apply(Object obj) {
        return this.f3313a.apply(this.f3314b.apply(obj));
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [b7.n, java.lang.Object] */
    @Override // b7.n
    public final boolean equals(Object obj) {
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f3314b.equals(pVar.f3314b) && this.f3313a.equals(pVar.f3313a);
    }

    public final int hashCode() {
        return this.f3314b.hashCode() ^ this.f3313a.hashCode();
    }

    public final String toString() {
        return this.f3313a + "(" + this.f3314b + ")";
    }
}
