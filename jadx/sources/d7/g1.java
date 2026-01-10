package d7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g1 extends a {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6148c = 0;
    public final Iterable d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g1(f1 f1Var, int i6) {
        super(i6, 0);
        this.d = f1Var;
    }

    @Override // d7.a
    public final Object a(int i6) {
        switch (this.f6148c) {
            case 0:
                return ((Iterable[]) ((f1) this.d).f6141c)[i6].iterator();
            default:
                return ((u1) this.d).get(i6);
        }
    }

    public g1(u1 u1Var, int i6) {
        super(u1Var.size(), i6);
        this.d = u1Var;
    }
}
