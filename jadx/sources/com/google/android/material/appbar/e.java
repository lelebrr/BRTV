package com.google.android.material.appbar;

import android.view.View;
import o0.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e implements s {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppBarLayout f4612a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f4613b;

    public e(AppBarLayout appBarLayout, boolean z7) {
        this.f4612a = appBarLayout;
        this.f4613b = z7;
    }

    @Override // o0.s
    public final boolean perform(View view, o0.k kVar) {
        this.f4612a.setExpanded(this.f4613b);
        return true;
    }
}
