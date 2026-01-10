package qa;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements i9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9376a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9377b;

    public /* synthetic */ a(int i6, Object obj) {
        this.f9376a = i6;
        this.f9377b = obj;
    }

    @Override // i9.a
    public final Object invoke() {
        switch (this.f9376a) {
            case 0:
                return new o(((g) this.f9377b).f9390a);
            case 1:
                l lVar = (l) this.f9377b;
                boolean z7 = true;
                if (k.f9400a[lVar.F.ordinal()] == 1) {
                    z7 = false;
                } else {
                    lVar.b();
                }
                return Boolean.valueOf(z7);
            default:
                return new l(((o) this.f9377b).f9431a);
        }
    }
}
