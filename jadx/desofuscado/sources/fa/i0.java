package fa;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class i0 extends androidx.recyclerview.widget.k0 {

    /* renamed from: a, reason: collision with root package name */
    public int f6873a = -1;

    /* renamed from: b, reason: collision with root package name */
    public ka.n f6874b;

    @Override // androidx.recyclerview.widget.k0
    public final void onViewAttachedToWindow(androidx.recyclerview.widget.p1 p1Var) {
        super.onViewAttachedToWindow(p1Var);
        if (this.f6873a == -1 || p1Var.getAbsoluteAdapterPosition() != this.f6873a) {
            return;
        }
        o9.d.y(p1Var.itemView);
        this.f6873a = -1;
    }
}
