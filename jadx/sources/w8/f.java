package w8;

import java.io.Serializable;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class f implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Object f10825a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f10826b;

    public f(Object obj, Object obj2) {
        this.f10825a = obj;
        this.f10826b = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return j9.i.a(this.f10825a, fVar.f10825a) && j9.i.a(this.f10826b, fVar.f10826b);
    }

    public final int hashCode() {
        Object obj = this.f10825a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.f10826b;
        return iHashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.f10825a + ", " + this.f10826b + ')';
    }
}
