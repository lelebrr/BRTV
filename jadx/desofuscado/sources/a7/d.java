package a7;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.drawable.Drawable;
import androidx.transition.Transition;
import n0.b1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f163a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f164b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f165c;

    public /* synthetic */ d(Object obj, int i6, Object obj2) {
        this.f163a = i6;
        this.f164b = obj;
        this.f165c = obj2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f163a) {
            case 1:
                ((b1) this.f164b).b();
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f163a) {
            case 0:
                ((f6.e) this.f164b).setCircularRevealOverlayDrawable(null);
                break;
            case 1:
                ((b1) this.f164b).a();
                break;
            default:
                ((p.e) this.f164b).remove(animator);
                ((Transition) this.f165c).f3024m.remove(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f163a) {
            case 0:
                ((f6.e) this.f164b).setCircularRevealOverlayDrawable((Drawable) this.f165c);
                break;
            case 1:
                ((b1) this.f164b).c();
                break;
            default:
                ((Transition) this.f165c).f3024m.add(animator);
                break;
        }
    }

    public d(Transition transition, p.e eVar) {
        this.f163a = 2;
        this.f165c = transition;
        this.f164b = eVar;
    }
}
