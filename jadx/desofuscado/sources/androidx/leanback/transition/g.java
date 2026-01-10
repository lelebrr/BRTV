package androidx.leanback.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.transition.Transition;
import android.view.View;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g extends AnimatorListenerAdapter implements Transition.TransitionListener {

    /* renamed from: a, reason: collision with root package name */
    public final View f1597a;

    /* renamed from: b, reason: collision with root package name */
    public final View f1598b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1599c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public int[] f1600e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f1601g;

    /* renamed from: h, reason: collision with root package name */
    public final float f1602h;

    /* renamed from: i, reason: collision with root package name */
    public final float f1603i;

    public g(View view, View view2, int i6, int i10, float f, float f3) {
        this.f1598b = view;
        this.f1597a = view2;
        this.f1599c = i6 - Math.round(view.getTranslationX());
        this.d = i10 - Math.round(view.getTranslationY());
        this.f1602h = f;
        this.f1603i = f3;
        int[] iArr = (int[]) view2.getTag(R.id.transitionPosition);
        this.f1600e = iArr;
        if (iArr != null) {
            view2.setTag(R.id.transitionPosition, null);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        if (this.f1600e == null) {
            this.f1600e = new int[2];
        }
        int[] iArr = this.f1600e;
        float f = this.f1599c;
        View view = this.f1598b;
        iArr[0] = Math.round(view.getTranslationX() + f);
        this.f1600e[1] = Math.round(view.getTranslationY() + this.d);
        this.f1597a.setTag(R.id.transitionPosition, this.f1600e);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationPause(Animator animator) {
        View view = this.f1598b;
        this.f = view.getTranslationX();
        this.f1601g = view.getTranslationY();
        view.setTranslationX(this.f1602h);
        view.setTranslationY(this.f1603i);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationResume(Animator animator) {
        float f = this.f;
        View view = this.f1598b;
        view.setTranslationX(f);
        view.setTranslationY(this.f1601g);
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        float f = this.f1602h;
        View view = this.f1598b;
        view.setTranslationX(f);
        view.setTranslationY(this.f1603i);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionStart(Transition transition) {
    }
}
