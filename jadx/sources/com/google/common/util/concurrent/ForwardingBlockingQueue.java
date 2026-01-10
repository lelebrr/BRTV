package com.google.common.util.concurrent;

import d7.m1;
import java.util.Collection;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;

/* compiled from: MyApplication */
@ElementTypesAreNonnullByDefault
/* loaded from: classes.dex */
public abstract class ForwardingBlockingQueue<E> extends m1 implements BlockingQueue<E> {
    @Override // d7.m1, d7.i1, d7.l1
    public abstract BlockingQueue<E> delegate();

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection, int i6) {
        return delegate().drainTo(collection, i6);
    }

    @Override // java.util.concurrent.BlockingQueue
    public boolean offer(E e5, long j10, TimeUnit timeUnit) throws InterruptedException {
        return delegate().offer(e5, j10, timeUnit);
    }

    @Override // java.util.concurrent.BlockingQueue
    public E poll(long j10, TimeUnit timeUnit) throws InterruptedException {
        return delegate().poll(j10, timeUnit);
    }

    @Override // java.util.concurrent.BlockingQueue
    public void put(E e5) throws InterruptedException {
        delegate().put(e5);
    }

    @Override // java.util.concurrent.BlockingQueue
    public int remainingCapacity() {
        return delegate().remainingCapacity();
    }

    @Override // java.util.concurrent.BlockingQueue
    public E take() throws InterruptedException {
        return delegate().take();
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection) {
        return delegate().drainTo(collection);
    }
}
