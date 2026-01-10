package com.google.android.material.bottomappbar;

import androidx.appcompat.widget.ActionMenuView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActionMenuView f4673a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4674b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f4675c;
    public final /* synthetic */ BottomAppBar d;

    public f(BottomAppBar bottomAppBar, ActionMenuView actionMenuView, int i6, boolean z7) {
        this.d = bottomAppBar;
        this.f4673a = actionMenuView;
        this.f4674b = i6;
        this.f4675c = z7;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i6 = this.f4674b;
        boolean z7 = this.f4675c;
        BottomAppBar bottomAppBar = this.d;
        this.f4673a.setTranslationX(bottomAppBar.E(r3, i6, z7));
    }
}
