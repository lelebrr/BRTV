package com.google.android.material.radiobutton;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.core.widget.b;
import com.bumptech.glide.d;
import com.google.android.material.internal.a0;
import o9.e;
import y6.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MaterialRadioButton extends AppCompatRadioButton {

    /* renamed from: g, reason: collision with root package name */
    public static final int[][] f5171g = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* renamed from: e, reason: collision with root package name */
    public ColorStateList f5172e;
    public boolean f;

    public MaterialRadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.p2elite.brtv2.R.attr.radioButtonStyle);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f5172e == null) {
            int iP = e.p(com.p2elite.brtv2.R.attr.colorControlActivated, this);
            int iP2 = e.p(com.p2elite.brtv2.R.attr.colorOnSurface, this);
            int iP3 = e.p(com.p2elite.brtv2.R.attr.colorSurface, this);
            this.f5172e = new ColorStateList(f5171g, new int[]{e.x(1.0f, iP3, iP), e.x(0.54f, iP3, iP2), e.x(0.38f, iP3, iP2), e.x(0.38f, iP3, iP2)});
        }
        return this.f5172e;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f && b.a(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z7) {
        this.f = z7;
        if (z7) {
            b.c(this, getMaterialThemeColorsTintList());
        } else {
            b.c(this, null);
        }
    }

    public MaterialRadioButton(Context context, AttributeSet attributeSet, int i6) {
        super(a.a(context, attributeSet, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_CompoundButton_RadioButton), attributeSet, i6);
        Context context2 = getContext();
        TypedArray typedArrayJ = a0.j(context2, attributeSet, x5.a.F, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_CompoundButton_RadioButton, new int[0]);
        if (typedArrayJ.hasValue(0)) {
            b.c(this, d.k(context2, typedArrayJ, 0));
        }
        this.f = typedArrayJ.getBoolean(1, false);
        typedArrayJ.recycle();
    }
}
