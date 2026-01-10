package com.google.common.util.concurrent;

import b7.d0;
import com.google.common.util.concurrent.SmoothRateLimiter;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* compiled from: MyApplication */
@ElementTypesAreNonnullByDefault
/* loaded from: classes.dex */
public abstract class RateLimiter {
    private volatile Object mutexDoNotUseDirectly;
    private final SleepingStopwatch stopwatch;

    /* compiled from: MyApplication */
    public static abstract class SleepingStopwatch {
        public static SleepingStopwatch createFromSystemTimer() {
            return new SleepingStopwatch() { // from class: com.google.common.util.concurrent.RateLimiter.SleepingStopwatch.1
                final d0 stopwatch;

                {
                    d0 d0Var = new d0();
                    b7.b.n("This stopwatch is already running.", !d0Var.f3296a);
                    d0Var.f3296a = true;
                    d0Var.f3298c = System.nanoTime();
                    this.stopwatch = d0Var;
                }

                @Override // com.google.common.util.concurrent.RateLimiter.SleepingStopwatch
                public long readMicros() {
                    d0 d0Var = this.stopwatch;
                    return TimeUnit.MICROSECONDS.convert(d0Var.f3296a ? (System.nanoTime() - d0Var.f3298c) + d0Var.f3297b : d0Var.f3297b, TimeUnit.NANOSECONDS);
                }

                @Override // com.google.common.util.concurrent.RateLimiter.SleepingStopwatch
                public void sleepMicrosUninterruptibly(long j10) {
                    if (j10 > 0) {
                        Uninterruptibles.sleepUninterruptibly(j10, TimeUnit.MICROSECONDS);
                    }
                }
            };
        }

        public abstract long readMicros();

        public abstract void sleepMicrosUninterruptibly(long j10);
    }

    public RateLimiter(SleepingStopwatch sleepingStopwatch) {
        sleepingStopwatch.getClass();
        this.stopwatch = sleepingStopwatch;
    }

    private boolean canAcquire(long j10, long j11) {
        return queryEarliestAvailable(j10) - j11 <= j10;
    }

    private static void checkPermits(int i6) {
        if (!(i6 > 0)) {
            throw new IllegalArgumentException(b7.b.s("Requested permits (%s) must be positive", Integer.valueOf(i6)));
        }
    }

    public static RateLimiter create(double d) {
        return create(d, SleepingStopwatch.createFromSystemTimer());
    }

    private Object mutex() {
        Object obj = this.mutexDoNotUseDirectly;
        if (obj == null) {
            synchronized (this) {
                try {
                    obj = this.mutexDoNotUseDirectly;
                    if (obj == null) {
                        obj = new Object();
                        this.mutexDoNotUseDirectly = obj;
                    }
                } finally {
                }
            }
        }
        return obj;
    }

    public double acquire() {
        return acquire(1);
    }

    public abstract double doGetRate();

    public abstract void doSetRate(double d, long j10);

    public final double getRate() {
        double dDoGetRate;
        synchronized (mutex()) {
            dDoGetRate = doGetRate();
        }
        return dDoGetRate;
    }

    public abstract long queryEarliestAvailable(long j10);

    public final long reserve(int i6) {
        long jReserveAndGetWaitLength;
        checkPermits(i6);
        synchronized (mutex()) {
            jReserveAndGetWaitLength = reserveAndGetWaitLength(i6, this.stopwatch.readMicros());
        }
        return jReserveAndGetWaitLength;
    }

    public final long reserveAndGetWaitLength(int i6, long j10) {
        return Math.max(reserveEarliestAvailable(i6, j10) - j10, 0L);
    }

    public abstract long reserveEarliestAvailable(int i6, long j10);

    public final void setRate(double d) {
        b7.b.e("rate must be positive", d > 0.0d);
        synchronized (mutex()) {
            doSetRate(d, this.stopwatch.readMicros());
        }
    }

    public String toString() {
        return String.format(Locale.ROOT, "RateLimiter[stableRate=%3.1fqps]", Double.valueOf(getRate()));
    }

    public boolean tryAcquire(long j10, TimeUnit timeUnit) {
        return tryAcquire(1, j10, timeUnit);
    }

    public static RateLimiter create(double d, SleepingStopwatch sleepingStopwatch) {
        SmoothRateLimiter.SmoothBursty smoothBursty = new SmoothRateLimiter.SmoothBursty(sleepingStopwatch, 1.0d);
        smoothBursty.setRate(d);
        return smoothBursty;
    }

    public double acquire(int i6) {
        long jReserve = reserve(i6);
        this.stopwatch.sleepMicrosUninterruptibly(jReserve);
        return (jReserve * 1.0d) / TimeUnit.SECONDS.toMicros(1L);
    }

    public boolean tryAcquire(int i6) {
        return tryAcquire(i6, 0L, TimeUnit.MICROSECONDS);
    }

    public boolean tryAcquire() {
        return tryAcquire(1, 0L, TimeUnit.MICROSECONDS);
    }

    public static RateLimiter create(double d, long j10, TimeUnit timeUnit) {
        b7.b.g(j10 >= 0, "warmupPeriod must not be negative: %s", j10);
        return create(d, j10, timeUnit, 3.0d, SleepingStopwatch.createFromSystemTimer());
    }

    public boolean tryAcquire(int i6, long j10, TimeUnit timeUnit) {
        long jMax = Math.max(timeUnit.toMicros(j10), 0L);
        checkPermits(i6);
        synchronized (mutex()) {
            try {
                long micros = this.stopwatch.readMicros();
                if (!canAcquire(micros, jMax)) {
                    return false;
                }
                this.stopwatch.sleepMicrosUninterruptibly(reserveAndGetWaitLength(i6, micros));
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static RateLimiter create(double d, long j10, TimeUnit timeUnit, double d10, SleepingStopwatch sleepingStopwatch) {
        SmoothRateLimiter.SmoothWarmingUp smoothWarmingUp = new SmoothRateLimiter.SmoothWarmingUp(sleepingStopwatch, j10, timeUnit, d10);
        smoothWarmingUp.setRate(d);
        return smoothWarmingUp;
    }
}
