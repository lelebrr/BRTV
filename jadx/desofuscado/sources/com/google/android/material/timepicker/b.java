package com.google.android.material.timepicker;

import android.view.ViewTreeObserver;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ClockFaceView f5407a;

    public b(ClockFaceView clockFaceView) {
        this.f5407a = clockFaceView;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        ClockFaceView clockFaceView = this.f5407a;
        if (!clockFaceView.isShown()) {
            return true;
        }
        clockFaceView.getViewTreeObserver().removeOnPreDrawListener(this);
        int height = ((clockFaceView.getHeight() / 2) - clockFaceView.f5383t.f5391b) - clockFaceView.A;
        if (height != clockFaceView.f5399r) {
            clockFaceView.f5399r = height;
            clockFaceView.o();
            int i6 = clockFaceView.f5399r;
            ClockHandView clockHandView = clockFaceView.f5383t;
            clockHandView.f5397j = i6;
            clockHandView.invalidate();
        }
        return true;
    }
}
