package com.google.android.material.bottomappbar;

import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends o9.e {
    public final /* synthetic */ int f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ BottomAppBar f4668g;

    public d(BottomAppBar bottomAppBar, int i6) {
        this.f4668g = bottomAppBar;
        this.f = i6;
    }

    @Override // o9.e
    public final void D(FloatingActionButton floatingActionButton) {
        int i6 = BottomAppBar.f4645r0;
        floatingActionButton.setTranslationX(this.f4668g.F(this.f));
        floatingActionButton.m(new c(this), true);
    }
}
