package com.google.android.material.checkbox;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.widget.b;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import com.google.android.material.internal.a0;
import g0.a;
import o9.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MaterialCheckBox extends AppCompatCheckBox {

    /* renamed from: h, reason: collision with root package name */
    public static final int[][] f4763h = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* renamed from: e, reason: collision with root package name */
    public ColorStateList f4764e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f4765g;

    public MaterialCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.p2elite.brtv2.R.attr.checkboxStyle);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f4764e == null) {
            int iP = e.p(com.p2elite.brtv2.R.attr.colorControlActivated, this);
            int iP2 = e.p(com.p2elite.brtv2.R.attr.colorSurface, this);
            int iP3 = e.p(com.p2elite.brtv2.R.attr.colorOnSurface, this);
            this.f4764e = new ColorStateList(f4763h, new int[]{e.x(1.0f, iP2, iP), e.x(0.54f, iP2, iP3), e.x(0.38f, iP2, iP3), e.x(0.38f, iP2, iP3)});
        }
        return this.f4764e;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f && b.a(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        Drawable drawableG;
        if (!this.f4765g || !TextUtils.isEmpty(getText()) || (drawableG = c.g(this)) == null) {
            super.onDraw(canvas);
            return;
        }
        int width = ((getWidth() - drawableG.getIntrinsicWidth()) / 2) * (a0.i(this) ? -1 : 1);
        int iSave = canvas.save();
        canvas.translate(width, 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(iSave);
        if (getBackground() != null) {
            Rect bounds = drawableG.getBounds();
            a.f(getBackground(), bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
        }
    }

    public void setCenterIfNoTextEnabled(boolean z7) {
        this.f4765g = z7;
    }

    public void setUseMaterialThemeColors(boolean z7) {
        this.f = z7;
        if (z7) {
            b.c(this, getMaterialThemeColorsTintList());
        } else {
            b.c(this, null);
        }
    }

    public MaterialCheckBox(Context context, AttributeSet attributeSet, int i6) {
        super(y6.a.a(context, attributeSet, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_CompoundButton_CheckBox), attributeSet, i6);
        Context context2 = getContext();
        TypedArray typedArrayJ = a0.j(context2, attributeSet, x5.a.D, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_CompoundButton_CheckBox, new int[0]);
        if (typedArrayJ.hasValue(0)) {
            b.c(this, d.k(context2, typedArrayJ, 0));
        }
        this.f = typedArrayJ.getBoolean(2, false);
        this.f4765g = typedArrayJ.getBoolean(1, true);
        typedArrayJ.recycle();
    }
}
