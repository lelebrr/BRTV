package q1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8942a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f8943b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f8944c;

    public /* synthetic */ c(int i6, int i10, Object obj) {
        this.f8942a = i10;
        this.f8943b = obj;
        this.f8944c = i6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f8942a) {
            case 0:
                s0 s0Var = ((d) this.f8943b).f8948g.f8955c.d;
                if (s0Var != null) {
                    s0Var.j(this.f8944c);
                    break;
                }
                break;
            case 1:
                s0 s0Var2 = ((d) this.f8943b).f8948g.f8955c.d;
                if (s0Var2 != null) {
                    s0Var2.k(this.f8944c);
                    break;
                }
                break;
            default:
                ((e0.b) this.f8943b).i(this.f8944c);
                break;
        }
    }
}
