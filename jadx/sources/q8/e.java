package q8;

import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final long f9328a;

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentLinkedQueue f9329b;

    /* renamed from: c, reason: collision with root package name */
    public final j8.a f9330c;
    public final ScheduledExecutorService d;

    /* renamed from: e, reason: collision with root package name */
    public final ScheduledFuture f9331e;
    public final k f;

    public e(long j10, TimeUnit timeUnit, k kVar) {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool;
        ScheduledFuture<?> scheduledFutureScheduleWithFixedDelay;
        long nanos = timeUnit != null ? timeUnit.toNanos(j10) : 0L;
        this.f9328a = nanos;
        this.f9329b = new ConcurrentLinkedQueue();
        this.f9330c = new j8.a(0);
        this.f = kVar;
        if (timeUnit != null) {
            scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, h.f9337c);
            scheduledFutureScheduleWithFixedDelay = scheduledExecutorServiceNewScheduledThreadPool.scheduleWithFixedDelay(this, nanos, nanos, TimeUnit.NANOSECONDS);
        } else {
            scheduledExecutorServiceNewScheduledThreadPool = null;
            scheduledFutureScheduleWithFixedDelay = null;
        }
        this.d = scheduledExecutorServiceNewScheduledThreadPool;
        this.f9331e = scheduledFutureScheduleWithFixedDelay;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConcurrentLinkedQueue concurrentLinkedQueue = this.f9329b;
        if (concurrentLinkedQueue.isEmpty()) {
            return;
        }
        long jNanoTime = System.nanoTime();
        Iterator it = concurrentLinkedQueue.iterator();
        while (it.hasNext()) {
            g gVar = (g) it.next();
            if (gVar.f9335c > jNanoTime) {
                return;
            }
            if (concurrentLinkedQueue.remove(gVar)) {
                this.f9330c.h(gVar);
            }
        }
    }
}
