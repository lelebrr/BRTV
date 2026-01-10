package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2850a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f2851b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f2852c;
    public final /* synthetic */ View d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ k f2853e;

    public /* synthetic */ h(k kVar, i iVar, ViewPropertyAnimator viewPropertyAnimator, View view, int i6) {
        this.f2850a = i6;
        this.f2853e = kVar;
        this.f2851b = iVar;
        this.f2852c = viewPropertyAnimator;
        this.d = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f2850a) {
            case 0:
                this.f2852c.setListener(null);
                View view = this.d;
                view.setAlpha(1.0f);
                view.setTranslationX(0.0f);
                view.setTranslationY(0.0f);
                i iVar = this.f2851b;
                p1 p1Var = iVar.f2854a;
                k kVar = this.f2853e;
                kVar.c(p1Var);
                kVar.f2882r.remove(iVar.f2854a);
                kVar.i();
                break;
            default:
                this.f2852c.setListener(null);
                View view2 = this.d;
                view2.setAlpha(1.0f);
                view2.setTranslationX(0.0f);
                view2.setTranslationY(0.0f);
                i iVar2 = this.f2851b;
                p1 p1Var2 = iVar2.f2855b;
                k kVar2 = this.f2853e;
                kVar2.c(p1Var2);
                kVar2.f2882r.remove(iVar2.f2855b);
                kVar2.i();
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f2850a) {
            case 0:
                p1 p1Var = this.f2851b.f2854a;
                this.f2853e.getClass();
                break;
            default:
                p1 p1Var2 = this.f2851b.f2855b;
                this.f2853e.getClass();
                break;
        }
    }
}
