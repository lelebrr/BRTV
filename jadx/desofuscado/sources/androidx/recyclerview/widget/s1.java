package androidx.recyclerview.widget;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s1 extends b1 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2948a = false;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t1 f2949b;

    public s1(t1 t1Var) {
        this.f2949b = t1Var;
    }

    @Override // androidx.recyclerview.widget.b1
    public final void onScrollStateChanged(RecyclerView recyclerView, int i6) {
        if (i6 == 0 && this.f2948a) {
            this.f2948a = false;
            this.f2949b.snapToTargetExistingView();
        }
    }

    @Override // androidx.recyclerview.widget.b1
    public final void onScrolled(RecyclerView recyclerView, int i6, int i10) {
        if (i6 == 0 && i10 == 0) {
            return;
        }
        this.f2948a = true;
    }
}
