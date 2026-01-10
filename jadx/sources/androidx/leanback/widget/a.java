package androidx.leanback.widget;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1806a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1807b;

    public /* synthetic */ a(int i6, Object obj) {
        this.f1806a = i6;
        this.f1807b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1806a) {
            case 0:
                ((BaseCardView) this.f1807b).a(true);
                break;
            case 1:
                ((GridLayoutManager) this.f1807b).requestLayout();
                break;
            case 2:
                SearchBar searchBar = ((r0) this.f1807b).f1917a;
                searchBar.f1742j = true;
                searchBar.f1736b.requestFocus();
                break;
            default:
                w0 w0Var = ((SearchEditText) this.f1807b).f1756h;
                if (w0Var != null) {
                    ((SearchBar) ((q) w0Var).f1913a).getClass();
                    break;
                }
                break;
        }
    }
}
