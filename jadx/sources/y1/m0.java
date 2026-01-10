package y1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Transition;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class m0 extends AnimatorListenerAdapter implements y {

    /* renamed from: a, reason: collision with root package name */
    public final View f11302a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11303b;

    /* renamed from: c, reason: collision with root package name */
    public final ViewGroup f11304c;

    /* renamed from: e, reason: collision with root package name */
    public boolean f11305e;
    public boolean f = false;
    public final boolean d = true;

    public m0(View view, int i6) {
        this.f11302a = view;
        this.f11303b = i6;
        this.f11304c = (ViewGroup) view.getParent();
        f(true);
    }

    @Override // y1.y
    public final void b() {
        f(false);
    }

    @Override // y1.y
    public final void c() {
        f(true);
    }

    @Override // y1.y
    public final void e(Transition transition) {
        if (!this.f) {
            g0.c(this.f11303b, this.f11302a);
            ViewGroup viewGroup = this.f11304c;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        f(false);
        transition.u(this);
    }

    public final void f(boolean z7) {
        ViewGroup viewGroup;
        if (!this.d || this.f11305e == z7 || (viewGroup = this.f11304c) == null) {
            return;
        }
        this.f11305e = z7;
        v.j(viewGroup, z7);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (!this.f) {
            g0.c(this.f11303b, this.f11302a);
            ViewGroup viewGroup = this.f11304c;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        f(false);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationPause(Animator animator) {
        if (this.f) {
            return;
        }
        g0.c(this.f11303b, this.f11302a);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationResume(Animator animator) {
        if (this.f) {
            return;
        }
        g0.c(0, this.f11302a);
    }

    @Override // y1.y
    public final void a() {
    }

    @Override // y1.y
    public final void d() {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
