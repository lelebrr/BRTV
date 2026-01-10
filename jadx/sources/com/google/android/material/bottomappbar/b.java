package com.google.android.material.bottomappbar;

import android.animation.AnimatorSet;
import android.view.View;
import com.google.android.material.internal.d0;
import com.google.android.material.internal.e0;
import n0.r1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements d0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BottomAppBar f4667a;

    public /* synthetic */ b(BottomAppBar bottomAppBar) {
        this.f4667a = bottomAppBar;
    }

    @Override // com.google.android.material.internal.d0
    public r1 p(View view, r1 r1Var, e0 e0Var) {
        boolean z7;
        BottomAppBar bottomAppBar = this.f4667a;
        if (bottomAppBar.f4651g0) {
            bottomAppBar.f4656m0 = r1Var.a();
        }
        boolean z10 = false;
        if (bottomAppBar.f4652h0) {
            z7 = bottomAppBar.f4658o0 != r1Var.b();
            bottomAppBar.f4658o0 = r1Var.b();
        } else {
            z7 = false;
        }
        if (bottomAppBar.i0) {
            boolean z11 = bottomAppBar.f4657n0 != r1Var.c();
            bottomAppBar.f4657n0 = r1Var.c();
            z10 = z11;
        }
        if (z7 || z10) {
            AnimatorSet animatorSet = bottomAppBar.f4647c0;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = bottomAppBar.f4646b0;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            bottomAppBar.I();
            bottomAppBar.H();
        }
        return r1Var;
    }
}
