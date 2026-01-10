package com.google.android.material.divider;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.l1;
import androidx.recyclerview.widget.t0;
import com.bumptech.glide.d;
import com.google.android.material.internal.a0;
import com.p2elite.brtv2.R;
import ea.q;
import java.util.WeakHashMap;
import n0.s0;
import x5.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MaterialDividerItemDecoration extends t0 {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable f4905a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4906b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4907c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final int f4908e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f4909g;

    /* renamed from: h, reason: collision with root package name */
    public final Rect f4910h = new Rect();

    public MaterialDividerItemDecoration(Context context, AttributeSet attributeSet, int i6) {
        TypedArray typedArrayJ = a0.j(context, attributeSet, a.E, R.attr.materialDividerStyle, R.style.Widget_MaterialComponents_MaterialDivider, new int[0]);
        this.f4907c = d.k(context, typedArrayJ, 0).getDefaultColor();
        this.f4906b = typedArrayJ.getDimensionPixelSize(3, context.getResources().getDimensionPixelSize(R.dimen.material_divider_thickness));
        this.f4908e = typedArrayJ.getDimensionPixelOffset(2, 0);
        this.f = typedArrayJ.getDimensionPixelOffset(1, 0);
        this.f4909g = typedArrayJ.getBoolean(4, true);
        typedArrayJ.recycle();
        ShapeDrawable shapeDrawable = new ShapeDrawable();
        this.f4905a = shapeDrawable;
        int i10 = this.f4907c;
        this.f4907c = i10;
        Drawable drawableW = n5.d.W(shapeDrawable);
        this.f4905a = drawableW;
        g0.a.g(drawableW, i10);
        if (i6 != 0 && i6 != 1) {
            throw new IllegalArgumentException(q.f(i6, "Invalid orientation: ", ". It should be either HORIZONTAL or VERTICAL"));
        }
        this.d = i6;
    }

    @Override // androidx.recyclerview.widget.t0
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, l1 l1Var) {
        rect.set(0, 0, 0, 0);
        int i6 = this.d;
        int i10 = this.f4906b;
        if (i6 == 1) {
            rect.bottom = this.f4905a.getIntrinsicHeight() + i10;
        } else {
            rect.right = this.f4905a.getIntrinsicWidth() + i10;
        }
    }

    @Override // androidx.recyclerview.widget.t0
    public final void onDraw(Canvas canvas, RecyclerView recyclerView, l1 l1Var) {
        int height;
        int paddingTop;
        int width;
        int paddingLeft;
        Drawable drawable = this.f4905a;
        if (recyclerView.getLayoutManager() == null) {
            return;
        }
        int i6 = this.d;
        int i10 = this.f4906b;
        Rect rect = this.f4910h;
        int i11 = this.f;
        int i12 = this.f4908e;
        int i13 = 0;
        if (i6 != 1) {
            canvas.save();
            if (recyclerView.getClipToPadding()) {
                paddingTop = recyclerView.getPaddingTop();
                height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
                canvas.clipRect(recyclerView.getPaddingLeft(), paddingTop, recyclerView.getWidth() - recyclerView.getPaddingRight(), height);
            } else {
                height = recyclerView.getHeight();
                paddingTop = 0;
            }
            int i14 = paddingTop + i12;
            int i15 = height - i11;
            int childCount = recyclerView.getChildCount();
            while (i13 < childCount) {
                View childAt = recyclerView.getChildAt(i13);
                recyclerView.getLayoutManager().getDecoratedBoundsWithMargins(childAt, rect);
                int iRound = Math.round(childAt.getTranslationX()) + rect.right;
                drawable.setBounds((iRound - drawable.getIntrinsicWidth()) - i10, i14, iRound, i15);
                drawable.draw(canvas);
                i13++;
            }
            canvas.restore();
            return;
        }
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            paddingLeft = recyclerView.getPaddingLeft();
            width = recyclerView.getWidth() - recyclerView.getPaddingRight();
            canvas.clipRect(paddingLeft, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
        } else {
            width = recyclerView.getWidth();
            paddingLeft = 0;
        }
        WeakHashMap weakHashMap = s0.f8353a;
        boolean z7 = recyclerView.getLayoutDirection() == 1;
        int i16 = paddingLeft + (z7 ? i11 : i12);
        if (z7) {
            i11 = i12;
        }
        int i17 = width - i11;
        int childCount2 = recyclerView.getChildCount();
        if (!this.f4909g) {
            childCount2--;
        }
        while (i13 < childCount2) {
            View childAt2 = recyclerView.getChildAt(i13);
            recyclerView.getDecoratedBoundsWithMargins(childAt2, rect);
            int iRound2 = Math.round(childAt2.getTranslationY()) + rect.bottom;
            drawable.setBounds(i16, (iRound2 - drawable.getIntrinsicHeight()) - i10, i17, iRound2);
            drawable.draw(canvas);
            i13++;
        }
        canvas.restore();
    }
}
