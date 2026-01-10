package com.google.android.material.slider;

import android.animation.ValueAnimator;
import java.util.Iterator;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseSlider f5211a;

    public b(BaseSlider baseSlider) {
        this.f5211a = baseSlider;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        BaseSlider baseSlider = this.f5211a;
        Iterator it = baseSlider.f5184k.iterator();
        while (it.hasNext()) {
            z6.a aVar = (z6.a) it.next();
            aVar.L = 1.2f;
            aVar.J = fFloatValue;
            aVar.K = fFloatValue;
            aVar.M = y5.a.b(0.0f, 1.0f, 0.19f, 1.0f, fFloatValue);
            aVar.invalidateSelf();
        }
        WeakHashMap weakHashMap = s0.f8353a;
        baseSlider.postInvalidateOnAnimation();
    }
}
