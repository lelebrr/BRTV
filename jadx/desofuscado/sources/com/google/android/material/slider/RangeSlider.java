package com.google.android.material.slider;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.widget.SeekBar;
import com.google.android.material.internal.a0;
import com.p2elite.brtv2.R;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class RangeSlider extends BaseSlider<RangeSlider, Object, Object> {

    /* renamed from: e0, reason: collision with root package name */
    public float f5204e0;

    /* renamed from: f0, reason: collision with root package name */
    public int f5205f0;

    /* compiled from: MyApplication */
    public static class RangeSliderState extends AbsSavedState {
        public static final Parcelable.Creator<RangeSliderState> CREATOR = new h();

        /* renamed from: a, reason: collision with root package name */
        public float f5206a;

        /* renamed from: b, reason: collision with root package name */
        public int f5207b;

        public RangeSliderState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i6) {
            super.writeToParcel(parcel, i6);
            parcel.writeFloat(this.f5206a);
            parcel.writeInt(this.f5207b);
        }

        public RangeSliderState(Parcel parcel) {
            super(parcel.readParcelable(RangeSliderState.class.getClassLoader()));
            this.f5206a = parcel.readFloat();
            this.f5207b = parcel.readInt();
        }
    }

    public RangeSlider(Context context, AttributeSet attributeSet) {
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

    @Override // com.google.android.material.slider.BaseSlider
    public float getMinSeparation() {
        return this.f5204e0;
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

    @Override // com.google.android.material.slider.BaseSlider
    public float getValueFrom() {
        return this.E;
    }

    @Override // com.google.android.material.slider.BaseSlider
    public float getValueTo() {
        return this.F;
    }

    @Override // com.google.android.material.slider.BaseSlider
    public List<Float> getValues() {
        return super.getValues();
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        RangeSliderState rangeSliderState = (RangeSliderState) parcelable;
        super.onRestoreInstanceState(rangeSliderState.getSuperState());
        this.f5204e0 = rangeSliderState.f5206a;
        int i6 = rangeSliderState.f5207b;
        this.f5205f0 = i6;
        setSeparationUnit(i6);
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public final Parcelable onSaveInstanceState() {
        RangeSliderState rangeSliderState = new RangeSliderState(super.onSaveInstanceState());
        rangeSliderState.f5206a = this.f5204e0;
        rangeSliderState.f5207b = this.f5205f0;
        return rangeSliderState;
    }

    @Override // com.google.android.material.slider.BaseSlider
    public void setCustomThumbDrawable(Drawable drawable) {
        super.setCustomThumbDrawable(drawable);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public void setCustomThumbDrawablesForValues(int... iArr) {
        super.setCustomThumbDrawablesForValues(iArr);
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

    public void setMinSeparation(float f) {
        this.f5204e0 = f;
        this.f5205f0 = 0;
        setSeparationUnit(0);
    }

    public void setMinSeparationValue(float f) {
        this.f5204e0 = f;
        this.f5205f0 = 1;
        setSeparationUnit(1);
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

    @Override // com.google.android.material.slider.BaseSlider
    public void setValues(Float... fArr) {
        super.setValues(fArr);
    }

    public RangeSlider(Context context, AttributeSet attributeSet, int i6) throws Resources.NotFoundException {
        super(context, attributeSet, i6);
        TypedArray typedArrayJ = a0.j(context, attributeSet, x5.a.P, i6, R.style.Widget_MaterialComponents_Slider, new int[0]);
        if (typedArrayJ.hasValue(1)) {
            TypedArray typedArrayObtainTypedArray = typedArrayJ.getResources().obtainTypedArray(typedArrayJ.getResourceId(1, 0));
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < typedArrayObtainTypedArray.length(); i10++) {
                arrayList.add(Float.valueOf(typedArrayObtainTypedArray.getFloat(i10, -1.0f)));
            }
            setValues(arrayList);
        }
        this.f5204e0 = typedArrayJ.getDimension(0, 0.0f);
        typedArrayJ.recycle();
    }

    public void setCustomThumbDrawable(int i6) {
        setCustomThumbDrawable(getResources().getDrawable(i6));
    }

    @Override // com.google.android.material.slider.BaseSlider
    public void setCustomThumbDrawablesForValues(Drawable... drawableArr) {
        super.setCustomThumbDrawablesForValues(drawableArr);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public void setValues(List<Float> list) {
        super.setValues(list);
    }

    public /* bridge */ /* synthetic */ void setLabelFormatter(g gVar) {
    }
}
