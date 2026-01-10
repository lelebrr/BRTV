package z4;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final v4.f f11610a;

    public g(v4.f fVar) {
        this.f11610a = fVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            return this.f11610a == ((g) obj).f11610a;
        }
        return false;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f11610a) * 31) + 1520230490;
    }
}
