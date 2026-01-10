package x9;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final /* synthetic */ class i extends j9.c implements i9.a, p9.a {

    /* renamed from: g, reason: collision with root package name */
    public final boolean f11117g;

    public i(j jVar) {
        super(jVar, t9.u.class, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;", true);
        this.f11117g = false;
    }

    public final p9.a b() {
        if (!this.f11117g) {
            p9.a aVar = this.f7463a;
            if (aVar != null) {
                return aVar;
            }
            j9.o.f7477a.getClass();
            this.f7463a = this;
        }
        return this;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            return a().equals(iVar.a()) && this.d.equals(iVar.d) && this.f7466e.equals(iVar.f7466e) && this.f7464b.equals(iVar.f7464b);
        }
        if (obj instanceof i) {
            return obj.equals(b());
        }
        return false;
    }

    public final int hashCode() {
        return this.f7466e.hashCode() + a.e.h(a().hashCode() * 31, 31, this.d);
    }

    @Override // i9.a
    public final Object invoke() {
        return this.f7464b.getClass().getSimpleName();
    }

    public final String toString() {
        p9.a aVarB = b();
        return aVarB != this ? aVarB.toString() : a.e.t(new StringBuilder("property "), this.d, " (Kotlin reflection is not available)");
    }
}
