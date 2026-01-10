package ua;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.fragment.app.q;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class g extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final l6.h f10487a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10488b;

    /* renamed from: c, reason: collision with root package name */
    public final e f10489c;
    public boolean d;

    public g(e eVar, Looper looper) {
        super(looper);
        this.f10489c = eVar;
        this.f10488b = 10;
        this.f10487a = new l6.h(10);
    }

    public final void a(n nVar, Object obj) {
        i iVarA = i.a(nVar, obj);
        synchronized (this) {
            try {
                this.f10487a.g(iVarA);
                if (!this.d) {
                    this.d = true;
                    if (!sendMessage(obtainMessage())) {
                        throw new q("Could not send handler message", 9);
                    }
                }
            } finally {
            }
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            do {
                i iVarM = this.f10487a.m();
                if (iVarM == null) {
                    synchronized (this) {
                        iVarM = this.f10487a.m();
                        if (iVarM == null) {
                            this.d = false;
                            return;
                        }
                    }
                }
                this.f10489c.c(iVarM);
            } while (SystemClock.uptimeMillis() - jUptimeMillis < this.f10488b);
            if (!sendMessage(obtainMessage())) {
                throw new q("Could not send handler message", 9);
            }
            this.d = true;
        } catch (Throwable th) {
            this.d = false;
            throw th;
        }
    }
}
