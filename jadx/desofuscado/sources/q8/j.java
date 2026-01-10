package q8;

import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class j extends i8.e {

    /* renamed from: a, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f9344a;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f9345b;

    public j(k kVar) {
        boolean z7 = n.f9357a;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, kVar);
        scheduledThreadPoolExecutor.setRemoveOnCancelPolicy(n.f9357a);
        this.f9344a = scheduledThreadPoolExecutor;
    }

    @Override // j8.b
    public final void a() {
        if (this.f9345b) {
            return;
        }
        this.f9345b = true;
        this.f9344a.shutdownNow();
    }

    @Override // i8.e
    public final j8.b b(Runnable runnable, TimeUnit timeUnit) {
        return this.f9345b ? m8.b.f8275a : d(runnable, timeUnit, null);
    }

    @Override // i8.e
    public final void c(p8.d dVar) {
        b(dVar, null);
    }

    public final m d(Runnable runnable, TimeUnit timeUnit, j8.a aVar) {
        m mVar = new m(runnable, aVar);
        if (aVar != null && !aVar.b(mVar)) {
            return mVar;
        }
        try {
            mVar.b(this.f9344a.submit((Callable) mVar));
        } catch (RejectedExecutionException e5) {
            if (aVar != null) {
                aVar.h(mVar);
            }
            com.bumptech.glide.d.y(e5);
        }
        return mVar;
    }
}
