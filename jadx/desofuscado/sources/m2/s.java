package m2;

import androidx.lifecycle.v;
import androidx.lifecycle.w;
import java.util.concurrent.CancellationException;
import t9.b0;
import t9.i0;
import t9.q0;
import t9.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s implements p {

    /* renamed from: a, reason: collision with root package name */
    public final c2.l f8252a;

    /* renamed from: b, reason: collision with root package name */
    public final i f8253b;

    /* renamed from: c, reason: collision with root package name */
    public final o2.a f8254c;
    public final androidx.lifecycle.p d;

    /* renamed from: e, reason: collision with root package name */
    public final q0 f8255e;

    public s(c2.l lVar, i iVar, o2.a aVar, androidx.lifecycle.p pVar, q0 q0Var) {
        this.f8252a = lVar;
        this.f8253b = iVar;
        this.f8254c = aVar;
        this.d = pVar;
        this.f8255e = q0Var;
    }

    @Override // androidx.lifecycle.e
    public final void b(w wVar) {
        j9.i.f(wVar, "owner");
    }

    @Override // androidx.lifecycle.e
    public final void c(w wVar) {
        j9.i.f(wVar, "owner");
    }

    @Override // m2.p
    public final void f() {
        o2.a aVar = this.f8254c;
        if (aVar.f8548b.isAttachedToWindow()) {
            return;
        }
        u uVarC = r2.f.c(aVar.f8548b);
        s sVar = uVarC.d;
        if (sVar != null) {
            t9.u.c(sVar.f8255e);
            o2.a aVar2 = sVar.f8254c;
            boolean z7 = aVar2 instanceof v;
            androidx.lifecycle.p pVar = sVar.d;
            if (z7) {
                pVar.c(aVar2);
            }
            pVar.c(sVar);
        }
        uVarC.d = this;
        throw new CancellationException("'ViewTarget.view' must be attached to a window.");
    }

    @Override // androidx.lifecycle.e
    public final void onDestroy(w wVar) {
        u uVarC = r2.f.c(this.f8254c.f8548b);
        synchronized (uVarC) {
            try {
                x xVar = uVarC.f8259c;
                if (xVar != null) {
                    t9.u.c(xVar);
                }
                i0 i0Var = i0.f10199a;
                z9.d dVar = b0.f10180a;
                uVarC.f8259c = t9.u.k(i0Var, x9.n.f11128a.f, new t(uVarC, null), 2);
                uVarC.f8258b = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.lifecycle.e
    public final void onStart(w wVar) {
        j9.i.f(wVar, "owner");
    }

    @Override // m2.p
    public final void start() {
        androidx.lifecycle.p pVar = this.d;
        pVar.a(this);
        o2.a aVar = this.f8254c;
        if (aVar instanceof v) {
            pVar.c(aVar);
            pVar.a(aVar);
        }
        u uVarC = r2.f.c(aVar.f8548b);
        s sVar = uVarC.d;
        if (sVar != null) {
            t9.u.c(sVar.f8255e);
            o2.a aVar2 = sVar.f8254c;
            boolean z7 = aVar2 instanceof v;
            androidx.lifecycle.p pVar2 = sVar.d;
            if (z7) {
                pVar2.c(aVar2);
            }
            pVar2.c(sVar);
        }
        uVarC.d = this;
    }

    @Override // m2.p
    public final /* synthetic */ void a() {
    }

    @Override // androidx.lifecycle.e
    public final /* synthetic */ void e(w wVar) {
    }

    @Override // androidx.lifecycle.e
    public final /* synthetic */ void onStop(w wVar) {
    }
}
