package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2839a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p1 f2840b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f2841c;
    public final /* synthetic */ ViewPropertyAnimator d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ k f2842e;

    public f(k kVar, p1 p1Var, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f2842e = kVar;
        this.f2840b = p1Var;
        this.d = viewPropertyAnimator;
        this.f2841c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f2839a) {
            case 1:
                this.f2841c.setAlpha(1.0f);
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f2839a) {
            case 0:
                this.d.setListener(null);
                this.f2841c.setAlpha(1.0f);
                k kVar = this.f2842e;
                p1 p1Var = this.f2840b;
                kVar.c(p1Var);
                kVar.f2881q.remove(p1Var);
                kVar.i();
                break;
            default:
                this.d.setListener(null);
                k kVar2 = this.f2842e;
                p1 p1Var2 = this.f2840b;
                kVar2.c(p1Var2);
                kVar2.f2879o.remove(p1Var2);
                kVar2.i();
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f2839a) {
            case 0:
                this.f2842e.getClass();
                break;
            default:
                this.f2842e.getClass();
                break;
        }
    }

    public f(k kVar, p1 p1Var, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.f2842e = kVar;
        this.f2840b = p1Var;
        this.f2841c = view;
        this.d = viewPropertyAnimator;
    }
}
