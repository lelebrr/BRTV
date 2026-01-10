package z3;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class n extends v {

    /* renamed from: a, reason: collision with root package name */
    public final u f11577a;

    /* renamed from: b, reason: collision with root package name */
    public final t f11578b;

    public n(u uVar, t tVar) {
        this.f11577a = uVar;
        this.f11578b = tVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        u uVar = this.f11577a;
        if (uVar != null ? uVar.equals(((n) vVar).f11577a) : ((n) vVar).f11577a == null) {
            t tVar = this.f11578b;
            if (tVar == null) {
                if (((n) vVar).f11578b == null) {
                    return true;
                }
            } else if (tVar.equals(((n) vVar).f11578b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        u uVar = this.f11577a;
        int iHashCode = ((uVar == null ? 0 : uVar.hashCode()) ^ 1000003) * 1000003;
        t tVar = this.f11578b;
        return (tVar != null ? tVar.hashCode() : 0) ^ iHashCode;
    }

    public final String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f11577a + ", mobileSubtype=" + this.f11578b + "}";
    }
}
