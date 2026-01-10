package t9;

import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public class y0 implements q0, c1 {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f10247a = AtomicReferenceFieldUpdater.newUpdater(y0.class, Object.class, "_state");

    /* renamed from: b, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f10248b = AtomicReferenceFieldUpdater.newUpdater(y0.class, Object.class, "_parentHandle");
    private volatile Object _parentHandle;
    private volatile Object _state;

    public y0(boolean z7) {
        this._state = z7 ? u.f10234i : u.f10233h;
    }

    public static i B(x9.j jVar) {
        while (jVar.h()) {
            x9.j jVarD = jVar.d();
            if (jVarD == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = x9.j.f11119b;
                Object obj = atomicReferenceFieldUpdater.get(jVar);
                while (true) {
                    jVar = (x9.j) obj;
                    if (!jVar.h()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(jVar);
                }
            } else {
                jVar = jVarD;
            }
        }
        while (true) {
            jVar = jVar.g();
            if (!jVar.h()) {
                if (jVar instanceof i) {
                    return (i) jVar;
                }
                if (jVar instanceof z0) {
                    return null;
                }
            }
        }
    }

    public static String G(Object obj) {
        if (!(obj instanceof w0)) {
            return obj instanceof k0 ? ((k0) obj).isActive() ? "Active" : "New" : obj instanceof k ? "Cancelled" : "Completed";
        }
        w0 w0Var = (w0) obj;
        return w0Var.d() ? "Cancelling" : w0Var.e() ? "Completing" : "Active";
    }

    public final Object A(Object obj) {
        Object objH;
        do {
            objH = H(u(), obj);
            if (objH == u.f10230c) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                k kVar = obj instanceof k ? (k) obj : null;
                throw new IllegalStateException(str, kVar != null ? kVar.f10208a : null);
            }
        } while (objH == u.f10231e);
        return objH;
    }

    public final void C(z0 z0Var, Throwable th) {
        Object objF = z0Var.f();
        j9.i.d(objF, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        androidx.fragment.app.q qVar = null;
        for (x9.j jVarG = (x9.j) objF; !jVarG.equals(z0Var); jVarG = jVarG.g()) {
            if (jVarG instanceof s0) {
                u0 u0Var = (u0) jVarG;
                try {
                    u0Var.j(th);
                } catch (Throwable th2) {
                    if (qVar != null) {
                        l5.a.a(qVar, th2);
                    } else {
                        qVar = new androidx.fragment.app.q("Exception in completion handler " + u0Var + " for " + this, th2, 8);
                    }
                }
            }
        }
        if (qVar != null) {
            w(qVar);
        }
        k(th);
    }

    public final void F(u0 u0Var) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        z0 z0Var = new z0();
        u0Var.getClass();
        x9.j.f11119b.lazySet(z0Var, u0Var);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = x9.j.f11118a;
        atomicReferenceFieldUpdater2.lazySet(z0Var, u0Var);
        loop0: while (true) {
            if (u0Var.f() == u0Var) {
                while (!atomicReferenceFieldUpdater2.compareAndSet(u0Var, u0Var, z0Var)) {
                    if (atomicReferenceFieldUpdater2.get(u0Var) != u0Var) {
                        break;
                    }
                }
                z0Var.e(u0Var);
                break loop0;
            }
            break;
        }
        x9.j jVarG = u0Var.g();
        do {
            atomicReferenceFieldUpdater = f10247a;
            if (atomicReferenceFieldUpdater.compareAndSet(this, u0Var, jVarG)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == u0Var);
    }

    public final Object H(Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        if (!(obj instanceof k0)) {
            return u.f10230c;
        }
        if (((obj instanceof d0) || (obj instanceof u0)) && !(obj instanceof i) && !(obj2 instanceof k)) {
            k0 k0Var = (k0) obj;
            Object l0Var = obj2 instanceof k0 ? new l0((k0) obj2) : obj2;
            do {
                atomicReferenceFieldUpdater = f10247a;
                if (atomicReferenceFieldUpdater.compareAndSet(this, k0Var, l0Var)) {
                    D(obj2);
                    n(k0Var, obj2);
                    return obj2;
                }
            } while (atomicReferenceFieldUpdater.get(this) == k0Var);
            return u.f10231e;
        }
        k0 k0Var2 = (k0) obj;
        z0 z0VarT = t(k0Var2);
        if (z0VarT == null) {
            return u.f10231e;
        }
        i iVarB = null;
        w0 w0Var = k0Var2 instanceof w0 ? (w0) k0Var2 : null;
        if (w0Var == null) {
            w0Var = new w0(z0VarT, null);
        }
        synchronized (w0Var) {
            if (w0Var.e()) {
                return u.f10230c;
            }
            w0.f10241b.set(w0Var, 1);
            if (w0Var != k0Var2) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f10247a;
                while (!atomicReferenceFieldUpdater2.compareAndSet(this, k0Var2, w0Var)) {
                    if (atomicReferenceFieldUpdater2.get(this) != k0Var2) {
                        return u.f10231e;
                    }
                }
            }
            boolean zD = w0Var.d();
            k kVar = obj2 instanceof k ? (k) obj2 : null;
            if (kVar != null) {
                w0Var.a(kVar.f10208a);
            }
            Throwable thB = w0Var.b();
            if (zD) {
                thB = null;
            }
            if (thB != null) {
                C(z0VarT, thB);
            }
            i iVar = k0Var2 instanceof i ? (i) k0Var2 : null;
            if (iVar == null) {
                z0 z0VarC = k0Var2.c();
                if (z0VarC != null) {
                    iVarB = B(z0VarC);
                }
            } else {
                iVarB = iVar;
            }
            if (iVarB != null) {
                while (u.i(iVarB.f10198e, false, new v0(this, w0Var, iVarB, obj2), 1) == a1.f10178a) {
                    iVarB = B(iVarB);
                    if (iVarB == null) {
                    }
                }
                return u.d;
            }
            return p(w0Var, obj2);
        }
    }

    @Override // a9.i
    public final Object a(Object obj, i9.p pVar) {
        return pVar.invoke(obj, this);
    }

    @Override // a9.i
    public final a9.i c(a9.h hVar) {
        return com.bumptech.glide.d.x(this, hVar);
    }

    @Override // a9.i
    public final a9.g e(a9.h hVar) {
        return com.bumptech.glide.d.i(this, hVar);
    }

    @Override // a9.i
    public final a9.i f(a9.i iVar) {
        return com.bumptech.glide.d.A(this, iVar);
    }

    public final boolean g(k0 k0Var, z0 z0Var, u0 u0Var) {
        char c5;
        x0 x0Var = new x0(u0Var, this, k0Var);
        do {
            x9.j jVarD = z0Var.d();
            if (jVarD == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = x9.j.f11119b;
                Object obj = atomicReferenceFieldUpdater.get(z0Var);
                while (true) {
                    jVarD = (x9.j) obj;
                    if (!jVarD.h()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(jVarD);
                }
            }
            x9.j.f11119b.lazySet(u0Var, jVarD);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = x9.j.f11118a;
            atomicReferenceFieldUpdater2.lazySet(u0Var, z0Var);
            x0Var.f10245c = z0Var;
            while (true) {
                if (atomicReferenceFieldUpdater2.compareAndSet(jVarD, z0Var, x0Var)) {
                    c5 = x0Var.a(jVarD) == null ? (char) 1 : (char) 2;
                } else if (atomicReferenceFieldUpdater2.get(jVarD) != z0Var) {
                    c5 = 0;
                    break;
                }
            }
            if (c5 == 1) {
                return true;
            }
        } while (c5 != 2);
        return false;
    }

    @Override // a9.g
    public final a9.h getKey() {
        return q.f10225b;
    }

    public void i(Object obj) {
        h(obj);
    }

    @Override // t9.q0
    public boolean isActive() {
        Object objU = u();
        return (objU instanceof k0) && ((k0) objU).isActive();
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0060, code lost:
    
        r0 = r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean j(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: t9.y0.j(java.lang.Object):boolean");
    }

    public final boolean k(Throwable th) {
        if (z()) {
            return true;
        }
        boolean z7 = th instanceof CancellationException;
        h hVar = (h) f10248b.get(this);
        return (hVar == null || hVar == a1.f10178a) ? z7 : hVar.b(th) || z7;
    }

    public String l() {
        return "Job was cancelled";
    }

    public boolean m(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return j(th) && r();
    }

    public final void n(k0 k0Var, Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10248b;
        h hVar = (h) atomicReferenceFieldUpdater.get(this);
        if (hVar != null) {
            hVar.a();
            atomicReferenceFieldUpdater.set(this, a1.f10178a);
        }
        androidx.fragment.app.q qVar = null;
        k kVar = obj instanceof k ? (k) obj : null;
        Throwable th = kVar != null ? kVar.f10208a : null;
        if (k0Var instanceof u0) {
            try {
                ((u0) k0Var).j(th);
                return;
            } catch (Throwable th2) {
                w(new androidx.fragment.app.q("Exception in completion handler " + k0Var + " for " + this, th2, 8));
                return;
            }
        }
        z0 z0VarC = k0Var.c();
        if (z0VarC != null) {
            Object objF = z0VarC.f();
            j9.i.d(objF, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
            for (x9.j jVarG = (x9.j) objF; !jVarG.equals(z0VarC); jVarG = jVarG.g()) {
                if (jVarG instanceof u0) {
                    u0 u0Var = (u0) jVarG;
                    try {
                        u0Var.j(th);
                    } catch (Throwable th3) {
                        if (qVar != null) {
                            l5.a.a(qVar, th3);
                        } else {
                            qVar = new androidx.fragment.app.q("Exception in completion handler " + u0Var + " for " + this, th3, 8);
                        }
                    }
                }
            }
            if (qVar != null) {
                w(qVar);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Throwable] */
    public final Throwable o(Object obj) {
        CancellationException cancellationExceptionB;
        if (obj instanceof Throwable) {
            return (Throwable) obj;
        }
        y0 y0Var = (y0) ((c1) obj);
        Object objU = y0Var.u();
        if (objU instanceof w0) {
            cancellationExceptionB = ((w0) objU).b();
        } else if (objU instanceof k) {
            cancellationExceptionB = ((k) objU).f10208a;
        } else {
            if (objU instanceof k0) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + objU).toString());
            }
            cancellationExceptionB = null;
        }
        CancellationException r0Var = cancellationExceptionB instanceof CancellationException ? cancellationExceptionB : null;
        if (r0Var == null) {
            r0Var = new r0("Parent job is ".concat(G(objU)), cancellationExceptionB, y0Var);
        }
        return r0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object p(w0 w0Var, Object obj) {
        Throwable r0Var = null;
        k kVar = obj instanceof k ? (k) obj : null;
        Throwable th = kVar != null ? kVar.f10208a : null;
        synchronized (w0Var) {
            w0Var.d();
            ArrayList<Throwable> arrayListF = w0Var.f(th);
            if (!arrayListF.isEmpty()) {
                Iterator it = arrayListF.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if (!(((Throwable) next) instanceof CancellationException)) {
                        r0Var = next;
                        break;
                    }
                }
                r0Var = r0Var;
                if (r0Var == null) {
                    r0Var = (Throwable) arrayListF.get(0);
                }
            } else if (w0Var.d()) {
                r0Var = new r0(l(), null, this);
            }
            if (r0Var != null && arrayListF.size() > 1) {
                Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(arrayListF.size()));
                for (Throwable th2 : arrayListF) {
                    if (th2 != r0Var && th2 != r0Var && !(th2 instanceof CancellationException) && setNewSetFromMap.add(th2)) {
                        l5.a.a(r0Var, th2);
                    }
                }
            }
        }
        if (r0Var != null && r0Var != th) {
            obj = new k(r0Var, false);
        }
        if (r0Var != null && (k(r0Var) || v(r0Var))) {
            j9.i.d(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
            k.f10207b.compareAndSet((k) obj, 0, 1);
        }
        D(obj);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10247a;
        Object l0Var = obj instanceof k0 ? new l0((k0) obj) : obj;
        while (!atomicReferenceFieldUpdater.compareAndSet(this, w0Var, l0Var) && atomicReferenceFieldUpdater.get(this) == w0Var) {
        }
        n(w0Var, obj);
        return obj;
    }

    public final CancellationException q() {
        CancellationException cancellationException;
        Object objU = u();
        if (!(objU instanceof w0)) {
            if (objU instanceof k0) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            if (!(objU instanceof k)) {
                return new r0(getClass().getSimpleName().concat(" has completed normally"), null, this);
            }
            Throwable th = ((k) objU).f10208a;
            cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
            return cancellationException == null ? new r0(l(), th, this) : cancellationException;
        }
        Throwable thB = ((w0) objU).b();
        if (thB == null) {
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        String strConcat = getClass().getSimpleName().concat(" is cancelling");
        cancellationException = thB instanceof CancellationException ? (CancellationException) thB : null;
        if (cancellationException != null) {
            return cancellationException;
        }
        if (strConcat == null) {
            strConcat = l();
        }
        return new r0(strConcat, thB, this);
    }

    public boolean r() {
        return true;
    }

    public boolean s() {
        return false;
    }

    public final z0 t(k0 k0Var) {
        z0 z0VarC = k0Var.c();
        if (z0VarC != null) {
            return z0VarC;
        }
        if (k0Var instanceof d0) {
            return new z0();
        }
        if (k0Var instanceof u0) {
            F((u0) k0Var);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + k0Var).toString());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName() + '{' + G(u()) + '}');
        sb.append('@');
        sb.append(u.f(this));
        return sb.toString();
    }

    public final Object u() {
        while (true) {
            Object obj = f10247a.get(this);
            if (!(obj instanceof x9.o)) {
                return obj;
            }
            ((x9.o) obj).a(this);
        }
    }

    public boolean v(Throwable th) {
        return false;
    }

    public final void x(q0 q0Var) {
        char c5;
        a1 a1Var = a1.f10178a;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10248b;
        if (q0Var == null) {
            atomicReferenceFieldUpdater.set(this, a1Var);
            return;
        }
        y0 y0Var = (y0) q0Var;
        do {
            Object objU = y0Var.u();
            boolean z7 = objU instanceof d0;
            c5 = 0;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f10247a;
            if (z7) {
                if (!((d0) objU).f10183a) {
                    d0 d0Var = u.f10234i;
                    while (!atomicReferenceFieldUpdater2.compareAndSet(y0Var, objU, d0Var)) {
                        if (atomicReferenceFieldUpdater2.get(y0Var) != objU) {
                            c5 = 65535;
                            break;
                        }
                    }
                    y0Var.getClass();
                    c5 = 1;
                }
            } else if (objU instanceof j0) {
                z0 z0Var = ((j0) objU).f10205a;
                while (!atomicReferenceFieldUpdater2.compareAndSet(y0Var, objU, z0Var)) {
                    if (atomicReferenceFieldUpdater2.get(y0Var) != objU) {
                        c5 = 65535;
                        break;
                    }
                }
                y0Var.getClass();
                c5 = 1;
            }
            if (c5 == 0) {
                break;
            }
        } while (c5 != 1);
        h hVar = (h) u.i(y0Var, true, new i(this), 2);
        atomicReferenceFieldUpdater.set(this, hVar);
        if (u() instanceof k0) {
            return;
        }
        hVar.a();
        atomicReferenceFieldUpdater.set(this, a1Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x00b8 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final t9.c0 y(boolean r8, boolean r9, i9.l r10) {
        /*
            Method dump skipped, instructions count: 219
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: t9.y0.y(boolean, boolean, i9.l):t9.c0");
    }

    public boolean z() {
        return false;
    }

    public void E() {
    }

    public void D(Object obj) {
    }

    public void h(Object obj) {
    }

    public void w(androidx.fragment.app.q qVar) {
        throw qVar;
    }
}
