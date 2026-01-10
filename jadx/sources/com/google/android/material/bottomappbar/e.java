package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.appcompat.widget.ActionMenuView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public boolean f4669a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActionMenuView f4670b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4671c;
    public final /* synthetic */ boolean d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ BottomAppBar f4672e;

    public e(BottomAppBar bottomAppBar, ActionMenuView actionMenuView, int i6, boolean z7) {
        this.f4672e = bottomAppBar;
        this.f4670b = actionMenuView;
        this.f4671c = i6;
        this.d = z7;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f4669a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.f4669a) {
            return;
        }
        BottomAppBar bottomAppBar = this.f4672e;
        bottomAppBar.getClass();
        bottomAppBar.K(this.f4670b, this.f4671c, this.d, false);
    }
}
