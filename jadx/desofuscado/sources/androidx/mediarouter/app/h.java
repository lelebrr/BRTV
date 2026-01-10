package androidx.mediarouter.app;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import java.util.HashSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u f2605a;

    public h(u uVar) {
        this.f2605a = uVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        u uVar = this.f2605a;
        uVar.D.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        HashSet hashSet = uVar.G;
        if (hashSet == null || hashSet.size() == 0) {
            uVar.m(true);
            return;
        }
        o oVar = new o(1, uVar);
        int firstVisiblePosition = uVar.D.getFirstVisiblePosition();
        boolean z7 = false;
        for (int i6 = 0; i6 < uVar.D.getChildCount(); i6++) {
            View childAt = uVar.D.getChildAt(i6);
            if (uVar.G.contains((q1.s0) uVar.E.getItem(firstVisiblePosition + i6))) {
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation.setDuration(uVar.i0);
                alphaAnimation.setFillEnabled(true);
                alphaAnimation.setFillAfter(true);
                if (!z7) {
                    alphaAnimation.setAnimationListener(oVar);
                    z7 = true;
                }
                childAt.clearAnimation();
                childAt.startAnimation(alphaAnimation);
            }
        }
    }
}
