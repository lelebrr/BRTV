package androidx.lifecycle;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n0 implements u {

    /* renamed from: a, reason: collision with root package name */
    public final String f1977a;

    /* renamed from: b, reason: collision with root package name */
    public final m0 f1978b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1979c;

    public n0(String str, m0 m0Var) {
        this.f1977a = str;
        this.f1978b = m0Var;
    }

    public final void d(androidx.appcompat.widget.v vVar, p pVar) {
        j9.i.f(vVar, "registry");
        j9.i.f(pVar, "lifecycle");
        if (this.f1979c) {
            throw new IllegalStateException("Already attached to lifecycleOwner");
        }
        this.f1979c = true;
        pVar.a(this);
        vVar.f(this.f1977a, this.f1978b.f1976e);
    }

    @Override // androidx.lifecycle.u
    public final void onStateChanged(w wVar, n nVar) {
        if (nVar == n.ON_DESTROY) {
            this.f1979c = false;
            wVar.f().c(this);
        }
    }
}
