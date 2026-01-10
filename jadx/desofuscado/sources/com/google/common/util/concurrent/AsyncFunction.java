package com.google.common.util.concurrent;

/* compiled from: MyApplication */
@ElementTypesAreNonnullByDefault
/* loaded from: classes.dex */
public interface AsyncFunction<I, O> {
    ListenableFuture<O> apply(@ParametricNullness I i6) throws Exception;
}
