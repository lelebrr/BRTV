package n0;

import android.view.WindowInsets;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class k1 extends j1 {

    /* renamed from: m, reason: collision with root package name */
    public f0.c f8334m;

    public k1(r1 r1Var, WindowInsets windowInsets) {
        super(r1Var, windowInsets);
        this.f8334m = null;
    }

    @Override // n0.o1
    public r1 b() {
        return r1.h(this.f8330c.consumeStableInsets(), null);
    }

    @Override // n0.o1
    public r1 c() {
        return r1.h(this.f8330c.consumeSystemWindowInsets(), null);
    }

    @Override // n0.o1
    public final f0.c i() {
        if (this.f8334m == null) {
            WindowInsets windowInsets = this.f8330c;
            this.f8334m = f0.c.a(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
        }
        return this.f8334m;
    }

    @Override // n0.o1
    public boolean n() {
        return this.f8330c.isConsumed();
    }

    @Override // n0.o1
    public void s(f0.c cVar) {
        this.f8334m = cVar;
    }

    public k1(r1 r1Var, k1 k1Var) {
        super(r1Var, k1Var);
        this.f8334m = null;
        this.f8334m = k1Var.f8334m;
    }
}
