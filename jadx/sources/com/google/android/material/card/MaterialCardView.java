package com.google.android.material.card;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import androidx.cardview.widget.CardView;
import com.google.android.material.internal.a0;
import d6.c;
import g0.a;
import o9.d;
import o9.e;
import u6.h;
import u6.l;
import u6.m;
import u6.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MaterialCardView extends CardView implements Checkable, x {

    /* renamed from: l, reason: collision with root package name */
    public static final int[] f4756l = {R.attr.state_checkable};

    /* renamed from: m, reason: collision with root package name */
    public static final int[] f4757m = {R.attr.state_checked};

    /* renamed from: n, reason: collision with root package name */
    public static final int[] f4758n = {com.p2elite.brtv2.R.attr.state_dragged};

    /* renamed from: h, reason: collision with root package name */
    public final c f4759h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f4760i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f4761j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f4762k;

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.p2elite.brtv2.R.attr.materialCardViewStyle);
    }

    private RectF getBoundsAsRectF() {
        RectF rectF = new RectF();
        rectF.set(this.f4759h.f6065c.getBounds());
        return rectF;
    }

    public final void b() {
        c cVar;
        RippleDrawable rippleDrawable;
        if (Build.VERSION.SDK_INT <= 26 || (rippleDrawable = (cVar = this.f4759h).f6075o) == null) {
            return;
        }
        Rect bounds = rippleDrawable.getBounds();
        int i6 = bounds.bottom;
        cVar.f6075o.setBounds(bounds.left, bounds.top, bounds.right, i6 - 1);
        cVar.f6075o.setBounds(bounds.left, bounds.top, bounds.right, i6);
    }

    @Override // androidx.cardview.widget.CardView
    public ColorStateList getCardBackgroundColor() {
        return this.f4759h.f6065c.f10367a.f10352c;
    }

    public ColorStateList getCardForegroundColor() {
        return this.f4759h.d.f10367a.f10352c;
    }

    public float getCardViewRadius() {
        return super.getRadius();
    }

    public Drawable getCheckedIcon() {
        return this.f4759h.f6070j;
    }

    public int getCheckedIconGravity() {
        return this.f4759h.f6067g;
    }

    public int getCheckedIconMargin() {
        return this.f4759h.f6066e;
    }

    public int getCheckedIconSize() {
        return this.f4759h.f;
    }

    public ColorStateList getCheckedIconTint() {
        return this.f4759h.f6072l;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingBottom() {
        return this.f4759h.f6064b.bottom;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingLeft() {
        return this.f4759h.f6064b.left;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingRight() {
        return this.f4759h.f6064b.right;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingTop() {
        return this.f4759h.f6064b.top;
    }

    public float getProgress() {
        return this.f4759h.f6065c.f10367a.f10356i;
    }

    @Override // androidx.cardview.widget.CardView
    public float getRadius() {
        return this.f4759h.f6065c.i();
    }

    public ColorStateList getRippleColor() {
        return this.f4759h.f6071k;
    }

    public m getShapeAppearanceModel() {
        return this.f4759h.f6073m;
    }

    @Deprecated
    public int getStrokeColor() {
        ColorStateList colorStateList = this.f4759h.f6074n;
        if (colorStateList == null) {
            return -1;
        }
        return colorStateList.getDefaultColor();
    }

    public ColorStateList getStrokeColorStateList() {
        return this.f4759h.f6074n;
    }

    public int getStrokeWidth() {
        return this.f4759h.f6068h;
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f4761j;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        d.D(this, this.f4759h.f6065c);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i6) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i6 + 3);
        c cVar = this.f4759h;
        if (cVar != null && cVar.f6079s) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f4756l);
        }
        if (this.f4761j) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f4757m);
        }
        if (this.f4762k) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f4758n);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.cardview.widget.CardView");
        accessibilityEvent.setChecked(this.f4761j);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.cardview.widget.CardView");
        c cVar = this.f4759h;
        accessibilityNodeInfo.setCheckable(cVar != null && cVar.f6079s);
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(this.f4761j);
    }

    @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i6, int i10) {
        super.onMeasure(i6, i10);
        this.f4759h.e(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.f4760i) {
            c cVar = this.f4759h;
            if (!cVar.f6078r) {
                Log.i("MaterialCardView", "Setting a custom background is not supported.");
                cVar.f6078r = true;
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    public void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(ColorStateList colorStateList) {
        this.f4759h.f6065c.n(colorStateList);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardElevation(float f) {
        super.setCardElevation(f);
        c cVar = this.f4759h;
        cVar.f6065c.m(cVar.f6063a.getCardElevation());
    }

    public void setCardForegroundColor(ColorStateList colorStateList) {
        h hVar = this.f4759h.d;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        hVar.n(colorStateList);
    }

    public void setCheckable(boolean z7) {
        this.f4759h.f6079s = z7;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z7) {
        if (this.f4761j != z7) {
            toggle();
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        this.f4759h.f(drawable);
    }

    public void setCheckedIconGravity(int i6) {
        c cVar = this.f4759h;
        if (cVar.f6067g != i6) {
            cVar.f6067g = i6;
            MaterialCardView materialCardView = cVar.f6063a;
            cVar.e(materialCardView.getMeasuredWidth(), materialCardView.getMeasuredHeight());
        }
    }

    public void setCheckedIconMargin(int i6) {
        this.f4759h.f6066e = i6;
    }

    public void setCheckedIconMarginResource(int i6) {
        if (i6 != -1) {
            this.f4759h.f6066e = getResources().getDimensionPixelSize(i6);
        }
    }

    public void setCheckedIconResource(int i6) {
        this.f4759h.f(com.bumptech.glide.c.h(getContext(), i6));
    }

    public void setCheckedIconSize(int i6) {
        this.f4759h.f = i6;
    }

    public void setCheckedIconSizeResource(int i6) {
        if (i6 != 0) {
            this.f4759h.f = getResources().getDimensionPixelSize(i6);
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        c cVar = this.f4759h;
        cVar.f6072l = colorStateList;
        Drawable drawable = cVar.f6070j;
        if (drawable != null) {
            a.h(drawable, colorStateList);
        }
    }

    @Override // android.view.View
    public void setClickable(boolean z7) {
        super.setClickable(z7);
        c cVar = this.f4759h;
        if (cVar != null) {
            Drawable drawable = cVar.f6069i;
            MaterialCardView materialCardView = cVar.f6063a;
            Drawable drawableC = materialCardView.isClickable() ? cVar.c() : cVar.d;
            cVar.f6069i = drawableC;
            if (drawable != drawableC) {
                if (Build.VERSION.SDK_INT < 23 || !(materialCardView.getForeground() instanceof InsetDrawable)) {
                    materialCardView.setForeground(cVar.d(drawableC));
                } else {
                    ((InsetDrawable) materialCardView.getForeground()).setDrawable(drawableC);
                }
            }
        }
    }

    public void setDragged(boolean z7) {
        if (this.f4762k != z7) {
            this.f4762k = z7;
            refreshDrawableState();
            b();
            invalidate();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setMaxCardElevation(float f) {
        super.setMaxCardElevation(f);
        this.f4759h.j();
    }

    @Override // androidx.cardview.widget.CardView
    public void setPreventCornerOverlap(boolean z7) {
        super.setPreventCornerOverlap(z7);
        c cVar = this.f4759h;
        cVar.j();
        cVar.i();
    }

    public void setProgress(float f) {
        c cVar = this.f4759h;
        cVar.f6065c.o(f);
        h hVar = cVar.d;
        if (hVar != null) {
            hVar.o(f);
        }
        h hVar2 = cVar.f6077q;
        if (hVar2 != null) {
            hVar2.o(f);
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f) {
        super.setRadius(f);
        c cVar = this.f4759h;
        l lVarF = cVar.f6073m.f();
        lVarF.c(f);
        cVar.g(lVarF.a());
        cVar.f6069i.invalidateSelf();
        if (cVar.h() || (cVar.f6063a.getPreventCornerOverlap() && !cVar.f6065c.l())) {
            cVar.i();
        }
        if (cVar.h()) {
            cVar.j();
        }
    }

    public void setRippleColor(ColorStateList colorStateList) {
        c cVar = this.f4759h;
        cVar.f6071k = colorStateList;
        int[] iArr = s6.c.f9823a;
        RippleDrawable rippleDrawable = cVar.f6075o;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(colorStateList);
        }
    }

    public void setRippleColorResource(int i6) {
        ColorStateList colorStateListK = u7.d.k(getContext(), i6);
        c cVar = this.f4759h;
        cVar.f6071k = colorStateListK;
        int[] iArr = s6.c.f9823a;
        RippleDrawable rippleDrawable = cVar.f6075o;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(colorStateListK);
        }
    }

    @Override // u6.x
    public void setShapeAppearanceModel(m mVar) {
        setClipToOutline(mVar.e(getBoundsAsRectF()));
        this.f4759h.g(mVar);
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        c cVar = this.f4759h;
        if (cVar.f6074n != colorStateList) {
            cVar.f6074n = colorStateList;
            h hVar = cVar.d;
            hVar.f10367a.f10357j = cVar.f6068h;
            hVar.invalidateSelf();
            hVar.s(colorStateList);
        }
        invalidate();
    }

    public void setStrokeWidth(int i6) {
        c cVar = this.f4759h;
        if (i6 != cVar.f6068h) {
            cVar.f6068h = i6;
            h hVar = cVar.d;
            ColorStateList colorStateList = cVar.f6074n;
            hVar.f10367a.f10357j = i6;
            hVar.invalidateSelf();
            hVar.s(colorStateList);
        }
        invalidate();
    }

    @Override // androidx.cardview.widget.CardView
    public void setUseCompatPadding(boolean z7) {
        super.setUseCompatPadding(z7);
        c cVar = this.f4759h;
        cVar.j();
        cVar.i();
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        c cVar = this.f4759h;
        if (cVar != null && cVar.f6079s && isEnabled()) {
            this.f4761j = !this.f4761j;
            refreshDrawableState();
            b();
            boolean z7 = this.f4761j;
            Drawable drawable = cVar.f6070j;
            if (drawable != null) {
                drawable.setAlpha(z7 ? 255 : 0);
            }
        }
    }

    public MaterialCardView(Context context, AttributeSet attributeSet, int i6) {
        super(y6.a.a(context, attributeSet, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_CardView), attributeSet, i6);
        this.f4761j = false;
        this.f4762k = false;
        this.f4760i = true;
        TypedArray typedArrayJ = a0.j(getContext(), attributeSet, x5.a.C, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_CardView, new int[0]);
        c cVar = new c(this, attributeSet, i6);
        this.f4759h = cVar;
        ColorStateList cardBackgroundColor = super.getCardBackgroundColor();
        h hVar = cVar.f6065c;
        hVar.n(cardBackgroundColor);
        cVar.f6064b.set(super.getContentPaddingLeft(), super.getContentPaddingTop(), super.getContentPaddingRight(), super.getContentPaddingBottom());
        cVar.i();
        MaterialCardView materialCardView = cVar.f6063a;
        ColorStateList colorStateListK = com.bumptech.glide.d.k(materialCardView.getContext(), typedArrayJ, 11);
        cVar.f6074n = colorStateListK;
        if (colorStateListK == null) {
            cVar.f6074n = ColorStateList.valueOf(-1);
        }
        cVar.f6068h = typedArrayJ.getDimensionPixelSize(12, 0);
        boolean z7 = typedArrayJ.getBoolean(0, false);
        cVar.f6079s = z7;
        materialCardView.setLongClickable(z7);
        cVar.f6072l = com.bumptech.glide.d.k(materialCardView.getContext(), typedArrayJ, 6);
        cVar.f(com.bumptech.glide.d.n(materialCardView.getContext(), typedArrayJ, 2));
        cVar.f = typedArrayJ.getDimensionPixelSize(5, 0);
        cVar.f6066e = typedArrayJ.getDimensionPixelSize(4, 0);
        cVar.f6067g = typedArrayJ.getInteger(3, 8388661);
        ColorStateList colorStateListK2 = com.bumptech.glide.d.k(materialCardView.getContext(), typedArrayJ, 7);
        cVar.f6071k = colorStateListK2;
        if (colorStateListK2 == null) {
            cVar.f6071k = ColorStateList.valueOf(e.p(com.p2elite.brtv2.R.attr.colorControlHighlight, materialCardView));
        }
        ColorStateList colorStateListK3 = com.bumptech.glide.d.k(materialCardView.getContext(), typedArrayJ, 1);
        h hVar2 = cVar.d;
        hVar2.n(colorStateListK3 == null ? ColorStateList.valueOf(0) : colorStateListK3);
        int[] iArr = s6.c.f9823a;
        RippleDrawable rippleDrawable = cVar.f6075o;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(cVar.f6071k);
        }
        hVar.m(materialCardView.getCardElevation());
        float f = cVar.f6068h;
        ColorStateList colorStateList = cVar.f6074n;
        hVar2.f10367a.f10357j = f;
        hVar2.invalidateSelf();
        hVar2.s(colorStateList);
        materialCardView.setBackgroundInternal(cVar.d(hVar));
        Drawable drawableC = materialCardView.isClickable() ? cVar.c() : hVar2;
        cVar.f6069i = drawableC;
        materialCardView.setForeground(cVar.d(drawableC));
        typedArrayJ.recycle();
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(int i6) {
        this.f4759h.f6065c.n(ColorStateList.valueOf(i6));
    }

    public void setStrokeColor(int i6) {
        setStrokeColor(ColorStateList.valueOf(i6));
    }

    public void setOnCheckedChangeListener(d6.a aVar) {
    }
}
