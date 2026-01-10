package m2;

import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.lifecycle.w;
import java.util.LinkedHashMap;
import java.util.List;
import okhttp3.Headers;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public final Context f8184a;

    /* renamed from: b, reason: collision with root package name */
    public c f8185b;

    /* renamed from: c, reason: collision with root package name */
    public Object f8186c;
    public o2.a d;

    /* renamed from: e, reason: collision with root package name */
    public List f8187e;
    public q2.d f;

    /* renamed from: g, reason: collision with root package name */
    public final Headers.Builder f8188g;

    /* renamed from: h, reason: collision with root package name */
    public final LinkedHashMap f8189h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f8190i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f8191j;

    /* renamed from: k, reason: collision with root package name */
    public b f8192k;

    /* renamed from: l, reason: collision with root package name */
    public b f8193l;

    /* renamed from: m, reason: collision with root package name */
    public final n f8194m;

    /* renamed from: n, reason: collision with root package name */
    public Integer f8195n;

    /* renamed from: o, reason: collision with root package name */
    public Drawable f8196o;

    /* renamed from: p, reason: collision with root package name */
    public Integer f8197p;

    /* renamed from: q, reason: collision with root package name */
    public Drawable f8198q;

    /* renamed from: r, reason: collision with root package name */
    public n2.g f8199r;

    /* renamed from: s, reason: collision with root package name */
    public androidx.lifecycle.p f8200s;

    /* renamed from: t, reason: collision with root package name */
    public n2.i f8201t;

    /* renamed from: u, reason: collision with root package name */
    public n2.g f8202u;

    public h(Context context) {
        this.f8184a = context;
        this.f8185b = r2.d.f9465a;
        this.f8186c = null;
        this.d = null;
        this.f8187e = x8.r.f11098a;
        this.f = null;
        this.f8188g = null;
        this.f8189h = null;
        this.f8190i = true;
        this.f8191j = true;
        this.f8192k = null;
        this.f8193l = null;
        this.f8194m = null;
        this.f8195n = null;
        this.f8196o = null;
        this.f8197p = null;
        this.f8198q = null;
        this.f8199r = null;
        this.f8200s = null;
        this.f8201t = null;
        this.f8202u = null;
    }

    public final i a() {
        t9.p pVar;
        n2.g gVar;
        ImageView.ScaleType scaleType;
        Object obj = this.f8186c;
        if (obj == null) {
            obj = k.f8227b;
        }
        Object obj2 = obj;
        o2.a aVar = this.d;
        c cVar = this.f8185b;
        Bitmap.Config config = cVar.f8167g;
        n2.d dVar = cVar.f;
        List list = this.f8187e;
        q2.d dVar2 = this.f;
        q2.d dVar3 = dVar2 == null ? cVar.f8166e : dVar2;
        Headers.Builder builder = this.f8188g;
        Headers headersBuild = builder != null ? builder.build() : null;
        if (headersBuild == null) {
            headersBuild = r2.f.f9469c;
        } else {
            Bitmap.Config[] configArr = r2.f.f9467a;
        }
        Headers headers = headersBuild;
        LinkedHashMap linkedHashMap = this.f8189h;
        r rVar = linkedHashMap != null ? new r(o9.d.K(linkedHashMap)) : null;
        r rVar2 = rVar == null ? r.f8250b : rVar;
        c cVar2 = this.f8185b;
        boolean z7 = cVar2.f8168h;
        boolean z10 = cVar2.f8169i;
        b bVar = this.f8192k;
        if (bVar == null) {
            bVar = cVar2.f8173m;
        }
        b bVar2 = bVar;
        b bVar3 = this.f8193l;
        if (bVar3 == null) {
            bVar3 = cVar2.f8174n;
        }
        b bVar4 = bVar3;
        b bVar5 = cVar2.f8175o;
        t9.p pVar2 = cVar2.f8163a;
        t9.p pVar3 = cVar2.f8164b;
        t9.p pVar4 = cVar2.f8165c;
        t9.p pVar5 = cVar2.d;
        androidx.lifecycle.p pVarF = this.f8200s;
        Context context = this.f8184a;
        if (pVarF == null) {
            o2.a aVar2 = this.d;
            pVar = pVar3;
            Object context2 = aVar2 instanceof o2.a ? aVar2.f8548b.getContext() : context;
            while (true) {
                if (context2 instanceof w) {
                    pVarF = ((w) context2).f();
                    break;
                }
                if (!(context2 instanceof ContextWrapper)) {
                    pVarF = null;
                    break;
                }
                context2 = ((ContextWrapper) context2).getBaseContext();
            }
            if (pVarF == null) {
                pVarF = g.f8182b;
            }
        } else {
            pVar = pVar3;
        }
        androidx.lifecycle.p pVar6 = pVarF;
        n2.i cVar3 = this.f8201t;
        if (cVar3 == null) {
            o2.a aVar3 = this.d;
            if (aVar3 instanceof o2.a) {
                ImageView imageView = aVar3.f8548b;
                if ((imageView instanceof ImageView) && ((scaleType = imageView.getScaleType()) == ImageView.ScaleType.CENTER || scaleType == ImageView.ScaleType.MATRIX)) {
                    n2.h hVar = n2.h.f8384c;
                    cVar3 = new n2.e();
                } else {
                    cVar3 = new n2.f(imageView, true);
                }
            } else {
                cVar3 = new n2.c(context);
            }
        }
        n2.i iVar = cVar3;
        n2.g gVar2 = this.f8199r;
        if (gVar2 == null && (gVar2 = this.f8202u) == null) {
            o2.a aVar4 = this.d;
            if (!(aVar4 instanceof o2.a)) {
                aVar4 = null;
            }
            ImageView imageView2 = aVar4 != null ? aVar4.f8548b : null;
            boolean z11 = imageView2 instanceof ImageView;
            n2.g gVar3 = n2.g.f8382b;
            if (z11) {
                Bitmap.Config[] configArr2 = r2.f.f9467a;
                ImageView.ScaleType scaleType2 = imageView2.getScaleType();
                int i6 = scaleType2 == null ? -1 : r2.e.f9466a[scaleType2.ordinal()];
                if (i6 != 1 && i6 != 2 && i6 != 3 && i6 != 4) {
                    gVar3 = n2.g.f8381a;
                }
            }
            gVar = gVar3;
        } else {
            gVar = gVar2;
        }
        n nVar = this.f8194m;
        o oVar = nVar != null ? new o(o9.d.K(nVar.f8242a)) : null;
        if (oVar == null) {
            oVar = o.f8243b;
        }
        return new i(this.f8184a, obj2, aVar, config, dVar, list, dVar3, headers, rVar2, this.f8190i, z7, z10, this.f8191j, bVar2, bVar4, bVar5, pVar2, pVar, pVar4, pVar5, pVar6, iVar, gVar, oVar, this.f8195n, this.f8196o, this.f8197p, this.f8198q, new d(this.f8199r, this.f, this.f8192k, this.f8193l), this.f8185b);
    }

    public h(i iVar, Context context) {
        this.f8184a = context;
        this.f8185b = iVar.D;
        this.f8186c = iVar.f8204b;
        this.d = iVar.f8205c;
        d dVar = iVar.C;
        this.f8187e = iVar.f;
        this.f = dVar.f8177b;
        this.f8188g = iVar.f8208h.newBuilder();
        this.f8189h = x8.u.s(iVar.f8209i.f8251a);
        this.f8190i = iVar.f8210j;
        this.f8191j = iVar.f8213m;
        this.f8192k = dVar.f8178c;
        this.f8193l = dVar.d;
        this.f8194m = new n(iVar.f8224x);
        this.f8195n = iVar.f8225y;
        this.f8196o = iVar.f8226z;
        this.f8197p = iVar.A;
        this.f8198q = iVar.B;
        this.f8199r = dVar.f8176a;
        if (iVar.f8203a == context) {
            this.f8200s = iVar.f8221u;
            this.f8201t = iVar.f8222v;
            this.f8202u = iVar.f8223w;
        } else {
            this.f8200s = null;
            this.f8201t = null;
            this.f8202u = null;
        }
    }
}
