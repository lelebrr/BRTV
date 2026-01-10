package androidx.fragment.app;

import androidx.viewpager.widget.ViewPager;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class n0 extends b2.a {

    /* renamed from: c, reason: collision with root package name */
    public final j0 f1496c;
    public a d = null;

    /* renamed from: e, reason: collision with root package name */
    public s f1497e = null;
    public boolean f;

    public n0(j0 j0Var) {
        this.f1496c = j0Var;
    }

    @Override // b2.a
    public final void a(s sVar) {
        if (this.d == null) {
            j0 j0Var = this.f1496c;
            j0Var.getClass();
            this.d = new a(j0Var);
        }
        a aVar = this.d;
        aVar.getClass();
        j0 j0Var2 = sVar.f1536s;
        if (j0Var2 != null && j0Var2 != aVar.f1424q) {
            throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + sVar.toString() + " is already attached to a FragmentManager.");
        }
        aVar.b(new r0(6, sVar));
        if (sVar.equals(this.f1497e)) {
            this.f1497e = null;
        }
    }

    @Override // b2.a
    public final void b() {
        a aVar = this.d;
        if (aVar != null) {
            if (!this.f) {
                try {
                    this.f = true;
                    if (aVar.f1414g) {
                        throw new IllegalStateException("This transaction is already being added to the back stack");
                    }
                    aVar.f1415h = false;
                    aVar.f1424q.v(aVar, true);
                } finally {
                    this.f = false;
                }
            }
            this.d = null;
        }
    }

    @Override // b2.a
    public void e(ViewPager viewPager, int i6, s sVar) {
        s sVar2 = this.f1497e;
        if (sVar != sVar2) {
            if (sVar2 != null) {
                if (sVar2.C) {
                    sVar2.C = false;
                }
                sVar2.P(false);
            }
            if (!sVar.C) {
                sVar.C = true;
            }
            sVar.P(true);
            this.f1497e = sVar;
        }
    }

    @Override // b2.a
    public final void g(ViewPager viewPager) {
        if (viewPager.getId() != -1) {
            return;
        }
        throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }

    public abstract s h(int i6);
}
