package d7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x0 implements b7.n {

    /* renamed from: a, reason: collision with root package name */
    public final Object f6292a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ y0 f6293b;

    public x0(y0 y0Var, Object obj) {
        this.f6293b = y0Var;
        this.f6292a = obj;
    }

    @Override // b7.n
    public final boolean apply(Object obj) {
        y0 y0Var = this.f6293b;
        y0Var.getClass();
        return y0Var.f6305g.apply(new r1(this.f6292a, obj));
    }
}
