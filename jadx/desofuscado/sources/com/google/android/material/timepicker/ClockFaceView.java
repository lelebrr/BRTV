package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import java.util.Arrays;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
class ClockFaceView extends RadialViewGroup implements d {
    public final int A;
    public final int B;
    public final int C;
    public final int D;
    public final String[] E;
    public float F;
    public final ColorStateList G;

    /* renamed from: t, reason: collision with root package name */
    public final ClockHandView f5383t;

    /* renamed from: u, reason: collision with root package name */
    public final Rect f5384u;

    /* renamed from: v, reason: collision with root package name */
    public final RectF f5385v;

    /* renamed from: w, reason: collision with root package name */
    public final SparseArray f5386w;

    /* renamed from: x, reason: collision with root package name */
    public final c f5387x;

    /* renamed from: y, reason: collision with root package name */
    public final int[] f5388y;

    /* renamed from: z, reason: collision with root package name */
    public final float[] f5389z;

    public ClockFaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) j7.c.z(1, this.E.length, 1, false).f7444b);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        super.onLayout(z7, i6, i10, i11, i12);
        p();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i6, int i10) throws Resources.NotFoundException, NumberFormatException {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iMax = (int) (this.D / Math.max(Math.max(this.B / displayMetrics.heightPixels, this.C / displayMetrics.widthPixels), 1.0f));
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMax, 1073741824);
        setMeasuredDimension(iMax, iMax);
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec);
    }

    public final void p() {
        RadialGradient radialGradient;
        RectF rectF = this.f5383t.f5393e;
        int i6 = 0;
        while (true) {
            SparseArray sparseArray = this.f5386w;
            if (i6 >= sparseArray.size()) {
                return;
            }
            TextView textView = (TextView) sparseArray.get(i6);
            if (textView != null) {
                Rect rect = this.f5384u;
                textView.getDrawingRect(rect);
                offsetDescendantRectToMyCoords(textView, rect);
                textView.setSelected(rectF.contains(rect.centerX(), rect.centerY()));
                RectF rectF2 = this.f5385v;
                rectF2.set(rect);
                rectF2.offset(textView.getPaddingLeft(), textView.getPaddingTop());
                if (RectF.intersects(rectF, rectF2)) {
                    radialGradient = new RadialGradient(rectF.centerX() - rectF2.left, rectF.centerY() - rectF2.top, 0.5f * rectF.width(), this.f5388y, this.f5389z, Shader.TileMode.CLAMP);
                } else {
                    radialGradient = null;
                }
                textView.getPaint().setShader(radialGradient);
                textView.invalidate();
            }
            i6++;
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public ClockFaceView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f5384u = new Rect();
        this.f5385v = new RectF();
        SparseArray sparseArray = new SparseArray();
        this.f5386w = sparseArray;
        this.f5389z = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, x5.a.f11031l, i6, R.style.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList colorStateListK = com.bumptech.glide.d.k(context, typedArrayObtainStyledAttributes, 1);
        this.G = colorStateListK;
        LayoutInflater.from(context).inflate(R.layout.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(R.id.material_clock_hand);
        this.f5383t = clockHandView;
        this.A = resources.getDimensionPixelSize(R.dimen.material_clock_hand_padding);
        int colorForState = colorStateListK.getColorForState(new int[]{android.R.attr.state_selected}, colorStateListK.getDefaultColor());
        this.f5388y = new int[]{colorForState, colorForState, colorStateListK.getDefaultColor()};
        clockHandView.f5390a.add(this);
        int defaultColor = u7.d.k(context, R.color.material_timepicker_clockface).getDefaultColor();
        ColorStateList colorStateListK2 = com.bumptech.glide.d.k(context, typedArrayObtainStyledAttributes, 0);
        setBackgroundColor(colorStateListK2 != null ? colorStateListK2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new b(this));
        setFocusable(true);
        typedArrayObtainStyledAttributes.recycle();
        this.f5387x = new c(this);
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        this.E = strArr;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int size = sparseArray.size();
        for (int i10 = 0; i10 < Math.max(this.E.length, size); i10++) {
            TextView textView = (TextView) sparseArray.get(i10);
            if (i10 >= this.E.length) {
                removeView(textView);
                sparseArray.remove(i10);
            } else {
                if (textView == null) {
                    textView = (TextView) layoutInflaterFrom.inflate(R.layout.material_clockface_textview, (ViewGroup) this, false);
                    sparseArray.put(i10, textView);
                    addView(textView);
                }
                textView.setVisibility(0);
                textView.setText(this.E[i10]);
                textView.setTag(R.id.material_value_index, Integer.valueOf(i10));
                s0.q(textView, this.f5387x);
                textView.setTextColor(this.G);
            }
        }
        this.B = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_height);
        this.C = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_width);
        this.D = resources.getDimensionPixelSize(R.dimen.material_clock_size);
    }
}
