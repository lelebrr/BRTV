package org.bitspark.android.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.nmmedit.protect.NativeUtil;
import n5.d;

/* loaded from: classes.dex */
public class MyProcessRelativeLayout extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public final int f8814a;

    /* renamed from: b, reason: collision with root package name */
    public int f8815b;

    /* renamed from: c, reason: collision with root package name */
    public int f8816c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f8817e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f8818g;

    /* renamed from: h, reason: collision with root package name */
    public Paint f8819h;

    /* renamed from: i, reason: collision with root package name */
    public Paint f8820i;

    /* renamed from: j, reason: collision with root package name */
    public float f8821j;

    /* renamed from: k, reason: collision with root package name */
    public float f8822k;

    /* renamed from: l, reason: collision with root package name */
    public Path f8823l;

    static {
        NativeUtil.classesInit0(50);
    }

    public MyProcessRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8814a = -10086;
        this.f8815b = -10086;
        this.f8816c = -10086;
        this.d = -10086;
        this.f8817e = false;
        this.f = 0;
        this.f8818g = 100;
        this.f8821j = d.q(getContext(), 4);
        this.f8822k = d.q(getContext(), 4);
        a(attributeSet);
    }

    public final native void a(AttributeSet attributeSet);

    public final native void b();

    public native int getFocusColor();

    public native int getUnFocusColor();

    @Override // android.view.View
    public final native void onDraw(Canvas canvas);

    @Override // android.view.View
    public final native void onFocusChanged(boolean z7, int i6, Rect rect);

    public native void setBackgroundPaintColor(int i6);

    public native void setCornerRadius(float f);

    public native void setFocusColor(int i6);

    public native void setProgress(int i6);

    public native void setProgressHeight(float f);

    public native void setUnFocusColor(int i6);

    public MyProcessRelativeLayout(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f8814a = -10086;
        this.f8815b = -10086;
        this.f8816c = -10086;
        this.d = -10086;
        this.f8817e = false;
        this.f = 0;
        this.f8818g = 100;
        this.f8821j = d.q(getContext(), 4);
        this.f8822k = d.q(getContext(), 4);
        a(attributeSet);
    }
}
