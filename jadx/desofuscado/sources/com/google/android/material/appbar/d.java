package com.google.android.material.appbar;

import android.content.res.Resources;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import o0.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements s {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CoordinatorLayout f4608a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AppBarLayout f4609b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f4610c;
    public final /* synthetic */ int d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AppBarLayout.BaseBehavior f4611e;

    public d(AppBarLayout.BaseBehavior baseBehavior, CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i6) {
        this.f4611e = baseBehavior;
        this.f4608a = coordinatorLayout;
        this.f4609b = appBarLayout;
        this.f4610c = view;
        this.d = i6;
    }

    @Override // o0.s
    public final boolean perform(View view, o0.k kVar) throws Resources.NotFoundException {
        View view2 = this.f4610c;
        int i6 = this.d;
        this.f4611e.E(this.f4608a, this.f4609b, view2, i6, new int[]{0, 0});
        return true;
    }
}
