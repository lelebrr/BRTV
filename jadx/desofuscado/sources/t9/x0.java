package t9;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class x0 extends x9.b {

    /* renamed from: b, reason: collision with root package name */
    public final u0 f10244b;

    /* renamed from: c, reason: collision with root package name */
    public z0 f10245c;
    public final /* synthetic */ y0 d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ k0 f10246e;

    public x0(u0 u0Var, y0 y0Var, k0 k0Var) {
        this.d = y0Var;
        this.f10246e = k0Var;
        this.f10244b = u0Var;
    }

    @Override // x9.b
    public final void b(Object obj, Object obj2) {
        x9.j jVar = (x9.j) obj;
        boolean z7 = obj2 == null;
        u0 u0Var = this.f10244b;
        k0 k0Var = z7 ? u0Var : this.f10245c;
        if (k0Var != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = x9.j.f11118a;
            while (!atomicReferenceFieldUpdater.compareAndSet(jVar, this, k0Var)) {
                if (atomicReferenceFieldUpdater.get(jVar) != this) {
                    return;
                }
            }
            if (z7) {
                z0 z0Var = this.f10245c;
                j9.i.c(z0Var);
                u0Var.e(z0Var);
            }
        }
    }

    @Override // x9.b
    public final u7.b c(Object obj) {
        if (this.d.u() == this.f10246e) {
            return null;
        }
        return x9.a.f11104e;
    }
}
