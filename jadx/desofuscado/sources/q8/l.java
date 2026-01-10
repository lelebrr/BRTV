package q8;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l extends AtomicReference implements Callable, j8.b {
    public static final FutureTask d;

    /* renamed from: e, reason: collision with root package name */
    public static final FutureTask f9349e;

    /* renamed from: a, reason: collision with root package name */
    public final a3.c f9350a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f9351b = true;

    /* renamed from: c, reason: collision with root package name */
    public Thread f9352c;

    static {
        b1.l lVar = n8.a.f8504a;
        d = new FutureTask(lVar, null);
        f9349e = new FutureTask(lVar, null);
    }

    public l(a3.c cVar) {
        this.f9350a = cVar;
    }

    @Override // j8.b
    public final void a() {
        FutureTask futureTask;
        Future future = (Future) get();
        if (future == d || future == (futureTask = f9349e) || !compareAndSet(future, futureTask) || future == null) {
            return;
        }
        if (this.f9352c == Thread.currentThread()) {
            future.cancel(false);
        } else {
            future.cancel(this.f9351b);
        }
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        FutureTask futureTask = d;
        this.f9352c = Thread.currentThread();
        try {
            try {
                this.f9350a.run();
                return null;
            } finally {
                lazySet(futureTask);
                this.f9352c = null;
            }
        } catch (Throwable th) {
            com.bumptech.glide.d.y(th);
            throw th;
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Future future = (Future) get();
        if (future == d) {
            str = "Finished";
        } else if (future == f9349e) {
            str = "Disposed";
        } else if (this.f9352c != null) {
            str = "Running on " + this.f9352c;
        } else {
            str = "Waiting";
        }
        return l.class.getSimpleName() + "[" + str + "]";
    }
}
