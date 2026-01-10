package com.google.common.util.concurrent;

import d7.q1;
import d7.s5;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;

/* compiled from: MyApplication */
@ElementTypesAreNonnullByDefault
/* loaded from: classes.dex */
abstract class AggregateFuture<InputT, OutputT> extends AggregateFutureState<OutputT> {
    private static final LazyLogger logger = new LazyLogger(AggregateFuture.class);
    private final boolean allMustSucceed;
    private final boolean collectsValues;
    private q1 futures;

    /* compiled from: MyApplication */
    public enum ReleaseResourcesReason {
        OUTPUT_FUTURE_DONE,
        ALL_INPUT_FUTURES_PROCESSED
    }

    public AggregateFuture(q1 q1Var, boolean z7, boolean z10) {
        super(q1Var.size());
        this.futures = q1Var;
        this.allMustSucceed = z7;
        this.collectsValues = z10;
    }

    private static boolean addCausalChain(Set<Throwable> set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void collectValueFromNonCancelledFuture(int i6, Future<? extends InputT> future) {
        try {
            collectOneValue(i6, Uninterruptibles.getUninterruptibly(future));
        } catch (ExecutionException e5) {
            handleException(e5.getCause());
        } catch (Throwable th) {
            handleException(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: decrementCountAndMaybeComplete, reason: merged with bridge method [inline-methods] */
    public void lambda$init$1(q1 q1Var) {
        int iDecrementRemainingAndGet = decrementRemainingAndGet();
        b7.b.n("Less than 0 remaining futures", iDecrementRemainingAndGet >= 0);
        if (iDecrementRemainingAndGet == 0) {
            processCompleted(q1Var);
        }
    }

    private void handleException(Throwable th) {
        th.getClass();
        if (this.allMustSucceed && !setException(th) && addCausalChain(getOrInitSeenExceptions(), th)) {
            log(th);
        } else if (th instanceof Error) {
            log(th);
        }
    }

    private static void log(Throwable th) {
        logger.get().log(Level.SEVERE, th instanceof Error ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: processAllMustSucceedDoneFuture, reason: merged with bridge method [inline-methods] */
    public void lambda$init$0(int i6, ListenableFuture<? extends InputT> listenableFuture) {
        try {
            if (listenableFuture.isCancelled()) {
                this.futures = null;
                cancel(false);
            } else {
                collectValueFromNonCancelledFuture(i6, listenableFuture);
            }
            lambda$init$1(null);
        } catch (Throwable th) {
            lambda$init$1(null);
            throw th;
        }
    }

    private void processCompleted(q1 q1Var) {
        if (q1Var != null) {
            s5 s5VarI = q1Var.iterator();
            int i6 = 0;
            while (s5VarI.hasNext()) {
                Future<? extends InputT> future = (Future) s5VarI.next();
                if (!future.isCancelled()) {
                    collectValueFromNonCancelledFuture(i6, future);
                }
                i6++;
            }
        }
        clearSeenExceptions();
        handleAllCompleted();
        releaseResources(ReleaseResourcesReason.ALL_INPUT_FUTURES_PROCESSED);
    }

    @Override // com.google.common.util.concurrent.AggregateFutureState
    public final void addInitialException(Set<Throwable> set) {
        set.getClass();
        if (isCancelled()) {
            return;
        }
        Throwable thTryInternalFastPathGetFailure = tryInternalFastPathGetFailure();
        Objects.requireNonNull(thTryInternalFastPathGetFailure);
        addCausalChain(set, thTryInternalFastPathGetFailure);
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void afterDone() {
        super.afterDone();
        q1 q1Var = this.futures;
        releaseResources(ReleaseResourcesReason.OUTPUT_FUTURE_DONE);
        if (isCancelled() && (q1Var != null)) {
            boolean zWasInterrupted = wasInterrupted();
            s5 s5VarI = q1Var.iterator();
            while (s5VarI.hasNext()) {
                ((Future) s5VarI.next()).cancel(zWasInterrupted);
            }
        }
    }

    public abstract void collectOneValue(int i6, @ParametricNullness InputT inputt);

    public abstract void handleAllCompleted();

    public final void init() {
        Objects.requireNonNull(this.futures);
        if (this.futures.isEmpty()) {
            handleAllCompleted();
            return;
        }
        if (!this.allMustSucceed) {
            q1 q1Var = this.collectsValues ? this.futures : null;
            h hVar = new h(this, 0, q1Var);
            s5 s5VarI = this.futures.iterator();
            while (s5VarI.hasNext()) {
                ListenableFuture listenableFuture = (ListenableFuture) s5VarI.next();
                if (listenableFuture.isDone()) {
                    lambda$init$1(q1Var);
                } else {
                    listenableFuture.addListener(hVar, MoreExecutors.directExecutor());
                }
            }
            return;
        }
        s5 s5VarI2 = this.futures.iterator();
        int i6 = 0;
        while (s5VarI2.hasNext()) {
            ListenableFuture<? extends InputT> listenableFuture2 = (ListenableFuture) s5VarI2.next();
            int i10 = i6 + 1;
            if (listenableFuture2.isDone()) {
                lambda$init$0(i6, listenableFuture2);
            } else {
                listenableFuture2.addListener(new g(this, i6, listenableFuture2), MoreExecutors.directExecutor());
            }
            i6 = i10;
        }
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final String pendingToString() {
        q1 q1Var = this.futures;
        if (q1Var == null) {
            return super.pendingToString();
        }
        return "futures=" + q1Var;
    }

    public void releaseResources(ReleaseResourcesReason releaseResourcesReason) {
        releaseResourcesReason.getClass();
        this.futures = null;
    }
}
