package v6;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bumptech.glide.d;
import com.google.android.material.internal.a0;
import com.p2elite.brtv2.R;
import java.util.WeakHashMap;
import n0.e0;
import n0.g0;
import n0.s0;
import o9.e;
import t.n0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a extends FrameLayout {

    /* renamed from: h, reason: collision with root package name */
    public static final n0 f10719h = new n0(1);

    /* renamed from: a, reason: collision with root package name */
    public int f10720a;

    /* renamed from: b, reason: collision with root package name */
    public final float f10721b;

    /* renamed from: c, reason: collision with root package name */
    public final float f10722c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final int f10723e;
    public ColorStateList f;

    /* renamed from: g, reason: collision with root package name */
    public PorterDuff.Mode f10724g;

    public a(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        Drawable drawableW;
        super(y6.a.a(context, attributeSet, 0, 0), attributeSet);
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, x5.a.V);
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0);
            WeakHashMap weakHashMap = s0.f8353a;
            g0.s(this, dimensionPixelSize);
        }
        this.f10720a = typedArrayObtainStyledAttributes.getInt(2, 0);
        this.f10721b = typedArrayObtainStyledAttributes.getFloat(3, 1.0f);
        setBackgroundTintList(d.k(context2, typedArrayObtainStyledAttributes, 4));
        setBackgroundTintMode(a0.l(typedArrayObtainStyledAttributes.getInt(5, -1), PorterDuff.Mode.SRC_IN));
        this.f10722c = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        this.d = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        this.f10723e = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, -1);
        typedArrayObtainStyledAttributes.recycle();
        setOnTouchListener(f10719h);
        setFocusable(true);
        if (getBackground() == null) {
            float dimension = getResources().getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(dimension);
            gradientDrawable.setColor(e.x(getBackgroundOverlayColorAlpha(), e.p(R.attr.colorSurface, this), e.p(R.attr.colorOnSurface, this)));
            if (this.f != null) {
                drawableW = n5.d.W(gradientDrawable);
                g0.a.h(drawableW, this.f);
            } else {
                drawableW = n5.d.W(gradientDrawable);
            }
            WeakHashMap weakHashMap2 = s0.f8353a;
            setBackground(drawableW);
        }
    }

    public float getActionTextColorAlpha() {
        return this.f10722c;
    }

    public int getAnimationMode() {
        return this.f10720a;
    }

    public float getBackgroundOverlayColorAlpha() {
        return this.f10721b;
    }

    public int getMaxInlineActionWidth() {
        return this.f10723e;
    }

    public int getMaxWidth() {
        return this.d;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        WeakHashMap weakHashMap = s0.f8353a;
        e0.c(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        super.onLayout(z7, i6, i10, i11, i12);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i6, int i10) {
        super.onMeasure(i6, i10);
        int i11 = this.d;
        if (i11 <= 0 || getMeasuredWidth() <= i11) {
            return;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(i11, 1073741824), i10);
    }

    public void setAnimationMode(int i6) {
        this.f10720a = i6;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable != null && this.f != null) {
            drawable = n5.d.W(drawable.mutate());
            g0.a.h(drawable, this.f);
            g0.a.i(drawable, this.f10724g);
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        this.f = colorStateList;
        if (getBackground() != null) {
            Drawable drawableW = n5.d.W(getBackground().mutate());
            g0.a.h(drawableW, colorStateList);
            g0.a.i(drawableW, this.f10724g);
            if (drawableW != getBackground()) {
                super.setBackgroundDrawable(drawableW);
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        this.f10724g = mode;
        if (getBackground() != null) {
            Drawable drawableW = n5.d.W(getBackground().mutate());
            g0.a.i(drawableW, mode);
            if (drawableW != getBackground()) {
                super.setBackgroundDrawable(drawableW);
            }
        }
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        setOnTouchListener(onClickListener != null ? null : f10719h);
        super.setOnClickListener(onClickListener);
    }

    private void setBaseTransientBottomBar(b bVar) {
    }
}
