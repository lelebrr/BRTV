package com.google.common.util.concurrent;

import java.util.concurrent.Executor;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5421a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Service f5422b;

    public /* synthetic */ a(Service service, int i6) {
        this.f5421a = i6;
        this.f5422b = service;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f5421a) {
            case 0:
                ((AbstractExecutionThreadService) this.f5422b).lambda$executor$0(runnable);
                break;
            default:
                ((AbstractIdleService) this.f5422b).lambda$executor$0(runnable);
                break;
        }
    }
}
