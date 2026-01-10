package com.google.common.util.concurrent;

import com.google.common.util.concurrent.Futures;
import d7.c5;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5431a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5432b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f5433c;
    public final /* synthetic */ Object d;

    public /* synthetic */ g(AggregateFuture aggregateFuture, int i6, ListenableFuture listenableFuture) {
        this.f5433c = aggregateFuture;
        this.f5432b = i6;
        this.d = listenableFuture;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5431a) {
            case 0:
                ((AggregateFuture) this.f5433c).lambda$init$0(this.f5432b, (ListenableFuture) this.d);
                break;
            default:
                Futures.InCompletionOrderState.access$600((Futures.InCompletionOrderState) this.f5433c, (c5) this.d, this.f5432b);
                break;
        }
    }

    public /* synthetic */ g(Futures.InCompletionOrderState inCompletionOrderState, c5 c5Var, int i6) {
        this.f5433c = inCompletionOrderState;
        this.d = c5Var;
        this.f5432b = i6;
    }
}
