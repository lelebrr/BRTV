package q8;

import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o extends i8.e {

    /* renamed from: a, reason: collision with root package name */
    public final ScheduledExecutorService f9358a;

    /* renamed from: b, reason: collision with root package name */
    public final j8.a f9359b = new j8.a(0);

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f9360c;

    public o(ScheduledExecutorService scheduledExecutorService) {
        this.f9358a = scheduledExecutorService;
    }

    @Override // j8.b
    public final void a() {
        if (this.f9360c) {
            return;
        }
        this.f9360c = true;
        this.f9359b.a();
    }

    @Override // i8.e
    public final j8.b b(Runnable runnable, TimeUnit timeUnit) {
        boolean z7 = this.f9360c;
        m8.b bVar = m8.b.f8275a;
        if (z7) {
            return bVar;
        }
        m mVar = new m(runnable, this.f9359b);
        this.f9359b.b(mVar);
        try {
            mVar.b(this.f9358a.submit((Callable) mVar));
            return mVar;
        } catch (RejectedExecutionException e5) {
            a();
            com.bumptech.glide.d.y(e5);
            return bVar;
        }
    }
}
