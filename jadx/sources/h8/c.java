package h8;

import android.os.Handler;
import android.os.Message;
import java.util.concurrent.TimeUnit;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends i8.e {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f7275a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f7276b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f7277c;

    public c(Handler handler, boolean z7) {
        this.f7275a = handler;
        this.f7276b = z7;
    }

    @Override // j8.b
    public final void a() {
        this.f7277c = true;
        this.f7275a.removeCallbacksAndMessages(this);
    }

    @Override // i8.e
    public final j8.b b(Runnable runnable, TimeUnit timeUnit) {
        if (timeUnit == null) {
            throw new NullPointerException("unit == null");
        }
        boolean z7 = this.f7277c;
        m8.b bVar = m8.b.f8275a;
        if (z7) {
            return bVar;
        }
        Handler handler = this.f7275a;
        d dVar = new d(handler, runnable);
        Message messageObtain = Message.obtain(handler, dVar);
        messageObtain.obj = this;
        if (this.f7276b) {
            messageObtain.setAsynchronous(true);
        }
        this.f7275a.sendMessageDelayed(messageObtain, timeUnit.toMillis(0L));
        if (!this.f7277c) {
            return dVar;
        }
        this.f7275a.removeCallbacks(dVar);
        return bVar;
    }
}
