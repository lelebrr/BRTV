package com.dinuscxj.progressbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import java.lang.reflect.Field;
import v3.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class CircleProgressBar extends ProgressBar {

    /* renamed from: a, reason: collision with root package name */
    public final RectF f3580a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f3581b;

    /* renamed from: c, reason: collision with root package name */
    public final Paint f3582c;
    public final Paint d;

    /* renamed from: e, reason: collision with root package name */
    public final Paint f3583e;
    public final Paint f;

    /* renamed from: g, reason: collision with root package name */
    public float f3584g;

    /* renamed from: h, reason: collision with root package name */
    public float f3585h;

    /* renamed from: i, reason: collision with root package name */
    public float f3586i;

    /* renamed from: j, reason: collision with root package name */
    public int f3587j;

    /* renamed from: k, reason: collision with root package name */
    public int f3588k;

    /* renamed from: l, reason: collision with root package name */
    public float f3589l;

    /* renamed from: m, reason: collision with root package name */
    public float f3590m;

    /* renamed from: n, reason: collision with root package name */
    public float f3591n;

    /* renamed from: o, reason: collision with root package name */
    public int f3592o;

    /* renamed from: p, reason: collision with root package name */
    public int f3593p;

    /* renamed from: q, reason: collision with root package name */
    public int f3594q;

    /* renamed from: r, reason: collision with root package name */
    public int f3595r;

    /* renamed from: s, reason: collision with root package name */
    public final boolean f3596s;

    /* renamed from: t, reason: collision with root package name */
    public String f3597t;

    /* renamed from: u, reason: collision with root package name */
    public int f3598u;

    /* renamed from: v, reason: collision with root package name */
    public int f3599v;

    /* renamed from: w, reason: collision with root package name */
    public Paint.Cap f3600w;

    public CircleProgressBar(Context context, AttributeSet attributeSet) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        super(context, attributeSet);
        this.f3580a = new RectF();
        this.f3581b = new Rect();
        this.f3582c = new Paint(1);
        this.d = new Paint(1);
        this.f3583e = new Paint(1);
        this.f = new Paint(1);
        try {
            Field declaredField = ProgressBar.class.getDeclaredField("mOnlyIndeterminate");
            declaredField.setAccessible(true);
            Boolean bool = Boolean.FALSE;
            declaredField.set(this, bool);
            Field declaredField2 = ProgressBar.class.getDeclaredField("mIndeterminate");
            declaredField2.setAccessible(true);
            declaredField2.set(this, bool);
            Field declaredField3 = ProgressBar.class.getDeclaredField("mCurrentDrawable");
            declaredField3.setAccessible(true);
            declaredField3.set(this, null);
        } catch (IllegalAccessException e5) {
            e5.printStackTrace();
        } catch (NoSuchFieldException e10) {
            e10.printStackTrace();
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f10668a);
        this.f3587j = typedArrayObtainStyledAttributes.getColor(0, 0);
        this.f3596s = typedArrayObtainStyledAttributes.getBoolean(1, true);
        this.f3588k = typedArrayObtainStyledAttributes.getInt(2, 45);
        this.f3597t = typedArrayObtainStyledAttributes.hasValue(11) ? typedArrayObtainStyledAttributes.getString(11) : "%d%%";
        this.f3598u = typedArrayObtainStyledAttributes.getInt(13, 0);
        this.f3599v = typedArrayObtainStyledAttributes.getInt(6, 0);
        this.f3600w = typedArrayObtainStyledAttributes.hasValue(8) ? Paint.Cap.values()[typedArrayObtainStyledAttributes.getInt(8, 0)] : Paint.Cap.BUTT;
        this.f3589l = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, (int) ((4.0f * getContext().getResources().getDisplayMetrics().density) + 0.5f));
        this.f3591n = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, (int) ((11.0f * getContext().getResources().getDisplayMetrics().density) + 0.5f));
        this.f3590m = typedArrayObtainStyledAttributes.getDimensionPixelSize(9, (int) ((1.0f * getContext().getResources().getDisplayMetrics().density) + 0.5f));
        this.f3592o = typedArrayObtainStyledAttributes.getColor(7, Color.parseColor("#fff2a670"));
        this.f3593p = typedArrayObtainStyledAttributes.getColor(5, Color.parseColor("#fff2a670"));
        this.f3594q = typedArrayObtainStyledAttributes.getColor(10, Color.parseColor("#fff2a670"));
        this.f3595r = typedArrayObtainStyledAttributes.getColor(4, Color.parseColor("#ffe3e3e5"));
        typedArrayObtainStyledAttributes.recycle();
        Paint.Align align = Paint.Align.CENTER;
        Paint paint = this.f;
        paint.setTextAlign(align);
        paint.setTextSize(this.f3591n);
        Paint.Style style = this.f3598u == 1 ? Paint.Style.FILL : Paint.Style.STROKE;
        Paint paint2 = this.f3582c;
        paint2.setStyle(style);
        paint2.setStrokeWidth(this.f3590m);
        paint2.setColor(this.f3592o);
        paint2.setStrokeCap(this.f3600w);
        Paint.Style style2 = this.f3598u == 1 ? Paint.Style.FILL : Paint.Style.STROKE;
        Paint paint3 = this.d;
        paint3.setStyle(style2);
        paint3.setStrokeWidth(this.f3590m);
        paint3.setColor(this.f3595r);
        paint3.setStrokeCap(this.f3600w);
        Paint.Style style3 = Paint.Style.FILL;
        Paint paint4 = this.f3583e;
        paint4.setStyle(style3);
        paint4.setColor(this.f3587j);
    }

    public final void a(Canvas canvas) {
        int i6 = this.f3598u;
        RectF rectF = this.f3580a;
        Paint paint = this.d;
        Paint paint2 = this.f3582c;
        if (i6 == 1) {
            canvas.drawArc(rectF, -90.0f, 360.0f, false, paint);
            canvas.drawArc(rectF, -90.0f, (getProgress() * 360.0f) / getMax(), true, paint2);
            return;
        }
        if (i6 == 2) {
            canvas.drawArc(rectF, -90.0f, 360.0f, false, paint);
            canvas.drawArc(rectF, -90.0f, (getProgress() * 360.0f) / getMax(), false, paint2);
            return;
        }
        float f = (float) (6.283185307179586d / this.f3588k);
        float f3 = this.f3584g;
        float f4 = f3 - this.f3589l;
        int progress = (int) ((getProgress() / getMax()) * this.f3588k);
        for (int i10 = 0; i10 < this.f3588k; i10++) {
            double d = i10 * f;
            float fSin = (((float) Math.sin(d)) * f4) + this.f3585h;
            float fCos = this.f3585h - (((float) Math.cos(d)) * f4);
            float fSin2 = (((float) Math.sin(d)) * f3) + this.f3585h;
            float fCos2 = this.f3585h - (((float) Math.cos(d)) * f3);
            if (i10 < progress) {
                canvas.drawLine(fSin, fCos, fSin2, fCos2, paint2);
            } else {
                canvas.drawLine(fSin, fCos, fSin2, fCos2, paint);
            }
        }
    }

    public final void b(Canvas canvas) {
        if (this.f3596s) {
            String str = String.format(this.f3597t, Integer.valueOf(getProgress()));
            Paint paint = this.f;
            paint.setTextSize(this.f3591n);
            paint.setColor(this.f3594q);
            paint.getTextBounds(str, 0, str.length(), this.f3581b);
            canvas.drawText(str, this.f3585h, this.f3586i + (r4.height() / 2), paint);
        }
    }

    public final void c() {
        int i6 = this.f3592o;
        int i10 = this.f3593p;
        Shader linearGradient = null;
        Paint paint = this.f3582c;
        if (i6 == i10) {
            paint.setShader(null);
            paint.setColor(this.f3592o);
            return;
        }
        int i11 = this.f3599v;
        if (i11 == 0) {
            RectF rectF = this.f3580a;
            float f = rectF.left;
            linearGradient = new LinearGradient(f, rectF.top, f, rectF.bottom, this.f3592o, this.f3593p, Shader.TileMode.CLAMP);
        } else if (i11 == 1) {
            linearGradient = new RadialGradient(this.f3585h, this.f3586i, this.f3584g, this.f3592o, this.f3593p, Shader.TileMode.CLAMP);
        } else if (i11 == 2) {
            float degrees = (float) ((-90.0d) - ((this.f3600w == Paint.Cap.BUTT && this.f3598u == 2) ? 0.0d : Math.toDegrees((float) (((this.f3590m / 3.141592653589793d) * 2.0d) / this.f3584g))));
            linearGradient = new SweepGradient(this.f3585h, this.f3586i, new int[]{this.f3592o, this.f3593p}, new float[]{0.0f, 1.0f});
            Matrix matrix = new Matrix();
            matrix.postRotate(degrees, this.f3585h, this.f3586i);
            linearGradient.setLocalMatrix(matrix);
        }
        paint.setShader(linearGradient);
    }

    public int getBackgroundColor() {
        return this.f3587j;
    }

    public Paint.Cap getCap() {
        return this.f3600w;
    }

    public int getLineCount() {
        return this.f3588k;
    }

    public float getLineWidth() {
        return this.f3589l;
    }

    public int getProgressBackgroundColor() {
        return this.f3595r;
    }

    public int getProgressEndColor() {
        return this.f3593p;
    }

    public int getProgressStartColor() {
        return this.f3592o;
    }

    public float getProgressStrokeWidth() {
        return this.f3590m;
    }

    public int getProgressTextColor() {
        return this.f3594q;
    }

    public String getProgressTextFormatPattern() {
        return this.f3597t;
    }

    public float getProgressTextSize() {
        return this.f3591n;
    }

    public int getShader() {
        return this.f3599v;
    }

    public int getStyle() {
        return this.f3598u;
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        if (this.f3587j != 0) {
            float f = this.f3585h;
            canvas.drawCircle(f, f, this.f3584g, this.f3583e);
        }
        a(canvas);
        b(canvas);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onSizeChanged(int i6, int i10, int i11, int i12) {
        super.onSizeChanged(i6, i10, i11, i12);
        float f = i6 / 2;
        this.f3585h = f;
        float f3 = i10 / 2;
        this.f3586i = f3;
        float fMin = Math.min(f, f3);
        this.f3584g = fMin;
        RectF rectF = this.f3580a;
        float f4 = this.f3586i;
        rectF.top = f4 - fMin;
        rectF.bottom = f4 + fMin;
        float f5 = this.f3585h;
        rectF.left = f5 - fMin;
        rectF.right = f5 + fMin;
        c();
        float f10 = this.f3590m;
        rectF.inset(f10 / 2.0f, f10 / 2.0f);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i6) {
        this.f3587j = i6;
        this.f3583e.setColor(i6);
        invalidate();
    }

    public void setCap(Paint.Cap cap) {
        this.f3600w = cap;
        this.f3582c.setStrokeCap(cap);
        this.d.setStrokeCap(cap);
        invalidate();
    }

    public void setLineCount(int i6) {
        this.f3588k = i6;
        invalidate();
    }

    public void setLineWidth(float f) {
        this.f3589l = f;
        invalidate();
    }

    public void setProgressBackgroundColor(int i6) {
        this.f3595r = i6;
        this.d.setColor(i6);
        invalidate();
    }

    public void setProgressEndColor(int i6) {
        this.f3593p = i6;
        c();
        invalidate();
    }

    public void setProgressStartColor(int i6) {
        this.f3592o = i6;
        c();
        invalidate();
    }

    public void setProgressStrokeWidth(float f) {
        this.f3590m = f;
        this.f3580a.inset(f / 2.0f, f / 2.0f);
        invalidate();
    }

    public void setProgressTextColor(int i6) {
        this.f3594q = i6;
        invalidate();
    }

    public void setProgressTextFormatPattern(String str) {
        this.f3597t = str;
        invalidate();
    }

    public void setProgressTextSize(float f) {
        this.f3591n = f;
        invalidate();
    }

    public void setShader(int i6) {
        this.f3599v = i6;
        c();
        invalidate();
    }

    public void setStyle(int i6) {
        this.f3598u = i6;
        this.f3582c.setStyle(i6 == 1 ? Paint.Style.FILL : Paint.Style.STROKE);
        this.d.setStyle(this.f3598u == 1 ? Paint.Style.FILL : Paint.Style.STROKE);
        invalidate();
    }
}
