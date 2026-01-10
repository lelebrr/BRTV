package x9;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import t9.a0;
import t9.f1;
import t9.g0;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class g extends a0 implements c9.d, a9.d {

    /* renamed from: h, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f11111h = AtomicReferenceFieldUpdater.newUpdater(g.class, Object.class, "_reusableCancellableContinuation");
    private volatile Object _reusableCancellableContinuation;
    public final t9.p d;

    /* renamed from: e, reason: collision with root package name */
    public final c9.c f11112e;
    public Object f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f11113g;

    public g(t9.p pVar, c9.c cVar) {
        super(-1);
        this.d = pVar;
        this.f11112e = cVar;
        this.f = a.f11103c;
        Object objA = cVar.getContext().a(0, u.f11132b);
        j9.i.c(objA);
        this.f11113g = objA;
    }

    @Override // t9.a0
    public final void a(Object obj, CancellationException cancellationException) {
        if (obj instanceof t9.l) {
            ((t9.l) obj).f10210b.invoke(cancellationException);
        }
    }

    @Override // t9.a0
    public final Object f() {
        Object obj = this.f;
        this.f = a.f11103c;
        return obj;
    }

    @Override // c9.d
    public final c9.d getCallerFrame() {
        c9.c cVar = this.f11112e;
        if (cVar instanceof c9.d) {
            return cVar;
        }
        return null;
    }

    @Override // a9.d
    public final a9.i getContext() {
        return this.f11112e.getContext();
    }

    @Override // a9.d
    public final void resumeWith(Object obj) {
        c9.c cVar = this.f11112e;
        a9.i context = cVar.getContext();
        Throwable thA = w8.h.a(obj);
        Object kVar = thA == null ? obj : new t9.k(thA, false);
        t9.p pVar = this.d;
        if (pVar.g()) {
            this.f = kVar;
            this.f10177c = 0;
            pVar.d(context, this);
            return;
        }
        g0 g0VarA = f1.a();
        if (g0VarA.f10192c >= 4294967296L) {
            this.f = kVar;
            this.f10177c = 0;
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
            a9.i context2 = cVar.getContext();
            Object objJ = a.j(context2, this.f11113g);
            try {
                cVar.resumeWith(obj);
                while (g0VarA.k()) {
                }
            } finally {
                a.e(context2, objJ);
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    public final String toString() {
        return "DispatchedContinuation[" + this.d + ", " + t9.u.n(this.f11112e) + ']';
    }

    @Override // t9.a0
    public final a9.d b() {
        return this;
    }
}
