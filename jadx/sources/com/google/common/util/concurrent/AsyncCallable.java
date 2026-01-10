package com.google.common.util.concurrent;

/* compiled from: MyApplication */
@ElementTypesAreNonnullByDefault
/* loaded from: classes.dex */
public interface AsyncCallable<V> {
    ListenableFuture<V> call() throws Exception;
}
