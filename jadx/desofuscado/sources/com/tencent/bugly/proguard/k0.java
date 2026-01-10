package com.tencent.bugly.proguard;

import android.os.FileObserver;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k0 extends FileObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5920a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ay f5921b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k0(ay ayVar) {
        super("/data/anr/", 8);
        this.f5921b = ayVar;
    }

    @Override // android.os.FileObserver
    public final void onEvent(int i6, String str) {
        ay ayVar = this.f5921b;
        switch (this.f5920a) {
            case 0:
                if (str != null) {
                    String strConcat = "/data/anr/".concat(str);
                    al.d("watching file %s", strConcat);
                    if (!strConcat.contains("trace")) {
                        al.d("not anr file %s", strConcat);
                        break;
                    } else {
                        ayVar.d.a(new a3.c(this, 11, strConcat));
                        break;
                    }
                }
                break;
            default:
                if (str != null) {
                    al.d("observe file, dir:%s fileName:%s", ayVar.f5741e, str);
                    if (!str.startsWith("manual_bugly_trace_") || !str.endsWith(".txt")) {
                        al.c("not manual trace file, ignore.", new Object[0]);
                        break;
                    } else if (!ayVar.f5738a.get()) {
                        al.c("proc is not in anr, just ignore", new Object[0]);
                        break;
                    } else if (!ayVar.f5740c.a()) {
                        al.c("Found background anr, resend sigquit later.", new Object[0]);
                        ayVar.a(am.a(str, "manual_bugly_trace_", ".txt"), ayVar.f5741e + "/" + str);
                        al.c("Finish handling one anr, now resend sigquit.", new Object[0]);
                        NativeCrashHandler.getInstance().resendSigquit();
                        break;
                    } else {
                        al.c("Found foreground anr, resend sigquit immediately.", new Object[0]);
                        NativeCrashHandler.getInstance().resendSigquit();
                        ayVar.a(am.a(str, "manual_bugly_trace_", ".txt"), ayVar.f5741e + "/" + str);
                        al.c("Finish handling one anr.", new Object[0]);
                        break;
                    }
                }
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k0(ay ayVar, String str) {
        super(str, 8);
        this.f5921b = ayVar;
    }
}
