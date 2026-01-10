package m0;

import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final Object f8111a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f8112b;

    public b(Object obj, Object obj2) {
        this.f8111a = obj;
        this.f8112b = obj2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Objects.equals(bVar.f8111a, this.f8111a) && Objects.equals(bVar.f8112b, this.f8112b);
    }

    public final int hashCode() {
        Object obj = this.f8111a;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f8112b;
        return (obj2 != null ? obj2.hashCode() : 0) ^ iHashCode;
    }

    public final String toString() {
        return "Pair{" + this.f8111a + " " + this.f8112b + "}";
    }
}
