package q6;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9303a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f9304b;

    public /* synthetic */ r(s sVar, int i6) {
        this.f9303a = i6;
        this.f9304b = sVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        switch (this.f9303a) {
            case 1:
                super.onAnimationEnd(animator);
                s sVar = this.f9304b;
                sVar.a();
                c cVar = sVar.f9313k;
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
        switch (this.f9303a) {
            case 0:
                super.onAnimationRepeat(animator);
                s sVar = this.f9304b;
                sVar.f9310h = (sVar.f9310h + 1) % sVar.f9309g.f9255c.length;
                sVar.f9311i = true;
                break;
            default:
                super.onAnimationRepeat(animator);
                break;
        }
    }
}
