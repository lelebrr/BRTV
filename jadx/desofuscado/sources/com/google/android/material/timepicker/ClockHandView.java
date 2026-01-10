package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
class ClockHandView extends View {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f5390a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5391b;

    /* renamed from: c, reason: collision with root package name */
    public final float f5392c;
    public final Paint d;

    /* renamed from: e, reason: collision with root package name */
    public final RectF f5393e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public float f5394g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f5395h;

    /* renamed from: i, reason: collision with root package name */
    public double f5396i;

    /* renamed from: j, reason: collision with root package name */
    public int f5397j;

    public ClockHandView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }

    public final void a(float f) {
        float f3 = f % 360.0f;
        this.f5394g = f3;
        this.f5396i = Math.toRadians(f3 - 90.0f);
        int height = getHeight() / 2;
        float fCos = (this.f5397j * ((float) Math.cos(this.f5396i))) + (getWidth() / 2);
        float fSin = (this.f5397j * ((float) Math.sin(this.f5396i))) + height;
        float f4 = this.f5391b;
        this.f5393e.set(fCos - f4, fSin - f4, fCos + f4, fSin + f4);
        Iterator it = this.f5390a.iterator();
        while (it.hasNext()) {
            ClockFaceView clockFaceView = (ClockFaceView) ((d) it.next());
            if (Math.abs(clockFaceView.F - f3) > 0.001f) {
                clockFaceView.F = f3;
                clockFaceView.p();
            }
        }
        invalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        float width = getWidth() / 2;
        float fCos = (this.f5397j * ((float) Math.cos(this.f5396i))) + width;
        float f = height;
        float fSin = (this.f5397j * ((float) Math.sin(this.f5396i))) + f;
        Paint paint = this.d;
        paint.setStrokeWidth(0.0f);
        canvas.drawCircle(fCos, fSin, this.f5391b, paint);
        double dSin = Math.sin(this.f5396i);
        double dCos = Math.cos(this.f5396i);
        paint.setStrokeWidth(this.f);
        canvas.drawLine(width, f, r1 + ((int) (dCos * d)), height + ((int) (d * dSin)), paint);
        canvas.drawCircle(width, f, this.f5392c, paint);
    }

    @Override // android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        super.onLayout(z7, i6, i10, i11, i12);
        a(this.f5394g);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z7;
        boolean z10;
        int actionMasked = motionEvent.getActionMasked();
        float x10 = motionEvent.getX();
        float y7 = motionEvent.getY();
        boolean z11 = false;
        if (actionMasked != 0) {
            z7 = (actionMasked == 1 || actionMasked == 2) ? this.f5395h : false;
            z10 = false;
        } else {
            this.f5395h = false;
            z7 = false;
            z10 = true;
        }
        boolean z12 = this.f5395h;
        int degrees = (int) Math.toDegrees(Math.atan2(y7 - (getHeight() / 2), x10 - (getWidth() / 2)));
        int i6 = degrees + 90;
        if (i6 < 0) {
            i6 = degrees + 450;
        }
        float f = i6;
        boolean z13 = this.f5394g != f;
        if (z10 && z13) {
            z11 = true;
        } else if (z13 || z7) {
            a(f);
            z11 = true;
        }
        this.f5395h = z12 | z11;
        return true;
    }

    public ClockHandView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f5390a = new ArrayList();
        Paint paint = new Paint();
        this.d = paint;
        this.f5393e = new RectF();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, x5.a.f11032m, i6, R.style.Widget_MaterialComponents_TimePicker_Clock);
        this.f5397j = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.f5391b = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.f = getResources().getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.f5392c = r3.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = typedArrayObtainStyledAttributes.getColor(0, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        a(0.0f);
        ViewConfiguration.get(context).getScaledTouchSlop();
        WeakHashMap weakHashMap = s0.f8353a;
        setImportantForAccessibility(2);
        typedArrayObtainStyledAttributes.recycle();
    }
}
