package com.tencent.bugly.proguard;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class bg extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public bf f5776a;

    /* renamed from: g, reason: collision with root package name */
    private a f5780g;

    /* renamed from: c, reason: collision with root package name */
    private boolean f5778c = false;
    private boolean d = true;

    /* renamed from: e, reason: collision with root package name */
    private boolean f5779e = false;
    private int f = 1;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5777b = true;

    /* compiled from: MyApplication */
    public interface a {
    }

    public final boolean a() {
        this.f5778c = true;
        if (!isAlive()) {
            return false;
        }
        try {
            interrupt();
        } catch (Exception e5) {
            al.b(e5);
        }
        al.d("MainHandlerChecker is reset to null.", new Object[0]);
        this.f5776a = null;
        return true;
    }

    public final boolean b() {
        Handler handler = new Handler(Looper.getMainLooper());
        bf bfVar = this.f5776a;
        if (bfVar != null) {
            bfVar.f5772b = 5000L;
        } else {
            this.f5776a = new bf(handler, handler.getLooper().getThread().getName());
        }
        if (isAlive()) {
            return false;
        }
        try {
            start();
            return true;
        } catch (Exception e5) {
            al.b(e5);
            return false;
        }
    }

    public final synchronized void c() {
        this.d = false;
        al.c("Record stack trace is disabled.", new Object[0]);
    }

    public final synchronized void d() {
        this.f5779e = true;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        bf bfVar;
        boolean z7;
        long jCurrentTimeMillis = System.currentTimeMillis();
        while (!this.f5778c) {
            try {
                bfVar = this.f5776a;
                z7 = false;
            } catch (Exception e5) {
                al.b(e5);
            } catch (OutOfMemoryError e10) {
                al.b(e10);
            }
            if (bfVar == null) {
                al.c("Main handler checker is null. Stop thread monitor.", new Object[0]);
                return;
            }
            if (bfVar.f5773c) {
                bfVar.f5773c = false;
                bfVar.d = SystemClock.uptimeMillis();
                bfVar.f5771a.post(bfVar);
            }
            a(bfVar);
            if (this.f5777b && this.d) {
                long jB = bfVar.b();
                if (jB > 1510 && jB < 199990) {
                    boolean z10 = true;
                    if (jB <= 5010) {
                        this.f = 1;
                        al.c("timeSinceMsgSent in [2s, 5s], record stack", new Object[0]);
                        z7 = true;
                    } else {
                        int i6 = this.f;
                        int i10 = i6 + 1;
                        this.f = i10;
                        if ((i6 & i10) != 0) {
                            z10 = false;
                        }
                        if (z10) {
                            al.c("timeSinceMsgSent in (5s, 200s), should record stack:true", new Object[0]);
                        }
                        z7 = z10;
                    }
                }
            }
            if (z7) {
                bfVar.d();
            }
            if (this.f5780g != null && this.d) {
                bfVar.a();
                bfVar.b();
            }
            ap.b(500 - ((System.currentTimeMillis() - jCurrentTimeMillis) % 500));
        }
    }

    private synchronized void a(bf bfVar) {
        if (this.d) {
            return;
        }
        if (this.f5779e && !bfVar.a()) {
            al.c("Restart getting main stack trace.", new Object[0]);
            this.d = true;
            this.f5779e = false;
        }
    }
}
