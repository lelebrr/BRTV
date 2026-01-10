package com.tencent.bugly.crashreport.crash.jni;

import a.e;
import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import androidx.media3.extractor.metadata.icy.IcyHeaders;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.aa;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.ac;
import com.tencent.bugly.proguard.ak;
import com.tencent.bugly.proguard.al;
import com.tencent.bugly.proguard.ap;
import com.tencent.bugly.proguard.as;
import com.tencent.bugly.proguard.at;
import com.tencent.bugly.proguard.bd;
import com.tencent.bugly.proguard.be;
import com.tencent.bugly.proguard.q;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class NativeCrashHandler implements q {

    /* renamed from: a, reason: collision with root package name */
    static String f5556a = null;

    /* renamed from: b, reason: collision with root package name */
    private static NativeCrashHandler f5557b = null;

    /* renamed from: c, reason: collision with root package name */
    private static int f5558c = 1;

    /* renamed from: n, reason: collision with root package name */
    private static boolean f5559n = true;
    private final Context d;

    /* renamed from: e, reason: collision with root package name */
    private final aa f5560e;
    private final ak f;

    /* renamed from: g, reason: collision with root package name */
    private NativeExceptionHandler f5561g;

    /* renamed from: h, reason: collision with root package name */
    private final boolean f5562h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f5563i = false;

    /* renamed from: j, reason: collision with root package name */
    private boolean f5564j = false;

    /* renamed from: k, reason: collision with root package name */
    private boolean f5565k = false;

    /* renamed from: l, reason: collision with root package name */
    private boolean f5566l = false;

    /* renamed from: m, reason: collision with root package name */
    private as f5567m;

    @SuppressLint({"SdCardPath"})
    private NativeCrashHandler(Context context, aa aaVar, as asVar, ak akVar, boolean z7, String str) {
        this.d = ap.a(context);
        if (ap.b(f5556a)) {
            try {
                if (ap.b(str)) {
                    str = context.getDir("bugly", 0).getAbsolutePath();
                }
            } catch (Throwable unused) {
                str = e.r("/data/data/", aa.a(context).f5572c, "/app_bugly");
            }
            f5556a = str;
        }
        this.f5567m = asVar;
        this.f5560e = aaVar;
        this.f = akVar;
        this.f5562h = z7;
        this.f5561g = new bd(context, aaVar, asVar, ac.a());
    }

    public static synchronized String getDumpFilePath() {
        return f5556a;
    }

    public static synchronized NativeCrashHandler getInstance(Context context, aa aaVar, as asVar, ac acVar, ak akVar, boolean z7, String str) {
        try {
            if (f5557b == null) {
                f5557b = new NativeCrashHandler(context, aaVar, asVar, akVar, z7, str);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f5557b;
    }

    private native String getProperties(String str);

    private native String getSoCpuAbi();

    public static boolean isShouldHandleInJava() {
        return f5559n;
    }

    public static synchronized void setDumpFilePath(String str) {
        f5556a = str;
    }

    public static void setShouldHandleInJava(boolean z7) {
        f5559n = z7;
        NativeCrashHandler nativeCrashHandler = f5557b;
        if (nativeCrashHandler != null) {
            nativeCrashHandler.a(999, String.valueOf(z7));
        }
    }

    @Override // com.tencent.bugly.proguard.q
    public boolean appendLogToNative(String str, String str2, String str3) {
        if ((this.f5563i || this.f5564j) && str != null && str2 != null && str3 != null) {
            try {
                if (this.f5564j) {
                    return appendNativeLog(str, str2, str3);
                }
                Boolean bool = (Boolean) ap.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "appendNativeLog", new Class[]{String.class, String.class, String.class}, new Object[]{str, str2, str3});
                if (bool != null) {
                    return bool.booleanValue();
                }
                return false;
            } catch (UnsatisfiedLinkError unused) {
            } catch (Throwable th) {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return false;
    }

    public native boolean appendNativeLog(String str, String str2, String str3);

    public native boolean appendWholeNativeLog(String str);

    public void checkUploadRecordCrash() {
        this.f.a(new a(this));
    }

    public void disableCatchAnrTrace() {
        f5558c = 1;
    }

    public void dumpAnrNativeStack() {
        a(19, IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
    }

    public void enableCatchAnrTrace() {
        f5558c |= 2;
    }

    public boolean filterSigabrtSysLog() {
        return a(998, "true");
    }

    @Override // com.tencent.bugly.proguard.q
    public String getLogFromNative() {
        if (!this.f5563i && !this.f5564j) {
            return null;
        }
        try {
            return this.f5564j ? getNativeLog() : (String) ap.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "getNativeLog", null, null);
        } catch (UnsatisfiedLinkError unused) {
            return null;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public NativeExceptionHandler getNativeExceptionHandler() {
        return this.f5561g;
    }

    public native String getNativeKeyValueList();

    public native String getNativeLog();

    public String getRunningCpuAbi() {
        try {
            return getSoCpuAbi();
        } catch (Throwable unused) {
            al.d("get so cpu abi failed，please upgrade bugly so version", new Object[0]);
            return "";
        }
    }

    public String getSystemProperty(String str) {
        return (this.f5564j || this.f5563i) ? getProperties(str) : "fail";
    }

    public boolean isEnableCatchAnrTrace() {
        return (f5558c & 2) == 2;
    }

    public synchronized boolean isUserOpened() {
        return this.f5566l;
    }

    public synchronized void onStrategyChanged(StrategyBean strategyBean) {
        if (strategyBean != null) {
            try {
                boolean z7 = strategyBean.f;
                if (z7 != this.f5565k) {
                    al.d("server native changed to %b", Boolean.valueOf(z7));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        boolean z10 = ac.a().c().f && this.f5566l;
        if (z10 != this.f5565k) {
            al.a("native changed to %b", Boolean.valueOf(z10));
            b(z10);
        }
    }

    public boolean putKeyValueToNative(String str, String str2) {
        if ((this.f5563i || this.f5564j) && str != null && str2 != null) {
            try {
                if (this.f5564j) {
                    return putNativeKeyValue(str, str2);
                }
                Boolean bool = (Boolean) ap.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "putNativeKeyValue", new Class[]{String.class, String.class}, new Object[]{str, str2});
                if (bool != null) {
                    return bool.booleanValue();
                }
                return false;
            } catch (UnsatisfiedLinkError unused) {
            } catch (Throwable th) {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return false;
    }

    public native boolean putNativeKeyValue(String str, String str2);

    public native String regist(String str, boolean z7, int i6);

    public void removeEmptyNativeRecordFiles() {
        be.c(f5556a);
    }

    public native String removeNativeKeyValue(String str);

    public void resendSigquit() {
        a(20, "");
    }

    public boolean setNativeAppChannel(String str) {
        return a(12, str);
    }

    public boolean setNativeAppPackage(String str) {
        return a(13, str);
    }

    public boolean setNativeAppVersion(String str) {
        return a(10, str);
    }

    public native void setNativeInfo(int i6, String str);

    @Override // com.tencent.bugly.proguard.q
    public boolean setNativeIsAppForeground(boolean z7) {
        return a(14, z7 ? "true" : "false");
    }

    public boolean setNativeLaunchTime(long j10) {
        try {
            return a(15, String.valueOf(j10));
        } catch (NumberFormatException e5) {
            if (al.a(e5)) {
                return false;
            }
            e5.printStackTrace();
            return false;
        }
    }

    public boolean setNativeUserId(String str) {
        return a(11, str);
    }

    public synchronized void setUserOpened(boolean z7) {
        try {
            c(z7);
            boolean zIsUserOpened = isUserOpened();
            ac acVarA = ac.a();
            if (acVarA != null) {
                zIsUserOpened = zIsUserOpened && acVarA.c().f;
            }
            if (zIsUserOpened != this.f5565k) {
                al.a("native changed to %b", Boolean.valueOf(zIsUserOpened));
                b(zIsUserOpened);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void startNativeMonitor() {
        try {
            if (!this.f5564j && !this.f5563i) {
                boolean zB = ap.b(this.f5560e.f5587t);
                boolean z7 = !zB;
                if (at.f5692b) {
                    boolean zA = a(zB ? "Bugly_Native" : this.f5560e.f5587t, z7);
                    this.f5564j = zA;
                    if (!zA && zB) {
                        this.f5563i = a("NativeRQD", false);
                    }
                } else {
                    String str = "Bugly_Native";
                    aa aaVar = this.f5560e;
                    String str2 = aaVar.f5587t;
                    if (zB) {
                        aaVar.getClass();
                    } else {
                        str = str2;
                    }
                    this.f5564j = a(str, z7);
                }
                if (this.f5564j || this.f5563i) {
                    a(this.f5562h);
                    setNativeAppVersion(this.f5560e.f5582o);
                    setNativeAppChannel(this.f5560e.f5586s);
                    setNativeAppPackage(this.f5560e.f5572c);
                    setNativeUserId(this.f5560e.f());
                    setNativeIsAppForeground(this.f5560e.a());
                    setNativeLaunchTime(this.f5560e.f5569a);
                    return;
                }
                return;
            }
            a(this.f5562h);
        } catch (Throwable th) {
            throw th;
        }
    }

    public native void testCrash();

    public void testNativeCrash() {
        if (this.f5564j) {
            testCrash();
        } else {
            al.d("[Native] Bugly SO file has not been load.", new Object[0]);
        }
    }

    public void unBlockSigquit(boolean z7) {
        if (z7) {
            a(21, "true");
        } else {
            a(21, "false");
        }
    }

    public native String unregist();

    private synchronized void c() {
        if (!this.f5565k) {
            al.d("[Native] Native crash report has already unregistered.", new Object[0]);
            return;
        }
        try {
        } catch (Throwable unused) {
            al.c("[Native] Failed to close native crash report.", new Object[0]);
        }
        if (unregist() != null) {
            al.a("[Native] Successfully closed native crash report.", new Object[0]);
            this.f5565k = false;
            return;
        }
        try {
            ap.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "enableHandler", new Class[]{Boolean.TYPE}, new Object[]{Boolean.FALSE});
            this.f5565k = false;
            al.a("[Native] Successfully closed native crash report.", new Object[0]);
            return;
        } catch (Throwable unused2) {
            al.c("[Native] Failed to close native crash report.", new Object[0]);
            this.f5564j = false;
            this.f5563i = false;
            return;
        }
    }

    private synchronized void b(boolean z7) {
        if (z7) {
            startNativeMonitor();
        } else {
            c();
        }
    }

    private synchronized void a(boolean z7) {
        if (this.f5565k) {
            al.d("[Native] Native crash report has already registered.", new Object[0]);
            return;
        }
        if (this.f5564j) {
            try {
                String strRegist = regist(f5556a, z7, f5558c);
                if (strRegist != null) {
                    al.a("[Native] Native Crash Report enable.", new Object[0]);
                    this.f5560e.f5588u = strRegist;
                    String strConcat = "-".concat(strRegist);
                    if (!at.f5692b && !this.f5560e.f5575h.contains(strConcat)) {
                        aa aaVar = this.f5560e;
                        aaVar.f5575h = aaVar.f5575h.concat("-").concat(this.f5560e.f5588u);
                    }
                    al.a("comInfo.sdkVersion %s", this.f5560e.f5575h);
                    this.f5565k = true;
                    String runningCpuAbi = getRunningCpuAbi();
                    if (!TextUtils.isEmpty(runningCpuAbi)) {
                        this.f5560e.e(runningCpuAbi);
                    }
                    return;
                }
            } catch (Throwable unused) {
                al.c("[Native] Failed to load Bugly SO file.", new Object[0]);
            }
        } else if (this.f5563i) {
            try {
                Class cls = Integer.TYPE;
                String str = (String) ap.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "registNativeExceptionHandler2", new Class[]{String.class, String.class, cls, cls}, new Object[]{f5556a, ab.d(), Integer.valueOf(z7 ? 1 : 5), 1});
                if (str == null) {
                    String strD = ab.d();
                    aa.b();
                    str = (String) ap.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "registNativeExceptionHandler", new Class[]{String.class, String.class, cls}, new Object[]{f5556a, strD, Integer.valueOf(aa.B())});
                }
                if (str != null) {
                    this.f5565k = true;
                    this.f5560e.f5588u = str;
                    ap.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "enableHandler", new Class[]{Boolean.TYPE}, new Object[]{Boolean.TRUE});
                    ap.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "setLogMode", new Class[]{cls}, new Object[]{Integer.valueOf(z7 ? 1 : 5)});
                    String runningCpuAbi2 = getRunningCpuAbi();
                    if (!TextUtils.isEmpty(runningCpuAbi2)) {
                        this.f5560e.e(runningCpuAbi2);
                    }
                    return;
                }
            } catch (Throwable unused2) {
            }
        }
        this.f5564j = false;
        this.f5563i = false;
    }

    public static synchronized NativeCrashHandler getInstance() {
        return f5557b;
    }

    public void testNativeCrash(boolean z7, boolean z10, boolean z11) {
        a(16, String.valueOf(z7));
        a(17, String.valueOf(z10));
        a(18, String.valueOf(z11));
        testNativeCrash();
    }

    private synchronized void c(boolean z7) {
        if (this.f5566l != z7) {
            al.a("user change native %b", Boolean.valueOf(z7));
            this.f5566l = z7;
        }
    }

    private static boolean a(String str, boolean z7) {
        boolean z10;
        try {
            al.a("[Native] Trying to load so: %s", str);
            if (z7) {
                System.load(str);
            } else {
                System.loadLibrary(str);
            }
        } catch (Throwable th) {
            th = th;
            z10 = false;
        }
        try {
            al.a("[Native] Successfully loaded SO: %s", str);
            return true;
        } catch (Throwable th2) {
            th = th2;
            z10 = true;
            al.d(th.getMessage(), new Object[0]);
            al.d("[Native] Failed to load so: %s", str);
            return z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i6, String str) {
        if (!this.f5564j) {
            return false;
        }
        try {
            setNativeInfo(i6, str);
            return true;
        } catch (UnsatisfiedLinkError unused) {
            return false;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return false;
        }
    }
}
