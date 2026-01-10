package v2;

import java.security.MessageDigest;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class h implements e {

    /* renamed from: b, reason: collision with root package name */
    public final r3.b f10665b = new r3.b(0);

    @Override // v2.e
    public final void a(MessageDigest messageDigest) {
        int i6 = 0;
        while (true) {
            r3.b bVar = this.f10665b;
            if (i6 >= bVar.f8858c) {
                return;
            }
            g gVar = (g) bVar.f(i6);
            Object objJ = this.f10665b.j(i6);
            f fVar = gVar.f10663b;
            if (gVar.d == null) {
                gVar.d = gVar.f10664c.getBytes(e.f10660a);
            }
            fVar.a(gVar.d, objJ, messageDigest);
            i6++;
        }
    }

    public final Object c(g gVar) {
        r3.b bVar = this.f10665b;
        return bVar.containsKey(gVar) ? bVar.get(gVar) : gVar.f10662a;
    }

    @Override // v2.e
    public final boolean equals(Object obj) {
        if (obj instanceof h) {
            return this.f10665b.equals(((h) obj).f10665b);
        }
        return false;
    }

    @Override // v2.e
    public final int hashCode() {
        return this.f10665b.hashCode();
    }

    public final String toString() {
        return "Options{values=" + this.f10665b + '}';
    }
}
