package com.google.android.material.navigationrail;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.material.internal.a0;
import com.google.android.material.navigation.f;
import com.google.android.material.navigation.l;
import com.p2elite.brtv2.R;
import j7.c;
import p6.b;
import x5.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class NavigationRailView extends l {
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final View f5160g;

    /* renamed from: h, reason: collision with root package name */
    public final Boolean f5161h;

    /* renamed from: i, reason: collision with root package name */
    public final Boolean f5162i;

    public NavigationRailView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.navigationRailStyle);
    }

    private b getNavigationRailMenuView() {
        return (b) getMenuView();
    }

    @Override // com.google.android.material.navigation.l
    public final f a(Context context) {
        return new b(context);
    }

    public View getHeaderView() {
        return this.f5160g;
    }

    public int getItemMinimumHeight() {
        return ((b) getMenuView()).getItemMinimumHeight();
    }

    @Override // com.google.android.material.navigation.l
    public int getMaxItemCount() {
        return 7;
    }

    public int getMenuGravity() {
        return getNavigationRailMenuView().getMenuGravity();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        super.onLayout(z7, i6, i10, i11, i12);
        b navigationRailMenuView = getNavigationRailMenuView();
        View view = this.f5160g;
        int i13 = 0;
        boolean z10 = (view == null || view.getVisibility() == 8) ? false : true;
        int i14 = this.f;
        if (z10) {
            int bottom = this.f5160g.getBottom() + i14;
            int top = navigationRailMenuView.getTop();
            if (top < bottom) {
                i13 = bottom - top;
            }
        } else if ((navigationRailMenuView.F.gravity & 112) == 48) {
            i13 = i14;
        }
        if (i13 > 0) {
            navigationRailMenuView.layout(navigationRailMenuView.getLeft(), navigationRailMenuView.getTop() + i13, navigationRailMenuView.getRight(), navigationRailMenuView.getBottom() + i13);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i6, int i10) {
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        if (View.MeasureSpec.getMode(i6) != 1073741824 && suggestedMinimumWidth > 0) {
            i6 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i6), getPaddingRight() + getPaddingLeft() + suggestedMinimumWidth), 1073741824);
        }
        super.onMeasure(i6, i10);
        View view = this.f5160g;
        if (view == null || view.getVisibility() == 8) {
            return;
        }
        measureChild(getNavigationRailMenuView(), i6, View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - this.f5160g.getMeasuredHeight()) - this.f, Integer.MIN_VALUE));
    }

    public void setItemMinimumHeight(int i6) {
        ((b) getMenuView()).setItemMinimumHeight(i6);
    }

    public void setMenuGravity(int i6) {
        getNavigationRailMenuView().setMenuGravity(i6);
    }

    public NavigationRailView(Context context, AttributeSet attributeSet, int i6) throws Resources.NotFoundException {
        super(context, attributeSet, i6, R.style.Widget_MaterialComponents_NavigationRailView);
        this.f5161h = null;
        this.f5162i = null;
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.mtrl_navigation_rail_margin);
        this.f = dimensionPixelSize;
        a1.b bVarK = a0.k(getContext(), attributeSet, a.M, i6, R.style.Widget_MaterialComponents_NavigationRailView, new int[0]);
        TypedArray typedArray = (TypedArray) bVarK.f48c;
        int resourceId = typedArray.getResourceId(0, 0);
        if (resourceId != 0) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(resourceId, (ViewGroup) this, false);
            View view = this.f5160g;
            if (view != null) {
                removeView(view);
                this.f5160g = null;
            }
            this.f5160g = viewInflate;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 49;
            layoutParams.topMargin = dimensionPixelSize;
            addView(viewInflate, 0, layoutParams);
        }
        setMenuGravity(typedArray.getInt(2, 49));
        if (typedArray.hasValue(1)) {
            setItemMinimumHeight(typedArray.getDimensionPixelSize(1, -1));
        }
        if (typedArray.hasValue(4)) {
            this.f5161h = Boolean.valueOf(typedArray.getBoolean(4, false));
        }
        if (typedArray.hasValue(3)) {
            this.f5162i = Boolean.valueOf(typedArray.getBoolean(3, false));
        }
        bVarK.F();
        a0.d(this, new c(24, this));
    }
}
