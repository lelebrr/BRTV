package org.bitspark.android.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.nmmedit.protect.NativeUtil;

/* loaded from: classes.dex */
public class GradientBorderView extends View {

    /* renamed from: a, reason: collision with root package name */
    public Paint f8806a;

    /* renamed from: b, reason: collision with root package name */
    public int f8807b;

    /* renamed from: c, reason: collision with root package name */
    public int[] f8808c;
    public float d;

    static {
        NativeUtil.classesInit0(58);
    }

    public GradientBorderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8807b = 6;
        this.f8808c = new int[]{0, 0};
        this.d = 16.0f;
        a();
    }

    public final native void a();

    @Override // android.view.View
    public final native void onDraw(Canvas canvas);

    public native void setColor(int i6);

    public native void setColor(int[] iArr);

    public GradientBorderView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f8807b = 6;
        this.f8808c = new int[]{0, 0};
        this.d = 16.0f;
        a();
    }
}
