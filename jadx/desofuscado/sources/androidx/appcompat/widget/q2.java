package androidx.appcompat.widget;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q2 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f811a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchView f812b;

    public /* synthetic */ q2(SearchView searchView, int i6) {
        this.f811a = i6;
        this.f812b = searchView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f811a) {
            case 0:
                this.f812b.u();
                break;
            default:
                t0.b bVar = this.f812b.O;
                if (bVar instanceof f3) {
                    bVar.b(null);
                    break;
                }
                break;
        }
    }
}
