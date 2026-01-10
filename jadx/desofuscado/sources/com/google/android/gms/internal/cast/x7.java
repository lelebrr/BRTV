package com.google.android.gms.internal.cast;

import android.text.TextUtils;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.internal.zzaa;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x7 {

    /* renamed from: v, reason: collision with root package name */
    public static final v4.b f4467v = new v4.b("SessionFlowSummary", null);

    /* renamed from: w, reason: collision with root package name */
    public static final String f4468w = "22.1.0";

    /* renamed from: x, reason: collision with root package name */
    public static long f4469x = System.currentTimeMillis();
    public final m1 f;

    /* renamed from: g, reason: collision with root package name */
    public final String f4474g;

    /* renamed from: i, reason: collision with root package name */
    public final long f4476i;

    /* renamed from: j, reason: collision with root package name */
    public q4.b f4477j;

    /* renamed from: k, reason: collision with root package name */
    public String f4478k;

    /* renamed from: l, reason: collision with root package name */
    public String f4479l;

    /* renamed from: m, reason: collision with root package name */
    public androidx.appcompat.app.t0 f4480m;

    /* renamed from: n, reason: collision with root package name */
    public String f4481n;

    /* renamed from: o, reason: collision with root package name */
    public String f4482o;

    /* renamed from: p, reason: collision with root package name */
    public String f4483p;

    /* renamed from: q, reason: collision with root package name */
    public String f4484q;

    /* renamed from: r, reason: collision with root package name */
    public String f4485r;

    /* renamed from: s, reason: collision with root package name */
    public String f4486s;

    /* renamed from: u, reason: collision with root package name */
    public int f4488u;

    /* renamed from: a, reason: collision with root package name */
    public final k1 f4470a = new k1(new k2(24));

    /* renamed from: b, reason: collision with root package name */
    public final List f4471b = Collections.synchronizedList(new ArrayList());

    /* renamed from: c, reason: collision with root package name */
    public final List f4472c = Collections.synchronizedList(new ArrayList());
    public final List d = Collections.synchronizedList(new ArrayList());

    /* renamed from: e, reason: collision with root package name */
    public final Map f4473e = Collections.synchronizedMap(new HashMap());

    /* renamed from: t, reason: collision with root package name */
    public int f4487t = 0;

    /* renamed from: h, reason: collision with root package name */
    public final long f4475h = System.currentTimeMillis();

    public x7(m1 m1Var, String str) {
        this.f = m1Var;
        this.f4474g = str;
        long j10 = f4469x;
        f4469x = 1 + j10;
        this.f4476i = j10;
    }

    public final void a(q4.b bVar) {
        if (bVar == null) {
            b(2);
            return;
        }
        CastDevice castDeviceE = bVar.e();
        if (castDeviceE == null) {
            b(3);
            return;
        }
        this.f4477j = bVar;
        String str = this.f4479l;
        String str2 = castDeviceE.f3661l;
        if (str != null) {
            if (TextUtils.equals(str, str2)) {
                return;
            }
            b(5);
            return;
        }
        this.f4479l = str2;
        this.f4481n = castDeviceE.f3655e;
        this.f4487t = castDeviceE.m();
        zzaa zzaaVarN = castDeviceE.n();
        if (zzaaVarN != null) {
            this.f4482o = zzaaVarN.d;
            this.f4483p = zzaaVarN.f3889e;
            this.f4484q = zzaaVarN.f;
            this.f4485r = zzaaVarN.f3890g;
            this.f4486s = zzaaVarN.f3891h;
        }
        bVar.c();
    }

    public final void b(int i6) {
        Integer numValueOf = Integer.valueOf(i6 - 1);
        Map map = this.f4473e;
        g gVar = (g) map.get(numValueOf);
        if (gVar != null) {
            gVar.d.incrementAndGet();
            gVar.f4156b = System.currentTimeMillis();
        } else {
            g gVar2 = new g(new androidx.leanback.widget.o(i6));
            gVar2.f4157c = this.f4475h;
            map.put(numValueOf, gVar2);
        }
    }
}
