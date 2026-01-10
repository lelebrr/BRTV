package t9;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public class k {

    /* renamed from: b, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f10207b = AtomicIntegerFieldUpdater.newUpdater(k.class, "_handled");
    private volatile int _handled;

    /* renamed from: a, reason: collision with root package name */
    public final Throwable f10208a;

    public k(Throwable th, boolean z7) {
        this.f10208a = th;
        this._handled = z7 ? 1 : 0;
    }

    public final String toString() {
        return getClass().getSimpleName() + '[' + this.f10208a + ']';
    }
}
