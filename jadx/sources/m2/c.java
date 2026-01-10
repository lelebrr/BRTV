package m2;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import t9.b0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final t9.p f8163a;

    /* renamed from: b, reason: collision with root package name */
    public final t9.p f8164b;

    /* renamed from: c, reason: collision with root package name */
    public final t9.p f8165c;
    public final t9.p d;

    /* renamed from: e, reason: collision with root package name */
    public final q2.d f8166e;
    public final n2.d f;

    /* renamed from: g, reason: collision with root package name */
    public final Bitmap.Config f8167g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f8168h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f8169i;

    /* renamed from: j, reason: collision with root package name */
    public final Drawable f8170j;

    /* renamed from: k, reason: collision with root package name */
    public final Drawable f8171k;

    /* renamed from: l, reason: collision with root package name */
    public final Drawable f8172l;

    /* renamed from: m, reason: collision with root package name */
    public final b f8173m;

    /* renamed from: n, reason: collision with root package name */
    public final b f8174n;

    /* renamed from: o, reason: collision with root package name */
    public final b f8175o;

    public c() {
        z9.d dVar = b0.f10180a;
        u9.c cVar = x9.n.f11128a.f;
        z9.c cVar2 = b0.f10181b;
        q2.b bVar = q2.d.f9194a;
        n2.d dVar2 = n2.d.f8377a;
        Bitmap.Config config = r2.f.f9468b;
        b bVar2 = b.ENABLED;
        this.f8163a = cVar;
        this.f8164b = cVar2;
        this.f8165c = cVar2;
        this.d = cVar2;
        this.f8166e = bVar;
        this.f = dVar2;
        this.f8167g = config;
        this.f8168h = true;
        this.f8169i = false;
        this.f8170j = null;
        this.f8171k = null;
        this.f8172l = null;
        this.f8173m = bVar2;
        this.f8174n = bVar2;
        this.f8175o = bVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            if (j9.i.a(this.f8163a, cVar.f8163a) && j9.i.a(this.f8164b, cVar.f8164b) && j9.i.a(this.f8165c, cVar.f8165c) && j9.i.a(this.d, cVar.d) && j9.i.a(this.f8166e, cVar.f8166e) && this.f == cVar.f && this.f8167g == cVar.f8167g && this.f8168h == cVar.f8168h && this.f8169i == cVar.f8169i && j9.i.a(this.f8170j, cVar.f8170j) && j9.i.a(this.f8171k, cVar.f8171k) && j9.i.a(this.f8172l, cVar.f8172l) && this.f8173m == cVar.f8173m && this.f8174n == cVar.f8174n && this.f8175o == cVar.f8175o) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (((((this.f8167g.hashCode() + ((this.f.hashCode() + ((this.f8166e.hashCode() + ((this.d.hashCode() + ((this.f8165c.hashCode() + ((this.f8164b.hashCode() + (this.f8163a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31) + (this.f8168h ? 1231 : 1237)) * 31) + (this.f8169i ? 1231 : 1237)) * 31;
        Drawable drawable = this.f8170j;
        int iHashCode2 = (iHashCode + (drawable != null ? drawable.hashCode() : 0)) * 31;
        Drawable drawable2 = this.f8171k;
        int iHashCode3 = (iHashCode2 + (drawable2 != null ? drawable2.hashCode() : 0)) * 31;
        Drawable drawable3 = this.f8172l;
        return this.f8175o.hashCode() + ((this.f8174n.hashCode() + ((this.f8173m.hashCode() + ((iHashCode3 + (drawable3 != null ? drawable3.hashCode() : 0)) * 31)) * 31)) * 31);
    }
}
