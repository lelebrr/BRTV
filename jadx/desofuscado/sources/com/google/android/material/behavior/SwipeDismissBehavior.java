package com.google.android.material.behavior;

import a6.b;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import java.util.WeakHashMap;
import n0.s0;
import o0.c;
import v0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a, reason: collision with root package name */
    public d f4641a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f4642b;

    /* renamed from: c, reason: collision with root package name */
    public int f4643c = 2;
    public float d = 0.0f;

    /* renamed from: e, reason: collision with root package name */
    public float f4644e = 0.5f;
    public final b f = new b(this);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean g(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean zT = this.f4642b;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zT = coordinatorLayout.t(view, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f4642b = zT;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f4642b = false;
        }
        if (!zT) {
            return false;
        }
        if (this.f4641a == null) {
            this.f4641a = new d(coordinatorLayout.getContext(), coordinatorLayout, this.f);
        }
        return this.f4641a.r(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i6) {
        WeakHashMap weakHashMap = s0.f8353a;
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
            s0.n(ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES, view);
            s0.h(0, view);
            if (s(view)) {
                s0.o(view, c.f8528l, new a0.b(2, this));
            }
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean r(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        d dVar = this.f4641a;
        if (dVar == null) {
            return false;
        }
        dVar.k(motionEvent);
        return true;
    }

    public boolean s(View view) {
        return true;
    }
}
