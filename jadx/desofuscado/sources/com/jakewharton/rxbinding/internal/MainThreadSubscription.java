package com.jakewharton.rxbinding.internal;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Keep;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class MainThreadSubscription implements Runnable {

    @Keep
    private volatile int unsubscribed;

    static {
        new Handler(Looper.getMainLooper());
        AtomicIntegerFieldUpdater.newUpdater(MainThreadSubscription.class, "unsubscribed");
    }

    public abstract void a();

    @Override // java.lang.Runnable
    public final void run() {
        a();
    }
}
