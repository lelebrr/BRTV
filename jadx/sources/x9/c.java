package x9;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f11106a = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_next");

    /* renamed from: b, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f11107b = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_prev");
    private volatile Object _next;
    private volatile Object _prev;

    public c(s sVar) {
        this._prev = sVar;
    }

    public abstract boolean a();

    public final void b() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f11106a;
        Object obj = atomicReferenceFieldUpdater.get(this);
        u7.b bVar = a.f11102b;
        if ((obj == bVar ? null : (c) obj) == null) {
            return;
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f11107b;
            c cVar = (c) atomicReferenceFieldUpdater2.get(this);
            while (cVar != null && cVar.a()) {
                cVar = (c) atomicReferenceFieldUpdater2.get(cVar);
            }
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            c cVar2 = obj2 == bVar ? null : (c) obj2;
            j9.i.c(cVar2);
            while (cVar2.a()) {
                Object obj3 = atomicReferenceFieldUpdater.get(cVar2);
                c cVar3 = obj3 == bVar ? null : (c) obj3;
                if (cVar3 == null) {
                    break;
                } else {
                    cVar2 = cVar3;
                }
            }
            while (true) {
                Object obj4 = atomicReferenceFieldUpdater2.get(cVar2);
                c cVar4 = ((c) obj4) == null ? null : cVar;
                while (!atomicReferenceFieldUpdater2.compareAndSet(cVar2, obj4, cVar4)) {
                    if (atomicReferenceFieldUpdater2.get(cVar2) != obj4) {
                        break;
                    }
                }
            }
            if (cVar != null) {
                atomicReferenceFieldUpdater.set(cVar, cVar2);
            }
            if (cVar2.a()) {
                Object obj5 = atomicReferenceFieldUpdater.get(cVar2);
                if ((obj5 == bVar ? null : (c) obj5) != null) {
                    continue;
                }
            }
            if (cVar == null || !cVar.a()) {
                return;
            }
        }
    }
}
