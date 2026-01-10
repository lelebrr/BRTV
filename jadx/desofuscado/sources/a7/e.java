package a7;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f166a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f6.e f167b;

    public /* synthetic */ e(f6.e eVar, int i6) {
        this.f166a = i6;
        this.f167b = eVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f166a) {
            case 0:
                f6.e eVar = this.f167b;
                f6.d revealInfo = eVar.getRevealInfo();
                revealInfo.f6793c = Float.MAX_VALUE;
                eVar.setRevealInfo(revealInfo);
                break;
            default:
                this.f167b.c();
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f166a) {
            case 1:
                this.f167b.e();
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }
}
