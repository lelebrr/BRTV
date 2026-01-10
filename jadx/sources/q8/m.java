package q8;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m extends AtomicReferenceArray implements Runnable, Callable, j8.b {

    /* renamed from: b, reason: collision with root package name */
    public static final Object f9353b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static final Object f9354c = new Object();
    public static final Object d = new Object();

    /* renamed from: e, reason: collision with root package name */
    public static final Object f9355e = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Object f9356a;

    public m(Runnable runnable, j8.a aVar) {
        super(3);
        this.f9356a = runnable;
        lazySet(0, aVar);
    }

    @Override // j8.b
    public final void a() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        while (true) {
            Object obj6 = get(1);
            obj = f9355e;
            if (obj6 == obj || obj6 == (obj4 = f9354c) || obj6 == (obj5 = d)) {
                break;
            }
            boolean z7 = get(2) != Thread.currentThread();
            if (z7) {
                obj4 = obj5;
            }
            if (compareAndSet(1, obj6, obj4)) {
                if (obj6 != null) {
                    ((Future) obj6).cancel(z7);
                }
            }
        }
        do {
            obj2 = get(0);
            if (obj2 == obj || obj2 == (obj3 = f9353b) || obj2 == null) {
                return;
            }
        } while (!compareAndSet(0, obj2, obj3));
        ((j8.a) obj2).d(this);
    }

    public final void b(Future future) {
        Object obj;
        do {
            obj = get(1);
            if (obj == f9355e) {
                return;
            }
            if (obj == f9354c) {
                future.cancel(false);
                return;
            } else if (obj == d) {
                future.cancel(true);
                return;
            }
        } while (!compareAndSet(1, obj, future));
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        run();
        return null;
    }

    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.Object, java.lang.Runnable] */
    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2;
        Object obj3 = d;
        Object obj4 = f9354c;
        Object obj5 = f9353b;
        Object obj6 = f9355e;
        lazySet(2, Thread.currentThread());
        try {
            this.f9356a.run();
            Object obj7 = get(0);
            if (obj7 != obj5 && compareAndSet(0, obj7, obj6) && obj7 != null) {
                ((j8.a) obj7).d(this);
            }
            do {
                obj2 = get(1);
                if (obj2 == obj4 || obj2 == obj3) {
                    break;
                }
            } while (!compareAndSet(1, obj2, obj6));
            lazySet(2, null);
        } catch (Throwable th) {
            try {
                com.bumptech.glide.d.y(th);
                throw th;
            } catch (Throwable th2) {
                Object obj8 = get(0);
                if (obj8 != obj5 && compareAndSet(0, obj8, obj6) && obj8 != null) {
                    ((j8.a) obj8).d(this);
                }
                do {
                    obj = get(1);
                    if (obj == obj4 || obj == obj3) {
                        break;
                    }
                } while (!compareAndSet(1, obj, obj6));
                lazySet(2, null);
                throw th2;
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReferenceArray
    public final String toString() {
        String strG;
        Object obj = get(1);
        if (obj == f9355e) {
            strG = "Finished";
        } else if (obj == f9354c) {
            strG = "Disposed(Sync)";
        } else if (obj == d) {
            strG = "Disposed(Async)";
        } else {
            Object obj2 = get(2);
            strG = obj2 == null ? "Waiting" : ea.q.g(obj2, "Running on ");
        }
        return m.class.getSimpleName() + "[" + strG + "]";
    }
}
