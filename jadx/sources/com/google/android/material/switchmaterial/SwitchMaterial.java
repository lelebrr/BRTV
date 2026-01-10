package com.google.android.material.switchmaterial;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.appcompat.widget.SwitchCompat;
import com.google.android.material.internal.a0;
import j6.a;
import java.util.WeakHashMap;
import n0.g0;
import n0.s0;
import o9.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class SwitchMaterial extends SwitchCompat {

    /* renamed from: b0, reason: collision with root package name */
    public static final int[][] f5222b0 = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};
    public final a T;
    public ColorStateList U;
    public ColorStateList V;
    public boolean W;

    public SwitchMaterial(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.p2elite.brtv2.R.attr.switchStyle);
    }

    private ColorStateList getMaterialThemeColorsThumbTintList() throws Resources.NotFoundException {
        if (this.U == null) {
            int iP = e.p(com.p2elite.brtv2.R.attr.colorSurface, this);
            int iP2 = e.p(com.p2elite.brtv2.R.attr.colorControlActivated, this);
            float dimension = getResources().getDimension(com.p2elite.brtv2.R.dimen.mtrl_switch_thumb_elevation);
            a aVar = this.T;
            if (aVar.f7437a) {
                float fI = 0.0f;
                for (ViewParent parent = getParent(); parent instanceof View; parent = parent.getParent()) {
                    WeakHashMap weakHashMap = s0.f8353a;
                    fI += g0.i((View) parent);
                }
                dimension += fI;
            }
            int iA = aVar.a(iP, dimension);
            this.U = new ColorStateList(f5222b0, new int[]{e.x(1.0f, iP, iP2), iA, e.x(0.38f, iP, iP2), iA});
        }
        return this.U;
    }

    private ColorStateList getMaterialThemeColorsTrackTintList() {
        if (this.V == null) {
            int iP = e.p(com.p2elite.brtv2.R.attr.colorSurface, this);
            int iP2 = e.p(com.p2elite.brtv2.R.attr.colorControlActivated, this);
            int iP3 = e.p(com.p2elite.brtv2.R.attr.colorOnSurface, this);
            this.V = new ColorStateList(f5222b0, new int[]{e.x(0.54f, iP, iP2), e.x(0.32f, iP, iP3), e.x(0.12f, iP, iP2), e.x(0.12f, iP, iP3)});
        }
        return this.V;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.W && getThumbTintList() == null) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
        }
        if (this.W && getTrackTintList() == null) {
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        }
    }

    public void setUseMaterialThemeColors(boolean z7) {
        this.W = z7;
        if (z7) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        } else {
            setThumbTintList(null);
            setTrackTintList(null);
        }
    }

    public SwitchMaterial(Context context, AttributeSet attributeSet, int i6) {
        super(y6.a.a(context, attributeSet, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_CompoundButton_Switch), attributeSet, i6);
        Context context2 = getContext();
        this.T = new a(context2);
        int[] iArr = x5.a.W;
        a0.a(context2, attributeSet, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_CompoundButton_Switch);
        a0.b(context2, attributeSet, iArr, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_CompoundButton_Switch, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_CompoundButton_Switch);
        this.W = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
    }
}
