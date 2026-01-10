package fa;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6940a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6941b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ androidx.recyclerview.widget.k0 f6942c;

    public /* synthetic */ q(androidx.recyclerview.widget.k0 k0Var, int i6, int i10) {
        this.f6940a = i10;
        this.f6942c = k0Var;
        this.f6941b = i6;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f6940a) {
            case 0:
                o0 o0Var = ((t) this.f6942c).f6950h;
                if (o0Var != null) {
                    o0Var.a(this.f6941b, view);
                    break;
                }
                break;
            case 1:
                ((d0) this.f6942c).f.a(view, this.f6941b, Boolean.FALSE);
                break;
            case 2:
                ((g0) this.f6942c).f.a(view, this.f6941b, Boolean.FALSE);
                break;
            case 3:
                o0 o0Var2 = ((m0) this.f6942c).f6915a;
                if (o0Var2 != null) {
                    o0Var2.a(this.f6941b, view);
                    break;
                }
                break;
            case 4:
                ((b1) this.f6942c).f6818g.a(this.f6941b, view);
                break;
            case 5:
                ((o1) this.f6942c).f6818g.a(this.f6941b, view);
                break;
            default:
                ((o1) this.f6942c).f6818g.a(this.f6941b, view);
                break;
        }
    }
}
