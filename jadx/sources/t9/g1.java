package t9;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class g1 implements i9.l {

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f10194c = AtomicIntegerFieldUpdater.newUpdater(g1.class, "_state");
    private volatile int _state;

    /* renamed from: a, reason: collision with root package name */
    public final Thread f10195a = Thread.currentThread();

    /* renamed from: b, reason: collision with root package name */
    public c0 f10196b;

    public g1(q0 q0Var) {
    }

    public static void b(int i6) {
        throw new IllegalStateException(("Illegal state " + i6).toString());
    }

    public final void a() {
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f10194c;
            int i6 = atomicIntegerFieldUpdater.get(this);
            if (i6 != 0) {
                if (i6 != 2) {
                    if (i6 == 3) {
                        Thread.interrupted();
                        return;
                    } else {
                        b(i6);
                        throw null;
                    }
                }
            } else if (atomicIntegerFieldUpdater.compareAndSet(this, i6, 1)) {
                c0 c0Var = this.f10196b;
                if (c0Var != null) {
                    c0Var.a();
                    return;
                }
                return;
            }
        }
    }

    @Override // i9.l
    public final Object invoke(Object obj) {
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f10194c;
            int i6 = atomicIntegerFieldUpdater.get(this);
            if (i6 != 0) {
                if (i6 != 1 && i6 != 2 && i6 != 3) {
                    b(i6);
                    throw null;
                }
            } else if (atomicIntegerFieldUpdater.compareAndSet(this, i6, 2)) {
                this.f10195a.interrupt();
                atomicIntegerFieldUpdater.set(this, 3);
                break;
            }
        }
        return w8.l.f10832a;
    }
}
