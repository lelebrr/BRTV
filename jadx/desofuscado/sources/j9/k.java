package j9;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k implements d {

    /* renamed from: a, reason: collision with root package name */
    public final Class f7473a;

    public k(Class cls) {
        this.f7473a = cls;
    }

    @Override // j9.d
    public final Class a() {
        return this.f7473a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof k) {
            if (i.a(this.f7473a, ((k) obj).f7473a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f7473a.hashCode();
    }

    public final String toString() {
        return this.f7473a + " (Kotlin reflection is not available)";
    }
}
