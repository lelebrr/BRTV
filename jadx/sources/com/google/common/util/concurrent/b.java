package com.google.common.util.concurrent;

import b7.e0;
import com.google.common.util.concurrent.AbstractExecutionThreadService;
import com.google.common.util.concurrent.AbstractScheduledService;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements e0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5423a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractService f5424b;

    public /* synthetic */ b(AbstractService abstractService, int i6) {
        this.f5423a = i6;
        this.f5424b = abstractService;
    }

    @Override // b7.e0
    public final Object get() {
        switch (this.f5423a) {
            case 0:
                return ((AbstractExecutionThreadService.AnonymousClass1) this.f5424b).lambda$doStart$0();
            default:
                return ((AbstractScheduledService.ServiceDelegate) this.f5424b).lambda$doStart$0();
        }
    }
}
