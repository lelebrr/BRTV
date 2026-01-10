package x2;

import java.security.MessageDigest;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class q implements v2.e {

    /* renamed from: b, reason: collision with root package name */
    public final Object f10947b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10948c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final Class f10949e;
    public final Class f;

    /* renamed from: g, reason: collision with root package name */
    public final v2.e f10950g;

    /* renamed from: h, reason: collision with root package name */
    public final r3.b f10951h;

    /* renamed from: i, reason: collision with root package name */
    public final v2.h f10952i;

    /* renamed from: j, reason: collision with root package name */
    public int f10953j;

    public q(Object obj, v2.e eVar, int i6, int i10, r3.b bVar, Class cls, Class cls2, v2.h hVar) {
        r3.f.c(obj, "Argument must not be null");
        this.f10947b = obj;
        this.f10950g = eVar;
        this.f10948c = i6;
        this.d = i10;
        r3.f.c(bVar, "Argument must not be null");
        this.f10951h = bVar;
        r3.f.c(cls, "Resource class must not be null");
        this.f10949e = cls;
        r3.f.c(cls2, "Transcode class must not be null");
        this.f = cls2;
        r3.f.c(hVar, "Argument must not be null");
        this.f10952i = hVar;
    }

    @Override // v2.e
    public final void a(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // v2.e
    public final boolean equals(Object obj) {
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return this.f10947b.equals(qVar.f10947b) && this.f10950g.equals(qVar.f10950g) && this.d == qVar.d && this.f10948c == qVar.f10948c && this.f10951h.equals(qVar.f10951h) && this.f10949e.equals(qVar.f10949e) && this.f.equals(qVar.f) && this.f10952i.equals(qVar.f10952i);
    }

    @Override // v2.e
    public final int hashCode() {
        if (this.f10953j == 0) {
            int iHashCode = this.f10947b.hashCode();
            this.f10953j = iHashCode;
            int iHashCode2 = ((((this.f10950g.hashCode() + (iHashCode * 31)) * 31) + this.f10948c) * 31) + this.d;
            this.f10953j = iHashCode2;
            int iHashCode3 = this.f10951h.hashCode() + (iHashCode2 * 31);
            this.f10953j = iHashCode3;
            int iHashCode4 = this.f10949e.hashCode() + (iHashCode3 * 31);
            this.f10953j = iHashCode4;
            int iHashCode5 = this.f.hashCode() + (iHashCode4 * 31);
            this.f10953j = iHashCode5;
            this.f10953j = this.f10952i.f10665b.hashCode() + (iHashCode5 * 31);
        }
        return this.f10953j;
    }

    public final String toString() {
        return "EngineKey{model=" + this.f10947b + ", width=" + this.f10948c + ", height=" + this.d + ", resourceClass=" + this.f10949e + ", transcodeClass=" + this.f + ", signature=" + this.f10950g + ", hashCode=" + this.f10953j + ", transformations=" + this.f10951h + ", options=" + this.f10952i + '}';
    }
}
