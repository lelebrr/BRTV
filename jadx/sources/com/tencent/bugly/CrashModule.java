package com.tencent.bugly;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.aa;
import com.tencent.bugly.proguard.al;
import com.tencent.bugly.proguard.aq;
import com.tencent.bugly.proguard.at;
import com.tencent.bugly.proguard.au;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.u;
import com.tencent.bugly.proguard.z;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class CrashModule extends o {
    public static final int MODULE_ID = 1004;

    /* renamed from: c, reason: collision with root package name */
    private static int f5471c;

    /* renamed from: e, reason: collision with root package name */
    private static CrashModule f5472e = new CrashModule();

    /* renamed from: a, reason: collision with root package name */
    private long f5473a;

    /* renamed from: b, reason: collision with root package name */
    private BuglyStrategy.a f5474b;
    private boolean d = false;

    private synchronized void a(Context context, BuglyStrategy buglyStrategy) {
        if (buglyStrategy == null) {
            return;
        }
        try {
            String libBuglySOFilePath = buglyStrategy.getLibBuglySOFilePath();
            if (!TextUtils.isEmpty(libBuglySOFilePath)) {
                aa.a(context).f5587t = libBuglySOFilePath;
                al.a("setted libBugly.so file path :%s", libBuglySOFilePath);
            }
            if (buglyStrategy.getCrashHandleCallback() != null) {
                this.f5474b = buglyStrategy.getCrashHandleCallback();
                al.a("setted CrashHanldeCallback", new Object[0]);
            }
            if (buglyStrategy.getAppReportDelay() > 0) {
                long appReportDelay = buglyStrategy.getAppReportDelay();
                this.f5473a = appReportDelay;
                al.a("setted delay: %d", Long.valueOf(appReportDelay));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static CrashModule getInstance() {
        CrashModule crashModule = f5472e;
        crashModule.id = 1004;
        return crashModule;
    }

    @Override // com.tencent.bugly.proguard.o
    public String[] getTables() {
        return new String[]{"t_cr"};
    }

    public synchronized boolean hasInitialized() {
        return this.d;
    }

    @Override // com.tencent.bugly.proguard.o
    public synchronized void init(Context context, boolean z7, BuglyStrategy buglyStrategy) {
        if (context != null) {
            try {
                if (!this.d) {
                    al.a("Initializing crash module.", new Object[0]);
                    u uVarA = u.a();
                    int i6 = f5471c + 1;
                    f5471c = i6;
                    uVarA.a(i6);
                    this.d = true;
                    CrashReport.setContext(context);
                    a(context, buglyStrategy);
                    at atVarA = at.a(context, z7, this.f5474b);
                    atVarA.f5708t.a();
                    if (buglyStrategy != null) {
                        atVarA.B = buglyStrategy.getCallBackType();
                        atVarA.C = buglyStrategy.getCloseErrorCallback();
                        at.f5702o = buglyStrategy.isUploadSpotCrash();
                        aa.a(context).S = buglyStrategy.isEnableRecordAnrMainStack();
                        if (buglyStrategy.isEnableCatchAnrTrace()) {
                            atVarA.f5709u.enableCatchAnrTrace();
                        } else {
                            atVarA.f5709u.disableCatchAnrTrace();
                        }
                    } else {
                        atVarA.f5709u.enableCatchAnrTrace();
                    }
                    if (aa.b().d.equals(z.a(atVarA.f5706c))) {
                        atVarA.f5709u.removeEmptyNativeRecordFiles();
                    }
                    if (buglyStrategy == null || buglyStrategy.isEnableNativeCrashMonitor()) {
                        atVarA.e();
                    } else {
                        al.a("[crash] Closed native crash monitor!", new Object[0]);
                        atVarA.d();
                    }
                    if (buglyStrategy == null || buglyStrategy.isEnableANRCrashMonitor()) {
                        atVarA.f();
                    } else {
                        al.a("[crash] Closed ANR monitor!", new Object[0]);
                        atVarA.g();
                    }
                    if (buglyStrategy != null) {
                        at.f5693e = buglyStrategy.isMerged();
                    }
                    atVarA.a(buglyStrategy != null ? buglyStrategy.getAppReportDelay() : 0L);
                    atVarA.f5709u.checkUploadRecordCrash();
                    au.a(context);
                    aq aqVarA = aq.a();
                    aqVarA.a("android.net.conn.CONNECTIVITY_CHANGE");
                    aqVarA.a(context);
                    u uVarA2 = u.a();
                    int i10 = f5471c - 1;
                    f5471c = i10;
                    uVarA2.a(i10);
                }
            } finally {
            }
        }
    }

    @Override // com.tencent.bugly.proguard.o
    public void onServerStrategyChanged(StrategyBean strategyBean) {
        at atVarA;
        if (strategyBean == null || (atVarA = at.a()) == null) {
            return;
        }
        atVarA.f5708t.a(strategyBean);
        atVarA.f5709u.onStrategyChanged(strategyBean);
        atVarA.f5712x.b();
    }
}
