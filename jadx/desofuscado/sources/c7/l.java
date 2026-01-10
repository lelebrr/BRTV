package c7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l extends n {

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f3432j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ l(b0 b0Var, int i6) {
        super(b0Var);
        this.f3432j = i6;
    }

    @Override // c7.n, java.util.Iterator
    public Object next() {
        switch (this.f3432j) {
            case 1:
                return d().f3395a;
            case 2:
                return d().f3396b;
            default:
                return super.next();
        }
    }
}
