package com.google.android.gms.internal.cast;

import android.os.Build;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o6 extends l6 implements ScheduledExecutorService {

    /* renamed from: b, reason: collision with root package name */
    public final ScheduledExecutorService f4370b;

    public o6(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        this.f4370b = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.cast.l6, java.lang.AutoCloseable
    public final void close() throws InterruptedException {
        if (Build.VERSION.SDK_INT <= 23 || this != ForkJoinPool.commonPool()) {
            ExecutorService executorService = this.f4307a;
            if (executorService.isTerminated()) {
                return;
            }
            shutdown();
            boolean zAwaitTermination = false;
            boolean z7 = false;
            while (!zAwaitTermination) {
                try {
                    zAwaitTermination = executorService.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z7) {
                        shutdownNow();
                    }
                    z7 = true;
                }
            }
            if (z7) {
                Thread.currentThread().interrupt();
            }
        }
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture schedule(Runnable runnable, long j10, TimeUnit timeUnit) {
        q6 q6Var = new q6(Executors.callable(runnable, null));
        return new m6(q6Var, this.f4370b.schedule(q6Var, j10, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        n6 n6Var = new n6(runnable);
        return new m6(n6Var, this.f4370b.scheduleAtFixedRate(n6Var, j10, j11, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        n6 n6Var = new n6(runnable);
        return new m6(n6Var, this.f4370b.scheduleWithFixedDelay(n6Var, j10, j11, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Callable callable, long j10, TimeUnit timeUnit) {
        q6 q6Var = new q6(callable);
        return new m6(q6Var, this.f4370b.schedule(q6Var, j10, timeUnit));
    }
}
