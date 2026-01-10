package com.youth.banner.itemdecoration;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.l1;
import androidx.recyclerview.widget.t0;
import androidx.recyclerview.widget.x0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MarginDecoration extends t0 {
    private int mMarginPx;

    public MarginDecoration(int i6) {
        this.mMarginPx = i6;
    }

    private LinearLayoutManager requireLinearLayoutManager(RecyclerView recyclerView) {
        x0 layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            return (LinearLayoutManager) layoutManager;
        }
        throw new IllegalStateException("The layoutManager must be LinearLayoutManager");
    }

    @Override // androidx.recyclerview.widget.t0
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, l1 l1Var) {
        if (requireLinearLayoutManager(recyclerView).getOrientation() == 1) {
            int i6 = this.mMarginPx;
            rect.top = i6;
            rect.bottom = i6;
        } else {
            int i10 = this.mMarginPx;
            rect.left = i10;
            rect.right = i10;
        }
    }
}
