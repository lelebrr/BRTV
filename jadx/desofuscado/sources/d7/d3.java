package d7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d3 extends c7.n {

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f6120j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ d3(c4 c4Var, int i6) {
        super(c4Var);
        this.f6120j = i6;
    }

    @Override // c7.n, java.util.Iterator
    public Object next() {
        switch (this.f6120j) {
            case 1:
                return e().f6095a;
            case 2:
                return e().f6096b;
            default:
                return super.next();
        }
    }
}
