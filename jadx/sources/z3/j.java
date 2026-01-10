package z3;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class j extends q {

    /* renamed from: a, reason: collision with root package name */
    public final h f11566a;

    public j(h hVar) {
        this.f11566a = hVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        Object obj2 = p.f11579a;
        ((j) qVar).getClass();
        return obj2.equals(obj2) && this.f11566a.equals(((j) qVar).f11566a);
    }

    public final int hashCode() {
        return ((p.f11579a.hashCode() ^ 1000003) * 1000003) ^ this.f11566a.hashCode();
    }

    public final String toString() {
        return "ClientInfo{clientType=" + p.f11579a + ", androidClientInfo=" + this.f11566a + "}";
    }
}
