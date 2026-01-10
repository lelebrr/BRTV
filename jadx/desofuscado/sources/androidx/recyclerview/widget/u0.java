package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u0 implements a2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x0 f2954a;

    public u0(x0 x0Var) {
        this.f2954a = x0Var;
    }

    @Override // androidx.recyclerview.widget.a2
    public final int a() {
        x0 x0Var = this.f2954a;
        return x0Var.getWidth() - x0Var.getPaddingRight();
    }

    @Override // androidx.recyclerview.widget.a2
    public final int b(View view) {
        return this.f2954a.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin;
    }

    @Override // androidx.recyclerview.widget.a2
    public final View c(int i6) {
        return this.f2954a.getChildAt(i6);
    }

    @Override // androidx.recyclerview.widget.a2
    public final int d() {
        return this.f2954a.getPaddingLeft();
    }

    @Override // androidx.recyclerview.widget.a2
    public final int e(View view) {
        return this.f2954a.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin;
    }
}
