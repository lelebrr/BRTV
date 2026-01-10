package t9;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class u {

    /* renamed from: a, reason: collision with root package name */
    public static final u7.b f10228a = new u7.b("RESUME_TOKEN", 1);

    /* renamed from: b, reason: collision with root package name */
    public static final u7.b f10229b = new u7.b("CLOSED_EMPTY", 1);

    /* renamed from: c, reason: collision with root package name */
    public static final u7.b f10230c = new u7.b("COMPLETING_ALREADY", 1);
    public static final u7.b d = new u7.b("COMPLETING_WAITING_CHILDREN", 1);

    /* renamed from: e, reason: collision with root package name */
    public static final u7.b f10231e = new u7.b("COMPLETING_RETRY", 1);
    public static final u7.b f = new u7.b("TOO_LATE_TO_CANCEL", 1);

    /* renamed from: g, reason: collision with root package name */
    public static final u7.b f10232g = new u7.b("SEALED", 1);

    /* renamed from: h, reason: collision with root package name */
    public static final d0 f10233h = new d0(false);

    /* renamed from: i, reason: collision with root package name */
    public static final d0 f10234i = new d0(true);

    public static final void a(a9.i iVar, CancellationException cancellationException) {
        q0 q0Var = (q0) iVar.e(q.f10225b);
        if (q0Var != null) {
            y0 y0Var = (y0) q0Var;
            if (cancellationException == null) {
                cancellationException = new r0(y0Var.l(), null, y0Var);
            }
            y0Var.j(cancellationException);
        }
    }

    public static void c(q0 q0Var) {
        y0 y0Var = (y0) q0Var;
        y0Var.getClass();
        y0Var.j(new r0(y0Var.l(), null, y0Var));
    }

    public static void d(x9.d dVar) {
        q0 q0Var = (q0) dVar.f11108a.e(q.f10225b);
        if (q0Var != null) {
            y0 y0Var = (y0) q0Var;
            y0Var.j(new r0(y0Var.l(), null, y0Var));
        } else {
            throw new IllegalStateException(("Scope cannot be cancelled because it does not have a job: " + dVar).toString());
        }
    }

    public static final a9.i e(a9.i iVar, a9.i iVar2, boolean z7) {
        Boolean bool = Boolean.FALSE;
        m mVar = m.f10213c;
        boolean zBooleanValue = ((Boolean) iVar.a(bool, mVar)).booleanValue();
        boolean zBooleanValue2 = ((Boolean) iVar2.a(bool, mVar)).booleanValue();
        if (!zBooleanValue && !zBooleanValue2) {
            return iVar.f(iVar2);
        }
        a9.j jVar = a9.j.f179a;
        a9.i iVar3 = (a9.i) iVar.a(jVar, new m(2, 2));
        Object objA = iVar2;
        if (zBooleanValue2) {
            objA = iVar2.a(jVar, m.f10212b);
        }
        return iVar3.f((a9.i) objA);
    }

    public static final String f(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static final q0 g(a9.i iVar) {
        q0 q0Var = (q0) iVar.e(q.f10225b);
        if (q0Var != null) {
            return q0Var;
        }
        throw new IllegalStateException(("Current context doesn't contain Job in it: " + iVar).toString());
    }

    public static final void h(a9.i iVar, Throwable th) {
        try {
            r rVar = (r) iVar.e(q.f10224a);
            if (rVar != null) {
                rVar.b(iVar, th);
            } else {
                x9.a.d(iVar, th);
            }
        } catch (Throwable th2) {
            if (th != th2) {
                RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                l5.a.a(runtimeException, th);
                th = runtimeException;
            }
            x9.a.d(iVar, th);
        }
    }

    public static /* synthetic */ c0 i(q0 q0Var, boolean z7, u0 u0Var, int i6) {
        if ((i6 & 1) != 0) {
            z7 = false;
        }
        return ((y0) q0Var).y(z7, (i6 & 2) != 0, u0Var);
    }

    public static final boolean j(int i6) {
        return i6 == 1 || i6 == 2;
    }

    public static x k(s sVar, p pVar, i9.p pVar2, int i6) {
        boolean z7 = true;
        a9.i iVar = pVar;
        if ((i6 & 1) != 0) {
            iVar = a9.j.f179a;
        }
        a9.i iVarE = e(sVar.d(), iVar, true);
        z9.d dVar = b0.f10180a;
        if (iVarE != dVar && iVarE.e(a9.e.f178a) == null) {
            iVarE = iVarE.f(dVar);
        }
        x xVar = new x(iVarE, z7, 1);
        xVar.I(1, xVar, pVar2);
        return xVar;
    }

    public static final Object l(Object obj) {
        return obj instanceof k ? o9.d.f(((k) obj).f10208a) : obj;
    }

    public static final void m(e eVar, a9.d dVar, boolean z7) {
        Object obj = e.f10184g.get(eVar);
        Throwable thC = eVar.c(obj);
        Object objF = thC != null ? o9.d.f(thC) : eVar.d(obj);
        if (!z7) {
            dVar.resumeWith(objF);
            return;
        }
        j9.i.d(dVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>");
        x9.g gVar = (x9.g) dVar;
        c9.c cVar = gVar.f11112e;
        a9.i context = cVar.getContext();
        Object objJ = x9.a.j(context, gVar.f11113g);
        i1 i1VarO = objJ != x9.a.f ? o(cVar, context, objJ) : null;
        try {
            cVar.resumeWith(objF);
        } finally {
            if (i1VarO == null || i1VarO.J()) {
                x9.a.e(context, objJ);
            }
        }
    }

    public static final String n(a9.d dVar) {
        Object objF;
        if (dVar instanceof x9.g) {
            return dVar.toString();
        }
        try {
            objF = dVar + '@' + f(dVar);
        } catch (Throwable th) {
            objF = o9.d.f(th);
        }
        if (w8.h.a(objF) != null) {
            objF = dVar.getClass().getName() + '@' + f(dVar);
        }
        return (String) objF;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [c9.c] */
    /* JADX WARN: Type inference failed for: r2v1, types: [c9.d] */
    /* JADX WARN: Type inference failed for: r2v2, types: [c9.d] */
    public static final i1 o(c9.c cVar, a9.i iVar, Object obj) {
        i1 i1Var = null;
        if (!(cVar instanceof c9.d)) {
            return null;
        }
        if (iVar.e(j1.f10206a) != null) {
            while (true) {
                if ((cVar instanceof z) || (cVar = cVar.getCallerFrame()) == 0) {
                    break;
                }
                if (cVar instanceof i1) {
                    i1Var = (i1) cVar;
                    break;
                }
            }
            if (i1Var != null) {
                i1Var.K(iVar, obj);
            }
        }
        return i1Var;
    }

    public static final Object p(a9.i iVar, i9.p pVar, c9.c cVar) throws Throwable {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        k0 k0Var;
        a9.i context = cVar.getContext();
        a9.i iVarF = !((Boolean) iVar.a(Boolean.FALSE, m.f10213c)).booleanValue() ? context.f(iVar) : e(context, iVar, false);
        q0 q0Var = (q0) iVarF.e(q.f10225b);
        if (q0Var != null && !q0Var.isActive()) {
            throw ((y0) q0Var).q();
        }
        if (iVarF == context) {
            x9.r rVar = new x9.r(iVarF, cVar);
            return u7.d.z(rVar, rVar, pVar);
        }
        a9.e eVar = a9.e.f178a;
        if (j9.i.a(iVarF.e(eVar), context.e(eVar))) {
            i1 i1Var = new i1(iVarF, cVar);
            a9.i iVar2 = i1Var.f10176c;
            Object objJ = x9.a.j(iVar2, null);
            try {
                return u7.d.z(i1Var, i1Var, pVar);
            } finally {
                x9.a.e(iVar2, objJ);
            }
        }
        z zVar = new z(iVarF, cVar);
        r4.b.M(pVar, zVar, zVar);
        do {
            atomicIntegerFieldUpdater = z.f10249e;
            int i6 = atomicIntegerFieldUpdater.get(zVar);
            if (i6 != 0) {
                if (i6 != 2) {
                    throw new IllegalStateException("Already suspended");
                }
                Object objU = zVar.u();
                l0 l0Var = objU instanceof l0 ? (l0) objU : null;
                if (l0Var != null && (k0Var = l0Var.f10211a) != null) {
                    objU = k0Var;
                }
                if (objU instanceof k) {
                    throw ((k) objU).f10208a;
                }
                return objU;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(zVar, 0, 1));
        return b9.a.f3322a;
    }
}
