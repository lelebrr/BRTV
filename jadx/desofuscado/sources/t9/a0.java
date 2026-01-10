package t9;

import java.util.concurrent.CancellationException;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class a0 extends z9.h {

    /* renamed from: c, reason: collision with root package name */
    public int f10177c;

    public a0(int i6) {
        super(0L, z9.j.f11701g);
        this.f10177c = i6;
    }

    public abstract void a(Object obj, CancellationException cancellationException);

    public abstract a9.d b();

    public Throwable c(Object obj) {
        k kVar = obj instanceof k ? (k) obj : null;
        if (kVar != null) {
            return kVar.f10208a;
        }
        return null;
    }

    public final void e(Throwable th, Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            l5.a.a(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        j9.i.c(th);
        u.h(b().getContext(), new t("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    public abstract Object f();

    @Override // java.lang.Runnable
    public final void run() {
        Object objF = w8.l.f10832a;
        androidx.leanback.widget.o oVar = this.f11695b;
        try {
            a9.d dVarB = b();
            j9.i.d(dVarB, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>");
            x9.g gVar = (x9.g) dVarB;
            c9.c cVar = gVar.f11112e;
            Object obj = gVar.f11113g;
            a9.i context = cVar.getContext();
            Object objJ = x9.a.j(context, obj);
            i1 i1VarO = objJ != x9.a.f ? u.o(cVar, context, objJ) : null;
            try {
                a9.i context2 = cVar.getContext();
                Object objF2 = f();
                Throwable thC = c(objF2);
                q0 q0Var = (thC == null && u.j(this.f10177c)) ? (q0) context2.e(q.f10225b) : null;
                if (q0Var != null && !q0Var.isActive()) {
                    CancellationException cancellationExceptionQ = ((y0) q0Var).q();
                    a(objF2, cancellationExceptionQ);
                    cVar.resumeWith(o9.d.f(cancellationExceptionQ));
                } else if (thC != null) {
                    cVar.resumeWith(o9.d.f(thC));
                } else {
                    cVar.resumeWith(d(objF2));
                }
                if (i1VarO == null || i1VarO.J()) {
                    x9.a.e(context, objJ);
                }
                try {
                    oVar.getClass();
                } catch (Throwable th) {
                    objF = o9.d.f(th);
                }
                e(null, w8.h.a(objF));
            } catch (Throwable th2) {
                if (i1VarO == null || i1VarO.J()) {
                    x9.a.e(context, objJ);
                }
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                oVar.getClass();
            } catch (Throwable th4) {
                objF = o9.d.f(th4);
            }
            e(th3, w8.h.a(objF));
        }
    }

    public Object d(Object obj) {
        return obj;
    }
}
