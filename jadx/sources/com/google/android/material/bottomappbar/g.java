package com.google.android.material.bottomappbar;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.bottomappbar.BottomAppBar;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.a0;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g implements View.OnLayoutChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BottomAppBar.Behavior f4676a;

    public g(BottomAppBar.Behavior behavior) {
        this.f4676a = behavior;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i6, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        BottomAppBar.Behavior behavior = this.f4676a;
        BottomAppBar bottomAppBar = (BottomAppBar) behavior.f.get();
        if (bottomAppBar == null || !(view instanceof FloatingActionButton)) {
            view.removeOnLayoutChangeListener(this);
            return;
        }
        FloatingActionButton floatingActionButton = (FloatingActionButton) view;
        int measuredWidth = floatingActionButton.getMeasuredWidth();
        int measuredHeight = floatingActionButton.getMeasuredHeight();
        Rect rect = behavior.f4661e;
        rect.set(0, 0, measuredWidth, measuredHeight);
        floatingActionButton.j(rect);
        int iHeight = rect.height();
        bottomAppBar.J(iHeight);
        bottomAppBar.setFabCornerSize(floatingActionButton.getShapeAppearanceModel().f10403e.a(new RectF(rect)));
        androidx.coordinatorlayout.widget.c cVar = (androidx.coordinatorlayout.widget.c) view.getLayoutParams();
        if (behavior.f4662g == 0) {
            ((ViewGroup.MarginLayoutParams) cVar).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fab_bottom_margin) - ((floatingActionButton.getMeasuredHeight() - iHeight) / 2));
            ((ViewGroup.MarginLayoutParams) cVar).leftMargin = bottomAppBar.getLeftInset();
            ((ViewGroup.MarginLayoutParams) cVar).rightMargin = bottomAppBar.getRightInset();
            boolean zI = a0.i(floatingActionButton);
            int i17 = bottomAppBar.V;
            if (zI) {
                ((ViewGroup.MarginLayoutParams) cVar).leftMargin += i17;
            } else {
                ((ViewGroup.MarginLayoutParams) cVar).rightMargin += i17;
            }
        }
    }
}
