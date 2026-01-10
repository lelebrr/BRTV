package l6;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class p extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public boolean f8036a;

    /* renamed from: b, reason: collision with root package name */
    public float f8037b;

    /* renamed from: c, reason: collision with root package name */
    public float f8038c;
    public final /* synthetic */ s d;

    public p(s sVar) {
        this.d = sVar;
    }

    public abstract float a();

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        float f = (int) this.f8038c;
        u6.h hVar = this.d.f8040b;
        if (hVar != null) {
            hVar.m(f);
        }
        this.f8036a = false;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        boolean z7 = this.f8036a;
        s sVar = this.d;
        if (!z7) {
            u6.h hVar = sVar.f8040b;
            this.f8037b = hVar == null ? 0.0f : hVar.f10367a.f10360m;
            this.f8038c = a();
            this.f8036a = true;
        }
        float f = this.f8037b;
        float animatedFraction = (int) ((valueAnimator.getAnimatedFraction() * (this.f8038c - f)) + f);
        u6.h hVar2 = sVar.f8040b;
        if (hVar2 != null) {
            hVar2.m(animatedFraction);
        }
    }
}
