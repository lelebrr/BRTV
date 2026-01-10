package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.logging.Level;

/* compiled from: MyApplication */
@ElementTypesAreNonnullByDefault
/* loaded from: classes.dex */
public final class ExecutionList {
    private static final LazyLogger log = new LazyLogger(ExecutionList.class);
    private boolean executed;
    private RunnableExecutorPair runnables;

    /* compiled from: MyApplication */
    public static final class RunnableExecutorPair {
        final Executor executor;
        RunnableExecutorPair next;
        final Runnable runnable;

        public RunnableExecutorPair(Runnable runnable, Executor executor, RunnableExecutorPair runnableExecutorPair) {
            this.runnable = runnable;
            this.executor = executor;
            this.next = runnableExecutorPair;
        }
    }

    private static void executeListener(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e5) {
            log.get().log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e5);
        }
    }

    public void add(Runnable runnable, Executor executor) {
        b7.b.j(runnable, "Runnable was null.");
        b7.b.j(executor, "Executor was null.");
        synchronized (this) {
            try {
                if (this.executed) {
                    executeListener(runnable, executor);
                } else {
                    this.runnables = new RunnableExecutorPair(runnable, executor, this.runnables);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void execute() {
        synchronized (this) {
            try {
                if (this.executed) {
                    return;
                }
                this.executed = true;
                RunnableExecutorPair runnableExecutorPair = this.runnables;
                RunnableExecutorPair runnableExecutorPair2 = null;
                this.runnables = null;
                while (runnableExecutorPair != null) {
                    RunnableExecutorPair runnableExecutorPair3 = runnableExecutorPair.next;
                    runnableExecutorPair.next = runnableExecutorPair2;
                    runnableExecutorPair2 = runnableExecutorPair;
                    runnableExecutorPair = runnableExecutorPair3;
                }
                while (runnableExecutorPair2 != null) {
                    executeListener(runnableExecutorPair2.runnable, runnableExecutorPair2.executor);
                    runnableExecutorPair2 = runnableExecutorPair2.next;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
