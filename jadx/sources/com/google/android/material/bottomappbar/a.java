package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4665a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BottomAppBar f4666b;

    public /* synthetic */ a(BottomAppBar bottomAppBar, int i6) {
        this.f4665a = i6;
        this.f4666b = bottomAppBar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        BottomAppBar bottomAppBar = this.f4666b;
        switch (this.f4665a) {
            case 1:
                int i6 = BottomAppBar.f4645r0;
                bottomAppBar.getClass();
                bottomAppBar.f4646b0 = null;
                break;
            case 2:
                int i10 = BottomAppBar.f4645r0;
                bottomAppBar.getClass();
                bottomAppBar.f4653j0 = false;
                bottomAppBar.f4647c0 = null;
                break;
            default:
                super.onAnimationEnd(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        BottomAppBar bottomAppBar = this.f4666b;
        switch (this.f4665a) {
            case 0:
                if (!bottomAppBar.f4653j0) {
                    bottomAppBar.G(bottomAppBar.f4648d0, bottomAppBar.f4654k0);
                    break;
                }
                break;
            case 1:
                int i6 = BottomAppBar.f4645r0;
                bottomAppBar.getClass();
                break;
            case 2:
                int i10 = BottomAppBar.f4645r0;
                bottomAppBar.getClass();
                break;
            default:
                bottomAppBar.f4659p0.onAnimationStart(animator);
                FloatingActionButton floatingActionButtonC = bottomAppBar.C();
                if (floatingActionButtonC != null) {
                    floatingActionButtonC.setTranslationX(bottomAppBar.getFabTranslationX());
                    break;
                }
                break;
        }
    }
}
