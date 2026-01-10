package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b0 extends d0 {
    @Override // androidx.recyclerview.widget.d0
    public final int b(View view) {
        return this.f2820a.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin;
    }

    @Override // androidx.recyclerview.widget.d0
    public final int c(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return this.f2820a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    @Override // androidx.recyclerview.widget.d0
    public final int d(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return this.f2820a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
    }

    @Override // androidx.recyclerview.widget.d0
    public final int e(View view) {
        return this.f2820a.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin;
    }

    @Override // androidx.recyclerview.widget.d0
    public final int f() {
        return this.f2820a.getWidth();
    }

    @Override // androidx.recyclerview.widget.d0
    public final int g() {
        x0 x0Var = this.f2820a;
        return x0Var.getWidth() - x0Var.getPaddingRight();
    }

    @Override // androidx.recyclerview.widget.d0
    public final int h() {
        return this.f2820a.getPaddingRight();
    }

    @Override // androidx.recyclerview.widget.d0
    public final int i() {
        return this.f2820a.getWidthMode();
    }

    @Override // androidx.recyclerview.widget.d0
    public final int j() {
        return this.f2820a.getHeightMode();
    }

    @Override // androidx.recyclerview.widget.d0
    public final int k() {
        return this.f2820a.getPaddingLeft();
    }

    @Override // androidx.recyclerview.widget.d0
    public final int l() {
        x0 x0Var = this.f2820a;
        return (x0Var.getWidth() - x0Var.getPaddingLeft()) - x0Var.getPaddingRight();
    }

    @Override // androidx.recyclerview.widget.d0
    public final int n(View view) {
        x0 x0Var = this.f2820a;
        Rect rect = this.f2822c;
        x0Var.getTransformedBoundingBox(view, true, rect);
        return rect.right;
    }

    @Override // androidx.recyclerview.widget.d0
    public final int o(View view) {
        x0 x0Var = this.f2820a;
        Rect rect = this.f2822c;
        x0Var.getTransformedBoundingBox(view, true, rect);
        return rect.left;
    }

    @Override // androidx.recyclerview.widget.d0
    public final void p(int i6) {
        this.f2820a.offsetChildrenHorizontal(i6);
    }
}
