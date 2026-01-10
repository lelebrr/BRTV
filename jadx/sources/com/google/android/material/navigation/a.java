package com.google.android.material.navigation;

import android.animation.ValueAnimator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ float f5102a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f5103b;

    public a(d dVar, float f) {
        this.f5103b = dVar;
        this.f5102a = f;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f5103b.b(((Float) valueAnimator.getAnimatedValue()).floatValue(), this.f5102a);
    }
}
