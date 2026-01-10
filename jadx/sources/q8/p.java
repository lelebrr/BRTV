package q8;

import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p extends i8.f {

    /* renamed from: b, reason: collision with root package name */
    public static final k f9361b;

    /* renamed from: c, reason: collision with root package name */
    public static final ScheduledExecutorService f9362c;

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f9363a;

    static {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(0);
        f9362c = scheduledExecutorServiceNewScheduledThreadPool;
        scheduledExecutorServiceNewScheduledThreadPool.shutdown();
        f9361b = new k("RxSingleScheduler", true, Math.max(1, Math.min(10, Integer.getInteger("rx3.single-priority", 5).intValue())));
    }

    public p() {
        AtomicReference atomicReference = new AtomicReference();
        this.f9363a = atomicReference;
        boolean z7 = n.f9357a;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, f9361b);
        scheduledThreadPoolExecutor.setRemoveOnCancelPolicy(n.f9357a);
        atomicReference.lazySet(scheduledThreadPoolExecutor);
    }

    @Override // i8.f
    public final i8.e a() {
        return new o((ScheduledExecutorService) this.f9363a.get());
    }

    @Override // i8.f
    public final j8.b b(a3.c cVar, TimeUnit timeUnit) {
        l lVar = new l(cVar);
        try {
            Future futureSubmit = ((ScheduledExecutorService) this.f9363a.get()).submit(lVar);
            while (true) {
                Future future = (Future) lVar.get();
                if (future == l.d) {
                    break;
                }
                if (future == l.f9349e) {
                    if (lVar.f9352c == Thread.currentThread()) {
                        futureSubmit.cancel(false);
                    } else {
                        futureSubmit.cancel(lVar.f9351b);
                    }
                } else if (lVar.compareAndSet(future, futureSubmit)) {
                    break;
                }
            }
            return lVar;
        } catch (RejectedExecutionException e5) {
            com.bumptech.glide.d.y(e5);
            return m8.b.f8275a;
        }
    }
}
