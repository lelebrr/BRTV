package j9;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class h extends c implements g, p9.a, w8.a {

    /* renamed from: g, reason: collision with root package name */
    public final int f7470g;

    /* renamed from: h, reason: collision with root package name */
    public final int f7471h;

    public h(int i6, Class cls, String str, String str2, int i10) {
        super(b.f7462a, cls, str, str2, (i10 & 1) == 1);
        this.f7470g = i6;
        this.f7471h = 0;
    }

    public final p9.a b() {
        o.f7477a.getClass();
        return this;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            return this.d.equals(hVar.d) && this.f7466e.equals(hVar.f7466e) && this.f7471h == hVar.f7471h && this.f7470g == hVar.f7470g && this.f7464b.equals(hVar.f7464b) && a().equals(hVar.a());
        }
        if (!(obj instanceof h)) {
            return false;
        }
        p9.a aVar = this.f7463a;
        if (aVar == null) {
            b();
            this.f7463a = this;
            aVar = this;
        }
        return obj.equals(aVar);
    }

    @Override // j9.g
    public final int getArity() {
        return this.f7470g;
    }

    public final int hashCode() {
        a();
        return this.f7466e.hashCode() + a.e.h(a().hashCode() * 31, 31, this.d);
    }

    public final String toString() {
        p9.a aVar = this.f7463a;
        if (aVar == null) {
            b();
            this.f7463a = this;
            aVar = this;
        }
        if (aVar != this) {
            return aVar.toString();
        }
        String str = this.d;
        return "<init>".equals(str) ? "constructor (Kotlin reflection is not available)" : a.e.r("function ", str, " (Kotlin reflection is not available)");
    }
}
