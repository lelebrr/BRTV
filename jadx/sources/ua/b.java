package ua;

import android.util.Log;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final l6.h f10463a = new l6.h(10);

    /* renamed from: b, reason: collision with root package name */
    public final e f10464b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f10465c;

    public b(e eVar) {
        this.f10464b = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        while (true) {
            try {
                try {
                    i iVarN = this.f10463a.n();
                    if (iVarN == null) {
                        synchronized (this) {
                            iVarN = this.f10463a.m();
                            if (iVarN == null) {
                                this.f10465c = false;
                                this.f10465c = false;
                                return;
                            }
                        }
                    }
                    this.f10464b.c(iVarN);
                } catch (InterruptedException e5) {
                    Log.w("Event", Thread.currentThread().getName() + " was interruppted", e5);
                    this.f10465c = false;
                    return;
                }
            } catch (Throwable th) {
                this.f10465c = false;
                throw th;
            }
        }
    }
}
