package b1;

import android.os.Trace;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import com.tencent.mars.xlog.Log;
import io.binstream.libtvcar.Libtvcar;
import java.lang.reflect.Method;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3117a;

    public /* synthetic */ l(int i6) {
        this.f3117a = i6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z7 = true;
        switch (this.f3117a) {
            case 0:
                try {
                    Method method = j0.n.f7426b;
                    Trace.beginSection("EmojiCompat.EmojiCompatInitializer.run");
                    if (i.f3106j == null) {
                        z7 = false;
                    }
                    if (z7) {
                        i.a().c();
                    }
                    Trace.endSection();
                    return;
                } catch (Throwable th) {
                    Method method2 = j0.n.f7426b;
                    Trace.endSection();
                    throw th;
                }
            case 1:
                NativeCrashHandler.getInstance().unBlockSigquit(true);
                return;
            case 2:
                NativeCrashHandler.getInstance().unBlockSigquit(false);
                return;
            case 3:
                ra.f fVarB = ra.f.b();
                if (!fVarB.c() || fVarB.f >= fVarB.f9641e.getSources().size()) {
                    return;
                }
                fVarB.f9640c.put(String.valueOf(fVarB.f9641e.getChid()), fVarB.f9641e.getSources().get(fVarB.f).getSubTitle());
                return;
            case 4:
                String strS = a2.a.s("unTEMwej8zmYS+Q3\n", "7iKHUnXwlks=\n");
                String strS2 = a2.a.s("6lzMMXPFEd7bCNk1ZIQPl8tdw2NrihLH\n", "uSitQwflfbc=\n");
                boolean z10 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS, strS2);
                Libtvcar.run();
                return;
            case 5:
                return;
            case 6:
                org.bitspark.android.utils.m.f8784b = false;
                return;
            default:
                org.bitspark.android.utils.m.f8784b = false;
                return;
        }
    }

    public String toString() {
        switch (this.f3117a) {
            case 5:
                return "EmptyRunnable";
            default:
                return super.toString();
        }
    }

    private final void a() {
    }
}
