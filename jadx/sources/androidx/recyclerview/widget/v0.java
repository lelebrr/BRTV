package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v0 implements a2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x0 f2967a;

    public v0(x0 x0Var) {
        this.f2967a = x0Var;
    }

    @Override // androidx.recyclerview.widget.a2
    public final int a() {
        x0 x0Var = this.f2967a;
        return x0Var.getHeight() - x0Var.getPaddingBottom();
    }

    @Override // androidx.recyclerview.widget.a2
    public final int b(View view) {
        return this.f2967a.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).topMargin;
    }

    @Override // androidx.recyclerview.widget.a2
    public final View c(int i6) {
        return this.f2967a.getChildAt(i6);
    }

    @Override // androidx.recyclerview.widget.a2
    public final int d() {
        return this.f2967a.getPaddingTop();
    }

    @Override // androidx.recyclerview.widget.a2
    public final int e(View view) {
        return this.f2967a.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).bottomMargin;
    }
}
