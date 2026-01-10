package org.bitspark.android.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.nmmedit.protect.NativeUtil;

/* loaded from: classes.dex */
public class CircularProgressBar extends View {

    /* renamed from: a, reason: collision with root package name */
    public final RectF f8800a;

    /* renamed from: b, reason: collision with root package name */
    public int f8801b;

    /* renamed from: c, reason: collision with root package name */
    public int f8802c;
    public float d;

    /* renamed from: e, reason: collision with root package name */
    public Paint f8803e;
    public Paint f;

    /* renamed from: g, reason: collision with root package name */
    public ValueAnimator f8804g;

    /* renamed from: h, reason: collision with root package name */
    public float f8805h;

    static {
        NativeUtil.classesInit0(28);
    }

    public CircularProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8800a = new RectF();
        this.f8801b = 0;
        this.f8802c = 100;
        this.d = 10.0f;
        this.f8805h = 0.0f;
        a(context);
    }

    public final native void a(Context context);

    @Override // android.view.View
    public final native void onDraw(Canvas canvas);

    @Override // android.view.View
    public native void setBackgroundColor(int i6);

    public native void setMax(int i6);

    public native void setProgress(int i6);

    public native void setProgressColor(int i6);

    public native void setStrokeWidth(float f);

    @Override // android.view.View
    public native void setVisibility(int i6);

    public CircularProgressBar(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f8800a = new RectF();
        this.f8801b = 0;
        this.f8802c = 100;
        this.d = 10.0f;
        this.f8805h = 0.0f;
        a(context);
    }
}
