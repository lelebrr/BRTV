package com.google.common.util.concurrent;

import com.google.common.util.concurrent.AbstractFuture;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;

/* compiled from: MyApplication */
@ElementTypesAreNonnullByDefault
/* loaded from: classes.dex */
abstract class AggregateFutureState<OutputT> extends AbstractFuture.TrustedFuture<OutputT> {
    private static final AtomicHelper ATOMIC_HELPER;
    private static final LazyLogger log = new LazyLogger(AggregateFutureState.class);
    private volatile int remaining;
    private volatile Set<Throwable> seenExceptions = null;

    /* compiled from: MyApplication */
    public static abstract class AtomicHelper {
        private AtomicHelper() {
        }

        public abstract void compareAndSetSeenExceptions(AggregateFutureState<?> aggregateFutureState, Set<Throwable> set, Set<Throwable> set2);

        public abstract int decrementAndGetRemainingCount(AggregateFutureState<?> aggregateFutureState);
    }

    /* compiled from: MyApplication */
    public static final class SafeAtomicHelper extends AtomicHelper {
        final AtomicIntegerFieldUpdater<? super AggregateFutureState<?>> remainingCountUpdater;
        final AtomicReferenceFieldUpdater<? super AggregateFutureState<?>, ? super Set<Throwable>> seenExceptionsUpdater;

        public SafeAtomicHelper(AtomicReferenceFieldUpdater<? super AggregateFutureState<?>, ? super Set<Throwable>> atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater<? super AggregateFutureState<?>> atomicIntegerFieldUpdater) {
            super();
            this.seenExceptionsUpdater = atomicReferenceFieldUpdater;
            this.remainingCountUpdater = atomicIntegerFieldUpdater;
        }

        @Override // com.google.common.util.concurrent.AggregateFutureState.AtomicHelper
        public void compareAndSetSeenExceptions(AggregateFutureState<?> aggregateFutureState, Set<Throwable> set, Set<Throwable> set2) {
            AtomicReferenceFieldUpdater<? super AggregateFutureState<?>, ? super Set<Throwable>> atomicReferenceFieldUpdater = this.seenExceptionsUpdater;
            while (!atomicReferenceFieldUpdater.compareAndSet(aggregateFutureState, set, set2) && atomicReferenceFieldUpdater.get(aggregateFutureState) == set) {
            }
        }

        @Override // com.google.common.util.concurrent.AggregateFutureState.AtomicHelper
        public int decrementAndGetRemainingCount(AggregateFutureState<?> aggregateFutureState) {
            return this.remainingCountUpdater.decrementAndGet(aggregateFutureState);
        }
    }

    /* compiled from: MyApplication */
    public static final class SynchronizedAtomicHelper extends AtomicHelper {
        private SynchronizedAtomicHelper() {
            super();
        }

        @Override // com.google.common.util.concurrent.AggregateFutureState.AtomicHelper
        public void compareAndSetSeenExceptions(AggregateFutureState<?> aggregateFutureState, Set<Throwable> set, Set<Throwable> set2) {
            synchronized (aggregateFutureState) {
                try {
                    if (((AggregateFutureState) aggregateFutureState).seenExceptions == set) {
                        ((AggregateFutureState) aggregateFutureState).seenExceptions = set2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.common.util.concurrent.AggregateFutureState.AtomicHelper
        public int decrementAndGetRemainingCount(AggregateFutureState<?> aggregateFutureState) {
            int iAccess$306;
            synchronized (aggregateFutureState) {
                iAccess$306 = AggregateFutureState.access$306(aggregateFutureState);
            }
            return iAccess$306;
        }
    }

    static {
        AtomicHelper synchronizedAtomicHelper;
        Throwable th = null;
        byte b8 = 0;
        try {
            synchronizedAtomicHelper = new SafeAtomicHelper(AtomicReferenceFieldUpdater.newUpdater(AggregateFutureState.class, Set.class, "seenExceptions"), AtomicIntegerFieldUpdater.newUpdater(AggregateFutureState.class, "remaining"));
        } catch (Throwable th2) {
            synchronizedAtomicHelper = new SynchronizedAtomicHelper();
            th = th2;
        }
        ATOMIC_HELPER = synchronizedAtomicHelper;
        if (th != null) {
            log.get().log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
    }

    public AggregateFutureState(int i6) {
        this.remaining = i6;
    }

    public static /* synthetic */ int access$306(AggregateFutureState aggregateFutureState) {
        int i6 = aggregateFutureState.remaining - 1;
        aggregateFutureState.remaining = i6;
        return i6;
    }

    public abstract void addInitialException(Set<Throwable> set);

    public final void clearSeenExceptions() {
        this.seenExceptions = null;
    }

    public final int decrementRemainingAndGet() {
        return ATOMIC_HELPER.decrementAndGetRemainingCount(this);
    }

    public final Set<Throwable> getOrInitSeenExceptions() {
        Set<Throwable> set = this.seenExceptions;
        if (set != null) {
            return set;
        }
        Set<Throwable> setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        addInitialException(setNewSetFromMap);
        ATOMIC_HELPER.compareAndSetSeenExceptions(this, null, setNewSetFromMap);
        Set<Throwable> set2 = this.seenExceptions;
        Objects.requireNonNull(set2);
        return set2;
    }
}
