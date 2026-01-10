package com.tencent.bugly.proguard;

import android.app.Application;
import android.content.Context;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.biz.UserInfoBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f5949a = false;

    /* renamed from: b, reason: collision with root package name */
    public static r f5950b = null;

    /* renamed from: c, reason: collision with root package name */
    private static int f5951c = 10;
    private static long d = 300000;

    /* renamed from: e, reason: collision with root package name */
    private static long f5952e = 30000;
    private static long f = 0;

    /* renamed from: g, reason: collision with root package name */
    private static int f5953g = 0;

    /* renamed from: h, reason: collision with root package name */
    private static long f5954h = 0;

    /* renamed from: i, reason: collision with root package name */
    private static long f5955i = 0;

    /* renamed from: j, reason: collision with root package name */
    private static long f5956j = 0;

    /* renamed from: k, reason: collision with root package name */
    private static Application.ActivityLifecycleCallbacks f5957k = null;

    /* renamed from: l, reason: collision with root package name */
    private static Class<?> f5958l = null;

    /* renamed from: m, reason: collision with root package name */
    private static boolean f5959m = true;

    public static void a(Context context, BuglyStrategy buglyStrategy) {
        long appReportDelay;
        if (f5949a) {
            return;
        }
        boolean z7 = aa.a(context).f;
        f5959m = z7;
        f5950b = new r(context, z7);
        f5949a = true;
        if (buglyStrategy != null) {
            f5958l = buglyStrategy.getUserInfoActivity();
            appReportDelay = buglyStrategy.getAppReportDelay();
        } else {
            appReportDelay = 0;
        }
        if (appReportDelay <= 0) {
            c(context, buglyStrategy);
        } else {
            ak.a().a(new a3.c(12, context, buglyStrategy, false), appReportDelay);
        }
    }

    public static /* synthetic */ int g() {
        int i6 = f5953g;
        f5953g = i6 + 1;
        return i6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context, BuglyStrategy buglyStrategy) {
        boolean zIsEnableUserInfo;
        boolean zRecordUserInfoOnceADay;
        if (buglyStrategy != null) {
            zRecordUserInfoOnceADay = buglyStrategy.recordUserInfoOnceADay();
            zIsEnableUserInfo = buglyStrategy.isEnableUserInfo();
        } else {
            zIsEnableUserInfo = true;
            zRecordUserInfoOnceADay = false;
        }
        if (zRecordUserInfoOnceADay) {
            aa aaVarA = aa.a(context);
            List<UserInfoBean> listA = r.a(aaVarA.d);
            if (listA != null) {
                for (int i6 = 0; i6 < listA.size(); i6++) {
                    UserInfoBean userInfoBean = listA.get(i6);
                    if (userInfoBean.f5489n.equals(aaVarA.f5582o) && userInfoBean.f5479b == 1) {
                        long jB = ap.b();
                        if (jB <= 0) {
                            break;
                        }
                        if (userInfoBean.f5481e >= jB) {
                            if (userInfoBean.f <= 0) {
                                f5950b.b();
                                return;
                            }
                            return;
                        }
                    }
                }
            }
            zIsEnableUserInfo = false;
        }
        aa aaVarB = aa.b();
        if (aaVarB != null && z.a()) {
            aaVarB.a(0, true);
        }
        if (zIsEnableUserInfo) {
            Application application = context.getApplicationContext() instanceof Application ? (Application) context.getApplicationContext() : null;
            if (application != null) {
                try {
                    if (f5957k == null) {
                        f5957k = new o0();
                    }
                    application.registerActivityLifecycleCallbacks(f5957k);
                } catch (Exception e5) {
                    if (!al.a(e5)) {
                        e5.printStackTrace();
                    }
                }
            }
        }
        if (f5959m) {
            f5955i = System.currentTimeMillis();
            f5950b.a(1, false);
            al.a("[session] launch app, new start", new Object[0]);
            f5950b.a();
            f5950b.a(21600000L);
        }
    }

    public static void a(long j10) {
        if (j10 < 0) {
            j10 = ac.a().c().f5511p;
        }
        f = j10;
    }

    public static void a(StrategyBean strategyBean, boolean z7) {
        r rVar = f5950b;
        if (rVar != null && !z7) {
            rVar.b();
        }
        if (strategyBean == null) {
            return;
        }
        long j10 = strategyBean.f5511p;
        if (j10 > 0) {
            f5952e = j10;
        }
        int i6 = strategyBean.f5516u;
        if (i6 > 0) {
            f5951c = i6;
        }
        long j11 = strategyBean.f5517v;
        if (j11 > 0) {
            d = j11;
        }
    }

    public static void a() {
        r rVar = f5950b;
        if (rVar != null) {
            rVar.a(2, false);
        }
    }

    public static void a(Context context) {
        if (!f5949a || context == null) {
            return;
        }
        Application application = context.getApplicationContext() instanceof Application ? (Application) context.getApplicationContext() : null;
        if (application != null) {
            try {
                Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = f5957k;
                if (activityLifecycleCallbacks != null) {
                    application.unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
                }
            } catch (Exception e5) {
                if (!al.a(e5)) {
                    e5.printStackTrace();
                }
            }
        }
        f5949a = false;
    }

    public static /* synthetic */ String a(String str, String str2) {
        return ap.a() + "  " + str + "  " + str2 + "\n";
    }
}
