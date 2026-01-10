package com.google.android.material.divider;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.material.internal.a0;
import com.p2elite.brtv2.R;
import java.util.WeakHashMap;
import n0.s0;
import u6.h;
import u7.d;
import y6.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MaterialDivider extends View {

    /* renamed from: a, reason: collision with root package name */
    public final h f4901a;

    /* renamed from: b, reason: collision with root package name */
    public int f4902b;

    /* renamed from: c, reason: collision with root package name */
    public int f4903c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f4904e;

    public MaterialDivider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialDividerStyle);
    }

    public int getDividerColor() {
        return this.f4903c;
    }

    public int getDividerInsetEnd() {
        return this.f4904e;
    }

    public int getDividerInsetStart() {
        return this.d;
    }

    public int getDividerThickness() {
        return this.f4902b;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int width;
        int i6;
        super.onDraw(canvas);
        WeakHashMap weakHashMap = s0.f8353a;
        boolean z7 = getLayoutDirection() == 1;
        int i10 = z7 ? this.f4904e : this.d;
        if (z7) {
            width = getWidth();
            i6 = this.d;
        } else {
            width = getWidth();
            i6 = this.f4904e;
        }
        int i11 = width - i6;
        h hVar = this.f4901a;
        hVar.setBounds(i10, 0, i11, getBottom() - getTop());
        hVar.draw(canvas);
    }

    @Override // android.view.View
    public final void onMeasure(int i6, int i10) {
        super.onMeasure(i6, i10);
        int mode = View.MeasureSpec.getMode(i10);
        int measuredHeight = getMeasuredHeight();
        if (mode == Integer.MIN_VALUE || mode == 0) {
            int i11 = this.f4902b;
            if (i11 > 0 && measuredHeight != i11) {
                measuredHeight = i11;
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
    }

    public void setDividerColor(int i6) {
        if (this.f4903c != i6) {
            this.f4903c = i6;
            this.f4901a.n(ColorStateList.valueOf(i6));
            invalidate();
        }
    }

    public void setDividerColorResource(int i6) {
        setDividerColor(d.i(getContext(), i6));
    }

    public void setDividerInsetEnd(int i6) {
        this.f4904e = i6;
    }

    public void setDividerInsetEndResource(int i6) {
        setDividerInsetEnd(getContext().getResources().getDimensionPixelOffset(i6));
    }

    public void setDividerInsetStart(int i6) {
        this.d = i6;
    }

    public void setDividerInsetStartResource(int i6) {
        setDividerInsetStart(getContext().getResources().getDimensionPixelOffset(i6));
    }

    public void setDividerThickness(int i6) {
        if (this.f4902b != i6) {
            this.f4902b = i6;
            requestLayout();
        }
    }

    public void setDividerThicknessResource(int i6) {
        setDividerThickness(getContext().getResources().getDimensionPixelSize(i6));
    }

    public MaterialDivider(Context context, AttributeSet attributeSet, int i6) {
        super(a.a(context, attributeSet, i6, R.style.Widget_MaterialComponents_MaterialDivider), attributeSet, i6);
        Context context2 = getContext();
        this.f4901a = new h();
        TypedArray typedArrayJ = a0.j(context2, attributeSet, x5.a.E, i6, R.style.Widget_MaterialComponents_MaterialDivider, new int[0]);
        this.f4902b = typedArrayJ.getDimensionPixelSize(3, getResources().getDimensionPixelSize(R.dimen.material_divider_thickness));
        this.d = typedArrayJ.getDimensionPixelOffset(2, 0);
        this.f4904e = typedArrayJ.getDimensionPixelOffset(1, 0);
        setDividerColor(com.bumptech.glide.d.k(context2, typedArrayJ, 0).getDefaultColor());
        typedArrayJ.recycle();
    }
}
