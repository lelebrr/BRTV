package androidx.lifecycle;

import androidx.fragment.app.FragmentActivity;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b0 extends c0 implements u {

    /* renamed from: e, reason: collision with root package name */
    public final FragmentActivity f1941e;
    public final /* synthetic */ d0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b0(d0 d0Var, FragmentActivity fragmentActivity, e0 e0Var) {
        super(d0Var, e0Var);
        this.f = d0Var;
        this.f1941e = fragmentActivity;
    }

    @Override // androidx.lifecycle.c0
    public final void g() {
        this.f1941e.d.c(this);
    }

    @Override // androidx.lifecycle.c0
    public final boolean h(FragmentActivity fragmentActivity) {
        return this.f1941e == fragmentActivity;
    }

    @Override // androidx.lifecycle.c0
    public final boolean i() {
        return this.f1941e.d.d.compareTo(o.d) >= 0;
    }

    @Override // androidx.lifecycle.u
    public final void onStateChanged(w wVar, n nVar) {
        FragmentActivity fragmentActivity = this.f1941e;
        o oVar = fragmentActivity.d.d;
        if (oVar == o.f1980a) {
            this.f.i(this.f1944a);
            return;
        }
        o oVar2 = null;
        while (oVar2 != oVar) {
            d(i());
            oVar2 = oVar;
            oVar = fragmentActivity.d.d;
        }
    }
}
