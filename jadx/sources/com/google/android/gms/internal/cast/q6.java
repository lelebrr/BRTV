package com.google.android.gms.internal.cast;

import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q6 extends z5 implements RunnableFuture {

    /* renamed from: k, reason: collision with root package name */
    public volatile p6 f4389k;

    public q6(Callable callable) {
        super(11);
        this.f4389k = new p6(this, callable);
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        p6 p6Var = this.f4389k;
        if (p6Var != null) {
            p6Var.run();
        }
        this.f4389k = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.cast.z5
    public final String u() {
        p6 p6Var = this.f4389k;
        if (p6Var != null) {
            return a.e.r("task=[", p6Var.toString(), "]");
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    @Override // com.google.android.gms.internal.cast.z5
    public final void v() {
        p6 p6Var;
        Object obj = this.d;
        if ((obj instanceof v5) && ((v5) obj).f4444a && (p6Var = this.f4389k) != null) {
            j6 j6Var = p6.d;
            j6 j6Var2 = p6.f4376c;
            Runnable runnable = (Runnable) p6Var.get();
            if (runnable instanceof Thread) {
                i6 i6Var = new i6(p6Var);
                i6Var.setExclusiveOwnerThread(Thread.currentThread());
                if (p6Var.compareAndSet(runnable, i6Var)) {
                    try {
                        Thread thread = (Thread) runnable;
                        thread.interrupt();
                        if (((Runnable) p6Var.getAndSet(j6Var2)) == j6Var) {
                            LockSupport.unpark(thread);
                        }
                    } catch (Throwable th) {
                        if (((Runnable) p6Var.getAndSet(j6Var2)) == j6Var) {
                            LockSupport.unpark((Thread) runnable);
                        }
                        throw th;
                    }
                }
            }
        }
        this.f4389k = null;
    }
}
