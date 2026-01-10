package t9;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class z extends x9.r {

    /* renamed from: e, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f10249e = AtomicIntegerFieldUpdater.newUpdater(z.class, "_decision");
    private volatile int _decision;

    @Override // x9.r, t9.y0
    public final void h(Object obj) {
        i(obj);
    }

    @Override // x9.r, t9.y0
    public final void i(Object obj) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        do {
            atomicIntegerFieldUpdater = f10249e;
            int i6 = atomicIntegerFieldUpdater.get(this);
            if (i6 != 0) {
                if (i6 != 1) {
                    throw new IllegalStateException("Already resumed");
                }
                x9.a.f(com.bumptech.glide.d.r(this.d), u.l(obj), null);
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, 0, 2));
    }
}
