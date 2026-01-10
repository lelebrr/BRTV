package androidx.recyclerview.widget;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class t0 {
    @Deprecated
    public void getItemOffsets(Rect rect, int i6, RecyclerView recyclerView) {
        rect.set(0, 0, 0, 0);
    }

    @Deprecated
    public void onDraw(Canvas canvas, RecyclerView recyclerView) {
    }

    @Deprecated
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
    }

    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, l1 l1Var) {
        getItemOffsets(rect, ((RecyclerView.LayoutParams) view.getLayoutParams()).f2760a.getLayoutPosition(), recyclerView);
    }

    public void onDraw(Canvas canvas, RecyclerView recyclerView, l1 l1Var) {
        onDraw(canvas, recyclerView);
    }

    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, l1 l1Var) {
        onDrawOver(canvas, recyclerView);
    }
}
