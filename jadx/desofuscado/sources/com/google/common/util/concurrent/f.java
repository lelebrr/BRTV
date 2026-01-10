package com.google.common.util.concurrent;

import com.google.common.util.concurrent.AbstractScheduledService;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5429a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractScheduledService.ServiceDelegate f5430b;

    public /* synthetic */ f(AbstractScheduledService.ServiceDelegate serviceDelegate, int i6) {
        this.f5429a = i6;
        this.f5430b = serviceDelegate;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5429a) {
            case 0:
                this.f5430b.lambda$doStart$1();
                break;
            default:
                this.f5430b.lambda$doStop$2();
                break;
        }
    }
}
