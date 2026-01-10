package com.google.android.material.textfield;

import android.animation.ValueAnimator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5311a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f5312b;

    public /* synthetic */ d(e eVar, int i6) {
        this.f5311a = i6;
        this.f5312b = eVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f5311a) {
            case 0:
                this.f5312b.f5345c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            default:
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                e eVar = this.f5312b;
                eVar.f5345c.setScaleX(fFloatValue);
                eVar.f5345c.setScaleY(fFloatValue);
                break;
        }
    }
}
