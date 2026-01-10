package com.google.android.material.slider;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import com.p2elite.brtv2.R;
import java.lang.reflect.InvocationTargetException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class Slider extends BaseSlider<Slider, Object, Object> {
    public Slider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.sliderStyle);
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    public int getActiveThumbIndex() {
        return this.H;
    }

    public int getFocusedThumbIndex() {
        return this.I;
    }

    public int getHaloRadius() {
        return this.f5199z;
    }

    public ColorStateList getHaloTintList() {
        return this.P;
    }

    public int getLabelBehavior() {
        return this.f5194u;
    }

    public float getStepSize() {
        return this.J;
    }

    public float getThumbElevation() {
        return this.U.f10367a.f10360m;
    }

    public int getThumbRadius() {
        return this.f5198y;
    }

    public ColorStateList getThumbStrokeColor() {
        return this.U.f10367a.d;
    }

    public float getThumbStrokeWidth() {
        return this.U.f10367a.f10357j;
    }

    public ColorStateList getThumbTintList() {
        return this.U.f10367a.f10352c;
    }

    public ColorStateList getTickActiveTintList() {
        return this.Q;
    }

    public ColorStateList getTickInactiveTintList() {
        return this.R;
    }

    public ColorStateList getTickTintList() {
        if (this.R.equals(this.Q)) {
            return this.Q;
        }
        throw new IllegalStateException("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
    }

    public ColorStateList getTrackActiveTintList() {
        return this.S;
    }

    public int getTrackHeight() {
        return this.f5195v;
    }

    public ColorStateList getTrackInactiveTintList() {
        return this.T;
    }

    public int getTrackSidePadding() {
        return this.f5196w;
    }

    public ColorStateList getTrackTintList() {
        if (this.T.equals(this.S)) {
            return this.S;
        }
        throw new IllegalStateException("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
    }

    public int getTrackWidth() {
        return this.M;
    }

    public float getValue() {
        return getValues().get(0).floatValue();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public float getValueFrom() {
        return this.E;
    }

    @Override // com.google.android.material.slider.BaseSlider
    public float getValueTo() {
        return this.F;
    }

    @Override // com.google.android.material.slider.BaseSlider
    public final boolean q() {
        if (getActiveThumbIndex() != -1) {
            return true;
        }
        setActiveThumbIndex(0);
        return true;
    }

    @Override // com.google.android.material.slider.BaseSlider
    public void setCustomThumbDrawable(Drawable drawable) {
        super.setCustomThumbDrawable(drawable);
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public /* bridge */ /* synthetic */ void setEnabled(boolean z7) {
        super.setEnabled(z7);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setFocusedThumbIndex(int i6) {
        super.setFocusedThumbIndex(i6);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setHaloRadius(int i6) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        super.setHaloRadius(i6);
    }

    public void setHaloRadiusResource(int i6) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        setHaloRadius(getResources().getDimensionPixelSize(i6));
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setHaloTintList(ColorStateList colorStateList) {
        super.setHaloTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setLabelBehavior(int i6) {
        super.setLabelBehavior(i6);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setStepSize(float f) {
        super.setStepSize(f);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbElevation(float f) {
        super.setThumbElevation(f);
    }

    public void setThumbElevationResource(int i6) {
        setThumbElevation(getResources().getDimension(i6));
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbRadius(int i6) {
        super.setThumbRadius(i6);
    }

    public void setThumbRadiusResource(int i6) {
        setThumbRadius(getResources().getDimensionPixelSize(i6));
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbStrokeColor(ColorStateList colorStateList) {
        super.setThumbStrokeColor(colorStateList);
    }

    public void setThumbStrokeColorResource(int i6) {
        if (i6 != 0) {
            setThumbStrokeColor(u7.d.k(getContext(), i6));
        }
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbStrokeWidth(float f) {
        super.setThumbStrokeWidth(f);
    }

    public void setThumbStrokeWidthResource(int i6) {
        if (i6 != 0) {
            setThumbStrokeWidth(getResources().getDimension(i6));
        }
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        u6.h hVar = this.U;
        if (colorStateList.equals(hVar.f10367a.f10352c)) {
            return;
        }
        hVar.n(colorStateList);
        invalidate();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTickActiveTintList(ColorStateList colorStateList) {
        super.setTickActiveTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTickInactiveTintList(ColorStateList colorStateList) {
        super.setTickInactiveTintList(colorStateList);
    }

    public void setTickTintList(ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    public void setTickVisible(boolean z7) {
        if (this.L != z7) {
            this.L = z7;
            postInvalidate();
        }
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackActiveTintList(ColorStateList colorStateList) {
        super.setTrackActiveTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackHeight(int i6) {
        super.setTrackHeight(i6);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackInactiveTintList(ColorStateList colorStateList) {
        super.setTrackInactiveTintList(colorStateList);
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValue(float f) {
        setValues(Float.valueOf(f));
    }

    public void setValueFrom(float f) {
        this.E = f;
        this.O = true;
        postInvalidate();
    }

    public void setValueTo(float f) {
        this.F = f;
        this.O = true;
        postInvalidate();
    }

    public Slider(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{android.R.attr.value});
        if (typedArrayObtainStyledAttributes.hasValue(0)) {
            setValue(typedArrayObtainStyledAttributes.getFloat(0, 0.0f));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setCustomThumbDrawable(int i6) {
        setCustomThumbDrawable(getResources().getDrawable(i6));
    }

    public /* bridge */ /* synthetic */ void setLabelFormatter(g gVar) {
    }
}
