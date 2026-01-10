package m2;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.util.List;
import okhttp3.Headers;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i {
    public final Integer A;
    public final Drawable B;
    public final d C;
    public final c D;

    /* renamed from: a, reason: collision with root package name */
    public final Context f8203a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f8204b;

    /* renamed from: c, reason: collision with root package name */
    public final o2.a f8205c;
    public final Bitmap.Config d;

    /* renamed from: e, reason: collision with root package name */
    public final n2.d f8206e;
    public final List f;

    /* renamed from: g, reason: collision with root package name */
    public final q2.d f8207g;

    /* renamed from: h, reason: collision with root package name */
    public final Headers f8208h;

    /* renamed from: i, reason: collision with root package name */
    public final r f8209i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f8210j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f8211k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f8212l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f8213m;

    /* renamed from: n, reason: collision with root package name */
    public final b f8214n;

    /* renamed from: o, reason: collision with root package name */
    public final b f8215o;

    /* renamed from: p, reason: collision with root package name */
    public final b f8216p;

    /* renamed from: q, reason: collision with root package name */
    public final t9.p f8217q;

    /* renamed from: r, reason: collision with root package name */
    public final t9.p f8218r;

    /* renamed from: s, reason: collision with root package name */
    public final t9.p f8219s;

    /* renamed from: t, reason: collision with root package name */
    public final t9.p f8220t;

    /* renamed from: u, reason: collision with root package name */
    public final androidx.lifecycle.p f8221u;

    /* renamed from: v, reason: collision with root package name */
    public final n2.i f8222v;

    /* renamed from: w, reason: collision with root package name */
    public final n2.g f8223w;

    /* renamed from: x, reason: collision with root package name */
    public final o f8224x;

    /* renamed from: y, reason: collision with root package name */
    public final Integer f8225y;

    /* renamed from: z, reason: collision with root package name */
    public final Drawable f8226z;

    public i(Context context, Object obj, o2.a aVar, Bitmap.Config config, n2.d dVar, List list, q2.d dVar2, Headers headers, r rVar, boolean z7, boolean z10, boolean z11, boolean z12, b bVar, b bVar2, b bVar3, t9.p pVar, t9.p pVar2, t9.p pVar3, t9.p pVar4, androidx.lifecycle.p pVar5, n2.i iVar, n2.g gVar, o oVar, Integer num, Drawable drawable, Integer num2, Drawable drawable2, d dVar3, c cVar) {
        this.f8203a = context;
        this.f8204b = obj;
        this.f8205c = aVar;
        this.d = config;
        this.f8206e = dVar;
        this.f = list;
        this.f8207g = dVar2;
        this.f8208h = headers;
        this.f8209i = rVar;
        this.f8210j = z7;
        this.f8211k = z10;
        this.f8212l = z11;
        this.f8213m = z12;
        this.f8214n = bVar;
        this.f8215o = bVar2;
        this.f8216p = bVar3;
        this.f8217q = pVar;
        this.f8218r = pVar2;
        this.f8219s = pVar3;
        this.f8220t = pVar4;
        this.f8221u = pVar5;
        this.f8222v = iVar;
        this.f8223w = gVar;
        this.f8224x = oVar;
        this.f8225y = num;
        this.f8226z = drawable;
        this.A = num2;
        this.B = drawable2;
        this.C = dVar3;
        this.D = cVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            if (j9.i.a(this.f8203a, iVar.f8203a) && this.f8204b.equals(iVar.f8204b) && j9.i.a(this.f8205c, iVar.f8205c) && j9.i.a(null, null) && j9.i.a(null, null) && j9.i.a(null, null) && this.d == iVar.d && ((Build.VERSION.SDK_INT < 26 || j9.i.a(null, null)) && this.f8206e == iVar.f8206e && j9.i.a(null, null) && j9.i.a(null, null) && j9.i.a(this.f, iVar.f) && j9.i.a(this.f8207g, iVar.f8207g) && j9.i.a(this.f8208h, iVar.f8208h) && this.f8209i.equals(iVar.f8209i) && this.f8210j == iVar.f8210j && this.f8211k == iVar.f8211k && this.f8212l == iVar.f8212l && this.f8213m == iVar.f8213m && this.f8214n == iVar.f8214n && this.f8215o == iVar.f8215o && this.f8216p == iVar.f8216p && j9.i.a(this.f8217q, iVar.f8217q) && j9.i.a(this.f8218r, iVar.f8218r) && j9.i.a(this.f8219s, iVar.f8219s) && j9.i.a(this.f8220t, iVar.f8220t) && j9.i.a(null, null) && j9.i.a(this.f8225y, iVar.f8225y) && j9.i.a(this.f8226z, iVar.f8226z) && j9.i.a(this.A, iVar.A) && j9.i.a(this.B, iVar.B) && j9.i.a(null, null) && j9.i.a(null, null) && j9.i.a(this.f8221u, iVar.f8221u) && this.f8222v.equals(iVar.f8222v) && this.f8223w == iVar.f8223w && this.f8224x.equals(iVar.f8224x) && this.C.equals(iVar.C) && j9.i.a(this.D, iVar.D))) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f8204b.hashCode() + (this.f8203a.hashCode() * 31)) * 31;
        o2.a aVar = this.f8205c;
        int iHashCode2 = (this.f8224x.f8244a.hashCode() + ((this.f8223w.hashCode() + ((this.f8222v.hashCode() + ((this.f8221u.hashCode() + ((this.f8220t.hashCode() + ((this.f8219s.hashCode() + ((this.f8218r.hashCode() + ((this.f8217q.hashCode() + ((this.f8216p.hashCode() + ((this.f8215o.hashCode() + ((this.f8214n.hashCode() + ((((((((((this.f8209i.f8251a.hashCode() + ((this.f8208h.hashCode() + ((this.f8207g.hashCode() + ((this.f.hashCode() + ((this.f8206e.hashCode() + ((this.d.hashCode() + ((iHashCode + (aVar != null ? aVar.f8548b.hashCode() : 0)) * 923521)) * 961)) * 29791)) * 31)) * 31)) * 31)) * 31) + (this.f8210j ? 1231 : 1237)) * 31) + (this.f8211k ? 1231 : 1237)) * 31) + (this.f8212l ? 1231 : 1237)) * 31) + (this.f8213m ? 1231 : 1237)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 961;
        Integer num = this.f8225y;
        int iHashCode3 = (iHashCode2 + (num != null ? num.hashCode() : 0)) * 31;
        Drawable drawable = this.f8226z;
        int iHashCode4 = (iHashCode3 + (drawable != null ? drawable.hashCode() : 0)) * 31;
        Integer num2 = this.A;
        int iHashCode5 = (iHashCode4 + (num2 != null ? num2.hashCode() : 0)) * 31;
        Drawable drawable2 = this.B;
        return this.D.hashCode() + ((this.C.hashCode() + ((iHashCode5 + (drawable2 != null ? drawable2.hashCode() : 0)) * 29791)) * 31);
    }
}
