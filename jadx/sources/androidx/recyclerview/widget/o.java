package androidx.recyclerview.widget;

import android.animation.ValueAnimator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f2903a;

    public o(p pVar) {
        this.f2903a = pVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
        p pVar = this.f2903a;
        pVar.f2911c.setAlpha(iFloatValue);
        pVar.d.setAlpha(iFloatValue);
        pVar.f2925s.invalidate();
    }
}
