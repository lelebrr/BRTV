package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.ArrayList;
import java.util.WeakHashMap;
import n0.r1;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {

    /* renamed from: c, reason: collision with root package name */
    public final Rect f4596c;
    public final Rect d;

    /* renamed from: e, reason: collision with root package name */
    public int f4597e;
    public int f;

    public HeaderScrollingViewBehavior() {
        this.f4596c = new Rect();
        this.d = new Rect();
        this.f4597e = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean i(CoordinatorLayout coordinatorLayout, View view, int i6, int i10, int i11) {
        AppBarLayout appBarLayoutW;
        r1 lastWindowInsets;
        int i12 = view.getLayoutParams().height;
        if ((i12 != -1 && i12 != -2) || (appBarLayoutW = w(coordinatorLayout.o(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i11);
        if (size > 0) {
            WeakHashMap weakHashMap = s0.f8353a;
            if (appBarLayoutW.getFitsSystemWindows() && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
                size += lastWindowInsets.a() + lastWindowInsets.d();
            }
        } else {
            size = coordinatorLayout.getHeight();
        }
        coordinatorLayout.w(i6, i10, View.MeasureSpec.makeMeasureSpec((size + y(appBarLayoutW)) - appBarLayoutW.getMeasuredHeight(), i12 == -1 ? 1073741824 : Integer.MIN_VALUE), view);
        return true;
    }

    @Override // com.google.android.material.appbar.ViewOffsetBehavior
    public final void u(CoordinatorLayout coordinatorLayout, View view, int i6) {
        AppBarLayout appBarLayoutW = w(coordinatorLayout.o(view));
        int iG = 0;
        if (appBarLayoutW == null) {
            coordinatorLayout.v(i6, view);
            this.f4597e = 0;
            return;
        }
        androidx.coordinatorlayout.widget.c cVar = (androidx.coordinatorlayout.widget.c) view.getLayoutParams();
        int paddingLeft = coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) cVar).leftMargin;
        int bottom = appBarLayoutW.getBottom() + ((ViewGroup.MarginLayoutParams) cVar).topMargin;
        int width = (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) cVar).rightMargin;
        int bottom2 = ((appBarLayoutW.getBottom() + coordinatorLayout.getHeight()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) cVar).bottomMargin;
        Rect rect = this.f4596c;
        rect.set(paddingLeft, bottom, width, bottom2);
        r1 lastWindowInsets = coordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null) {
            WeakHashMap weakHashMap = s0.f8353a;
            if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
                rect.left = lastWindowInsets.b() + rect.left;
                rect.right -= lastWindowInsets.c();
            }
        }
        int i10 = cVar.f1124c;
        int i11 = i10 == 0 ? 8388659 : i10;
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        Rect rect2 = this.d;
        Gravity.apply(i11, measuredWidth, measuredHeight, rect, rect2, i6);
        if (this.f != 0) {
            float fX = x(appBarLayoutW);
            int i12 = this.f;
            iG = l5.a.g((int) (fX * i12), 0, i12);
        }
        view.layout(rect2.left, rect2.top - iG, rect2.right, rect2.bottom - iG);
        this.f4597e = rect2.top - appBarLayoutW.getBottom();
    }

    public abstract AppBarLayout w(ArrayList arrayList);

    public float x(View view) {
        return 1.0f;
    }

    public int y(View view) {
        return view.getMeasuredHeight();
    }

    public HeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4596c = new Rect();
        this.d = new Rect();
        this.f4597e = 0;
    }
}
