package m2;

import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r {

    /* renamed from: b, reason: collision with root package name */
    public static final r f8250b = new r(x8.s.f11099a);

    /* renamed from: a, reason: collision with root package name */
    public final Map f8251a;

    public r(Map map) {
        this.f8251a = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof r) {
            if (j9.i.a(this.f8251a, ((r) obj).f8251a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f8251a.hashCode();
    }

    public final String toString() {
        return "Tags(tags=" + this.f8251a + ')';
    }
}
