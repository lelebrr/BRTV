package androidx.recyclerview.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l extends t0 {

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f2883c = {R.attr.listDivider};

    /* renamed from: a, reason: collision with root package name */
    public Drawable f2884a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f2885b = new Rect();

    public l(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(f2883c);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        this.f2884a = drawable;
        if (drawable == null) {
            Log.w("DividerItem", "@android:attr/listDivider was not set in the theme used for this DividerItemDecoration. Please set that attribute all call setDrawable()");
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.recyclerview.widget.t0
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, l1 l1Var) {
        Drawable drawable = this.f2884a;
        if (drawable == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(0, 0, drawable.getIntrinsicWidth(), 0);
        }
    }

    @Override // androidx.recyclerview.widget.t0
    public final void onDraw(Canvas canvas, RecyclerView recyclerView, l1 l1Var) {
        int height;
        int paddingTop;
        if (recyclerView.getLayoutManager() == null || this.f2884a == null) {
            return;
        }
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            paddingTop = recyclerView.getPaddingTop();
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), paddingTop, recyclerView.getWidth() - recyclerView.getPaddingRight(), height);
        } else {
            height = recyclerView.getHeight();
            paddingTop = 0;
        }
        int childCount = recyclerView.getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = recyclerView.getChildAt(i6);
            x0 layoutManager = recyclerView.getLayoutManager();
            Rect rect = this.f2885b;
            layoutManager.getDecoratedBoundsWithMargins(childAt, rect);
            int iRound = Math.round(childAt.getTranslationX()) + rect.right;
            this.f2884a.setBounds(iRound - this.f2884a.getIntrinsicWidth(), paddingTop, iRound, height);
            this.f2884a.draw(canvas);
        }
        canvas.restore();
    }
}
