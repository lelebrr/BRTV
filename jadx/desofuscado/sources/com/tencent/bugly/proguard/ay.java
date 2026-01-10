package com.tencent.bugly.proguard;

import android.app.ActivityManager;
import android.content.Context;
import android.os.FileObserver;
import android.os.Looper;
import android.text.TextUtils;
import androidx.media3.exoplayer.Renderer;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.anr.TraceFileHelper;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class ay {
    public static ay f;

    /* renamed from: b, reason: collision with root package name */
    public final ActivityManager f5739b;

    /* renamed from: c, reason: collision with root package name */
    final aa f5740c;
    final ak d;

    /* renamed from: e, reason: collision with root package name */
    String f5741e;

    /* renamed from: g, reason: collision with root package name */
    private final Context f5742g;

    /* renamed from: h, reason: collision with root package name */
    private final ac f5743h;

    /* renamed from: i, reason: collision with root package name */
    private final as f5744i;

    /* renamed from: k, reason: collision with root package name */
    private FileObserver f5746k;

    /* renamed from: m, reason: collision with root package name */
    private bg f5748m;

    /* renamed from: n, reason: collision with root package name */
    private int f5749n;

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f5738a = new AtomicBoolean(false);

    /* renamed from: j, reason: collision with root package name */
    private final Object f5745j = new Object();

    /* renamed from: l, reason: collision with root package name */
    private boolean f5747l = true;

    /* renamed from: o, reason: collision with root package name */
    private long f5750o = 0;

    public ay(Context context, ac acVar, aa aaVar, ak akVar, as asVar) {
        Context contextA = ap.a(context);
        this.f5742g = contextA;
        this.f5739b = (ActivityManager) contextA.getSystemService("activity");
        if (ap.b(NativeCrashHandler.getDumpFilePath())) {
            this.f5741e = context.getDir("bugly", 0).getAbsolutePath();
        } else {
            this.f5741e = NativeCrashHandler.getDumpFilePath();
        }
        this.f5740c = aaVar;
        this.d = akVar;
        this.f5743h = acVar;
        this.f5744i = asVar;
    }

    private synchronized void c() {
        if (e()) {
            al.d("start when started!", new Object[0]);
            return;
        }
        k0 k0Var = new k0(this);
        this.f5746k = k0Var;
        try {
            k0Var.startWatching();
            al.a("start anr monitor!", new Object[0]);
            this.d.a(new l0(this, 0));
        } catch (Throwable th) {
            this.f5746k = null;
            al.d("start anr monitor failed!", new Object[0]);
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private synchronized void d() {
        if (!e()) {
            al.d("close when closed!", new Object[0]);
            return;
        }
        try {
            this.f5746k.stopWatching();
            this.f5746k = null;
            al.d("close anr monitor!", new Object[0]);
        } catch (Throwable th) {
            al.d("stop anr monitor failed!", new Object[0]);
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private synchronized boolean e() {
        return this.f5746k != null;
    }

    private synchronized boolean f() {
        return this.f5747l;
    }

    private synchronized void g() {
        int i6 = 1;
        synchronized (this) {
            if (e()) {
                al.d("start when started!", new Object[0]);
                return;
            }
            if (TextUtils.isEmpty(this.f5741e)) {
                return;
            }
            synchronized (this.f5745j) {
                try {
                    bg bgVar = this.f5748m;
                    if (bgVar == null || !bgVar.isAlive()) {
                        bg bgVar2 = new bg();
                        this.f5748m = bgVar2;
                        boolean z7 = this.f5740c.S;
                        bgVar2.f5777b = z7;
                        al.c("set record stack trace enable:".concat(String.valueOf(z7)), new Object[0]);
                        bg bgVar3 = this.f5748m;
                        StringBuilder sb = new StringBuilder("Bugly-ThreadMonitor");
                        int i10 = this.f5749n;
                        this.f5749n = i10 + 1;
                        sb.append(i10);
                        bgVar3.setName(sb.toString());
                        this.f5748m.b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            k0 k0Var = new k0(this, this.f5741e);
            this.f5746k = k0Var;
            try {
                k0Var.startWatching();
                al.a("startWatchingPrivateAnrDir! dumFilePath is %s", this.f5741e);
                this.d.a(new l0(this, i6));
            } catch (Throwable th2) {
                this.f5746k = null;
                al.d("startWatchingPrivateAnrDir failed!", new Object[0]);
                if (al.a(th2)) {
                    return;
                }
                th2.printStackTrace();
            }
        }
    }

    private synchronized void h() {
        if (!e()) {
            al.d("close when closed!", new Object[0]);
            return;
        }
        synchronized (this.f5745j) {
            try {
                bg bgVar = this.f5748m;
                if (bgVar != null) {
                    bgVar.a();
                    this.f5748m = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        al.a("stopWatchingPrivateAnrDir", new Object[0]);
        try {
            this.f5746k.stopWatching();
            this.f5746k = null;
            al.d("close anr monitor!", new Object[0]);
        } catch (Throwable th2) {
            al.d("stop anr monitor failed!", new Object[0]);
            if (al.a(th2)) {
                return;
            }
            th2.printStackTrace();
        }
    }

    public final void b(boolean z7) {
        d(z7);
        boolean zF = f();
        ac acVarA = ac.a();
        if (acVarA != null) {
            zF = zF && acVarA.c().f;
        }
        if (zF != e()) {
            al.a("anr changed to %b", Boolean.valueOf(zF));
            c(zF);
        }
    }

    public static synchronized ay a() {
        return f;
    }

    private CrashDetailBean a(ax axVar) {
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        try {
            crashDetailBean.C = ab.j();
            crashDetailBean.D = ab.f();
            crashDetailBean.E = ab.l();
            crashDetailBean.F = this.f5740c.k();
            crashDetailBean.G = this.f5740c.j();
            crashDetailBean.H = this.f5740c.l();
            crashDetailBean.I = ab.b(this.f5742g);
            crashDetailBean.J = ab.g();
            crashDetailBean.K = ab.h();
            crashDetailBean.f5521b = 3;
            crashDetailBean.f5523e = this.f5740c.g();
            aa aaVar = this.f5740c;
            crashDetailBean.f = aaVar.f5582o;
            crashDetailBean.f5524g = aaVar.q();
            crashDetailBean.f5530m = this.f5740c.f();
            crashDetailBean.f5531n = "ANR_EXCEPTION";
            crashDetailBean.f5532o = axVar.f;
            crashDetailBean.f5534q = axVar.f5737g;
            HashMap map = new HashMap();
            crashDetailBean.T = map;
            map.put("BUGLY_CR_01", axVar.f5736e);
            String str = crashDetailBean.f5534q;
            int iIndexOf = str != null ? str.indexOf("\n") : -1;
            crashDetailBean.f5533p = iIndexOf > 0 ? crashDetailBean.f5534q.substring(0, iIndexOf) : "GET_FAIL";
            crashDetailBean.f5535r = axVar.f5735c;
            String str2 = crashDetailBean.f5534q;
            if (str2 != null) {
                crashDetailBean.f5538u = ap.c(str2.getBytes());
            }
            crashDetailBean.f5543z = axVar.f5734b;
            crashDetailBean.A = axVar.f5733a;
            crashDetailBean.B = "main(1)";
            crashDetailBean.L = this.f5740c.s();
            crashDetailBean.f5525h = this.f5740c.p();
            crashDetailBean.f5526i = this.f5740c.A();
            crashDetailBean.f5539v = axVar.d;
            aa aaVar2 = this.f5740c;
            crashDetailBean.P = aaVar2.f5588u;
            crashDetailBean.Q = aaVar2.f5569a;
            crashDetailBean.R = aaVar2.a();
            crashDetailBean.U = this.f5740c.z();
            aa aaVar3 = this.f5740c;
            crashDetailBean.V = aaVar3.f5591x;
            crashDetailBean.W = aaVar3.t();
            crashDetailBean.X = this.f5740c.y();
            crashDetailBean.f5542y = ao.a();
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
        }
        return crashDetailBean;
    }

    public final synchronized void b() {
        al.d("customer decides whether to open or close.", new Object[0]);
    }

    private synchronized void d(boolean z7) {
        if (this.f5747l != z7) {
            al.a("user change anr %b", Boolean.valueOf(z7));
            this.f5747l = z7;
        }
    }

    private synchronized void c(boolean z7) {
        if (z7) {
            g();
        } else {
            h();
        }
    }

    private static boolean a(String str, String str2, String str3) {
        Map<String, String[]> map;
        TraceFileHelper.a targetDumpInfo = TraceFileHelper.readTargetDumpInfo(str3, str, true);
        if (targetDumpInfo != null && (map = targetDumpInfo.d) != null && !map.isEmpty()) {
            StringBuilder sb = new StringBuilder(1024);
            String[] strArr = targetDumpInfo.d.get("main");
            if (strArr != null && strArr.length >= 3) {
                sb.append("\"main\" tid=");
                sb.append(strArr[2]);
                sb.append(" :\n");
                sb.append(strArr[0]);
                sb.append("\n");
                sb.append(strArr[1]);
                sb.append("\n\n");
            }
            for (Map.Entry<String, String[]> entry : targetDumpInfo.d.entrySet()) {
                if (!entry.getKey().equals("main") && entry.getValue() != null && entry.getValue().length >= 3) {
                    sb.append("\"");
                    sb.append(entry.getKey());
                    sb.append("\" tid=");
                    sb.append(entry.getValue()[2]);
                    sb.append(" :\n");
                    sb.append(entry.getValue()[0]);
                    sb.append("\n");
                    sb.append(entry.getValue()[1]);
                    sb.append("\n\n");
                }
            }
            return am.a(str2, sb.toString(), sb.length() * 2);
        }
        al.e("not found trace dump for %s", str3);
        return false;
    }

    private static String a(List<ba> list, long j10) {
        if (list != null && !list.isEmpty()) {
            StringBuilder sb = new StringBuilder(4096);
            sb.append("\n>>>>> 以下为anr过程中主线程堆栈记录，可根据堆栈出现次数推测在该堆栈阻塞的时间，出现次数越多对anr贡献越大，越可能是造成anr的原因 >>>>>\n\n>>>>> Thread Stack Traces Records Start >>>>>\n");
            for (int i6 = 0; i6 < list.size(); i6++) {
                ba baVar = list.get(i6);
                sb.append("Thread name:");
                sb.append(baVar.f5752a);
                sb.append("\n");
                long j11 = baVar.f5753b - j10;
                String str = j11 <= 0 ? "before " : "after ";
                sb.append("Got ");
                sb.append(str);
                sb.append("anr:");
                sb.append(Math.abs(j11));
                sb.append("ms\n");
                sb.append(baVar.f5754c);
                sb.append("\n");
                if (sb.length() * 2 >= 101376) {
                    break;
                }
            }
            sb.append("\n<<<<< Thread Stack Traces Records End <<<<<\n");
            return sb.toString();
        }
        return "main thread stack not enable";
    }

    public final boolean a(boolean z7) {
        boolean zCompareAndSet = this.f5738a.compareAndSet(!z7, z7);
        al.c("tryChangeAnrState to %s, success:%s", Boolean.valueOf(z7), Boolean.valueOf(zCompareAndSet));
        return zCompareAndSet;
    }

    public final void a(long j10, String str) {
        ActivityManager.ProcessErrorStateInfo processErrorStateInfoA;
        List<ba> listC;
        try {
            al.c("anr time:%s", Long.valueOf(j10));
            synchronized (this.f5745j) {
                try {
                    if (this.f5748m != null) {
                        al.c("Disable record main stack trace.", new Object[0]);
                        this.f5748m.c();
                    }
                } finally {
                }
            }
            String strA = ap.a(Looper.getMainLooper().getThread());
            Map<String, String> mapA = ap.a(this.f5740c.R, at.f5695h);
            if (this.f5740c.a()) {
                boolean z7 = ab.o() || ab.p();
                al.c("isAnrCrashDevice:%s", Boolean.valueOf(z7));
                if (!z7) {
                    processErrorStateInfoA = az.a(this.f5739b, 21000L);
                } else {
                    processErrorStateInfoA = az.a(this.f5739b, 0L);
                }
            } else {
                processErrorStateInfoA = az.a(this.f5739b, 0L);
            }
            if (processErrorStateInfoA == null) {
                al.c("proc state is invisible or not my proc!", new Object[0]);
                return;
            }
            ax axVar = new ax();
            axVar.f5735c = j10;
            axVar.f5733a = processErrorStateInfoA.processName;
            axVar.f = processErrorStateInfoA.shortMsg;
            axVar.f5736e = processErrorStateInfoA.longMsg;
            axVar.f5734b = mapA;
            axVar.f5737g = strA;
            if (TextUtils.isEmpty(strA)) {
                axVar.f5737g = "main stack is null , some error may be encountered.";
            }
            Long lValueOf = Long.valueOf(axVar.f5735c);
            String str2 = axVar.d;
            String str3 = axVar.f5733a;
            String str4 = axVar.f5737g;
            String str5 = axVar.f;
            String str6 = axVar.f5736e;
            Map<String, String> map = axVar.f5734b;
            al.c("anr time:%d\ntrace file:%s\nproc:%s\nmain stack:%s\nshort msg:%s\nlong msg:%s\n threads:%d", lValueOf, str2, str3, str4, str5, str6, Integer.valueOf(map == null ? 0 : map.size()));
            al.a("found visible anr , start to upload!", new Object[0]);
            al.c("trace file:%s", str);
            if (!TextUtils.isEmpty(str) && new File(str).exists()) {
                File file = new File(this.f5741e, "bugly_trace_" + j10 + ".txt");
                al.c("trace file exists", new Object[0]);
                if (str.startsWith("/data/anr/")) {
                    al.a("backup trace isOK:%s", Boolean.valueOf(a(str, file.getAbsolutePath(), axVar.f5733a)));
                } else {
                    al.a("trace file rename :%s", Boolean.valueOf(new File(str).renameTo(file)));
                }
                synchronized (this.f5745j) {
                    try {
                        bg bgVar = this.f5748m;
                        listC = bgVar != null ? bgVar.f5776a.c() : null;
                    } finally {
                    }
                }
                if (listC != null) {
                    String strA2 = a(listC, j10);
                    al.c("save main stack trace", new Object[0]);
                    am.a(file, strA2, 2147483647L, true);
                }
                axVar.d = file.getAbsolutePath();
            } else {
                al.c("trace file is null or not exists, just ignore", new Object[0]);
            }
            CrashDetailBean crashDetailBeanA = a(axVar);
            at.a().a(crashDetailBeanA);
            if (crashDetailBeanA.f5519a >= 0) {
                al.a("backup anr record success!", new Object[0]);
            } else {
                al.d("backup anr record fail!", new Object[0]);
            }
            as.a("ANR", ap.a(j10), axVar.f5733a, "main", axVar.f5737g, crashDetailBeanA);
            if (!this.f5744i.a(crashDetailBeanA, !ab.r())) {
                this.f5744i.b(crashDetailBeanA, true);
            }
            this.f5744i.a(crashDetailBeanA);
            synchronized (this.f5745j) {
                try {
                    if (this.f5748m != null) {
                        al.c("Finish anr process.", new Object[0]);
                        this.f5748m.d();
                    }
                } finally {
                }
            }
        } catch (Throwable th) {
            try {
                al.b(th);
            } finally {
                a(false);
            }
        }
    }

    public final boolean a(long j10) {
        if (Math.abs(j10 - this.f5750o) < Renderer.DEFAULT_DURATION_TO_PROGRESS_US) {
            al.d("should not process ANR too Fre in %dms", 10000);
            return true;
        }
        this.f5750o = j10;
        return false;
    }

    public static /* synthetic */ void a(ay ayVar) {
        long jCurrentTimeMillis = (System.currentTimeMillis() + at.f5697j) - ap.b();
        am.a(ayVar.f5741e, "bugly_trace_", ".txt", jCurrentTimeMillis);
        am.a(ayVar.f5741e, "manual_bugly_trace_", ".txt", jCurrentTimeMillis);
        am.a(ayVar.f5741e, "main_stack_record_", ".txt", jCurrentTimeMillis);
        am.a(ayVar.f5741e, "main_stack_record_", ".txt.merged", jCurrentTimeMillis);
    }
}
