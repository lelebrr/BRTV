package com.google.android.gms.internal.cast;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p6 extends AtomicReference implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public static final j6 f4376c = new j6();
    public static final j6 d = new j6();

    /* renamed from: a, reason: collision with root package name */
    public final Callable f4377a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q6 f4378b;

    public p6(q6 q6Var, Callable callable) {
        this.f4378b = q6Var;
        callable.getClass();
        this.f4377a = callable;
    }

    public final void a(Thread thread) {
        Runnable runnable = (Runnable) get();
        i6 i6Var = null;
        boolean z7 = false;
        int i6 = 0;
        while (true) {
            boolean z10 = runnable instanceof i6;
            j6 j6Var = d;
            if (!z10) {
                if (runnable != j6Var) {
                    break;
                }
            } else {
                i6Var = (i6) runnable;
            }
            i6++;
            if (i6 <= 1000) {
                Thread.yield();
            } else if (runnable == j6Var || compareAndSet(runnable, j6Var)) {
                z7 = Thread.interrupted() || z7;
                LockSupport.park(i6Var);
            }
            runnable = (Runnable) get();
        }
        if (z7) {
            thread.interrupt();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object objCall;
        Thread threadCurrentThread = Thread.currentThread();
        if (compareAndSet(null, threadCurrentThread)) {
            q6 q6Var = this.f4378b;
            boolean zIsDone = q6Var.isDone();
            j6 j6Var = f4376c;
            if (zIsDone) {
                objCall = null;
            } else {
                try {
                    objCall = this.f4377a.call();
                } catch (Throwable th) {
                    try {
                        if (th instanceof InterruptedException) {
                            Thread.currentThread().interrupt();
                        }
                        if (!compareAndSet(threadCurrentThread, j6Var)) {
                            a(threadCurrentThread);
                        }
                        if (e6.f4149j.q(q6Var, null, new x5(th))) {
                            z5.y(q6Var);
                            return;
                        }
                        return;
                    } catch (Throwable th2) {
                        if (!compareAndSet(threadCurrentThread, j6Var)) {
                            a(threadCurrentThread);
                        }
                        q6Var.getClass();
                        if (e6.f4149j.q(q6Var, null, e6.f4146g)) {
                            z5.y(q6Var);
                        }
                        throw th2;
                    }
                }
            }
            if (!compareAndSet(threadCurrentThread, j6Var)) {
                a(threadCurrentThread);
            }
            if (zIsDone) {
                return;
            }
            q6Var.getClass();
            if (objCall == null) {
                objCall = e6.f4146g;
            }
            if (e6.f4149j.q(q6Var, null, objCall)) {
                z5.y(q6Var);
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        Runnable runnable = (Runnable) get();
        return ea.q.i(runnable == f4376c ? "running=[DONE]" : runnable instanceof i6 ? "running=[INTERRUPTED]" : runnable instanceof Thread ? a.e.r("running=[RUNNING ON ", ((Thread) runnable).getName(), "]") : "running=[NOT STARTED YET]", ", ", this.f4377a.toString());
    }
}
