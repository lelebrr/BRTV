package a6;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.transition.Transition;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.textfield.m;
import com.google.android.material.transformation.ExpandableTransformationBehavior;
import java.util.WeakHashMap;
import n0.s0;
import q6.q;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f151a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f152b;

    public /* synthetic */ a(int i6, Object obj) {
        this.f151a = i6;
        this.f152b = obj;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f151a) {
            case 2:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.f152b;
                actionBarOverlayLayout.f462w = null;
                actionBarOverlayLayout.f450k = false;
                break;
            case 5:
                ((l6.b) this.f152b).d();
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        Object obj = this.f152b;
        switch (this.f151a) {
            case 0:
                ((HideBottomViewOnScrollBehavior) obj).d = null;
                break;
            case 1:
                ((ExpandableTransformationBehavior) obj).f5414b = null;
                break;
            case 2:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) obj;
                actionBarOverlayLayout.f462w = null;
                actionBarOverlayLayout.f450k = false;
                break;
            case 3:
                a1.b bVar = (a1.b) obj;
                if (((ValueAnimator) bVar.f48c) == animator) {
                    bVar.f48c = null;
                    break;
                }
                break;
            case 4:
                m mVar = (m) obj;
                mVar.f5345c.setChecked(mVar.f5336m);
                mVar.f5342s.start();
                break;
            case 5:
                ((l6.b) obj).e();
                break;
            case 6:
            default:
                super.onAnimationEnd(animator);
                break;
            case 7:
                WeakHashMap weakHashMap = s0.f8353a;
                ((View) obj).setClipBounds(null);
                break;
            case 8:
                ((Transition) obj).l();
                animator.removeListener(this);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        switch (this.f151a) {
            case 6:
                super.onAnimationRepeat(animator);
                q qVar = (q) this.f152b;
                qVar.f9300g = (qVar.f9300g + 1) % qVar.f.f9255c.length;
                qVar.f9301h = true;
                break;
            default:
                super.onAnimationRepeat(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f151a) {
            case 5:
                ((l6.b) this.f152b).f(animator);
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }
}
