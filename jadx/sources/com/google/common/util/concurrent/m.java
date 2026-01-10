package com.google.common.util.concurrent;

import java.lang.reflect.Constructor;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class m implements b7.i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5446a;

    public /* synthetic */ m(int i6) {
        this.f5446a = i6;
    }

    @Override // b7.i
    public final Object apply(Object obj) {
        switch (this.f5446a) {
            case 0:
                return FuturesGetChecked.lambda$static$0((List) obj);
            case 1:
                return FuturesGetChecked.lambda$static$1((List) obj);
            case 2:
                return FuturesGetChecked.lambda$static$2((Constructor) obj);
            default:
                return ClosingFuture.access$000((ClosingFuture) obj);
        }
    }
}
