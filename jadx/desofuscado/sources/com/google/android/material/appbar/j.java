package com.google.android.material.appbar;

import android.view.View;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final View f4618a;

    /* renamed from: b, reason: collision with root package name */
    public int f4619b;

    /* renamed from: c, reason: collision with root package name */
    public int f4620c;
    public int d;

    public j(View view) {
        this.f4618a = view;
    }

    public final void a() {
        int i6 = this.d;
        View view = this.f4618a;
        s0.j(i6 - (view.getTop() - this.f4619b), view);
        s0.i(0 - (view.getLeft() - this.f4620c), view);
    }

    public final boolean b(int i6) {
        if (this.d == i6) {
            return false;
        }
        this.d = i6;
        a();
        return true;
    }
}
