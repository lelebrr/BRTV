package m2;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.os.Build;
import okhttp3.Headers;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final Context f8229a;

    /* renamed from: b, reason: collision with root package name */
    public final Bitmap.Config f8230b;

    /* renamed from: c, reason: collision with root package name */
    public final ColorSpace f8231c;
    public final n2.h d;

    /* renamed from: e, reason: collision with root package name */
    public final n2.g f8232e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f8233g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f8234h;

    /* renamed from: i, reason: collision with root package name */
    public final String f8235i;

    /* renamed from: j, reason: collision with root package name */
    public final Headers f8236j;

    /* renamed from: k, reason: collision with root package name */
    public final r f8237k;

    /* renamed from: l, reason: collision with root package name */
    public final o f8238l;

    /* renamed from: m, reason: collision with root package name */
    public final b f8239m;

    /* renamed from: n, reason: collision with root package name */
    public final b f8240n;

    /* renamed from: o, reason: collision with root package name */
    public final b f8241o;

    public m(Context context, Bitmap.Config config, ColorSpace colorSpace, n2.h hVar, n2.g gVar, boolean z7, boolean z10, boolean z11, String str, Headers headers, r rVar, o oVar, b bVar, b bVar2, b bVar3) {
        this.f8229a = context;
        this.f8230b = config;
        this.f8231c = colorSpace;
        this.d = hVar;
        this.f8232e = gVar;
        this.f = z7;
        this.f8233g = z10;
        this.f8234h = z11;
        this.f8235i = str;
        this.f8236j = headers;
        this.f8237k = rVar;
        this.f8238l = oVar;
        this.f8239m = bVar;
        this.f8240n = bVar2;
        this.f8241o = bVar3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof m) {
            m mVar = (m) obj;
            if (j9.i.a(this.f8229a, mVar.f8229a) && this.f8230b == mVar.f8230b && ((Build.VERSION.SDK_INT < 26 || j9.i.a(this.f8231c, mVar.f8231c)) && j9.i.a(this.d, mVar.d) && this.f8232e == mVar.f8232e && this.f == mVar.f && this.f8233g == mVar.f8233g && this.f8234h == mVar.f8234h && j9.i.a(this.f8235i, mVar.f8235i) && j9.i.a(this.f8236j, mVar.f8236j) && j9.i.a(this.f8237k, mVar.f8237k) && j9.i.a(this.f8238l, mVar.f8238l) && this.f8239m == mVar.f8239m && this.f8240n == mVar.f8240n && this.f8241o == mVar.f8241o)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f8230b.hashCode() + (this.f8229a.hashCode() * 31)) * 31;
        ColorSpace colorSpace = this.f8231c;
        int iHashCode2 = (((((((this.f8232e.hashCode() + ((this.d.hashCode() + ((iHashCode + (colorSpace != null ? colorSpace.hashCode() : 0)) * 31)) * 31)) * 31) + (this.f ? 1231 : 1237)) * 31) + (this.f8233g ? 1231 : 1237)) * 31) + (this.f8234h ? 1231 : 1237)) * 31;
        String str = this.f8235i;
        return this.f8241o.hashCode() + ((this.f8240n.hashCode() + ((this.f8239m.hashCode() + ((this.f8238l.f8244a.hashCode() + ((this.f8237k.f8251a.hashCode() + ((this.f8236j.hashCode() + ((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }
}
