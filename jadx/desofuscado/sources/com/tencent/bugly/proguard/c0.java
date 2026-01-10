package com.tencent.bugly.proguard;

import java.util.concurrent.ThreadFactory;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c0 implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5878a;

    public /* synthetic */ c0(int i6) {
        this.f5878a = i6;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f5878a) {
            case 0:
                Thread thread = new Thread(runnable);
                thread.setName("BuglyThread-" + ak.f5646a.getAndIncrement());
                return thread;
            case 1:
                return new k0.h(runnable);
            default:
                return new Thread(new a4.q(runnable, 1), "glide-active-resources");
        }
    }
}
