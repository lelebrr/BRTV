package n3;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import com.p2elite.brtv2.R;
import e3.s;
import r3.n;
import v2.h;
import v2.l;
import x2.k;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public int f8393a;
    public Drawable d;

    /* renamed from: e, reason: collision with root package name */
    public int f8396e;
    public g0.g f;

    /* renamed from: g, reason: collision with root package name */
    public int f8397g;

    /* renamed from: l, reason: collision with root package name */
    public boolean f8402l;

    /* renamed from: p, reason: collision with root package name */
    public boolean f8406p;

    /* renamed from: q, reason: collision with root package name */
    public Resources.Theme f8407q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f8408r;

    /* renamed from: t, reason: collision with root package name */
    public boolean f8410t;

    /* renamed from: b, reason: collision with root package name */
    public k f8394b = k.d;

    /* renamed from: c, reason: collision with root package name */
    public com.bumptech.glide.g f8395c = com.bumptech.glide.g.f3525c;

    /* renamed from: h, reason: collision with root package name */
    public boolean f8398h = true;

    /* renamed from: i, reason: collision with root package name */
    public int f8399i = -1;

    /* renamed from: j, reason: collision with root package name */
    public int f8400j = -1;

    /* renamed from: k, reason: collision with root package name */
    public v2.e f8401k = q3.c.f9198b;

    /* renamed from: m, reason: collision with root package name */
    public h f8403m = new h();

    /* renamed from: n, reason: collision with root package name */
    public r3.b f8404n = new r3.b(0);

    /* renamed from: o, reason: collision with root package name */
    public Class f8405o = Object.class;

    /* renamed from: s, reason: collision with root package name */
    public boolean f8409s = true;

    public static boolean h(int i6, int i10) {
        return (i6 & i10) != 0;
    }

    public a a(a aVar) {
        if (this.f8408r) {
            return clone().a(aVar);
        }
        int i6 = aVar.f8393a;
        if (h(aVar.f8393a, ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES)) {
            this.f8410t = aVar.f8410t;
        }
        if (h(aVar.f8393a, 4)) {
            this.f8394b = aVar.f8394b;
        }
        if (h(aVar.f8393a, 8)) {
            this.f8395c = aVar.f8395c;
        }
        if (h(aVar.f8393a, 16)) {
            this.d = aVar.d;
            this.f8396e = 0;
            this.f8393a &= -33;
        }
        if (h(aVar.f8393a, 32)) {
            this.f8396e = aVar.f8396e;
            this.d = null;
            this.f8393a &= -17;
        }
        if (h(aVar.f8393a, 64)) {
            this.f = aVar.f;
            this.f8397g = 0;
            this.f8393a &= -129;
        }
        if (h(aVar.f8393a, 128)) {
            this.f8397g = aVar.f8397g;
            this.f = null;
            this.f8393a &= -65;
        }
        if (h(aVar.f8393a, 256)) {
            this.f8398h = aVar.f8398h;
        }
        if (h(aVar.f8393a, 512)) {
            this.f8400j = aVar.f8400j;
            this.f8399i = aVar.f8399i;
        }
        if (h(aVar.f8393a, 1024)) {
            this.f8401k = aVar.f8401k;
        }
        if (h(aVar.f8393a, 4096)) {
            this.f8405o = aVar.f8405o;
        }
        if (h(aVar.f8393a, 8192)) {
            this.f8393a &= -16385;
        }
        if (h(aVar.f8393a, 16384)) {
            this.f8393a &= -8193;
        }
        if (h(aVar.f8393a, 32768)) {
            this.f8407q = aVar.f8407q;
        }
        if (h(aVar.f8393a, 131072)) {
            this.f8402l = aVar.f8402l;
        }
        if (h(aVar.f8393a, 2048)) {
            this.f8404n.putAll(aVar.f8404n);
            this.f8409s = aVar.f8409s;
        }
        this.f8393a |= aVar.f8393a;
        this.f8403m.f10665b.g(aVar.f8403m.f10665b);
        o();
        return this;
    }

    @Override // 
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public a clone() {
        try {
            a aVar = (a) super.clone();
            h hVar = new h();
            aVar.f8403m = hVar;
            hVar.f10665b.g(this.f8403m.f10665b);
            r3.b bVar = new r3.b(0);
            aVar.f8404n = bVar;
            bVar.putAll(this.f8404n);
            aVar.f8406p = false;
            aVar.f8408r = false;
            return aVar;
        } catch (CloneNotSupportedException e5) {
            throw new RuntimeException(e5);
        }
    }

    public final a c(Class cls) {
        if (this.f8408r) {
            return clone().c(cls);
        }
        this.f8405o = cls;
        this.f8393a |= 4096;
        o();
        return this;
    }

    public final a d(k kVar) {
        if (this.f8408r) {
            return clone().d(kVar);
        }
        this.f8394b = kVar;
        this.f8393a |= 4;
        o();
        return this;
    }

    public final a e(int i6) {
        if (this.f8408r) {
            return clone().e(i6);
        }
        this.f8396e = i6;
        int i10 = this.f8393a | 32;
        this.d = null;
        this.f8393a = i10 & (-17);
        o();
        return this;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            return g((a) obj);
        }
        return false;
    }

    public final a f(Drawable drawable) {
        if (this.f8408r) {
            return clone().f(drawable);
        }
        this.d = drawable;
        int i6 = this.f8393a | 16;
        this.f8396e = 0;
        this.f8393a = i6 & (-33);
        o();
        return this;
    }

    public final boolean g(a aVar) {
        aVar.getClass();
        return Float.compare(1.0f, 1.0f) == 0 && this.f8396e == aVar.f8396e && n.b(this.d, aVar.d) && this.f8397g == aVar.f8397g && n.b(this.f, aVar.f) && n.b(null, null) && this.f8398h == aVar.f8398h && this.f8399i == aVar.f8399i && this.f8400j == aVar.f8400j && this.f8402l == aVar.f8402l && this.f8394b.equals(aVar.f8394b) && this.f8395c == aVar.f8395c && this.f8403m.equals(aVar.f8403m) && this.f8404n.equals(aVar.f8404n) && this.f8405o.equals(aVar.f8405o) && this.f8401k.equals(aVar.f8401k) && n.b(this.f8407q, aVar.f8407q);
    }

    public int hashCode() {
        char[] cArr = n.f9510a;
        return n.h(n.h(n.h(n.h(n.h(n.h(n.h(n.g(0, n.g(0, n.g(1, n.g(this.f8402l ? 1 : 0, n.g(this.f8400j, n.g(this.f8399i, n.g(this.f8398h ? 1 : 0, n.h(n.g(0, n.h(n.g(this.f8397g, n.h(n.g(this.f8396e, n.g(Float.floatToIntBits(1.0f), 17)), this.d)), this.f)), null)))))))), this.f8394b), this.f8395c), this.f8403m), this.f8404n), this.f8405o), this.f8401k), this.f8407q);
    }

    public final a i(e3.n nVar, e3.e eVar) {
        if (this.f8408r) {
            return clone().i(nVar, eVar);
        }
        p(e3.n.f6515g, nVar);
        return v(eVar, false);
    }

    public final a j(int i6, int i10) {
        if (this.f8408r) {
            return clone().j(i6, i10);
        }
        this.f8400j = i6;
        this.f8399i = i10;
        this.f8393a |= 512;
        o();
        return this;
    }

    public final a k() {
        if (this.f8408r) {
            return clone().k();
        }
        this.f8397g = R.mipmap.channel_logo_holder;
        int i6 = this.f8393a | 128;
        this.f = null;
        this.f8393a = i6 & (-65);
        o();
        return this;
    }

    public final a l(g0.g gVar) {
        if (this.f8408r) {
            return clone().l(gVar);
        }
        this.f = gVar;
        int i6 = this.f8393a | 64;
        this.f8397g = 0;
        this.f8393a = i6 & (-129);
        o();
        return this;
    }

    public final a m() {
        com.bumptech.glide.g gVar = com.bumptech.glide.g.d;
        if (this.f8408r) {
            return clone().m();
        }
        this.f8395c = gVar;
        this.f8393a |= 8;
        o();
        return this;
    }

    public final a n(v2.g gVar) {
        if (this.f8408r) {
            return clone().n(gVar);
        }
        this.f8403m.f10665b.remove(gVar);
        o();
        return this;
    }

    public final void o() {
        if (this.f8406p) {
            throw new IllegalStateException("You cannot modify locked T, consider clone()");
        }
    }

    public final a p(v2.g gVar, Object obj) {
        if (this.f8408r) {
            return clone().p(gVar, obj);
        }
        r3.f.b(gVar);
        r3.f.b(obj);
        this.f8403m.f10665b.put(gVar, obj);
        o();
        return this;
    }

    public final a q(v2.e eVar) {
        if (this.f8408r) {
            return clone().q(eVar);
        }
        this.f8401k = eVar;
        this.f8393a |= 1024;
        o();
        return this;
    }

    public final a r(boolean z7) {
        if (this.f8408r) {
            return clone().r(true);
        }
        this.f8398h = !z7;
        this.f8393a |= 256;
        o();
        return this;
    }

    public final a s(Resources.Theme theme) {
        if (this.f8408r) {
            return clone().s(theme);
        }
        this.f8407q = theme;
        if (theme != null) {
            this.f8393a |= 32768;
            return p(g3.d.f7097b, theme);
        }
        this.f8393a &= -32769;
        return n(g3.d.f7097b);
    }

    public final a t(e3.n nVar, e3.e eVar) {
        if (this.f8408r) {
            return clone().t(nVar, eVar);
        }
        p(e3.n.f6515g, nVar);
        return v(eVar, true);
    }

    public final a u(Class cls, l lVar, boolean z7) {
        if (this.f8408r) {
            return clone().u(cls, lVar, z7);
        }
        r3.f.b(lVar);
        this.f8404n.put(cls, lVar);
        int i6 = this.f8393a;
        this.f8393a = 67584 | i6;
        this.f8409s = false;
        if (z7) {
            this.f8393a = i6 | 198656;
            this.f8402l = true;
        }
        o();
        return this;
    }

    public final a v(l lVar, boolean z7) {
        if (this.f8408r) {
            return clone().v(lVar, z7);
        }
        s sVar = new s(lVar, z7);
        u(Bitmap.class, lVar, z7);
        u(Drawable.class, sVar, z7);
        u(BitmapDrawable.class, sVar, z7);
        u(i3.d.class, new i3.e(lVar), z7);
        o();
        return this;
    }

    public final a w() {
        if (this.f8408r) {
            return clone().w();
        }
        this.f8410t = true;
        this.f8393a |= ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES;
        o();
        return this;
    }
}
