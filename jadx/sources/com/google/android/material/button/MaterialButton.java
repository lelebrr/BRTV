package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.appcompat.widget.AppCompatButton;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.internal.a0;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import n0.s0;
import u6.l;
import u6.m;
import u6.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MaterialButton extends AppCompatButton implements Checkable, x {

    /* renamed from: q, reason: collision with root package name */
    public static final int[] f4709q = {R.attr.state_checkable};

    /* renamed from: r, reason: collision with root package name */
    public static final int[] f4710r = {R.attr.state_checked};
    public final c d;

    /* renamed from: e, reason: collision with root package name */
    public final LinkedHashSet f4711e;
    public a f;

    /* renamed from: g, reason: collision with root package name */
    public PorterDuff.Mode f4712g;

    /* renamed from: h, reason: collision with root package name */
    public ColorStateList f4713h;

    /* renamed from: i, reason: collision with root package name */
    public Drawable f4714i;

    /* renamed from: j, reason: collision with root package name */
    public int f4715j;

    /* renamed from: k, reason: collision with root package name */
    public int f4716k;

    /* renamed from: l, reason: collision with root package name */
    public int f4717l;

    /* renamed from: m, reason: collision with root package name */
    public int f4718m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f4719n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f4720o;

    /* renamed from: p, reason: collision with root package name */
    public int f4721p;

    /* compiled from: MyApplication */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new b();

        /* renamed from: c, reason: collision with root package name */
        public boolean f4722c;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                getClass().getClassLoader();
            }
            this.f4722c = parcel.readInt() == 1;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i6) {
            super.writeToParcel(parcel, i6);
            parcel.writeInt(this.f4722c ? 1 : 0);
        }
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.p2elite.brtv2.R.attr.materialButtonStyle);
    }

    private String getA11yClassName() {
        return (a() ? CompoundButton.class : Button.class).getName();
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        return textAlignment != 1 ? (textAlignment == 6 || textAlignment == 3) ? Layout.Alignment.ALIGN_OPPOSITE : textAlignment != 4 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER : getGravityTextAlignment();
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & 8388615;
        return gravity != 1 ? (gravity == 5 || gravity == 8388613) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
    }

    private int getTextHeight() {
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(string, 0, string.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextWidth() {
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        return Math.min((int) paint.measureText(string), getLayout().getEllipsizedWidth());
    }

    public final boolean a() {
        c cVar = this.d;
        return cVar != null && cVar.f4748q;
    }

    public final boolean b() {
        c cVar = this.d;
        return (cVar == null || cVar.f4746o) ? false : true;
    }

    public final void c() {
        int i6 = this.f4721p;
        boolean z7 = true;
        if (i6 != 1 && i6 != 2) {
            z7 = false;
        }
        if (z7) {
            setCompoundDrawablesRelative(this.f4714i, null, null, null);
            return;
        }
        if (i6 == 3 || i6 == 4) {
            setCompoundDrawablesRelative(null, null, this.f4714i, null);
        } else if (i6 == 16 || i6 == 32) {
            setCompoundDrawablesRelative(null, this.f4714i, null, null);
        }
    }

    public final void d(boolean z7) {
        Drawable drawable = this.f4714i;
        if (drawable != null) {
            Drawable drawableMutate = n5.d.W(drawable).mutate();
            this.f4714i = drawableMutate;
            g0.a.h(drawableMutate, this.f4713h);
            PorterDuff.Mode mode = this.f4712g;
            if (mode != null) {
                g0.a.i(this.f4714i, mode);
            }
            int intrinsicWidth = this.f4715j;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.f4714i.getIntrinsicWidth();
            }
            int intrinsicHeight = this.f4715j;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.f4714i.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f4714i;
            int i6 = this.f4716k;
            int i10 = this.f4717l;
            drawable2.setBounds(i6, i10, intrinsicWidth + i6, intrinsicHeight + i10);
            this.f4714i.setVisible(true, z7);
        }
        if (z7) {
            c();
            return;
        }
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        Drawable drawable3 = compoundDrawablesRelative[0];
        Drawable drawable4 = compoundDrawablesRelative[1];
        Drawable drawable5 = compoundDrawablesRelative[2];
        int i11 = this.f4721p;
        if (((i11 == 1 || i11 == 2) && drawable3 != this.f4714i) || (((i11 == 3 || i11 == 4) && drawable5 != this.f4714i) || ((i11 == 16 || i11 == 32) && drawable4 != this.f4714i))) {
            c();
        }
    }

    public final void e(int i6, int i10) {
        if (this.f4714i == null || getLayout() == null) {
            return;
        }
        int i11 = this.f4721p;
        if (!(i11 == 1 || i11 == 2) && i11 != 3 && i11 != 4) {
            if (i11 == 16 || i11 == 32) {
                this.f4716k = 0;
                if (i11 == 16) {
                    this.f4717l = 0;
                    d(false);
                    return;
                }
                int intrinsicHeight = this.f4715j;
                if (intrinsicHeight == 0) {
                    intrinsicHeight = this.f4714i.getIntrinsicHeight();
                }
                int textHeight = (((((i10 - getTextHeight()) - getPaddingTop()) - intrinsicHeight) - this.f4718m) - getPaddingBottom()) / 2;
                if (this.f4717l != textHeight) {
                    this.f4717l = textHeight;
                    d(false);
                    return;
                }
                return;
            }
            return;
        }
        this.f4717l = 0;
        Layout.Alignment actualTextAlignment = getActualTextAlignment();
        int i12 = this.f4721p;
        if (i12 == 1 || i12 == 3 || ((i12 == 2 && actualTextAlignment == Layout.Alignment.ALIGN_NORMAL) || (i12 == 4 && actualTextAlignment == Layout.Alignment.ALIGN_OPPOSITE))) {
            this.f4716k = 0;
            d(false);
            return;
        }
        int intrinsicWidth = this.f4715j;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.f4714i.getIntrinsicWidth();
        }
        int textWidth = i6 - getTextWidth();
        WeakHashMap weakHashMap = s0.f8353a;
        int paddingEnd = (((textWidth - getPaddingEnd()) - intrinsicWidth) - this.f4718m) - getPaddingStart();
        if (actualTextAlignment == Layout.Alignment.ALIGN_CENTER) {
            paddingEnd /= 2;
        }
        if ((getLayoutDirection() == 1) != (this.f4721p == 4)) {
            paddingEnd = -paddingEnd;
        }
        if (this.f4716k != paddingEnd) {
            this.f4716k = paddingEnd;
            d(false);
        }
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (b()) {
            return this.d.f4738g;
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f4714i;
    }

    public int getIconGravity() {
        return this.f4721p;
    }

    public int getIconPadding() {
        return this.f4718m;
    }

    public int getIconSize() {
        return this.f4715j;
    }

    public ColorStateList getIconTint() {
        return this.f4713h;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f4712g;
    }

    public int getInsetBottom() {
        return this.d.f;
    }

    public int getInsetTop() {
        return this.d.f4737e;
    }

    public ColorStateList getRippleColor() {
        if (b()) {
            return this.d.f4743l;
        }
        return null;
    }

    public m getShapeAppearanceModel() {
        if (b()) {
            return this.d.f4735b;
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (b()) {
            return this.d.f4742k;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (b()) {
            return this.d.f4739h;
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public ColorStateList getSupportBackgroundTintList() {
        return b() ? this.d.f4741j : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return b() ? this.d.f4740i : super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f4719n;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (b()) {
            o9.d.D(this, this.d.b(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i6) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i6 + 2);
        if (a()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f4709q);
        }
        if (this.f4719n) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f4710r);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(this.f4719n);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(a());
        accessibilityNodeInfo.setChecked(this.f4719n);
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        c cVar;
        super.onLayout(z7, i6, i10, i11, i12);
        if (Build.VERSION.SDK_INT == 21 && (cVar = this.d) != null) {
            int i13 = i12 - i10;
            int i14 = i11 - i6;
            Drawable drawable = cVar.f4744m;
            if (drawable != null) {
                drawable.setBounds(cVar.f4736c, cVar.f4737e, i14 - cVar.d, i13 - cVar.f);
            }
        }
        e(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f1319a);
        setChecked(savedState.f4722c);
    }

    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f4722c = this.f4719n;
        return savedState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i6, int i10, int i11) {
        super.onTextChanged(charSequence, i6, i10, i11);
        e(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean performClick() {
        toggle();
        return super.performClick();
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.f4714i != null) {
            if (this.f4714i.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i6) {
        if (!b()) {
            super.setBackgroundColor(i6);
            return;
        }
        c cVar = this.d;
        if (cVar.b(false) != null) {
            cVar.b(false).setTint(i6);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!b()) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
            return;
        }
        Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
        c cVar = this.d;
        cVar.f4746o = true;
        ColorStateList colorStateList = cVar.f4741j;
        MaterialButton materialButton = cVar.f4734a;
        materialButton.setSupportBackgroundTintList(colorStateList);
        materialButton.setSupportBackgroundTintMode(cVar.f4740i);
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(int i6) {
        setBackgroundDrawable(i6 != 0 ? com.bumptech.glide.c.h(getContext(), i6) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z7) {
        if (b()) {
            this.d.f4748q = z7;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z7) {
        if (a() && isEnabled() && this.f4719n != z7) {
            this.f4719n = z7;
            refreshDrawableState();
            if (getParent() instanceof MaterialButtonToggleGroup) {
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) getParent();
                boolean z10 = this.f4719n;
                if (!materialButtonToggleGroup.f) {
                    materialButtonToggleGroup.b(getId(), z10);
                }
            }
            if (this.f4720o) {
                return;
            }
            this.f4720o = true;
            Iterator it = this.f4711e.iterator();
            if (it.hasNext()) {
                throw a.e.l(it);
            }
            this.f4720o = false;
        }
    }

    public void setCornerRadius(int i6) {
        if (b()) {
            c cVar = this.d;
            if (cVar.f4747p && cVar.f4738g == i6) {
                return;
            }
            cVar.f4738g = i6;
            cVar.f4747p = true;
            l lVarF = cVar.f4735b.f();
            lVarF.c(i6);
            cVar.c(lVarF.a());
        }
    }

    public void setCornerRadiusResource(int i6) {
        if (b()) {
            setCornerRadius(getResources().getDimensionPixelSize(i6));
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        if (b()) {
            this.d.b(false).m(f);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.f4714i != drawable) {
            this.f4714i = drawable;
            d(true);
            e(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i6) {
        if (this.f4721p != i6) {
            this.f4721p = i6;
            e(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i6) {
        if (this.f4718m != i6) {
            this.f4718m = i6;
            setCompoundDrawablePadding(i6);
        }
    }

    public void setIconResource(int i6) {
        setIcon(i6 != 0 ? com.bumptech.glide.c.h(getContext(), i6) : null);
    }

    public void setIconSize(int i6) {
        if (i6 < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.f4715j != i6) {
            this.f4715j = i6;
            d(true);
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f4713h != colorStateList) {
            this.f4713h = colorStateList;
            d(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f4712g != mode) {
            this.f4712g = mode;
            d(false);
        }
    }

    public void setIconTintResource(int i6) {
        setIconTint(u7.d.k(getContext(), i6));
    }

    public void setInsetBottom(int i6) {
        c cVar = this.d;
        cVar.d(cVar.f4737e, i6);
    }

    public void setInsetTop(int i6) {
        c cVar = this.d;
        cVar.d(i6, cVar.f);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(a aVar) {
        this.f = aVar;
    }

    @Override // android.view.View
    public void setPressed(boolean z7) {
        a aVar = this.f;
        if (aVar != null) {
            ((MaterialButtonToggleGroup) ((a0.b) aVar).f32b).invalidate();
        }
        super.setPressed(z7);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (b()) {
            c cVar = this.d;
            if (cVar.f4743l != colorStateList) {
                cVar.f4743l = colorStateList;
                boolean z7 = c.f4732t;
                MaterialButton materialButton = cVar.f4734a;
                if (z7 && (materialButton.getBackground() instanceof RippleDrawable)) {
                    ((RippleDrawable) materialButton.getBackground()).setColor(s6.c.b(colorStateList));
                } else {
                    if (z7 || !(materialButton.getBackground() instanceof s6.b)) {
                        return;
                    }
                    ((s6.b) materialButton.getBackground()).setTintList(s6.c.b(colorStateList));
                }
            }
        }
    }

    public void setRippleColorResource(int i6) {
        if (b()) {
            setRippleColor(u7.d.k(getContext(), i6));
        }
    }

    @Override // u6.x
    public void setShapeAppearanceModel(m mVar) {
        if (!b()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.d.c(mVar);
    }

    public void setShouldDrawSurfaceColorStroke(boolean z7) {
        if (b()) {
            c cVar = this.d;
            cVar.f4745n = z7;
            cVar.f();
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (b()) {
            c cVar = this.d;
            if (cVar.f4742k != colorStateList) {
                cVar.f4742k = colorStateList;
                cVar.f();
            }
        }
    }

    public void setStrokeColorResource(int i6) {
        if (b()) {
            setStrokeColor(u7.d.k(getContext(), i6));
        }
    }

    public void setStrokeWidth(int i6) {
        if (b()) {
            c cVar = this.d;
            if (cVar.f4739h != i6) {
                cVar.f4739h = i6;
                cVar.f();
            }
        }
    }

    public void setStrokeWidthResource(int i6) {
        if (b()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i6));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (!b()) {
            super.setSupportBackgroundTintList(colorStateList);
            return;
        }
        c cVar = this.d;
        if (cVar.f4741j != colorStateList) {
            cVar.f4741j = colorStateList;
            if (cVar.b(false) != null) {
                g0.a.h(cVar.b(false), cVar.f4741j);
            }
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (!b()) {
            super.setSupportBackgroundTintMode(mode);
            return;
        }
        c cVar = this.d;
        if (cVar.f4740i != mode) {
            cVar.f4740i = mode;
            if (cVar.b(false) == null || cVar.f4740i == null) {
                return;
            }
            g0.a.i(cVar.b(false), cVar.f4740i);
        }
    }

    @Override // android.view.View
    public void setTextAlignment(int i6) {
        super.setTextAlignment(i6);
        e(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f4719n);
    }

    public MaterialButton(Context context, AttributeSet attributeSet, int i6) {
        super(y6.a.a(context, attributeSet, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_Button), attributeSet, i6);
        this.f4711e = new LinkedHashSet();
        this.f4719n = false;
        this.f4720o = false;
        Context context2 = getContext();
        TypedArray typedArrayJ = a0.j(context2, attributeSet, x5.a.f11044y, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_Button, new int[0]);
        this.f4718m = typedArrayJ.getDimensionPixelSize(12, 0);
        int i10 = typedArrayJ.getInt(15, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.f4712g = a0.l(i10, mode);
        this.f4713h = com.bumptech.glide.d.k(getContext(), typedArrayJ, 14);
        this.f4714i = com.bumptech.glide.d.n(getContext(), typedArrayJ, 10);
        this.f4721p = typedArrayJ.getInteger(11, 1);
        this.f4715j = typedArrayJ.getDimensionPixelSize(13, 0);
        c cVar = new c(this, m.b(context2, attributeSet, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_Button).a());
        this.d = cVar;
        cVar.f4736c = typedArrayJ.getDimensionPixelOffset(1, 0);
        cVar.d = typedArrayJ.getDimensionPixelOffset(2, 0);
        cVar.f4737e = typedArrayJ.getDimensionPixelOffset(3, 0);
        cVar.f = typedArrayJ.getDimensionPixelOffset(4, 0);
        if (typedArrayJ.hasValue(8)) {
            int dimensionPixelSize = typedArrayJ.getDimensionPixelSize(8, -1);
            cVar.f4738g = dimensionPixelSize;
            l lVarF = cVar.f4735b.f();
            lVarF.c(dimensionPixelSize);
            cVar.c(lVarF.a());
            cVar.f4747p = true;
        }
        cVar.f4739h = typedArrayJ.getDimensionPixelSize(20, 0);
        cVar.f4740i = a0.l(typedArrayJ.getInt(7, -1), mode);
        cVar.f4741j = com.bumptech.glide.d.k(getContext(), typedArrayJ, 6);
        cVar.f4742k = com.bumptech.glide.d.k(getContext(), typedArrayJ, 19);
        cVar.f4743l = com.bumptech.glide.d.k(getContext(), typedArrayJ, 16);
        cVar.f4748q = typedArrayJ.getBoolean(5, false);
        cVar.f4750s = typedArrayJ.getDimensionPixelSize(9, 0);
        WeakHashMap weakHashMap = s0.f8353a;
        int paddingStart = getPaddingStart();
        int paddingTop = getPaddingTop();
        int paddingEnd = getPaddingEnd();
        int paddingBottom = getPaddingBottom();
        if (typedArrayJ.hasValue(0)) {
            cVar.f4746o = true;
            setSupportBackgroundTintList(cVar.f4741j);
            setSupportBackgroundTintMode(cVar.f4740i);
        } else {
            cVar.e();
        }
        setPaddingRelative(paddingStart + cVar.f4736c, paddingTop + cVar.f4737e, paddingEnd + cVar.d, paddingBottom + cVar.f);
        typedArrayJ.recycle();
        setCompoundDrawablePadding(this.f4718m);
        d(this.f4714i != null);
    }
}
