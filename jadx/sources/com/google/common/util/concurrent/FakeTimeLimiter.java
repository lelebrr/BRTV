package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* compiled from: MyApplication */
@ElementTypesAreNonnullByDefault
/* loaded from: classes.dex */
public final class FakeTimeLimiter implements TimeLimiter {
    @Override // com.google.common.util.concurrent.TimeLimiter
    @ParametricNullness
    public <T> T callUninterruptiblyWithTimeout(Callable<T> callable, long j10, TimeUnit timeUnit) throws ExecutionException {
        return (T) callWithTimeout(callable, j10, timeUnit);
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    @ParametricNullness
    public <T> T callWithTimeout(Callable<T> callable, long j10, TimeUnit timeUnit) throws ExecutionException {
        callable.getClass();
        timeUnit.getClass();
        try {
            return callable.call();
        } catch (Error e5) {
            throw new ExecutionError(e5);
        } catch (RuntimeException e10) {
            throw new UncheckedExecutionException(e10);
        } catch (Exception e11) {
            Platform.restoreInterruptIfIsInterruptedException(e11);
            throw new ExecutionException(e11);
        }
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public <T> T newProxy(T t5, Class<T> cls, long j10, TimeUnit timeUnit) {
        t5.getClass();
        cls.getClass();
        timeUnit.getClass();
        return t5;
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public void runUninterruptiblyWithTimeout(Runnable runnable, long j10, TimeUnit timeUnit) {
        runWithTimeout(runnable, j10, timeUnit);
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public void runWithTimeout(Runnable runnable, long j10, TimeUnit timeUnit) {
        runnable.getClass();
        timeUnit.getClass();
        try {
            runnable.run();
        } catch (Error e5) {
            throw new ExecutionError(e5);
        } catch (Exception e10) {
            throw new UncheckedExecutionException(e10);
        }
    }
}
