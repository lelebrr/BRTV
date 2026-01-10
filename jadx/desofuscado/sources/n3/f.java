package n3;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.Log;
import ea.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import o3.h;
import r3.n;
import x2.l;
import x2.p;
import x2.t;
import x2.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f implements c, o3.g {
    public static final boolean C = Log.isLoggable("GlideRequest", 2);
    public final RuntimeException A;
    public int B;

    /* renamed from: a, reason: collision with root package name */
    public final String f8415a;

    /* renamed from: b, reason: collision with root package name */
    public final s3.d f8416b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f8417c;
    public final d d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f8418e;
    public final com.bumptech.glide.f f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f8419g;

    /* renamed from: h, reason: collision with root package name */
    public final Class f8420h;

    /* renamed from: i, reason: collision with root package name */
    public final a f8421i;

    /* renamed from: j, reason: collision with root package name */
    public final int f8422j;

    /* renamed from: k, reason: collision with root package name */
    public final int f8423k;

    /* renamed from: l, reason: collision with root package name */
    public final com.bumptech.glide.g f8424l;

    /* renamed from: m, reason: collision with root package name */
    public final h f8425m;

    /* renamed from: n, reason: collision with root package name */
    public final ArrayList f8426n;

    /* renamed from: o, reason: collision with root package name */
    public final p3.d f8427o;

    /* renamed from: p, reason: collision with root package name */
    public final r3.e f8428p;

    /* renamed from: q, reason: collision with root package name */
    public x f8429q;

    /* renamed from: r, reason: collision with root package name */
    public s.g f8430r;

    /* renamed from: s, reason: collision with root package name */
    public long f8431s;

    /* renamed from: t, reason: collision with root package name */
    public volatile l f8432t;

    /* renamed from: u, reason: collision with root package name */
    public Drawable f8433u;

    /* renamed from: v, reason: collision with root package name */
    public Drawable f8434v;

    /* renamed from: w, reason: collision with root package name */
    public Drawable f8435w;

    /* renamed from: x, reason: collision with root package name */
    public int f8436x;

    /* renamed from: y, reason: collision with root package name */
    public int f8437y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f8438z;

    public f(Context context, com.bumptech.glide.f fVar, Object obj, Object obj2, Class cls, a aVar, int i6, int i10, com.bumptech.glide.g gVar, h hVar, ArrayList arrayList, d dVar, l lVar, p3.d dVar2) {
        r3.e eVar = r3.f.f9496a;
        this.f8415a = C ? String.valueOf(hashCode()) : null;
        this.f8416b = new s3.d();
        this.f8417c = obj;
        this.f8418e = context;
        this.f = fVar;
        this.f8419g = obj2;
        this.f8420h = cls;
        this.f8421i = aVar;
        this.f8422j = i6;
        this.f8423k = i10;
        this.f8424l = gVar;
        this.f8425m = hVar;
        this.f8426n = arrayList;
        this.d = dVar;
        this.f8432t = lVar;
        this.f8427o = dVar2;
        this.f8428p = eVar;
        this.B = 1;
        if (this.A == null && ((Map) fVar.f3520h.f32b).containsKey(com.bumptech.glide.d.class)) {
            this.A = new RuntimeException("Glide request origin trace");
        }
    }

    @Override // n3.c
    public final boolean a() {
        boolean z7;
        synchronized (this.f8417c) {
            z7 = this.B == 4;
        }
        return z7;
    }

    @Override // n3.c
    public final boolean b() {
        boolean z7;
        synchronized (this.f8417c) {
            z7 = this.B == 6;
        }
        return z7;
    }

    public final void c() {
        if (this.f8438z) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
        this.f8416b.a();
        this.f8425m.e(this);
        s.g gVar = this.f8430r;
        if (gVar != null) {
            synchronized (((l) gVar.d)) {
                ((p) gVar.f9688b).j((f) gVar.f9689c);
            }
            this.f8430r = null;
        }
    }

    @Override // n3.c
    public final void clear() {
        synchronized (this.f8417c) {
            try {
                if (this.f8438z) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.f8416b.a();
                if (this.B == 6) {
                    return;
                }
                c();
                x xVar = this.f8429q;
                if (xVar != null) {
                    this.f8429q = null;
                } else {
                    xVar = null;
                }
                d dVar = this.d;
                if (dVar == null || dVar.c(this)) {
                    this.f8425m.h(f());
                }
                this.B = 6;
                if (xVar != null) {
                    this.f8432t.getClass();
                    l.g(xVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // n3.c
    public final boolean d(c cVar) {
        int i6;
        int i10;
        Object obj;
        Class cls;
        a aVar;
        com.bumptech.glide.g gVar;
        int size;
        int i11;
        int i12;
        Object obj2;
        Class cls2;
        a aVar2;
        com.bumptech.glide.g gVar2;
        int size2;
        if (!(cVar instanceof f)) {
            return false;
        }
        synchronized (this.f8417c) {
            try {
                i6 = this.f8422j;
                i10 = this.f8423k;
                obj = this.f8419g;
                cls = this.f8420h;
                aVar = this.f8421i;
                gVar = this.f8424l;
                ArrayList arrayList = this.f8426n;
                size = arrayList != null ? arrayList.size() : 0;
            } finally {
            }
        }
        f fVar = (f) cVar;
        synchronized (fVar.f8417c) {
            try {
                i11 = fVar.f8422j;
                i12 = fVar.f8423k;
                obj2 = fVar.f8419g;
                cls2 = fVar.f8420h;
                aVar2 = fVar.f8421i;
                gVar2 = fVar.f8424l;
                ArrayList arrayList2 = fVar.f8426n;
                size2 = arrayList2 != null ? arrayList2.size() : 0;
            } finally {
            }
        }
        if (i6 == i11 && i10 == i12) {
            char[] cArr = n.f9510a;
            if ((obj == null ? obj2 == null : obj.equals(obj2)) && cls.equals(cls2)) {
                if ((aVar == null ? aVar2 == null : aVar.g(aVar2)) && gVar == gVar2 && size == size2) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // n3.c
    public final void e() {
        synchronized (this.f8417c) {
            try {
                if (this.f8438z) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.f8416b.a();
                int i6 = r3.h.f9499b;
                this.f8431s = SystemClock.elapsedRealtimeNanos();
                if (this.f8419g == null) {
                    if (n.i(this.f8422j, this.f8423k)) {
                        this.f8436x = this.f8422j;
                        this.f8437y = this.f8423k;
                    }
                    if (this.f8435w == null) {
                        this.f8421i.getClass();
                        this.f8435w = null;
                    }
                    j(new t("Received null model"), this.f8435w == null ? 5 : 3);
                    return;
                }
                int i10 = this.B;
                if (i10 == 2) {
                    throw new IllegalArgumentException("Cannot restart a running request");
                }
                if (i10 == 4) {
                    k(this.f8429q, 5, false);
                    return;
                }
                ArrayList arrayList = this.f8426n;
                if (arrayList != null) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                    }
                }
                this.B = 3;
                if (n.i(this.f8422j, this.f8423k)) {
                    m(this.f8422j, this.f8423k);
                } else {
                    this.f8425m.f(this);
                }
                int i11 = this.B;
                if (i11 == 2 || i11 == 3) {
                    d dVar = this.d;
                    if (dVar == null || dVar.f(this)) {
                        this.f8425m.g(f());
                    }
                }
                if (C) {
                    h("finished run method in " + r3.h.a(this.f8431s));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Drawable f() {
        int i6;
        if (this.f8434v == null) {
            a aVar = this.f8421i;
            g0.g gVar = aVar.f;
            this.f8434v = gVar;
            if (gVar == null && (i6 = aVar.f8397g) > 0) {
                Resources.Theme theme = aVar.f8407q;
                Context context = this.f8418e;
                if (theme == null) {
                    theme = context.getTheme();
                }
                this.f8434v = o9.d.n(context, context, i6, theme);
            }
        }
        return this.f8434v;
    }

    public final boolean g() {
        d dVar = this.d;
        return dVar == null || !dVar.getRoot().a();
    }

    public final void h(String str) {
        StringBuilder sbW = a.e.w(str, " this: ");
        sbW.append(this.f8415a);
        Log.v("GlideRequest", sbW.toString());
    }

    @Override // n3.c
    public final boolean i() {
        boolean z7;
        synchronized (this.f8417c) {
            z7 = this.B == 4;
        }
        return z7;
    }

    @Override // n3.c
    public final boolean isRunning() {
        boolean z7;
        synchronized (this.f8417c) {
            int i6 = this.B;
            z7 = i6 == 2 || i6 == 3;
        }
        return z7;
    }

    public final void j(t tVar, int i6) {
        int i10;
        this.f8416b.a();
        synchronized (this.f8417c) {
            try {
                tVar.getClass();
                int i11 = this.f.f3521i;
                if (i11 <= i6) {
                    Log.w("Glide", "Load failed for [" + this.f8419g + "] with dimensions [" + this.f8436x + "x" + this.f8437y + "]", tVar);
                    if (i11 <= 4) {
                        tVar.d();
                    }
                }
                Drawable drawableF = null;
                this.f8430r = null;
                this.B = 5;
                d dVar = this.d;
                if (dVar != null) {
                    dVar.j(this);
                }
                boolean z7 = true;
                this.f8438z = true;
                try {
                    ArrayList arrayList = this.f8426n;
                    if (arrayList != null) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            ka.h hVar = (ka.h) it.next();
                            Object obj = this.f8419g;
                            g();
                            hVar.a(tVar, obj);
                        }
                    }
                    d dVar2 = this.d;
                    if (dVar2 != null && !dVar2.f(this)) {
                        z7 = false;
                    }
                    if (z7) {
                        if (this.f8419g == null) {
                            if (this.f8435w == null) {
                                this.f8421i.getClass();
                                this.f8435w = null;
                            }
                            drawableF = this.f8435w;
                        }
                        if (drawableF == null) {
                            if (this.f8433u == null) {
                                a aVar = this.f8421i;
                                Drawable drawable = aVar.d;
                                this.f8433u = drawable;
                                if (drawable == null && (i10 = aVar.f8396e) > 0) {
                                    Resources.Theme theme = aVar.f8407q;
                                    Context context = this.f8418e;
                                    if (theme == null) {
                                        theme = context.getTheme();
                                    }
                                    this.f8433u = o9.d.n(context, context, i10, theme);
                                }
                            }
                            drawableF = this.f8433u;
                        }
                        if (drawableF == null) {
                            drawableF = f();
                        }
                        this.f8425m.b(drawableF);
                    }
                } finally {
                    this.f8438z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void k(x xVar, int i6, boolean z7) {
        this.f8416b.a();
        x xVar2 = null;
        try {
            synchronized (this.f8417c) {
                try {
                    this.f8430r = null;
                    if (xVar == null) {
                        j(new t("Expected to receive a Resource<R> with an object of " + this.f8420h + " inside, but instead got null."), 5);
                        return;
                    }
                    Object obj = xVar.get();
                    try {
                        if (obj != null && this.f8420h.isAssignableFrom(obj.getClass())) {
                            d dVar = this.d;
                            if (dVar == null || dVar.h(this)) {
                                l(xVar, obj, i6);
                                return;
                            }
                            this.f8429q = null;
                            this.B = 4;
                            this.f8432t.getClass();
                            l.g(xVar);
                            return;
                        }
                        this.f8429q = null;
                        StringBuilder sb = new StringBuilder("Expected to receive an object of ");
                        sb.append(this.f8420h);
                        sb.append(" but instead got ");
                        sb.append(obj != null ? obj.getClass() : "");
                        sb.append("{");
                        sb.append(obj);
                        sb.append("} inside Resource{");
                        sb.append(xVar);
                        sb.append("}.");
                        sb.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                        j(new t(sb.toString()), 5);
                        this.f8432t.getClass();
                        l.g(xVar);
                    } catch (Throwable th) {
                        xVar2 = xVar;
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (xVar2 != null) {
                this.f8432t.getClass();
                l.g(xVar2);
            }
            throw th3;
        }
    }

    public final void l(x xVar, Object obj, int i6) {
        g();
        this.B = 4;
        this.f8429q = xVar;
        int i10 = this.f.f3521i;
        Object obj2 = this.f8419g;
        if (i10 <= 3) {
            Log.d("Glide", "Finished loading " + obj.getClass().getSimpleName() + " from " + q.s(i6) + " for " + obj2 + " with size [" + this.f8436x + "x" + this.f8437y + "] in " + r3.h.a(this.f8431s) + " ms");
        }
        d dVar = this.d;
        if (dVar != null) {
            dVar.g(this);
        }
        this.f8438z = true;
        try {
            ArrayList arrayList = this.f8426n;
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((ka.h) it.next()).b(obj, obj2);
                }
            }
            this.f8425m.d(obj, this.f8427o.g(i6));
            this.f8438z = false;
        } catch (Throwable th) {
            this.f8438z = false;
            throw th;
        }
    }

    public final void m(int i6, int i10) {
        Object obj;
        int iRound = i6;
        this.f8416b.a();
        Object obj2 = this.f8417c;
        synchronized (obj2) {
            try {
                try {
                    boolean z7 = C;
                    if (z7) {
                        h("Got onSizeReady in " + r3.h.a(this.f8431s));
                    }
                    if (this.B == 3) {
                        this.B = 2;
                        this.f8421i.getClass();
                        if (iRound != Integer.MIN_VALUE) {
                            iRound = Math.round(iRound * 1.0f);
                        }
                        this.f8436x = iRound;
                        this.f8437y = i10 == Integer.MIN_VALUE ? i10 : Math.round(1.0f * i10);
                        if (z7) {
                            h("finished setup for calling load in " + r3.h.a(this.f8431s));
                        }
                        l lVar = this.f8432t;
                        com.bumptech.glide.f fVar = this.f;
                        Object obj3 = this.f8419g;
                        a aVar = this.f8421i;
                        try {
                            obj = obj2;
                        } catch (Throwable th) {
                            th = th;
                            obj = obj2;
                        }
                        try {
                            this.f8430r = lVar.a(fVar, obj3, aVar.f8401k, this.f8436x, this.f8437y, aVar.f8405o, this.f8420h, this.f8424l, aVar.f8394b, aVar.f8404n, aVar.f8402l, aVar.f8409s, aVar.f8403m, aVar.f8398h, aVar.f8410t, this, this.f8428p);
                            if (this.B != 2) {
                                this.f8430r = null;
                            }
                            if (z7) {
                                h("finished onSizeReady in " + r3.h.a(this.f8431s));
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    obj = obj2;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    @Override // n3.c
    public final void pause() {
        synchronized (this.f8417c) {
            try {
                if (isRunning()) {
                    clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String toString() {
        Object obj;
        Class cls;
        synchronized (this.f8417c) {
            obj = this.f8419g;
            cls = this.f8420h;
        }
        return super.toString() + "[model=" + obj + ", transcodeClass=" + cls + "]";
    }
}
