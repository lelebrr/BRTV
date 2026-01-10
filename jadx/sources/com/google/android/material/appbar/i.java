package com.google.android.material.appbar;

import android.view.View;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final CoordinatorLayout f4615a;

    /* renamed from: b, reason: collision with root package name */
    public final View f4616b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ HeaderBehavior f4617c;

    public i(HeaderBehavior headerBehavior, CoordinatorLayout coordinatorLayout, View view) {
        this.f4617c = headerBehavior;
        this.f4615a = coordinatorLayout;
        this.f4616b = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HeaderBehavior headerBehavior;
        OverScroller overScroller;
        View view = this.f4616b;
        if (view == null || (overScroller = (headerBehavior = this.f4617c).d) == null) {
            return;
        }
        boolean zComputeScrollOffset = overScroller.computeScrollOffset();
        CoordinatorLayout coordinatorLayout = this.f4615a;
        if (!zComputeScrollOffset) {
            headerBehavior.z(coordinatorLayout, view);
            return;
        }
        headerBehavior.B(coordinatorLayout, view, headerBehavior.d.getCurrY());
        WeakHashMap weakHashMap = s0.f8353a;
        view.postOnAnimation(this);
    }
}
