package com.google.common.util.concurrent;

import com.google.common.util.concurrent.AbstractExecutionThreadService;
import com.google.common.util.concurrent.JdkFutureAdapters;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledFuture;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5425a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f5426b;

    public /* synthetic */ c(int i6, Object obj) {
        this.f5425a = i6;
        this.f5426b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() throws Exception {
        switch (this.f5425a) {
            case 0:
                ((AbstractExecutionThreadService.AnonymousClass1) this.f5426b).lambda$doStart$1();
                break;
            case 1:
                ((JdkFutureAdapters.ListenableFutureAdapter) this.f5426b).lambda$addListener$0();
                break;
            case 2:
                WrappingExecutorService.lambda$wrapTask$0((Callable) this.f5426b);
                break;
            case 3:
                ClosingFuture.lambda$closeQuietly$0((AutoCloseable) this.f5426b);
                break;
            default:
                ((ScheduledFuture) this.f5426b).cancel(false);
                break;
        }
    }
}
