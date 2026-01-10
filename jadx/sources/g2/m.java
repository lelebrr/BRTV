package g2;

import d2.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m extends e {

    /* renamed from: a, reason: collision with root package name */
    public final n f7090a;

    /* renamed from: b, reason: collision with root package name */
    public final String f7091b;

    /* renamed from: c, reason: collision with root package name */
    public final d2.f f7092c;

    public m(n nVar, String str, d2.f fVar) {
        this.f7090a = nVar;
        this.f7091b = str;
        this.f7092c = fVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof m) {
            m mVar = (m) obj;
            if (j9.i.a(this.f7090a, mVar.f7090a) && j9.i.a(this.f7091b, mVar.f7091b) && this.f7092c == mVar.f7092c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f7090a.hashCode() * 31;
        String str = this.f7091b;
        return this.f7092c.hashCode() + ((iHashCode + (str != null ? str.hashCode() : 0)) * 31);
    }
}
