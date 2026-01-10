package x2;

import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class i implements e, Runnable, Comparable, s3.b {
    public volatile boolean A;
    public boolean B;
    public int C;
    public int D;
    public int E;
    public final b.a d;

    /* renamed from: e, reason: collision with root package name */
    public final s.g f10886e;

    /* renamed from: h, reason: collision with root package name */
    public com.bumptech.glide.f f10888h;

    /* renamed from: i, reason: collision with root package name */
    public v2.e f10889i;

    /* renamed from: j, reason: collision with root package name */
    public com.bumptech.glide.g f10890j;

    /* renamed from: k, reason: collision with root package name */
    public q f10891k;

    /* renamed from: l, reason: collision with root package name */
    public int f10892l;

    /* renamed from: m, reason: collision with root package name */
    public int f10893m;

    /* renamed from: n, reason: collision with root package name */
    public k f10894n;

    /* renamed from: o, reason: collision with root package name */
    public v2.h f10895o;

    /* renamed from: p, reason: collision with root package name */
    public p f10896p;

    /* renamed from: q, reason: collision with root package name */
    public int f10897q;

    /* renamed from: r, reason: collision with root package name */
    public long f10898r;

    /* renamed from: s, reason: collision with root package name */
    public Object f10899s;

    /* renamed from: t, reason: collision with root package name */
    public Thread f10900t;

    /* renamed from: u, reason: collision with root package name */
    public v2.e f10901u;

    /* renamed from: v, reason: collision with root package name */
    public v2.e f10902v;

    /* renamed from: w, reason: collision with root package name */
    public Object f10903w;

    /* renamed from: x, reason: collision with root package name */
    public com.bumptech.glide.load.data.e f10904x;

    /* renamed from: y, reason: collision with root package name */
    public volatile f f10905y;

    /* renamed from: z, reason: collision with root package name */
    public volatile boolean f10906z;

    /* renamed from: a, reason: collision with root package name */
    public final g f10883a = new g();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f10884b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final s3.d f10885c = new s3.d();
    public final s.g f = new s.g(5);

    /* renamed from: g, reason: collision with root package name */
    public final h f10887g = new h();

    public i(b.a aVar, s.g gVar) {
        this.d = aVar;
        this.f10886e = gVar;
    }

    @Override // x2.e
    public final void a(v2.e eVar, Exception exc, com.bumptech.glide.load.data.e eVar2, int i6) {
        eVar2.b();
        t tVar = new t("Fetching data failed", Collections.singletonList(exc));
        Class clsA = eVar2.a();
        tVar.f10962b = eVar;
        tVar.f10963c = i6;
        tVar.d = clsA;
        this.f10884b.add(tVar);
        if (Thread.currentThread() != this.f10900t) {
            o(2);
        } else {
            p();
        }
    }

    @Override // s3.b
    public final s3.d b() {
        return this.f10885c;
    }

    @Override // x2.e
    public final void c(v2.e eVar, Object obj, com.bumptech.glide.load.data.e eVar2, int i6, v2.e eVar3) {
        this.f10901u = eVar;
        this.f10903w = obj;
        this.f10904x = eVar2;
        this.E = i6;
        this.f10902v = eVar3;
        this.B = eVar != this.f10883a.a().get(0);
        if (Thread.currentThread() != this.f10900t) {
            o(3);
        } else {
            f();
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        i iVar = (i) obj;
        int iOrdinal = this.f10890j.ordinal() - iVar.f10890j.ordinal();
        return iOrdinal == 0 ? this.f10897q - iVar.f10897q : iOrdinal;
    }

    public final x d(com.bumptech.glide.load.data.e eVar, Object obj, int i6) {
        if (obj == null) {
            return null;
        }
        try {
            int i10 = r3.h.f9499b;
            long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            x xVarE = e(i6, obj);
            if (Log.isLoggable("DecodeJob", 2)) {
                i(jElapsedRealtimeNanos, "Decoded result " + xVarE, null);
            }
            return xVarE;
        } finally {
            eVar.b();
        }
    }

    public final x e(int i6, Object obj) {
        Class<?> cls = obj.getClass();
        g gVar = this.f10883a;
        v vVarC = gVar.c(cls);
        v2.h hVar = this.f10895o;
        if (Build.VERSION.SDK_INT >= 26) {
            boolean z7 = i6 == 4 || gVar.f10879r;
            v2.g gVar2 = e3.p.f6520i;
            Boolean bool = (Boolean) hVar.c(gVar2);
            if (bool == null || (bool.booleanValue() && !z7)) {
                hVar = new v2.h();
                v2.h hVar2 = this.f10895o;
                r3.b bVar = hVar.f10665b;
                bVar.g(hVar2.f10665b);
                bVar.put(gVar2, Boolean.valueOf(z7));
            }
        }
        v2.h hVar3 = hVar;
        com.bumptech.glide.load.data.g gVarH = this.f10888h.b().h(obj);
        try {
            return vVarC.a(this.f10892l, this.f10893m, new c6.b(i6, this), gVarH, hVar3);
        } finally {
            gVarH.b();
        }
    }

    public final void f() {
        x xVarD;
        if (Log.isLoggable("DecodeJob", 2)) {
            i(this.f10898r, "Retrieved data", "data: " + this.f10903w + ", cache key: " + this.f10901u + ", fetcher: " + this.f10904x);
        }
        w wVar = null;
        try {
            xVarD = d(this.f10904x, this.f10903w, this.E);
        } catch (t e5) {
            v2.e eVar = this.f10902v;
            int i6 = this.E;
            e5.f10962b = eVar;
            e5.f10963c = i6;
            e5.d = null;
            this.f10884b.add(e5);
            xVarD = null;
        }
        if (xVarD == null) {
            p();
            return;
        }
        int i10 = this.E;
        boolean z7 = this.B;
        if (xVarD instanceof u) {
            ((u) xVarD).initialize();
        }
        boolean z10 = true;
        if (((w) this.f.d) != null) {
            wVar = (w) w.f10968e.f();
            wVar.d = false;
            wVar.f10971c = true;
            wVar.f10970b = xVarD;
            xVarD = wVar;
        }
        r();
        p pVar = this.f10896p;
        synchronized (pVar) {
            pVar.f10938n = xVarD;
            pVar.f10939o = i10;
            pVar.f10946v = z7;
        }
        pVar.h();
        this.C = 5;
        try {
            s.g gVar = this.f;
            if (((w) gVar.d) == null) {
                z10 = false;
            }
            if (z10) {
                b.a aVar = this.d;
                v2.h hVar = this.f10895o;
                gVar.getClass();
                try {
                    aVar.a().f((v2.e) gVar.f9688b, new s.g((v2.k) gVar.f9689c, (w) gVar.d, hVar, 4));
                    ((w) gVar.d).e();
                } catch (Throwable th) {
                    ((w) gVar.d).e();
                    throw th;
                }
            }
            k();
        } finally {
            if (wVar != null) {
                wVar.e();
            }
        }
    }

    public final f g() {
        int iA = u.h.a(this.C);
        g gVar = this.f10883a;
        if (iA == 1) {
            return new y(gVar, this);
        }
        if (iA == 2) {
            return new c(gVar.a(), gVar, this);
        }
        if (iA == 3) {
            return new a0(gVar, this);
        }
        if (iA == 5) {
            return null;
        }
        throw new IllegalStateException("Unrecognized stage: ".concat(ea.q.t(this.C)));
    }

    public final int h(int i6) {
        boolean z7;
        boolean z10;
        int iA = u.h.a(i6);
        if (iA == 0) {
            switch (this.f10894n.f10913a) {
                case 0:
                case 1:
                    z7 = false;
                    break;
                default:
                    z7 = true;
                    break;
            }
            if (z7) {
                return 2;
            }
            return h(2);
        }
        if (iA != 1) {
            if (iA == 2) {
                return 4;
            }
            if (iA == 3 || iA == 5) {
                return 6;
            }
            throw new IllegalArgumentException("Unrecognized stage: ".concat(ea.q.t(i6)));
        }
        switch (this.f10894n.f10913a) {
            case 0:
                z10 = false;
                break;
            case 1:
            default:
                z10 = true;
                break;
        }
        if (z10) {
            return 3;
        }
        return h(3);
    }

    public final void i(long j10, String str, String str2) {
        StringBuilder sbW = a.e.w(str, " in ");
        sbW.append(r3.h.a(j10));
        sbW.append(", load key: ");
        sbW.append(this.f10891k);
        sbW.append(str2 != null ? ", ".concat(str2) : "");
        sbW.append(", thread: ");
        sbW.append(Thread.currentThread().getName());
        Log.v("DecodeJob", sbW.toString());
    }

    public final void j() {
        r();
        t tVar = new t("Failed to load resource", new ArrayList(this.f10884b));
        p pVar = this.f10896p;
        synchronized (pVar) {
            pVar.f10941q = tVar;
        }
        pVar.g();
        l();
    }

    public final void k() {
        boolean zA;
        h hVar = this.f10887g;
        synchronized (hVar) {
            hVar.f10881b = true;
            zA = hVar.a();
        }
        if (zA) {
            n();
        }
    }

    public final void l() {
        boolean zA;
        h hVar = this.f10887g;
        synchronized (hVar) {
            hVar.f10882c = true;
            zA = hVar.a();
        }
        if (zA) {
            n();
        }
    }

    public final void m() {
        boolean zA;
        h hVar = this.f10887g;
        synchronized (hVar) {
            hVar.f10880a = true;
            zA = hVar.a();
        }
        if (zA) {
            n();
        }
    }

    public final void n() {
        h hVar = this.f10887g;
        synchronized (hVar) {
            hVar.f10881b = false;
            hVar.f10880a = false;
            hVar.f10882c = false;
        }
        s.g gVar = this.f;
        gVar.f9688b = null;
        gVar.f9689c = null;
        gVar.d = null;
        g gVar2 = this.f10883a;
        gVar2.f10866c = null;
        gVar2.d = null;
        gVar2.f10875n = null;
        gVar2.f10868g = null;
        gVar2.f10872k = null;
        gVar2.f10870i = null;
        gVar2.f10876o = null;
        gVar2.f10871j = null;
        gVar2.f10877p = null;
        gVar2.f10864a.clear();
        gVar2.f10873l = false;
        gVar2.f10865b.clear();
        gVar2.f10874m = false;
        this.f10906z = false;
        this.f10888h = null;
        this.f10889i = null;
        this.f10895o = null;
        this.f10890j = null;
        this.f10891k = null;
        this.f10896p = null;
        this.C = 0;
        this.f10905y = null;
        this.f10900t = null;
        this.f10901u = null;
        this.f10903w = null;
        this.E = 0;
        this.f10904x = null;
        this.f10898r = 0L;
        this.A = false;
        this.f10884b.clear();
        this.f10886e.k(this);
    }

    public final void o(int i6) {
        this.D = i6;
        p pVar = this.f10896p;
        (pVar.f10937m ? pVar.f10933i : pVar.f10932h).execute(this);
    }

    public final void p() {
        this.f10900t = Thread.currentThread();
        int i6 = r3.h.f9499b;
        this.f10898r = SystemClock.elapsedRealtimeNanos();
        boolean zB = false;
        while (!this.A && this.f10905y != null && !(zB = this.f10905y.b())) {
            this.C = h(this.C);
            this.f10905y = g();
            if (this.C == 4) {
                o(2);
                return;
            }
        }
        if ((this.C == 6 || this.A) && !zB) {
            j();
        }
    }

    public final void q() {
        int iA = u.h.a(this.D);
        if (iA == 0) {
            this.C = h(1);
            this.f10905y = g();
            p();
        } else if (iA == 1) {
            p();
        } else if (iA == 2) {
            f();
        } else {
            int i6 = this.D;
            throw new IllegalStateException("Unrecognized run reason: ".concat(i6 != 1 ? i6 != 2 ? i6 != 3 ? "null" : "DECODE_DATA" : "SWITCH_TO_SOURCE_SERVICE" : "INITIALIZE"));
        }
    }

    public final void r() {
        this.f10885c.a();
        if (this.f10906z) {
            throw new IllegalStateException("Already notified", this.f10884b.isEmpty() ? null : (Throwable) ea.q.e(1, this.f10884b));
        }
        this.f10906z = true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.bumptech.glide.load.data.e eVar = this.f10904x;
        try {
            try {
                if (this.A) {
                    j();
                    if (eVar != null) {
                        eVar.b();
                        return;
                    }
                    return;
                }
                q();
                if (eVar != null) {
                    eVar.b();
                }
            } catch (b e5) {
                throw e5;
            } catch (Throwable th) {
                if (Log.isLoggable("DecodeJob", 3)) {
                    Log.d("DecodeJob", "DecodeJob threw unexpectedly, isCancelled: " + this.A + ", stage: " + ea.q.t(this.C), th);
                }
                if (this.C != 5) {
                    this.f10884b.add(th);
                    j();
                }
                if (!this.A) {
                    throw th;
                }
                throw th;
            }
        } catch (Throwable th2) {
            if (eVar != null) {
                eVar.b();
            }
            throw th2;
        }
    }
}
