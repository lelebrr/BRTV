package h8;

import android.os.Handler;
import android.os.Message;
import i8.f;
import java.util.concurrent.TimeUnit;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends f {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f7280a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f7281b;

    public e(Handler handler, boolean z7) {
        this.f7280a = handler;
        this.f7281b = z7;
    }

    @Override // i8.f
    public final i8.e a() {
        return new c(this.f7280a, this.f7281b);
    }

    @Override // i8.f
    public final j8.b b(a3.c cVar, TimeUnit timeUnit) {
        if (timeUnit == null) {
            throw new NullPointerException("unit == null");
        }
        Handler handler = this.f7280a;
        d dVar = new d(handler, cVar);
        Message messageObtain = Message.obtain(handler, dVar);
        if (this.f7281b) {
            messageObtain.setAsynchronous(true);
        }
        handler.sendMessageDelayed(messageObtain, timeUnit.toMillis(0L));
        return dVar;
    }
}
