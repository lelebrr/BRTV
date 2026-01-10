package com.google.android.material.slider;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.ViewGroup;
import android.view.ViewOverlay;
import com.google.android.material.internal.a0;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseSlider f5212a;

    public c(BaseSlider baseSlider) {
        this.f5212a = baseSlider;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        BaseSlider baseSlider = this.f5212a;
        Iterator it = baseSlider.f5184k.iterator();
        while (it.hasNext()) {
            z6.a aVar = (z6.a) it.next();
            ViewGroup viewGroupF = a0.f(baseSlider);
            ((ViewOverlay) (viewGroupF == null ? null : new a0.b(viewGroupF)).f32b).remove(aVar);
        }
    }
}
