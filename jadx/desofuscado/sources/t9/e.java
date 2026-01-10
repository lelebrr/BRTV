package t9;

import androidx.media3.common.C;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class e extends a0 implements d, c9.d {
    public static final AtomicIntegerFieldUpdater f = AtomicIntegerFieldUpdater.newUpdater(e.class, "_decisionAndIndex");

    /* renamed from: g, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f10184g = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "_state");

    /* renamed from: h, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f10185h = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "_parentHandle");
    private volatile int _decisionAndIndex;
    private volatile Object _parentHandle;
    private volatile Object _state;
    public final a9.d d;

    /* renamed from: e, reason: collision with root package name */
    public final a9.i f10186e;

    public e(a9.d dVar, int i6) {
        super(i6);
        this.d = dVar;
        this.f10186e = dVar.getContext();
        this._decisionAndIndex = 536870911;
        this._state = b.f10179a;
    }

    public static void s(b1 b1Var, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + b1Var + ", already has " + obj).toString());
    }

    public static Object v(b1 b1Var, Object obj, int i6, i9.l lVar) {
        if ((obj instanceof k) || !u.j(i6)) {
            return obj;
        }
        if (lVar != null || (b1Var instanceof n0)) {
            return new j(obj, b1Var instanceof n0 ? (n0) b1Var : null, lVar, (CancellationException) null, 16);
        }
        return obj;
    }

    @Override // t9.a0
    public final void a(Object obj, CancellationException cancellationException) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10184g;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof b1) {
                throw new IllegalStateException("Not completed");
            }
            if (obj2 instanceof k) {
                return;
            }
            if (!(obj2 instanceof j)) {
                j jVar = new j(obj2, (n0) null, (i9.l) null, cancellationException, 14);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, jVar)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        break;
                    }
                }
                return;
            }
            j jVar2 = (j) obj2;
            if (jVar2.f10204e != null) {
                throw new IllegalStateException("Must be called at most once");
            }
            j jVarA = j.a(jVar2, null, cancellationException, 15);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, jVarA)) {
                if (atomicReferenceFieldUpdater.get(this) != obj2) {
                    break;
                }
            }
            n0 n0Var = jVar2.f10202b;
            if (n0Var != null) {
                g(n0Var, cancellationException);
            }
            i9.l lVar = jVar2.f10203c;
            if (lVar != null) {
                h(lVar, cancellationException);
                return;
            }
            return;
        }
    }

    @Override // t9.a0
    public final a9.d b() {
        return this.d;
    }

    @Override // t9.a0
    public final Throwable c(Object obj) {
        Throwable thC = super.c(obj);
        if (thC != null) {
            return thC;
        }
        return null;
    }

    @Override // t9.a0
    public final Object d(Object obj) {
        return obj instanceof j ? ((j) obj).f10201a : obj;
    }

    @Override // t9.a0
    public final Object f() {
        return f10184g.get(this);
    }

    public final void g(n0 n0Var, Throwable th) {
        try {
            n0Var.a(th);
        } catch (Throwable th2) {
            u.h(this.f10186e, new androidx.fragment.app.q("Exception in invokeOnCancellation handler for " + this, th2, 8));
        }
    }

    @Override // c9.d
    public final c9.d getCallerFrame() {
        a9.d dVar = this.d;
        if (dVar instanceof c9.d) {
            return (c9.d) dVar;
        }
        return null;
    }

    @Override // a9.d
    public final a9.i getContext() {
        return this.f10186e;
    }

    public final void h(i9.l lVar, Throwable th) {
        try {
            lVar.invoke(th);
        } catch (Throwable th2) {
            u.h(this.f10186e, new androidx.fragment.app.q("Exception in resume onCancellation handler for " + this, th2, 8));
        }
    }

    public final void i(x9.s sVar, Throwable th) {
        int i6 = f.get(this) & 536870911;
        if (i6 == 536870911) {
            throw new IllegalStateException("The index for Segment.onCancellation(..) is broken");
        }
        try {
            sVar.e(i6);
        } catch (Throwable th2) {
            u.h(this.f10186e, new androidx.fragment.app.q("Exception in invokeOnCancellation handler for " + this, th2, 8));
        }
    }

    public final void j(Throwable th) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10184g;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof b1) {
                f fVar = new f(this, th, (obj instanceof n0) || (obj instanceof x9.s));
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, fVar)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                b1 b1Var = (b1) obj;
                if (b1Var instanceof n0) {
                    g((n0) obj, th);
                } else if (b1Var instanceof x9.s) {
                    i((x9.s) obj, th);
                }
                if (!r()) {
                    k();
                }
                l(this.f10177c);
                return;
            }
            return;
        }
    }

    public final void k() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10185h;
        c0 c0Var = (c0) atomicReferenceFieldUpdater.get(this);
        if (c0Var == null) {
            return;
        }
        c0Var.a();
        atomicReferenceFieldUpdater.set(this, a1.f10178a);
    }

    public final void l(int i6) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i10;
        do {
            atomicIntegerFieldUpdater = f;
            i10 = atomicIntegerFieldUpdater.get(this);
            int i11 = i10 >> 29;
            if (i11 != 0) {
                if (i11 != 1) {
                    throw new IllegalStateException("Already resumed");
                }
                boolean z7 = i6 == 4;
                a9.d dVar = this.d;
                if (z7 || !(dVar instanceof x9.g) || u.j(i6) != u.j(this.f10177c)) {
                    u.m(this, dVar, z7);
                    return;
                }
                p pVar = ((x9.g) dVar).d;
                a9.i context = ((x9.g) dVar).f11112e.getContext();
                if (pVar.g()) {
                    pVar.d(context, this);
                    return;
                }
                g0 g0VarA = f1.a();
                if (g0VarA.f10192c >= 4294967296L) {
                    x8.h hVar = g0VarA.f10193e;
                    if (hVar == null) {
                        hVar = new x8.h();
                        g0VarA.f10193e = hVar;
                    }
                    hVar.addLast(this);
                    return;
                }
                g0VarA.j(true);
                try {
                    u.m(this, dVar, true);
                    do {
                    } while (g0VarA.k());
                } finally {
                    try {
                        return;
                    } finally {
                    }
                }
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i10, 1073741824 + (536870911 & i10)));
    }

    public final Object m() throws Throwable {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i6;
        boolean zR = r();
        do {
            atomicIntegerFieldUpdater = f;
            i6 = atomicIntegerFieldUpdater.get(this);
            int i10 = i6 >> 29;
            if (i10 != 0) {
                if (i10 != 2) {
                    throw new IllegalStateException("Already suspended");
                }
                if (zR) {
                    t();
                }
                Object obj = f10184g.get(this);
                if (obj instanceof k) {
                    throw ((k) obj).f10208a;
                }
                if (u.j(this.f10177c)) {
                    q0 q0Var = (q0) this.f10186e.e(q.f10225b);
                    if (q0Var != null && !q0Var.isActive()) {
                        CancellationException cancellationExceptionQ = ((y0) q0Var).q();
                        a(obj, cancellationExceptionQ);
                        throw cancellationExceptionQ;
                    }
                }
                return d(obj);
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i6, C.BUFFER_FLAG_LAST_SAMPLE + (536870911 & i6)));
        if (((c0) f10185h.get(this)) == null) {
            o();
        }
        if (zR) {
            t();
        }
        return b9.a.f3322a;
    }

    public final void n() {
        c0 c0VarO = o();
        if (c0VarO == null || (f10184g.get(this) instanceof b1)) {
            return;
        }
        c0VarO.a();
        f10185h.set(this, a1.f10178a);
    }

    public final c0 o() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        q0 q0Var = (q0) this.f10186e.e(q.f10225b);
        if (q0Var == null) {
            return null;
        }
        c0 c0VarI = u.i(q0Var, true, new g(this), 2);
        do {
            atomicReferenceFieldUpdater = f10185h;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, c0VarI)) {
                break;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        return c0VarI;
    }

    public final void p(i9.l lVar) {
        q(lVar instanceof n0 ? (n0) lVar : new n0(lVar));
    }

    public final void q(b1 b1Var) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10184g;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof b) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, b1Var)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                return;
            }
            if (obj instanceof n0 ? true : obj instanceof x9.s) {
                s(b1Var, obj);
                throw null;
            }
            if (obj instanceof k) {
                k kVar = (k) obj;
                kVar.getClass();
                if (!k.f10207b.compareAndSet(kVar, 0, 1)) {
                    s(b1Var, obj);
                    throw null;
                }
                if (obj instanceof f) {
                    if (!(obj instanceof k)) {
                        kVar = null;
                    }
                    Throwable th = kVar != null ? kVar.f10208a : null;
                    if (b1Var instanceof n0) {
                        g((n0) b1Var, th);
                        return;
                    } else {
                        j9.i.d(b1Var, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>");
                        i((x9.s) b1Var, th);
                        return;
                    }
                }
                return;
            }
            if (!(obj instanceof j)) {
                if (b1Var instanceof x9.s) {
                    return;
                }
                j9.i.d(b1Var, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                j jVar = new j(obj, (n0) b1Var, (i9.l) null, (CancellationException) null, 28);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, jVar)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                return;
            }
            j jVar2 = (j) obj;
            if (jVar2.f10202b != null) {
                s(b1Var, obj);
                throw null;
            }
            if (b1Var instanceof x9.s) {
                return;
            }
            j9.i.d(b1Var, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
            n0 n0Var = (n0) b1Var;
            Throwable th2 = jVar2.f10204e;
            if (th2 != null) {
                g(n0Var, th2);
                return;
            }
            j jVarA = j.a(jVar2, n0Var, null, 29);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, jVarA)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
            return;
        }
    }

    public final boolean r() {
        if (this.f10177c == 2) {
            a9.d dVar = this.d;
            j9.i.d(dVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            if (x9.g.f11111h.get((x9.g) dVar) != null) {
                return true;
            }
        }
        return false;
    }

    @Override // a9.d
    public final void resumeWith(Object obj) {
        Throwable thA = w8.h.a(obj);
        if (thA != null) {
            obj = new k(thA, false);
        }
        u(obj, this.f10177c, null);
    }

    public final void t() {
        a9.d dVar = this.d;
        Throwable th = null;
        x9.g gVar = dVar instanceof x9.g ? (x9.g) dVar : null;
        if (gVar != null) {
            loop0: while (true) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = x9.g.f11111h;
                Object obj = atomicReferenceFieldUpdater.get(gVar);
                u7.b bVar = x9.a.d;
                if (obj == bVar) {
                    while (!atomicReferenceFieldUpdater.compareAndSet(gVar, bVar, this)) {
                        if (atomicReferenceFieldUpdater.get(gVar) != bVar) {
                            break;
                        }
                    }
                    break loop0;
                } else {
                    if (!(obj instanceof Throwable)) {
                        throw new IllegalStateException(("Inconsistent state " + obj).toString());
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(gVar, obj, null)) {
                        if (atomicReferenceFieldUpdater.get(gVar) != obj) {
                            throw new IllegalArgumentException("Failed requirement.");
                        }
                    }
                    th = (Throwable) obj;
                }
            }
            if (th == null) {
                return;
            }
            k();
            j(th);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CancellableContinuation(");
        sb.append(u.n(this.d));
        sb.append("){");
        Object obj = f10184g.get(this);
        sb.append(obj instanceof b1 ? "Active" : obj instanceof f ? "Cancelled" : "Completed");
        sb.append("}@");
        sb.append(u.f(this));
        return sb.toString();
    }

    public final void u(Object obj, int i6, i9.l lVar) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10184g;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof b1) {
                Object objV = v((b1) obj2, obj, i6, lVar);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, objV)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        break;
                    }
                }
                if (!r()) {
                    k();
                }
                l(i6);
                return;
            }
            if (obj2 instanceof f) {
                f fVar = (f) obj2;
                fVar.getClass();
                if (f.f10187c.compareAndSet(fVar, 0, 1)) {
                    if (lVar != null) {
                        h(lVar, fVar.f10208a);
                        return;
                    }
                    return;
                }
            }
            throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
        }
    }
}
