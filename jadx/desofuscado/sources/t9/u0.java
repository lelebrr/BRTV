package t9;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class u0 extends x9.j implements c0, k0, i9.l {
    public y0 d;

    @Override // t9.c0
    public final void a() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2;
        y0 y0VarI = i();
        while (true) {
            Object objU = y0VarI.u();
            if (objU instanceof u0) {
                if (objU != this) {
                    return;
                }
                d0 d0Var = u.f10234i;
                do {
                    atomicReferenceFieldUpdater2 = y0.f10247a;
                    if (atomicReferenceFieldUpdater2.compareAndSet(y0VarI, objU, d0Var)) {
                        return;
                    }
                } while (atomicReferenceFieldUpdater2.get(y0VarI) == objU);
            } else {
                if (!(objU instanceof k0) || ((k0) objU).c() == null) {
                    return;
                }
                while (true) {
                    Object objF = f();
                    if (objF instanceof x9.p) {
                        x9.j jVar = ((x9.p) objF).f11129a;
                        return;
                    }
                    if (objF == this) {
                        return;
                    }
                    j9.i.d(objF, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
                    x9.j jVar2 = (x9.j) objF;
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = x9.j.f11120c;
                    x9.p pVar = (x9.p) atomicReferenceFieldUpdater3.get(jVar2);
                    if (pVar == null) {
                        pVar = new x9.p(jVar2);
                        atomicReferenceFieldUpdater3.lazySet(jVar2, pVar);
                    }
                    do {
                        atomicReferenceFieldUpdater = x9.j.f11118a;
                        if (atomicReferenceFieldUpdater.compareAndSet(this, objF, pVar)) {
                            jVar2.d();
                            return;
                        }
                    } while (atomicReferenceFieldUpdater.get(this) == objF);
                }
            }
        }
    }

    @Override // t9.k0
    public final z0 c() {
        return null;
    }

    public final y0 i() {
        y0 y0Var = this.d;
        if (y0Var != null) {
            return y0Var;
        }
        j9.i.l("job");
        throw null;
    }

    @Override // t9.k0
    public final boolean isActive() {
        return true;
    }

    public abstract void j(Throwable th);

    @Override // x9.j
    public final String toString() {
        return getClass().getSimpleName() + '@' + u.f(this) + "[job@" + u.f(i()) + ']';
    }
}
