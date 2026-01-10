package com.google.android.material.timepicker;

import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends n0.b {
    public final /* synthetic */ ClockFaceView d;

    public c(ClockFaceView clockFaceView) {
        this.d = clockFaceView;
    }

    @Override // n0.b
    public final void d(View view, o0.h hVar) {
        View.AccessibilityDelegate accessibilityDelegate = this.f8298a;
        AccessibilityNodeInfo accessibilityNodeInfo = hVar.f8541a;
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        int iIntValue = ((Integer) view.getTag(R.id.material_value_index)).intValue();
        if (iIntValue > 0) {
            View view2 = (View) this.d.f5386w.get(iIntValue - 1);
            if (Build.VERSION.SDK_INT >= 22) {
                accessibilityNodeInfo.setTraversalAfter(view2);
            }
        }
        hVar.k(o0.g.a(0, 1, iIntValue, 1, view.isSelected()));
        accessibilityNodeInfo.setClickable(true);
        hVar.b(o0.c.f8523g);
    }

    @Override // n0.b
    public final boolean g(View view, int i6, Bundle bundle) {
        if (i6 != 16) {
            return super.g(view, i6, bundle);
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        float x10 = view.getX() + (view.getWidth() / 2.0f);
        float height = (view.getHeight() / 2.0f) + view.getY();
        ClockFaceView clockFaceView = this.d;
        clockFaceView.f5383t.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, x10, height, 0));
        clockFaceView.f5383t.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 1, x10, height, 0));
        return true;
    }
}
