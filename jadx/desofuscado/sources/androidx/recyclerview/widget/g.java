package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p1 f2843a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2844b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f2845c;
    public final /* synthetic */ int d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f2846e;
    public final /* synthetic */ k f;

    public g(k kVar, p1 p1Var, int i6, View view, int i10, ViewPropertyAnimator viewPropertyAnimator) {
        this.f = kVar;
        this.f2843a = p1Var;
        this.f2844b = i6;
        this.f2845c = view;
        this.d = i10;
        this.f2846e = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        int i6 = this.f2844b;
        View view = this.f2845c;
        if (i6 != 0) {
            view.setTranslationX(0.0f);
        }
        if (this.d != 0) {
            view.setTranslationY(0.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f2846e.setListener(null);
        k kVar = this.f;
        p1 p1Var = this.f2843a;
        kVar.c(p1Var);
        kVar.f2880p.remove(p1Var);
        kVar.i();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f.getClass();
    }
}
