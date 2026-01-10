package p4;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.zzat;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.cast.d1;
import com.google.android.gms.internal.cast.j0;
import com.google.android.gms.internal.cast.x0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import z4.t;
import z4.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o extends y4.g {
    public static final v4.b F = new v4.b("CastClient", null);
    public static final l6.h G = new l6.h("Cast.API_CXLESS", new d1(3), v4.h.f10674a);
    public final HashMap A;
    public final HashMap B;
    public final j0 C;
    public final List D;
    public int E;

    /* renamed from: j, reason: collision with root package name */
    public final n f8891j;

    /* renamed from: k, reason: collision with root package name */
    public x0 f8892k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f8893l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f8894m;

    /* renamed from: n, reason: collision with root package name */
    public w5.d f8895n;

    /* renamed from: o, reason: collision with root package name */
    public w5.d f8896o;

    /* renamed from: p, reason: collision with root package name */
    public final AtomicLong f8897p;

    /* renamed from: q, reason: collision with root package name */
    public final Object f8898q;

    /* renamed from: r, reason: collision with root package name */
    public final Object f8899r;

    /* renamed from: s, reason: collision with root package name */
    public ApplicationMetadata f8900s;

    /* renamed from: t, reason: collision with root package name */
    public String f8901t;

    /* renamed from: u, reason: collision with root package name */
    public double f8902u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f8903v;

    /* renamed from: w, reason: collision with root package name */
    public int f8904w;

    /* renamed from: x, reason: collision with root package name */
    public int f8905x;

    /* renamed from: y, reason: collision with root package name */
    public zzat f8906y;

    /* renamed from: z, reason: collision with root package name */
    public final CastDevice f8907z;

    public o(Context context, a aVar) {
        super(context, G, aVar, y4.f.f11393c);
        this.f8891j = new n(this);
        this.f8898q = new Object();
        this.f8899r = new Object();
        this.D = Collections.synchronizedList(new ArrayList());
        this.C = aVar.f8870b;
        this.f8907z = aVar.f8869a;
        this.A = new HashMap();
        this.B = new HashMap();
        this.f8897p = new AtomicLong(0L);
        this.E = 1;
        k();
    }

    public static void d(o oVar, long j10, int i6) {
        w5.d dVar;
        HashMap map = oVar.A;
        synchronized (map) {
            Long lValueOf = Long.valueOf(j10);
            dVar = (w5.d) map.get(lValueOf);
            map.remove(lValueOf);
        }
        if (dVar != null) {
            if (i6 == 0) {
                dVar.b(null);
            } else {
                dVar.a(new y4.e(new Status(i6, null, null, null)));
            }
        }
    }

    public static void e(o oVar, int i6) {
        synchronized (oVar.f8899r) {
            try {
                w5.d dVar = oVar.f8896o;
                if (dVar == null) {
                    return;
                }
                if (i6 == 0) {
                    dVar.b(new Status(0, null, null, null));
                } else {
                    dVar.a(new y4.e(new Status(i6, null, null, null)));
                }
                oVar.f8896o = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Handler l(o oVar) {
        if (oVar.f8892k == null) {
            oVar.f8892k = new x0(oVar.f, 0);
        }
        return oVar.f8892k;
    }

    public final w5.g f(v4.f fVar) {
        z4.g gVar = b(fVar).f11611a;
        b5.l.f(gVar, "Key must not be null");
        z4.e eVar = this.f11402i;
        eVar.getClass();
        w5.d dVar = new w5.d();
        eVar.e(dVar, 8415, this);
        t tVar = new t(new x(gVar, dVar), eVar.f11604i.get(), this);
        x0 x0Var = eVar.f11608m;
        x0Var.sendMessage(x0Var.obtainMessage(13, tVar));
        return dVar.f10815a;
    }

    public final void g() {
        F.b("removing all MessageReceivedCallbacks", new Object[0]);
        HashMap map = this.B;
        synchronized (map) {
            map.clear();
        }
    }

    public final void h(int i6) {
        synchronized (this.f8898q) {
            try {
                w5.d dVar = this.f8895n;
                if (dVar != null) {
                    dVar.a(new y4.e(new Status(i6, null, null, null)));
                }
                this.f8895n = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final w5.g i() {
        c6.c cVarC = c6.c.c();
        cVarC.f3394c = new u6.e(29);
        cVarC.f3392a = 8403;
        w5.g gVarC = c(1, cVarC.b());
        g();
        f(this.f8891j);
        return gVarC;
    }

    public final boolean j() {
        return this.E == 3;
    }

    public final void k() {
        CastDevice castDevice = this.f8907z;
        if (castDevice.f3658i.a(2048)) {
            return;
        }
        androidx.leanback.widget.o oVar = castDevice.f3658i;
        if (!oVar.a(4) || oVar.a(1)) {
            return;
        }
        "Chromecast Audio".equals(castDevice.f3655e);
    }
}
