package com.google.common.util.concurrent;

import com.google.common.util.concurrent.RateLimiter;
import java.util.concurrent.TimeUnit;

/* compiled from: MyApplication */
@ElementTypesAreNonnullByDefault
/* loaded from: classes.dex */
abstract class SmoothRateLimiter extends RateLimiter {
    double maxPermits;
    private long nextFreeTicketMicros;
    double stableIntervalMicros;
    double storedPermits;

    /* compiled from: MyApplication */
    public static final class SmoothBursty extends SmoothRateLimiter {
        final double maxBurstSeconds;

        public SmoothBursty(RateLimiter.SleepingStopwatch sleepingStopwatch, double d) {
            super(sleepingStopwatch);
            this.maxBurstSeconds = d;
        }

        @Override // com.google.common.util.concurrent.SmoothRateLimiter
        public double coolDownIntervalMicros() {
            return this.stableIntervalMicros;
        }

        @Override // com.google.common.util.concurrent.SmoothRateLimiter
        public void doSetRate(double d, double d10) {
            double d11 = this.maxPermits;
            double d12 = this.maxBurstSeconds * d;
            this.maxPermits = d12;
            if (d11 == Double.POSITIVE_INFINITY) {
                this.storedPermits = d12;
            } else {
                this.storedPermits = d11 != 0.0d ? (this.storedPermits * d12) / d11 : 0.0d;
            }
        }

        @Override // com.google.common.util.concurrent.SmoothRateLimiter
        public long storedPermitsToWaitTime(double d, double d10) {
            return 0L;
        }
    }

    /* compiled from: MyApplication */
    public static final class SmoothWarmingUp extends SmoothRateLimiter {
        private double coldFactor;
        private double slope;
        private double thresholdPermits;
        private final long warmupPeriodMicros;

        public SmoothWarmingUp(RateLimiter.SleepingStopwatch sleepingStopwatch, long j10, TimeUnit timeUnit, double d) {
            super(sleepingStopwatch);
            this.warmupPeriodMicros = timeUnit.toMicros(j10);
            this.coldFactor = d;
        }

        private double permitsToTime(double d) {
            return (d * this.slope) + this.stableIntervalMicros;
        }

        @Override // com.google.common.util.concurrent.SmoothRateLimiter
        public double coolDownIntervalMicros() {
            return this.warmupPeriodMicros / this.maxPermits;
        }

        @Override // com.google.common.util.concurrent.SmoothRateLimiter
        public void doSetRate(double d, double d10) {
            double d11 = this.maxPermits;
            double d12 = this.coldFactor * d10;
            long j10 = this.warmupPeriodMicros;
            double d13 = (j10 * 0.5d) / d10;
            this.thresholdPermits = d13;
            double d14 = ((j10 * 2.0d) / (d10 + d12)) + d13;
            this.maxPermits = d14;
            this.slope = (d12 - d10) / (d14 - d13);
            if (d11 == Double.POSITIVE_INFINITY) {
                this.storedPermits = 0.0d;
                return;
            }
            if (d11 != 0.0d) {
                d14 = (this.storedPermits * d14) / d11;
            }
            this.storedPermits = d14;
        }

        @Override // com.google.common.util.concurrent.SmoothRateLimiter
        public long storedPermitsToWaitTime(double d, double d10) {
            long jPermitsToTime;
            double d11 = d - this.thresholdPermits;
            if (d11 > 0.0d) {
                double dMin = Math.min(d11, d10);
                jPermitsToTime = (long) (((permitsToTime(d11) + permitsToTime(d11 - dMin)) * dMin) / 2.0d);
                d10 -= dMin;
            } else {
                jPermitsToTime = 0;
            }
            return jPermitsToTime + ((long) (this.stableIntervalMicros * d10));
        }
    }

    public abstract double coolDownIntervalMicros();

    @Override // com.google.common.util.concurrent.RateLimiter
    public final double doGetRate() {
        return TimeUnit.SECONDS.toMicros(1L) / this.stableIntervalMicros;
    }

    public abstract void doSetRate(double d, double d10);

    @Override // com.google.common.util.concurrent.RateLimiter
    public final void doSetRate(double d, long j10) {
        resync(j10);
        double micros = TimeUnit.SECONDS.toMicros(1L) / d;
        this.stableIntervalMicros = micros;
        doSetRate(d, micros);
    }

    @Override // com.google.common.util.concurrent.RateLimiter
    public final long queryEarliestAvailable(long j10) {
        return this.nextFreeTicketMicros;
    }

    @Override // com.google.common.util.concurrent.RateLimiter
    public final long reserveEarliestAvailable(int i6, long j10) {
        resync(j10);
        long j11 = this.nextFreeTicketMicros;
        double d = i6;
        double dMin = Math.min(d, this.storedPermits);
        long jStoredPermitsToWaitTime = storedPermitsToWaitTime(this.storedPermits, dMin) + ((long) ((d - dMin) * this.stableIntervalMicros));
        long j12 = this.nextFreeTicketMicros;
        long j13 = j12 + jStoredPermitsToWaitTime;
        if (!(((j12 ^ j13) >= 0) | ((jStoredPermitsToWaitTime ^ j12) < 0))) {
            j13 = ((j13 >>> 63) ^ 1) + Long.MAX_VALUE;
        }
        this.nextFreeTicketMicros = j13;
        this.storedPermits -= dMin;
        return j11;
    }

    public void resync(long j10) {
        if (j10 > this.nextFreeTicketMicros) {
            this.storedPermits = Math.min(this.maxPermits, this.storedPermits + ((j10 - r0) / coolDownIntervalMicros()));
            this.nextFreeTicketMicros = j10;
        }
    }

    public abstract long storedPermitsToWaitTime(double d, double d10);

    private SmoothRateLimiter(RateLimiter.SleepingStopwatch sleepingStopwatch) {
        super(sleepingStopwatch);
        this.nextFreeTicketMicros = 0L;
    }
}
