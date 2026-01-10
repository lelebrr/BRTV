package n2;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: c, reason: collision with root package name */
    public static final h f8384c;

    /* renamed from: a, reason: collision with root package name */
    public final r4.b f8385a;

    /* renamed from: b, reason: collision with root package name */
    public final r4.b f8386b;

    static {
        b bVar = b.f8375c;
        f8384c = new h(bVar, bVar);
    }

    public h(r4.b bVar, r4.b bVar2) {
        this.f8385a = bVar;
        this.f8386b = bVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return j9.i.a(this.f8385a, hVar.f8385a) && j9.i.a(this.f8386b, hVar.f8386b);
    }

    public final int hashCode() {
        return this.f8386b.hashCode() + (this.f8385a.hashCode() * 31);
    }

    public final String toString() {
        return "Size(width=" + this.f8385a + ", height=" + this.f8386b + ')';
    }
}
