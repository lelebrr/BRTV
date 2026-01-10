package aa;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import t9.b1;
import t9.j;
import t9.u;
import w8.l;
import x9.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e implements a {

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f184c = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "head");
    public static final AtomicLongFieldUpdater d = AtomicLongFieldUpdater.newUpdater(e.class, "deqIdx");

    /* renamed from: e, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f185e = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "tail");
    public static final AtomicLongFieldUpdater f = AtomicLongFieldUpdater.newUpdater(e.class, "enqIdx");

    /* renamed from: g, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f186g = AtomicIntegerFieldUpdater.newUpdater(e.class, "_availablePermits");
    private volatile int _availablePermits;

    /* renamed from: a, reason: collision with root package name */
    public final int f187a;

    /* renamed from: b, reason: collision with root package name */
    public final c f188b;
    private volatile long deqIdx;
    private volatile long enqIdx;
    private volatile Object head;
    private volatile Object tail;

    public e(int i6, int i10) {
        this.f187a = i6;
        if (i6 <= 0) {
            throw new IllegalArgumentException(a.e.n(i6, "Semaphore should have at least 1 permit, but had ").toString());
        }
        if (i10 < 0 || i10 > i6) {
            throw new IllegalArgumentException(a.e.n(i6, "The number of acquired permits should be in 0..").toString());
        }
        g gVar = new g(0L, null, 2);
        this.head = gVar;
        this.tail = gVar;
        this._availablePermits = i6 - i10;
        this.f188b = new c(0, this);
    }

    public final boolean a(t9.e eVar) {
        Object objB;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i6;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f185e;
        g gVar = (g) atomicReferenceFieldUpdater.get(this);
        long andIncrement = f.getAndIncrement(this);
        b bVar = b.f180i;
        long j10 = andIncrement / f.f;
        loop0: while (true) {
            objB = x9.a.b(gVar, j10, bVar);
            if (objB != x9.a.f11102b) {
                s sVarC = x9.a.c(objB);
                while (true) {
                    s sVar = (s) atomicReferenceFieldUpdater.get(this);
                    if (sVar.f11130c >= sVarC.f11130c) {
                        break loop0;
                    }
                    if (!sVarC.f()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, sVar, sVarC)) {
                        if (atomicReferenceFieldUpdater.get(this) != sVar) {
                            if (sVarC.c()) {
                                sVarC.b();
                            }
                        }
                    }
                    if (sVar.c()) {
                        sVar.b();
                    }
                }
            } else {
                break;
            }
        }
        g gVar2 = (g) x9.a.c(objB);
        int i10 = (int) (andIncrement % f.f);
        AtomicReferenceArray atomicReferenceArray = gVar2.f193e;
        while (!atomicReferenceArray.compareAndSet(i10, null, eVar)) {
            if (atomicReferenceArray.get(i10) != null) {
                u7.b bVar2 = f.f190b;
                u7.b bVar3 = f.f191c;
                while (!atomicReferenceArray.compareAndSet(i10, bVar2, bVar3)) {
                    if (atomicReferenceArray.get(i10) != bVar2) {
                        return false;
                    }
                }
                eVar.u(l.f10832a, eVar.f10177c, this.f188b);
                return true;
            }
        }
        do {
            atomicIntegerFieldUpdater = t9.e.f;
            i6 = atomicIntegerFieldUpdater.get(eVar);
            if ((i6 & 536870911) != 536870911) {
                throw new IllegalStateException("invokeOnCancellation should be called at most once");
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(eVar, i6, ((i6 >> 29) << 29) + i10));
        eVar.q(gVar2);
        return true;
    }

    public final void b() {
        int i6;
        Object objB;
        boolean z7;
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f186g;
            int andIncrement = atomicIntegerFieldUpdater.getAndIncrement(this);
            int i10 = this.f187a;
            if (andIncrement >= i10) {
                do {
                    i6 = atomicIntegerFieldUpdater.get(this);
                    if (i6 <= i10) {
                        break;
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i6, i10));
                throw new IllegalStateException(("The number of released permits cannot be greater than " + i10).toString());
            }
            if (andIncrement >= 0) {
                return;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f184c;
            g gVar = (g) atomicReferenceFieldUpdater.get(this);
            long andIncrement2 = d.getAndIncrement(this);
            long j10 = andIncrement2 / f.f;
            d dVar = d.f183i;
            while (true) {
                objB = x9.a.b(gVar, j10, dVar);
                if (objB == x9.a.f11102b) {
                    break;
                }
                s sVarC = x9.a.c(objB);
                while (true) {
                    s sVar = (s) atomicReferenceFieldUpdater.get(this);
                    if (sVar.f11130c >= sVarC.f11130c) {
                        break;
                    }
                    if (!sVarC.f()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, sVar, sVarC)) {
                        if (atomicReferenceFieldUpdater.get(this) != sVar) {
                            if (sVarC.c()) {
                                sVarC.b();
                            }
                        }
                    }
                    if (sVar.c()) {
                        sVar.b();
                    }
                }
            }
            g gVar2 = (g) x9.a.c(objB);
            u7.b bVar = null;
            x9.c.f11107b.lazySet(gVar2, null);
            z7 = false;
            if (gVar2.f11130c <= j10) {
                int i11 = (int) (andIncrement2 % f.f);
                u7.b bVar2 = f.f190b;
                AtomicReferenceArray atomicReferenceArray = gVar2.f193e;
                Object andSet = atomicReferenceArray.getAndSet(i11, bVar2);
                if (andSet == null) {
                    int i12 = f.f189a;
                    for (int i13 = 0; i13 < i12; i13++) {
                        if (atomicReferenceArray.get(i11) == f.f191c) {
                            z7 = true;
                            break;
                        }
                    }
                    u7.b bVar3 = f.f190b;
                    u7.b bVar4 = f.d;
                    while (true) {
                        if (!atomicReferenceArray.compareAndSet(i11, bVar3, bVar4)) {
                            if (atomicReferenceArray.get(i11) != bVar3) {
                                break;
                            }
                        } else {
                            z7 = true;
                            break;
                        }
                    }
                    z7 = !z7;
                } else if (andSet != f.f192e) {
                    if (!(andSet instanceof t9.d)) {
                        throw new IllegalStateException(("unexpected: " + andSet).toString());
                    }
                    l lVar = l.f10832a;
                    t9.e eVar = (t9.e) ((t9.d) andSet);
                    while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = t9.e.f10184g;
                        Object obj = atomicReferenceFieldUpdater2.get(eVar);
                        boolean z10 = obj instanceof b1;
                        u7.b bVar5 = u.f10228a;
                        if (!z10) {
                            boolean z11 = obj instanceof j;
                            break;
                        }
                        Object objV = t9.e.v((b1) obj, lVar, eVar.f10177c, this.f188b);
                        while (!atomicReferenceFieldUpdater2.compareAndSet(eVar, obj, objV)) {
                            if (atomicReferenceFieldUpdater2.get(eVar) != obj) {
                                break;
                            }
                        }
                        if (!eVar.r()) {
                            eVar.k();
                        }
                        bVar = bVar5;
                    }
                    if (bVar != null) {
                        eVar.l(eVar.f10177c);
                        z7 = true;
                        break;
                        break;
                    }
                }
            }
        } while (!z7);
    }
}
