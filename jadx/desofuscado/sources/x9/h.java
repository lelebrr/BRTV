package x9;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import t9.y;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class h extends t9.p implements y {

    /* renamed from: g, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f11114g = AtomicIntegerFieldUpdater.newUpdater(h.class, "runningWorkers");

    /* renamed from: c, reason: collision with root package name */
    public final t9.p f11115c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final k f11116e;
    public final Object f;
    private volatile int runningWorkers;

    /* JADX WARN: Multi-variable type inference failed */
    public h(t9.p pVar, int i6) {
        this.f11115c = pVar;
        this.d = i6;
        if ((pVar instanceof y ? (y) pVar : null) == null) {
            int i10 = t9.w.f10240a;
        }
        this.f11116e = new k();
        this.f = new Object();
    }

    @Override // t9.p
    public final void d(a9.i iVar, Runnable runnable) {
        this.f11116e.a(runnable);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f11114g;
        if (atomicIntegerFieldUpdater.get(this) < this.d) {
            synchronized (this.f) {
                if (atomicIntegerFieldUpdater.get(this) >= this.d) {
                    return;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
                Runnable runnableH = h();
                if (runnableH == null) {
                    return;
                }
                this.f11115c.d(this, new ua.a(7, this, runnableH, false));
            }
        }
    }

    public final Runnable h() {
        while (true) {
            Runnable runnable = (Runnable) this.f11116e.d();
            if (runnable != null) {
                return runnable;
            }
            synchronized (this.f) {
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f11114g;
                atomicIntegerFieldUpdater.decrementAndGet(this);
                if (this.f11116e.c() == 0) {
                    return null;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
            }
        }
    }
}
