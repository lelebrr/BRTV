package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import java.lang.Thread;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class av implements Thread.UncaughtExceptionHandler {

    /* renamed from: h, reason: collision with root package name */
    private static String f5725h;

    /* renamed from: i, reason: collision with root package name */
    private static final Object f5726i = new Object();

    /* renamed from: a, reason: collision with root package name */
    protected final Context f5727a;

    /* renamed from: b, reason: collision with root package name */
    protected final as f5728b;

    /* renamed from: c, reason: collision with root package name */
    protected final ac f5729c;
    protected final aa d;

    /* renamed from: e, reason: collision with root package name */
    protected Thread.UncaughtExceptionHandler f5730e;
    protected Thread.UncaughtExceptionHandler f;

    /* renamed from: g, reason: collision with root package name */
    protected boolean f5731g = false;

    /* renamed from: j, reason: collision with root package name */
    private int f5732j;

    public av(Context context, as asVar, ac acVar, aa aaVar) {
        this.f5727a = context;
        this.f5728b = asVar;
        this.f5729c = acVar;
        this.d = aaVar;
    }

    private static void c() {
        al.e("current process die", new Object[0]);
        Process.killProcess(Process.myPid());
        System.exit(1);
    }

    public final synchronized void a() {
        if (this.f5732j >= 10) {
            al.a("java crash handler over %d, no need set.", 10);
            return;
        }
        this.f5731g = true;
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler != null) {
            if (av.class.getName().equals(defaultUncaughtExceptionHandler.getClass().getName())) {
                return;
            }
            if ("com.android.internal.os.RuntimeInit$UncaughtHandler".equals(defaultUncaughtExceptionHandler.getClass().getName())) {
                al.a("backup system java handler: %s", defaultUncaughtExceptionHandler.toString());
                this.f = defaultUncaughtExceptionHandler;
                this.f5730e = defaultUncaughtExceptionHandler;
            } else {
                al.a("backup java handler: %s", defaultUncaughtExceptionHandler.toString());
                this.f5730e = defaultUncaughtExceptionHandler;
            }
        }
        Thread.setDefaultUncaughtExceptionHandler(this);
        this.f5732j++;
        al.a("registered java monitor: %s", toString());
    }

    public final synchronized void b() {
        this.f5731g = false;
        al.a("close java monitor!", new Object[0]);
        if ("bugly".equals(Thread.getDefaultUncaughtExceptionHandler().getClass().getName())) {
            al.a("Java monitor to unregister: %s", toString());
            Thread.setDefaultUncaughtExceptionHandler(this.f5730e);
            this.f5732j--;
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (f5726i) {
            a(thread, th, true, null, null, this.d.Q);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0106  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.tencent.bugly.crashreport.crash.CrashDetailBean b(java.lang.Thread r6, java.lang.Throwable r7, boolean r8, java.lang.String r9, byte[] r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.av.b(java.lang.Thread, java.lang.Throwable, boolean, java.lang.String, byte[], boolean):com.tencent.bugly.crashreport.crash.CrashDetailBean");
    }

    private static void a(CrashDetailBean crashDetailBean, Throwable th, boolean z7) {
        String strA;
        String name = th.getClass().getName();
        String strA2 = a(th);
        al.e("stack frame :%d, has cause %b", Integer.valueOf(th.getStackTrace().length), Boolean.valueOf(th.getCause() != null));
        String str = "";
        String string = th.getStackTrace().length > 0 ? th.getStackTrace()[0].toString() : "";
        Throwable cause = th;
        while (cause != null && cause.getCause() != null) {
            cause = cause.getCause();
        }
        if (cause != null && cause != th) {
            crashDetailBean.f5531n = cause.getClass().getName();
            crashDetailBean.f5532o = a(cause);
            if (cause.getStackTrace().length > 0) {
                crashDetailBean.f5533p = cause.getStackTrace()[0].toString();
            }
            StringBuilder sb = new StringBuilder();
            sb.append(name);
            sb.append(":");
            sb.append(strA2);
            sb.append("\n");
            sb.append(string);
            sb.append("\n......\nCaused by:\n");
            sb.append(crashDetailBean.f5531n);
            sb.append(":");
            sb.append(crashDetailBean.f5532o);
            sb.append("\n");
            strA = a(cause, at.f5695h);
            sb.append(strA);
            crashDetailBean.f5534q = sb.toString();
        } else {
            crashDetailBean.f5531n = name;
            if (at.a().i() && z7) {
                al.e("This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!", new Object[0]);
                str = " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]";
            }
            crashDetailBean.f5532o = ea.q.h(strA2, str);
            crashDetailBean.f5533p = string;
            strA = a(th, at.f5695h);
            crashDetailBean.f5534q = strA;
        }
        crashDetailBean.f5538u = ap.c(crashDetailBean.f5534q.getBytes());
        crashDetailBean.f5543z.put(crashDetailBean.B, strA);
    }

    private static boolean a(Thread thread) {
        synchronized (f5726i) {
            try {
                if (f5725h != null && thread.getName().equals(f5725h)) {
                    return true;
                }
                f5725h = thread.getName();
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(Thread thread, Throwable th, boolean z7, String str, byte[] bArr, boolean z10) {
        if (z7) {
            al.e("Java Crash Happen cause by %s(%d)", thread.getName(), Long.valueOf(thread.getId()));
            if (a(thread)) {
                al.a("this class has handled this exception", new Object[0]);
                if (this.f != null) {
                    al.a("call system handler", new Object[0]);
                    this.f.uncaughtException(thread, th);
                } else {
                    c();
                }
            }
        } else {
            al.e("Java Catch Happen", new Object[0]);
        }
        try {
            if (!this.f5731g) {
                al.c("Java crash handler is disable. Just return.", new Object[0]);
                if (z7) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f5730e;
                    if (uncaughtExceptionHandler != null && a(uncaughtExceptionHandler)) {
                        al.e("sys default last handle start!", new Object[0]);
                        this.f5730e.uncaughtException(thread, th);
                        al.e("sys default last handle end!", new Object[0]);
                        return;
                    } else if (this.f != null) {
                        al.e("system handle start!", new Object[0]);
                        this.f.uncaughtException(thread, th);
                        al.e("system handle end!", new Object[0]);
                        return;
                    } else {
                        al.e("crashreport last handle start!", new Object[0]);
                        c();
                        al.e("crashreport last handle end!", new Object[0]);
                        return;
                    }
                }
                return;
            }
            if (!this.f5729c.b()) {
                al.d("no remote but still store!", new Object[0]);
            }
            if (!this.f5729c.c().f && this.f5729c.b()) {
                al.e("crash report was closed by remote , will not upload to Bugly , print local for helpful!", new Object[0]);
                as.a(z7 ? "JAVA_CRASH" : "JAVA_CATCH", ap.a(), this.d.d, thread.getName(), ap.a(th), null);
                if (z7) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f5730e;
                    if (uncaughtExceptionHandler2 != null && a(uncaughtExceptionHandler2)) {
                        al.e("sys default last handle start!", new Object[0]);
                        this.f5730e.uncaughtException(thread, th);
                        al.e("sys default last handle end!", new Object[0]);
                        return;
                    } else if (this.f != null) {
                        al.e("system handle start!", new Object[0]);
                        this.f.uncaughtException(thread, th);
                        al.e("system handle end!", new Object[0]);
                        return;
                    } else {
                        al.e("crashreport last handle start!", new Object[0]);
                        c();
                        al.e("crashreport last handle end!", new Object[0]);
                        return;
                    }
                }
                return;
            }
            CrashDetailBean crashDetailBeanB = b(thread, th, z7, str, bArr, z10);
            if (crashDetailBeanB == null) {
                al.e("pkg crash datas fail!", new Object[0]);
                if (z7) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler3 = this.f5730e;
                    if (uncaughtExceptionHandler3 != null && a(uncaughtExceptionHandler3)) {
                        al.e("sys default last handle start!", new Object[0]);
                        this.f5730e.uncaughtException(thread, th);
                        al.e("sys default last handle end!", new Object[0]);
                        return;
                    } else if (this.f != null) {
                        al.e("system handle start!", new Object[0]);
                        this.f.uncaughtException(thread, th);
                        al.e("system handle end!", new Object[0]);
                        return;
                    } else {
                        al.e("crashreport last handle start!", new Object[0]);
                        c();
                        al.e("crashreport last handle end!", new Object[0]);
                        return;
                    }
                }
                return;
            }
            as.a(z7 ? "JAVA_CRASH" : "JAVA_CATCH", ap.a(), this.d.d, thread.getName(), ap.a(th), crashDetailBeanB);
            if (!this.f5728b.a(crashDetailBeanB, z7)) {
                this.f5728b.b(crashDetailBeanB, z7);
            }
            if (z7) {
                this.f5728b.a(crashDetailBeanB);
            }
            if (z7) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler4 = this.f5730e;
                if (uncaughtExceptionHandler4 != null && a(uncaughtExceptionHandler4)) {
                    al.e("sys default last handle start!", new Object[0]);
                    this.f5730e.uncaughtException(thread, th);
                    al.e("sys default last handle end!", new Object[0]);
                } else if (this.f != null) {
                    al.e("system handle start!", new Object[0]);
                    this.f.uncaughtException(thread, th);
                    al.e("system handle end!", new Object[0]);
                } else {
                    al.e("crashreport last handle start!", new Object[0]);
                    c();
                    al.e("crashreport last handle end!", new Object[0]);
                }
            }
        } catch (Throwable th2) {
            try {
                if (!al.a(th2)) {
                    th2.printStackTrace();
                }
                if (z7) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler5 = this.f5730e;
                    if (uncaughtExceptionHandler5 != null && a(uncaughtExceptionHandler5)) {
                        al.e("sys default last handle start!", new Object[0]);
                        this.f5730e.uncaughtException(thread, th);
                        al.e("sys default last handle end!", new Object[0]);
                    } else if (this.f != null) {
                        al.e("system handle start!", new Object[0]);
                        this.f.uncaughtException(thread, th);
                        al.e("system handle end!", new Object[0]);
                    } else {
                        al.e("crashreport last handle start!", new Object[0]);
                        c();
                        al.e("crashreport last handle end!", new Object[0]);
                    }
                }
            } catch (Throwable th3) {
                if (z7) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler6 = this.f5730e;
                    if (uncaughtExceptionHandler6 != null && a(uncaughtExceptionHandler6)) {
                        al.e("sys default last handle start!", new Object[0]);
                        this.f5730e.uncaughtException(thread, th);
                        al.e("sys default last handle end!", new Object[0]);
                    } else if (this.f != null) {
                        al.e("system handle start!", new Object[0]);
                        this.f.uncaughtException(thread, th);
                        al.e("system handle end!", new Object[0]);
                    } else {
                        al.e("crashreport last handle start!", new Object[0]);
                        c();
                        al.e("crashreport last handle end!", new Object[0]);
                    }
                }
                throw th3;
            }
        }
    }

    private static boolean a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        if (uncaughtExceptionHandler == null) {
            return true;
        }
        String name = uncaughtExceptionHandler.getClass().getName();
        for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
            String className = stackTraceElement.getClassName();
            String methodName = stackTraceElement.getMethodName();
            if (name.equals(className) && "uncaughtException".equals(methodName)) {
                return false;
            }
        }
        return true;
    }

    public final synchronized void a(StrategyBean strategyBean) {
        if (strategyBean != null) {
            boolean z7 = strategyBean.f;
            if (z7 != this.f5731g) {
                al.a("java changed to %b", Boolean.valueOf(z7));
                if (strategyBean.f) {
                    a();
                    return;
                }
                b();
            }
        }
    }

    private static String a(Throwable th, int i6) {
        if (th == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        try {
            if (th.getStackTrace() != null) {
                for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                    if (i6 > 0 && sb.length() >= i6) {
                        sb.append("\n[Stack over limit size :" + i6 + " , has been cutted !]");
                        return sb.toString();
                    }
                    sb.append(stackTraceElement.toString());
                    sb.append("\n");
                }
            }
        } catch (Throwable th2) {
            al.e("gen stack error %s", th2.toString());
        }
        return sb.toString();
    }

    private static String a(Throwable th) {
        String message = th.getMessage();
        if (message == null) {
            return "";
        }
        if (message.length() <= 1000) {
            return message;
        }
        return message.substring(0, 1000) + "\n[Message over limit size:1000, has been cutted!]";
    }
}
