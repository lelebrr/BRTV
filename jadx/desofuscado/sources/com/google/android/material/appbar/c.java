package com.google.android.material.appbar;

import android.view.View;
import android.widget.ScrollView;
import com.google.android.material.appbar.AppBarLayout;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends n0.b {
    public final /* synthetic */ AppBarLayout.BaseBehavior d;

    public c(AppBarLayout.BaseBehavior baseBehavior) {
        this.d = baseBehavior;
    }

    @Override // n0.b
    public final void d(View view, o0.h hVar) {
        this.f8298a.onInitializeAccessibilityNodeInfo(view, hVar.f8541a);
        hVar.n(this.d.f4558o);
        hVar.i(ScrollView.class.getName());
    }
}
