package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.internal.a0;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.WeakHashMap;
import n0.g0;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MaterialToolbar extends Toolbar {

    /* renamed from: d0, reason: collision with root package name */
    public static final ImageView.ScaleType[] f4598d0 = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};
    public Integer U;
    public boolean V;
    public boolean W;

    /* renamed from: b0, reason: collision with root package name */
    public ImageView.ScaleType f4599b0;

    /* renamed from: c0, reason: collision with root package name */
    public Boolean f4600c0;

    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    public ImageView.ScaleType getLogoScaleType() {
        return this.f4599b0;
    }

    public Integer getNavigationIconTint() {
        return this.U;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        o9.d.E(this);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        ImageView imageView;
        Drawable drawable;
        super.onLayout(z7, i6, i10, i11, i12);
        int i13 = 0;
        ImageView imageView2 = null;
        if (this.V || this.W) {
            ArrayList arrayListG = a0.g(this, getTitle());
            boolean zIsEmpty = arrayListG.isEmpty();
            a0.e eVar = a0.f4982c;
            TextView textView = zIsEmpty ? null : (TextView) Collections.min(arrayListG, eVar);
            ArrayList arrayListG2 = a0.g(this, getSubtitle());
            TextView textView2 = arrayListG2.isEmpty() ? null : (TextView) Collections.max(arrayListG2, eVar);
            if (textView != null || textView2 != null) {
                int measuredWidth = getMeasuredWidth();
                int i14 = measuredWidth / 2;
                int paddingLeft = getPaddingLeft();
                int paddingRight = measuredWidth - getPaddingRight();
                for (int i15 = 0; i15 < getChildCount(); i15++) {
                    View childAt = getChildAt(i15);
                    if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                        if (childAt.getRight() < i14 && childAt.getRight() > paddingLeft) {
                            paddingLeft = childAt.getRight();
                        }
                        if (childAt.getLeft() > i14 && childAt.getLeft() < paddingRight) {
                            paddingRight = childAt.getLeft();
                        }
                    }
                }
                Pair pair = new Pair(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
                if (this.V && textView != null) {
                    x(textView, pair);
                }
                if (this.W && textView2 != null) {
                    x(textView2, pair);
                }
            }
        }
        Drawable logo = getLogo();
        if (logo != null) {
            while (true) {
                if (i13 >= getChildCount()) {
                    break;
                }
                View childAt2 = getChildAt(i13);
                if ((childAt2 instanceof ImageView) && (drawable = (imageView = (ImageView) childAt2).getDrawable()) != null && drawable.getConstantState() != null && drawable.getConstantState().equals(logo.getConstantState())) {
                    imageView2 = imageView;
                    break;
                }
                i13++;
            }
        }
        if (imageView2 != null) {
            Boolean bool = this.f4600c0;
            if (bool != null) {
                imageView2.setAdjustViewBounds(bool.booleanValue());
            }
            ImageView.ScaleType scaleType = this.f4599b0;
            if (scaleType != null) {
                imageView2.setScaleType(scaleType);
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        o9.d.B(this, f);
    }

    public void setLogoAdjustViewBounds(boolean z7) {
        Boolean bool = this.f4600c0;
        if (bool == null || bool.booleanValue() != z7) {
            this.f4600c0 = Boolean.valueOf(z7);
            requestLayout();
        }
    }

    public void setLogoScaleType(ImageView.ScaleType scaleType) {
        if (this.f4599b0 != scaleType) {
            this.f4599b0 = scaleType;
            requestLayout();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null && this.U != null) {
            drawable = n5.d.W(drawable.mutate());
            g0.a.g(drawable, this.U.intValue());
        }
        super.setNavigationIcon(drawable);
    }

    public void setNavigationIconTint(int i6) {
        this.U = Integer.valueOf(i6);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z7) {
        if (this.W != z7) {
            this.W = z7;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z7) {
        if (this.V != z7) {
            this.V = z7;
            requestLayout();
        }
    }

    public final void x(TextView textView, Pair pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = textView.getMeasuredWidth();
        int i6 = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i10 = measuredWidth2 + i6;
        int iMax = Math.max(Math.max(((Integer) pair.first).intValue() - i6, 0), Math.max(i10 - ((Integer) pair.second).intValue(), 0));
        if (iMax > 0) {
            i6 += iMax;
            i10 -= iMax;
            textView.measure(View.MeasureSpec.makeMeasureSpec(i10 - i6, 1073741824), textView.getMeasuredHeightAndState());
        }
        textView.layout(i6, textView.getTop(), i10, textView.getBottom());
    }

    public MaterialToolbar(Context context, AttributeSet attributeSet, int i6) {
        super(y6.a.a(context, attributeSet, i6, R.style.Widget_MaterialComponents_Toolbar), attributeSet, i6);
        Context context2 = getContext();
        TypedArray typedArrayJ = a0.j(context2, attributeSet, x5.a.J, i6, R.style.Widget_MaterialComponents_Toolbar, new int[0]);
        if (typedArrayJ.hasValue(2)) {
            setNavigationIconTint(typedArrayJ.getColor(2, -1));
        }
        this.V = typedArrayJ.getBoolean(4, false);
        this.W = typedArrayJ.getBoolean(3, false);
        int i10 = typedArrayJ.getInt(1, -1);
        if (i10 >= 0) {
            ImageView.ScaleType[] scaleTypeArr = f4598d0;
            if (i10 < scaleTypeArr.length) {
                this.f4599b0 = scaleTypeArr[i10];
            }
        }
        if (typedArrayJ.hasValue(0)) {
            this.f4600c0 = Boolean.valueOf(typedArrayJ.getBoolean(0, false));
        }
        typedArrayJ.recycle();
        Drawable background = getBackground();
        if (background == null || (background instanceof ColorDrawable)) {
            u6.h hVar = new u6.h();
            hVar.n(ColorStateList.valueOf(background != null ? ((ColorDrawable) background).getColor() : 0));
            hVar.k(context2);
            WeakHashMap weakHashMap = s0.f8353a;
            hVar.m(g0.i(this));
            setBackground(hVar);
        }
    }
}
