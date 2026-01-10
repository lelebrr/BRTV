package com.google.common.util.concurrent;

import b7.e0;
import com.google.common.util.concurrent.Striped;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class q implements e0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5450a;

    public /* synthetic */ q(int i6) {
        this.f5450a = i6;
    }

    @Override // b7.e0
    public final Object get() {
        switch (this.f5450a) {
            case 0:
                return new Striped.WeakSafeReadWriteLock();
            case 1:
                return new Striped.PaddedLock();
            case 2:
                return Striped.lambda$lazyWeakLock$0();
            default:
                return new ReentrantReadWriteLock();
        }
    }
}
