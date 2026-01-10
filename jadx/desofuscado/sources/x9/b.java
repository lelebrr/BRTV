package x9;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class b extends o {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f11105a = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_consensus");
    private volatile Object _consensus = a.f11101a;

    @Override // x9.o
    public final Object a(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f11105a;
        Object obj2 = atomicReferenceFieldUpdater.get(this);
        u7.b bVar = a.f11101a;
        if (obj2 == bVar) {
            u7.b bVarC = c(obj);
            obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 == bVar) {
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, bVar, bVarC)) {
                        obj2 = bVarC;
                        break;
                    }
                    if (atomicReferenceFieldUpdater.get(this) != bVar) {
                        obj2 = atomicReferenceFieldUpdater.get(this);
                        break;
                    }
                }
            }
        }
        b(obj, obj2);
        return obj2;
    }

    public abstract void b(Object obj, Object obj2);

    public abstract u7.b c(Object obj);
}
