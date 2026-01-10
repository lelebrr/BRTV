package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
abstract class HeaderBehavior<V extends View> extends ViewOffsetBehavior<V> {

    /* renamed from: c, reason: collision with root package name */
    public i f4591c;
    public OverScroller d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f4592e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f4593g;

    /* renamed from: h, reason: collision with root package name */
    public int f4594h;

    /* renamed from: i, reason: collision with root package name */
    public VelocityTracker f4595i;

    public HeaderBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = -1;
        this.f4594h = -1;
    }

    public int A(CoordinatorLayout coordinatorLayout, View view, int i6, int i10, int i11) {
        int iG;
        int iS = s();
        if (i10 == 0 || iS < i10 || iS > i11 || iS == (iG = l5.a.g(i6, i10, i11))) {
            return 0;
        }
        v(iG);
        return iS - iG;
    }

    public final void B(CoordinatorLayout coordinatorLayout, View view, int i6) {
        A(coordinatorLayout, view, i6, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean g(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int iFindPointerIndex;
        if (this.f4594h < 0) {
            this.f4594h = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.f4592e) {
            int i6 = this.f;
            if (i6 == -1 || (iFindPointerIndex = motionEvent.findPointerIndex(i6)) == -1) {
                return false;
            }
            int y7 = (int) motionEvent.getY(iFindPointerIndex);
            if (Math.abs(y7 - this.f4593g) > this.f4594h) {
                this.f4593g = y7;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.f = -1;
            int x10 = (int) motionEvent.getX();
            int y9 = (int) motionEvent.getY();
            boolean z7 = w(view) && coordinatorLayout.t(view, x10, y9);
            this.f4592e = z7;
            if (z7) {
                this.f4593g = y9;
                this.f = motionEvent.getPointerId(0);
                if (this.f4595i == null) {
                    this.f4595i = VelocityTracker.obtain();
                }
                OverScroller overScroller = this.d;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.d.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.f4595i;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00de A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean r(androidx.coordinatorlayout.widget.CoordinatorLayout r20, android.view.View r21, android.view.MotionEvent r22) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.HeaderBehavior.r(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    public boolean w(View view) {
        return false;
    }

    public int x(View view) {
        return -view.getHeight();
    }

    public int y(View view) {
        return view.getHeight();
    }

    public void z(CoordinatorLayout coordinatorLayout, View view) {
    }
}
