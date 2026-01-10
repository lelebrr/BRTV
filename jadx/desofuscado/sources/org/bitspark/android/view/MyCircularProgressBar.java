package org.bitspark.android.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.nmmedit.protect.NativeUtil;

/* loaded from: classes.dex */
public class MyCircularProgressBar extends View {

    /* renamed from: a, reason: collision with root package name */
    public final RectF f8809a;

    /* renamed from: b, reason: collision with root package name */
    public int f8810b;

    /* renamed from: c, reason: collision with root package name */
    public int f8811c;
    public float d;

    /* renamed from: e, reason: collision with root package name */
    public Paint f8812e;
    public Paint f;

    static {
        NativeUtil.classesInit0(33);
    }

    public MyCircularProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8809a = new RectF();
        this.f8810b = 0;
        this.f8811c = 100;
        this.d = 4.0f;
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

    public MyCircularProgressBar(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f8809a = new RectF();
        this.f8810b = 0;
        this.f8811c = 100;
        this.d = 4.0f;
        a(context);
    }
}
