package b3;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public final String f3208a;

    public n(String str) {
        this.f3208a = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof n) {
            return this.f3208a.equals(((n) obj).f3208a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f3208a.hashCode();
    }

    public final String toString() {
        return a.e.t(new StringBuilder("StringHeaderFactory{value='"), this.f3208a, "'}");
    }
}
