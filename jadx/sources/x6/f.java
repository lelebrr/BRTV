package x6;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class f extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11052a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f11053b;

    public f(g gVar, int i6) {
        this.f11053b = gVar;
        this.f11052a = i6;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f11053b.f11055b = this.f11052a;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f11053b.f11055b = this.f11052a;
    }
}
