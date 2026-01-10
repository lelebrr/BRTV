package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class at {
    private static at D = null;

    /* renamed from: a, reason: collision with root package name */
    public static int f5691a = 0;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f5692b = false;
    public static int d = 2;

    /* renamed from: e, reason: collision with root package name */
    public static boolean f5693e = false;
    public static int f = 20480;

    /* renamed from: g, reason: collision with root package name */
    public static int f5694g = 3000;

    /* renamed from: h, reason: collision with root package name */
    public static int f5695h = 20480;

    /* renamed from: i, reason: collision with root package name */
    public static long f5696i = 209715200;

    /* renamed from: j, reason: collision with root package name */
    public static long f5697j = 604800000;

    /* renamed from: k, reason: collision with root package name */
    public static String f5698k = null;

    /* renamed from: l, reason: collision with root package name */
    public static boolean f5699l = false;

    /* renamed from: m, reason: collision with root package name */
    public static String f5700m = null;

    /* renamed from: n, reason: collision with root package name */
    public static int f5701n = 5000;

    /* renamed from: o, reason: collision with root package name */
    public static boolean f5702o = true;

    /* renamed from: p, reason: collision with root package name */
    public static boolean f5703p;

    /* renamed from: q, reason: collision with root package name */
    public static String f5704q;

    /* renamed from: r, reason: collision with root package name */
    public static String f5705r;
    public Boolean A;
    public int B = 31;
    public boolean C = false;

    /* renamed from: c, reason: collision with root package name */
    public final Context f5706c;

    /* renamed from: s, reason: collision with root package name */
    public final as f5707s;

    /* renamed from: t, reason: collision with root package name */
    public final av f5708t;

    /* renamed from: u, reason: collision with root package name */
    public final NativeCrashHandler f5709u;

    /* renamed from: v, reason: collision with root package name */
    public final ac f5710v;

    /* renamed from: w, reason: collision with root package name */
    public final ak f5711w;

    /* renamed from: x, reason: collision with root package name */
    public final ay f5712x;

    /* renamed from: y, reason: collision with root package name */
    public BuglyStrategy.a f5713y;

    /* renamed from: z, reason: collision with root package name */
    public aw f5714z;

    private at(Context context, ak akVar, boolean z7, BuglyStrategy.a aVar) {
        f5691a = 1004;
        Context contextA = ap.a(context);
        this.f5706c = contextA;
        ac acVarA = ac.a();
        this.f5710v = acVarA;
        this.f5711w = akVar;
        this.f5713y = aVar;
        this.f5714z = null;
        as asVar = new as(contextA, ai.a(), w.a(), acVarA, aVar);
        this.f5707s = asVar;
        aa aaVarA = aa.a(contextA);
        this.f5708t = new av(contextA, asVar, acVarA, aaVarA);
        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance(contextA, aaVarA, asVar, acVarA, akVar, z7, null);
        this.f5709u = nativeCrashHandler;
        aaVarA.N = nativeCrashHandler;
        if (ay.f == null) {
            ay.f = new ay(contextA, acVarA, aaVarA, akVar, asVar);
        }
        this.f5712x = ay.f;
    }

    public final synchronized void c() {
        this.f5708t.b();
        d();
        g();
    }

    public final void d() {
        this.f5709u.setUserOpened(false);
    }

    public final void e() {
        this.f5709u.setUserOpened(true);
    }

    public final void f() {
        new Handler(Looper.getMainLooper()).post(new b1.l(1));
        this.f5712x.b(true);
    }

    public final void g() {
        new Handler(Looper.getMainLooper()).post(new b1.l(2));
        this.f5712x.b(false);
    }

    public final synchronized void h() {
        int i6 = 0;
        while (true) {
            int i10 = i6 + 1;
            if (i6 < 30) {
                try {
                    al.a("try main sleep for make a test anr! try:%d/30 , kill it if you don't want to wait!", Integer.valueOf(i10));
                    ap.b(5000L);
                    i6 = i10;
                } catch (Throwable th) {
                    if (al.a(th)) {
                        return;
                    }
                    th.printStackTrace();
                    return;
                }
            }
        }
    }

    public final boolean i() {
        return this.f5712x.f5738a.get();
    }

    public final boolean j() {
        return (this.B & 16) > 0;
    }

    public final boolean k() {
        return (this.B & 8) > 0;
    }

    public static synchronized at a(Context context, boolean z7, BuglyStrategy.a aVar) {
        try {
            if (D == null) {
                D = new at(context, ak.a(), z7, aVar);
            }
        } catch (Throwable th) {
            throw th;
        }
        return D;
    }

    public final synchronized void b() {
        this.f5708t.a();
        e();
        f();
    }

    public static synchronized at a() {
        return D;
    }

    public final synchronized void a(boolean z7, boolean z10, boolean z11) {
        this.f5709u.testNativeCrash(z7, z10, z11);
    }

    public final void a(CrashDetailBean crashDetailBean) {
        this.f5707s.b(crashDetailBean);
    }

    public final void a(long j10) {
        ak.a().a(new i0(0, this), j10);
    }
}
