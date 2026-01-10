package r3;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public Class f9506a;

    /* renamed from: b, reason: collision with root package name */
    public Class f9507b;

    /* renamed from: c, reason: collision with root package name */
    public Class f9508c;

    public l(Class cls, Class cls2, Class cls3) {
        this.f9506a = cls;
        this.f9507b = cls2;
        this.f9508c = cls3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l.class != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        return this.f9506a.equals(lVar.f9506a) && this.f9507b.equals(lVar.f9507b) && n.b(this.f9508c, lVar.f9508c);
    }

    public final int hashCode() {
        int iHashCode = (this.f9507b.hashCode() + (this.f9506a.hashCode() * 31)) * 31;
        Class cls = this.f9508c;
        return iHashCode + (cls != null ? cls.hashCode() : 0);
    }

    public final String toString() {
        return "MultiClassKey{first=" + this.f9506a + ", second=" + this.f9507b + '}';
    }
}
