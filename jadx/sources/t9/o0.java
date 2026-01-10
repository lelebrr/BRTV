package t9;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class o0 extends s0 {
    public static final AtomicIntegerFieldUpdater f = AtomicIntegerFieldUpdater.newUpdater(o0.class, "_invoked");
    private volatile int _invoked;

    /* renamed from: e, reason: collision with root package name */
    public final i9.l f10221e;

    public o0(i9.l lVar) {
        this.f10221e = lVar;
    }

    @Override // i9.l
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        j((Throwable) obj);
        return w8.l.f10832a;
    }

    @Override // t9.u0
    public final void j(Throwable th) {
        if (f.compareAndSet(this, 0, 1)) {
            this.f10221e.invoke(th);
        }
    }
}
