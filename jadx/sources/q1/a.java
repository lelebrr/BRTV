package q1;

import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements a0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f8933a;

    public /* synthetic */ a(h hVar) {
        this.f8933a = hVar;
    }

    @Override // q1.a0
    public void c(b0 b0Var, w wVar, ArrayList arrayList) {
        h hVar = this.f8933a;
        if (b0Var != hVar.f9008y || wVar == null) {
            if (b0Var == hVar.f8989e) {
                if (wVar != null) {
                    hVar.o(hVar.d, wVar);
                }
                p0 p0VarA = hVar.d.a();
                if (p0VarA != null) {
                    p0VarA.p(arrayList);
                    return;
                }
                return;
            }
            return;
        }
        r0 r0Var = hVar.f9007x.f9129a;
        String strF = wVar.f();
        p0 p0Var = new p0(r0Var, strF, hVar.b(r0Var, strF));
        p0Var.i(wVar);
        if (hVar.d == p0Var) {
            return;
        }
        b0 b0Var2 = hVar.f9008y;
        s0 s0Var = hVar.f9007x;
        q0 q0Var = hVar.f;
        if (q0Var != null) {
            if (!q0Var.f9117i && !q0Var.f9118j) {
                q0Var.f9118j = true;
                c0 c0Var = q0Var.f9111a;
                if (c0Var != null) {
                    c0Var.i(0);
                    c0Var.e();
                }
            }
            hVar.f = null;
        }
        q0 q0Var2 = new q0(hVar, p0Var, b0Var2, 3, true, s0Var, arrayList);
        hVar.f = q0Var2;
        q0Var2.a();
        hVar.f9007x = null;
        hVar.f9008y = null;
    }
}
