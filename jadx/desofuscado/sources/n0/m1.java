package n0;

import android.view.WindowInsets;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class m1 extends l1 {

    /* renamed from: n, reason: collision with root package name */
    public f0.c f8335n;

    /* renamed from: o, reason: collision with root package name */
    public f0.c f8336o;

    /* renamed from: p, reason: collision with root package name */
    public f0.c f8337p;

    public m1(r1 r1Var, WindowInsets windowInsets) {
        super(r1Var, windowInsets);
        this.f8335n = null;
        this.f8336o = null;
        this.f8337p = null;
    }

    @Override // n0.o1
    public f0.c h() {
        if (this.f8336o == null) {
            this.f8336o = f0.c.b(this.f8330c.getMandatorySystemGestureInsets());
        }
        return this.f8336o;
    }

    @Override // n0.o1
    public f0.c j() {
        if (this.f8335n == null) {
            this.f8335n = f0.c.b(this.f8330c.getSystemGestureInsets());
        }
        return this.f8335n;
    }

    @Override // n0.o1
    public f0.c l() {
        if (this.f8337p == null) {
            this.f8337p = f0.c.b(this.f8330c.getTappableElementInsets());
        }
        return this.f8337p;
    }

    @Override // n0.j1, n0.o1
    public r1 m(int i6, int i10, int i11, int i12) {
        return r1.h(this.f8330c.inset(i6, i10, i11, i12), null);
    }

    public m1(r1 r1Var, m1 m1Var) {
        super(r1Var, m1Var);
        this.f8335n = null;
        this.f8336o = null;
        this.f8337p = null;
    }

    @Override // n0.k1, n0.o1
    public void s(f0.c cVar) {
    }
}
