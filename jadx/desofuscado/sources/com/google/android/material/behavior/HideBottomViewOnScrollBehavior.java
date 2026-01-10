package com.google.android.material.behavior;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import y5.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a, reason: collision with root package name */
    public int f4638a;

    /* renamed from: b, reason: collision with root package name */
    public int f4639b;

    /* renamed from: c, reason: collision with root package name */
    public int f4640c;
    public ViewPropertyAnimator d;

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4638a = 0;
        this.f4639b = 2;
        this.f4640c = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean h(CoordinatorLayout coordinatorLayout, View view, int i6) {
        this.f4638a = view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin;
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void l(CoordinatorLayout coordinatorLayout, View view, int i6, int i10, int i11, int[] iArr) {
        if (i6 > 0) {
            if (this.f4639b == 1) {
                return;
            }
            ViewPropertyAnimator viewPropertyAnimator = this.d;
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
                view.clearAnimation();
            }
            this.f4639b = 1;
            this.d = view.animate().translationY(this.f4638a + this.f4640c).setInterpolator(a.f11408c).setDuration(175L).setListener(new a6.a(0, this));
            return;
        }
        if (i6 >= 0 || this.f4639b == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator2 = this.d;
        if (viewPropertyAnimator2 != null) {
            viewPropertyAnimator2.cancel();
            view.clearAnimation();
        }
        this.f4639b = 2;
        this.d = view.animate().translationY(0).setInterpolator(a.d).setDuration(225L).setListener(new a6.a(0, this));
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean p(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i6, int i10) {
        return i6 == 2;
    }

    public HideBottomViewOnScrollBehavior() {
        this.f4638a = 0;
        this.f4639b = 2;
        this.f4640c = 0;
    }
}
