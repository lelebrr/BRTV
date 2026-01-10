package org.bitspark.android.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;
import com.nmmedit.protect.NativeUtil;
import sa.a;

/* loaded from: classes.dex */
public class MyViewPager extends ViewPager {

    /* renamed from: d0, reason: collision with root package name */
    public a f8826d0;

    static {
        NativeUtil.classesInit0(46);
    }

    public MyViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup, android.view.View
    public final native boolean dispatchKeyEvent(KeyEvent keyEvent);

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public final native boolean onInterceptTouchEvent(MotionEvent motionEvent);

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public final native boolean onTouchEvent(MotionEvent motionEvent);

    public native void setDispatchKeyEvent(a aVar);
}
