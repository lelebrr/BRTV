package z9;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: b, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f11704b = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "lastScheduledTask");

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f11705c = AtomicIntegerFieldUpdater.newUpdater(l.class, "producerIndex");
    public static final AtomicIntegerFieldUpdater d = AtomicIntegerFieldUpdater.newUpdater(l.class, "consumerIndex");

    /* renamed from: e, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f11706e = AtomicIntegerFieldUpdater.newUpdater(l.class, "blockingTasksInBuffer");

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReferenceArray f11707a = new AtomicReferenceArray(128);
    private volatile int blockingTasksInBuffer;
    private volatile int consumerIndex;
    private volatile Object lastScheduledTask;
    private volatile int producerIndex;

    public final h a(h hVar) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f11705c;
        if (atomicIntegerFieldUpdater.get(this) - d.get(this) == 127) {
            return hVar;
        }
        if (hVar.f11695b.f1866a == 1) {
            f11706e.incrementAndGet(this);
        }
        int i6 = atomicIntegerFieldUpdater.get(this) & 127;
        while (true) {
            AtomicReferenceArray atomicReferenceArray = this.f11707a;
            if (atomicReferenceArray.get(i6) == null) {
                atomicReferenceArray.lazySet(i6, hVar);
                atomicIntegerFieldUpdater.incrementAndGet(this);
                return null;
            }
            Thread.yield();
        }
    }

    public final h b() {
        h hVar;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = d;
            int i6 = atomicIntegerFieldUpdater.get(this);
            if (i6 - f11705c.get(this) == 0) {
                return null;
            }
            int i10 = i6 & 127;
            if (atomicIntegerFieldUpdater.compareAndSet(this, i6, i6 + 1) && (hVar = (h) this.f11707a.getAndSet(i10, null)) != null) {
                if (hVar.f11695b.f1866a == 1) {
                    f11706e.decrementAndGet(this);
                }
                return hVar;
            }
        }
    }

    public final h c(int i6, boolean z7) {
        int i10 = i6 & 127;
        AtomicReferenceArray atomicReferenceArray = this.f11707a;
        h hVar = (h) atomicReferenceArray.get(i10);
        if (hVar != null) {
            if ((hVar.f11695b.f1866a == 1) == z7) {
                while (!atomicReferenceArray.compareAndSet(i10, hVar, null)) {
                    if (atomicReferenceArray.get(i10) != hVar) {
                    }
                }
                if (z7) {
                    f11706e.decrementAndGet(this);
                }
                return hVar;
            }
        }
        return null;
    }
}
