package com.google.common.util.concurrent;

import d7.l1;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: MyApplication */
@ElementTypesAreNonnullByDefault
/* loaded from: classes.dex */
public abstract class ForwardingFuture<V> extends l1 implements Future<V> {

    /* compiled from: MyApplication */
    public static abstract class SimpleForwardingFuture<V> extends ForwardingFuture<V> {
        private final Future<V> delegate;

        public SimpleForwardingFuture(Future<V> future) {
            future.getClass();
            this.delegate = future;
        }

        @Override // com.google.common.util.concurrent.ForwardingFuture, d7.l1
        public final Future<V> delegate() {
            return this.delegate;
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z7) {
        return delegate().cancel(z7);
    }

    @Override // d7.l1
    public abstract Future<? extends V> delegate();

    @Override // java.util.concurrent.Future
    @ParametricNullness
    public V get() throws ExecutionException, InterruptedException {
        return delegate().get();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return delegate().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return delegate().isDone();
    }

    @Override // java.util.concurrent.Future
    @ParametricNullness
    public V get(long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return delegate().get(j10, timeUnit);
    }
}
