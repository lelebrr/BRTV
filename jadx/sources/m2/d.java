package m2;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final n2.g f8176a;

    /* renamed from: b, reason: collision with root package name */
    public final q2.d f8177b;

    /* renamed from: c, reason: collision with root package name */
    public final b f8178c;
    public final b d;

    public d(n2.g gVar, q2.d dVar, b bVar, b bVar2) {
        this.f8176a = gVar;
        this.f8177b = dVar;
        this.f8178c = bVar;
        this.d = bVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            dVar.getClass();
            if (j9.i.a(null, null) && j9.i.a(null, null) && this.f8176a == dVar.f8176a && j9.i.a(null, null) && j9.i.a(null, null) && j9.i.a(null, null) && j9.i.a(null, null) && j9.i.a(this.f8177b, dVar.f8177b) && j9.i.a(null, null) && j9.i.a(null, null) && this.f8178c == dVar.f8178c && this.d == dVar.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        n2.g gVar = this.f8176a;
        int iHashCode = (gVar != null ? gVar.hashCode() : 0) * 28629151;
        q2.d dVar = this.f8177b;
        int iHashCode2 = (iHashCode + (dVar != null ? dVar.hashCode() : 0)) * 28629151;
        b bVar = this.f8178c;
        int iHashCode3 = (iHashCode2 + (bVar != null ? bVar.hashCode() : 0)) * 31;
        b bVar2 = this.d;
        return (iHashCode3 + (bVar2 != null ? bVar2.hashCode() : 0)) * 31;
    }
}
