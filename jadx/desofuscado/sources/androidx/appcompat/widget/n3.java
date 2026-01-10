package androidx.appcompat.widget;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class n3 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f793a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Toolbar f794b;

    public /* synthetic */ n3(Toolbar toolbar, int i6) {
        this.f793a = i6;
        this.f794b = toolbar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f793a) {
            case 0:
                q3 q3Var = this.f794b.M;
                k.n nVar = q3Var == null ? null : q3Var.f814b;
                if (nVar != null) {
                    nVar.collapseActionView();
                    break;
                }
                break;
            default:
                this.f794b.n();
                break;
        }
    }
}
