package x2;

import java.security.MessageDigest;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class d implements v2.e {

    /* renamed from: b, reason: collision with root package name */
    public final v2.e f10862b;

    /* renamed from: c, reason: collision with root package name */
    public final v2.e f10863c;

    public d(v2.e eVar, v2.e eVar2) {
        this.f10862b = eVar;
        this.f10863c = eVar2;
    }

    @Override // v2.e
    public final void a(MessageDigest messageDigest) {
        this.f10862b.a(messageDigest);
        this.f10863c.a(messageDigest);
    }

    @Override // v2.e
    public final boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f10862b.equals(dVar.f10862b) && this.f10863c.equals(dVar.f10863c);
    }

    @Override // v2.e
    public final int hashCode() {
        return this.f10863c.hashCode() + (this.f10862b.hashCode() * 31);
    }

    public final String toString() {
        return "DataCacheKey{sourceKey=" + this.f10862b + ", signature=" + this.f10863c + '}';
    }
}
