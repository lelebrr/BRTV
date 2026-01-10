package com.google.common.util.concurrent;

import b7.e0;
import java.util.concurrent.Callable;

/* compiled from: MyApplication */
@ElementTypesAreNonnullByDefault
/* loaded from: classes.dex */
public final class Callables {
    private Callables() {
    }

    public static <T> AsyncCallable<T> asAsyncCallable(final Callable<T> callable, final ListeningExecutorService listeningExecutorService) {
        callable.getClass();
        listeningExecutorService.getClass();
        return new AsyncCallable() { // from class: com.google.common.util.concurrent.j
            @Override // com.google.common.util.concurrent.AsyncCallable
            public final ListenableFuture call() {
                return listeningExecutorService.submit(callable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$threadRenaming$2(e0 e0Var, Callable callable) throws Exception {
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        boolean zTrySetName = trySetName((String) e0Var.get(), threadCurrentThread);
        try {
            return callable.call();
        } finally {
            if (zTrySetName) {
                trySetName(name, threadCurrentThread);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$threadRenaming$3(e0 e0Var, Runnable runnable) {
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        boolean zTrySetName = trySetName((String) e0Var.get(), threadCurrentThread);
        try {
            runnable.run();
        } finally {
            if (zTrySetName) {
                trySetName(name, threadCurrentThread);
            }
        }
    }

    public static <T> Callable<T> returning(@ParametricNullness final T t5) {
        return new Callable() { // from class: com.google.common.util.concurrent.k
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return Callables.lambda$returning$0(t5);
            }
        };
    }

    public static Runnable threadRenaming(Runnable runnable, e0 e0Var) {
        e0Var.getClass();
        runnable.getClass();
        return new h(e0Var, 1, runnable);
    }

    private static boolean trySetName(String str, Thread thread) {
        try {
            thread.setName(str);
            return true;
        } catch (SecurityException unused) {
            return false;
        }
    }

    public static <T> Callable<T> threadRenaming(final Callable<T> callable, final e0 e0Var) {
        e0Var.getClass();
        callable.getClass();
        return new Callable() { // from class: com.google.common.util.concurrent.i
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return Callables.lambda$threadRenaming$2(e0Var, callable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$returning$0(Object obj) throws Exception {
        return obj;
    }
}
