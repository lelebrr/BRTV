package com.google.common.util.concurrent;

import com.google.common.util.concurrent.AbstractIdleService;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5427a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractIdleService.DelegateService f5428b;

    public /* synthetic */ e(AbstractIdleService.DelegateService delegateService, int i6) {
        this.f5427a = i6;
        this.f5428b = delegateService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5427a) {
            case 0:
                this.f5428b.lambda$doStop$1();
                break;
            default:
                this.f5428b.lambda$doStart$0();
                break;
        }
    }
}
