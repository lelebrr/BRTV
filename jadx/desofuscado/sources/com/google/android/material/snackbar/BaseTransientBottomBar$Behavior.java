package com.google.android.material.snackbar;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import q1.f0;
import ua.h;
import v6.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {

    /* renamed from: g, reason: collision with root package name */
    public final f0 f5217g;

    public BaseTransientBottomBar$Behavior() {
        f0 f0Var = new f0(7);
        this.d = Math.min(Math.max(0.0f, 0.1f), 1.0f);
        this.f4644e = Math.min(Math.max(0.0f, 0.6f), 1.0f);
        this.f4643c = 0;
        this.f5217g = f0Var;
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        this.f5217g.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                if (h.f10490b == null) {
                    h.f10490b = new h();
                }
                synchronized (h.f10490b.f10491a) {
                }
            }
        } else if (coordinatorLayout.t(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
            if (h.f10490b == null) {
                h.f10490b = new h();
            }
            h.f10490b.a();
        }
        return super.g(coordinatorLayout, view, motionEvent);
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior
    public final boolean s(View view) {
        this.f5217g.getClass();
        return view instanceof a;
    }
}
