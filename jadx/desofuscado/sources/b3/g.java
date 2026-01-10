package b3;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g implements v {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3186a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f3187b;

    public g(int i6) {
        this.f3186a = i6;
        switch (i6) {
            case 1:
                this.f3187b = new a0.b(9);
                break;
            default:
                this.f3187b = new c(3);
                break;
        }
    }

    @Override // b3.v
    public final u a(b0 b0Var) {
        switch (this.f3186a) {
            case 0:
                return new d(1, (c) this.f3187b);
            default:
                return new c3.a((a0.b) this.f3187b);
        }
    }
}
