package com.google.common.util.concurrent;

import b7.e0;
import d7.q1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5434a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f5435b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f5436c;

    public /* synthetic */ h(Object obj, int i6, Object obj2) {
        this.f5434a = i6;
        this.f5435b = obj;
        this.f5436c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5434a) {
            case 0:
                ((AggregateFuture) this.f5435b).lambda$init$1((q1) this.f5436c);
                break;
            default:
                Callables.lambda$threadRenaming$3((e0) this.f5435b, (Runnable) this.f5436c);
                break;
        }
    }
}
