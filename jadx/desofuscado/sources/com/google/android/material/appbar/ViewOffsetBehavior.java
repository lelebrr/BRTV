package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
class ViewOffsetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a, reason: collision with root package name */
    public j f4601a;

    /* renamed from: b, reason: collision with root package name */
    public int f4602b;

    public ViewOffsetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4602b = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean h(CoordinatorLayout coordinatorLayout, View view, int i6) {
        u(coordinatorLayout, view, i6);
        if (this.f4601a == null) {
            this.f4601a = new j(view);
        }
        j jVar = this.f4601a;
        View view2 = jVar.f4618a;
        jVar.f4619b = view2.getTop();
        jVar.f4620c = view2.getLeft();
        this.f4601a.a();
        int i10 = this.f4602b;
        if (i10 == 0) {
            return true;
        }
        this.f4601a.b(i10);
        this.f4602b = 0;
        return true;
    }

    public int s() {
        j jVar = this.f4601a;
        if (jVar != null) {
            return jVar.d;
        }
        return 0;
    }

    public int t() {
        return s();
    }

    public void u(CoordinatorLayout coordinatorLayout, View view, int i6) {
        coordinatorLayout.v(i6, view);
    }

    public boolean v(int i6) {
        j jVar = this.f4601a;
        if (jVar != null) {
            return jVar.b(i6);
        }
        this.f4602b = i6;
        return false;
    }

    public ViewOffsetBehavior() {
        this.f4602b = 0;
    }
}
