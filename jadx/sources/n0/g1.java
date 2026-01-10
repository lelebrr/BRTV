package n0;

import android.view.WindowInsets;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class g1 extends i1 {

    /* renamed from: a, reason: collision with root package name */
    public final WindowInsets.Builder f8318a;

    public g1() {
        this.f8318a = f1.d();
    }

    @Override // n0.i1
    public r1 b() {
        a();
        r1 r1VarH = r1.h(this.f8318a.build(), null);
        r1VarH.f8352a.p(null);
        return r1VarH;
    }

    @Override // n0.i1
    public void c(f0.c cVar) {
        this.f8318a.setStableInsets(cVar.c());
    }

    @Override // n0.i1
    public void d(f0.c cVar) {
        this.f8318a.setSystemWindowInsets(cVar.c());
    }

    public g1(r1 r1Var) {
        WindowInsets.Builder builderD;
        super(r1Var);
        WindowInsets windowInsetsG = r1Var.g();
        if (windowInsetsG != null) {
            builderD = f1.e(windowInsetsG);
        } else {
            builderD = f1.d();
        }
        this.f8318a = builderD;
    }
}
