package com.tencent.bugly.proguard;

import android.content.Context;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class au {

    /* renamed from: a, reason: collision with root package name */
    private static au f5721a;

    /* renamed from: b, reason: collision with root package name */
    private ac f5722b;

    /* renamed from: c, reason: collision with root package name */
    private aa f5723c;
    private as d;

    /* renamed from: e, reason: collision with root package name */
    private Context f5724e;

    private au(Context context) {
        at atVarA = at.a();
        if (atVarA == null) {
            return;
        }
        this.f5722b = ac.a();
        this.f5723c = aa.a(context);
        this.d = atVarA.f5707s;
        this.f5724e = context;
        ak.a().a(new a.f(12, this));
    }

    public static au a(Context context) {
        if (f5721a == null) {
            f5721a = new au(context);
        }
        return f5721a;
    }

    public static void a(Thread thread, int i6, String str, String str2, String str3, Map<String, String> map) {
        ak.a().a(new j0(thread, i6, str, str2, str3, map));
    }

    public static /* synthetic */ void a(au auVar) {
        al.c("[ExtraCrashManager] Trying to notify Bugly agents.", new Object[0]);
        try {
            Class<?> cls = Class.forName("com.tencent.bugly.agent.GameAgent");
            auVar.f5723c.getClass();
            ap.a(cls, "sdkPackageName", "com.tencent.bugly");
            al.c("[ExtraCrashManager] Bugly game agent has been notified.", new Object[0]);
        } catch (Throwable unused) {
            al.a("[ExtraCrashManager] no game agent", new Object[0]);
        }
    }

    public static /* synthetic */ void a(au auVar, Thread thread, int i6, String str, String str2, String str3, Map map) {
        String str4;
        String str5;
        Thread threadCurrentThread = thread == null ? Thread.currentThread() : thread;
        if (i6 == 4) {
            str4 = "Unity";
        } else if (i6 == 5 || i6 == 6) {
            str4 = "Cocos";
        } else {
            if (i6 != 8) {
                al.d("[ExtraCrashManager] Unknown extra crash type: %d", Integer.valueOf(i6));
                return;
            }
            str4 = "H5";
        }
        al.e("[ExtraCrashManager] %s Crash Happen", str4);
        try {
            if (!auVar.f5722b.b()) {
                al.d("[ExtraCrashManager] There is no remote strategy, but still store it.", new Object[0]);
            }
            StrategyBean strategyBeanC = auVar.f5722b.c();
            if (!strategyBeanC.f && auVar.f5722b.b()) {
                al.e("[ExtraCrashManager] Crash report was closed by remote. Will not upload to Bugly , print local for helpful!", new Object[0]);
                as.a(str4, ap.a(), auVar.f5723c.d, threadCurrentThread.getName(), str + "\n" + str2 + "\n" + str3, null);
                al.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                return;
            }
            if (i6 != 5 && i6 != 6) {
                if (i6 == 8 && !strategyBeanC.f5507l) {
                    al.e("[ExtraCrashManager] %s report is disabled.", str4);
                    al.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                    return;
                }
            } else if (!strategyBeanC.f5506k) {
                al.e("[ExtraCrashManager] %s report is disabled.", str4);
                al.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                return;
            }
            int i10 = i6 != 8 ? i6 : 5;
            CrashDetailBean crashDetailBean = new CrashDetailBean();
            crashDetailBean.C = ab.j();
            crashDetailBean.D = ab.f();
            crashDetailBean.E = ab.l();
            crashDetailBean.F = auVar.f5723c.k();
            crashDetailBean.G = auVar.f5723c.j();
            crashDetailBean.H = auVar.f5723c.l();
            crashDetailBean.I = ab.b(auVar.f5724e);
            crashDetailBean.J = ab.g();
            crashDetailBean.K = ab.h();
            crashDetailBean.f5521b = i10;
            crashDetailBean.f5523e = auVar.f5723c.g();
            aa aaVar = auVar.f5723c;
            crashDetailBean.f = aaVar.f5582o;
            crashDetailBean.f5524g = aaVar.q();
            crashDetailBean.f5530m = auVar.f5723c.f();
            crashDetailBean.f5531n = String.valueOf(str);
            crashDetailBean.f5532o = String.valueOf(str2);
            String str6 = "";
            if (str3 == null) {
                str5 = "";
            } else {
                String[] strArrSplit = str3.split("\n");
                if (strArrSplit.length > 0) {
                    str6 = strArrSplit[0];
                }
                str5 = str3;
            }
            crashDetailBean.f5533p = str6;
            crashDetailBean.f5534q = str5;
            crashDetailBean.f5535r = System.currentTimeMillis();
            crashDetailBean.f5538u = ap.c(crashDetailBean.f5534q.getBytes());
            crashDetailBean.f5543z = ap.a(auVar.f5723c.Q, at.f5695h);
            crashDetailBean.A = auVar.f5723c.d;
            crashDetailBean.B = threadCurrentThread.getName() + "(" + threadCurrentThread.getId() + ")";
            crashDetailBean.L = auVar.f5723c.s();
            crashDetailBean.f5525h = auVar.f5723c.p();
            aa aaVar2 = auVar.f5723c;
            crashDetailBean.Q = aaVar2.f5569a;
            crashDetailBean.R = aaVar2.a();
            crashDetailBean.U = auVar.f5723c.z();
            aa aaVar3 = auVar.f5723c;
            crashDetailBean.V = aaVar3.f5591x;
            crashDetailBean.W = aaVar3.t();
            crashDetailBean.X = auVar.f5723c.y();
            crashDetailBean.f5542y = ao.a();
            if (crashDetailBean.S == null) {
                crashDetailBean.S = new LinkedHashMap();
            }
            if (map != null) {
                crashDetailBean.S.putAll(map);
            }
            as.a(str4, ap.a(), auVar.f5723c.d, threadCurrentThread.getName(), str + "\n" + str2 + "\n" + str3, crashDetailBean);
            if (!auVar.d.a(crashDetailBean, !at.a().C)) {
                auVar.d.b(crashDetailBean, false);
            }
            al.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
        } catch (Throwable th) {
            try {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
                al.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
            } catch (Throwable th2) {
                al.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                throw th2;
            }
        }
    }
}
