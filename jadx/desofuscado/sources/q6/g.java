package q6;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9259a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h f9260b;

    public /* synthetic */ g(h hVar, int i6) {
        this.f9259a = i6;
        this.f9260b = hVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        switch (this.f9259a) {
            case 1:
                super.onAnimationEnd(animator);
                h hVar = this.f9260b;
                hVar.a();
                c cVar = hVar.f9271k;
                if (cVar != null) {
                    cVar.a();
                    break;
                }
                break;
            default:
                super.onAnimationEnd(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        switch (this.f9259a) {
            case 0:
                super.onAnimationRepeat(animator);
                h hVar = this.f9260b;
                hVar.f9268h = (hVar.f9268h + 4) % hVar.f9267g.f9255c.length;
                break;
            default:
                super.onAnimationRepeat(animator);
                break;
        }
    }
}
