package org.bitspark.android.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.nmmedit.protect.NativeUtil;
import sa.f;

/* loaded from: classes.dex */
public class MyFrameLayout extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public f f8813a;

    static {
        NativeUtil.classesInit0(21);
    }

    public MyFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8813a = null;
    }

    @Override // android.view.ViewGroup
    public final native boolean onInterceptTouchEvent(MotionEvent motionEvent);

    public native void setOnInterceptTouchEvent(f fVar);

    public MyFrameLayout(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f8813a = null;
    }
}
