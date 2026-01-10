package t;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s {

    /* renamed from: a, reason: collision with root package name */
    public float[] f10014a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f10015b;

    /* renamed from: c, reason: collision with root package name */
    public final float[] f10016c;
    public Path d;

    /* renamed from: e, reason: collision with root package name */
    public final Paint f10017e;
    public final Paint f;

    /* renamed from: g, reason: collision with root package name */
    public final Paint f10018g;

    /* renamed from: h, reason: collision with root package name */
    public final Paint f10019h;

    /* renamed from: i, reason: collision with root package name */
    public final Paint f10020i;

    /* renamed from: j, reason: collision with root package name */
    public final float[] f10021j;

    /* renamed from: k, reason: collision with root package name */
    public int f10022k;

    /* renamed from: l, reason: collision with root package name */
    public final Rect f10023l = new Rect();

    /* renamed from: m, reason: collision with root package name */
    public final int f10024m = 1;

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ MotionLayout f10025n;

    public s(MotionLayout motionLayout) {
        this.f10025n = motionLayout;
        Paint paint = new Paint();
        this.f10017e = paint;
        paint.setAntiAlias(true);
        paint.setColor(-21965);
        paint.setStrokeWidth(2.0f);
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        Paint paint2 = new Paint();
        this.f = paint2;
        paint2.setAntiAlias(true);
        paint2.setColor(-2067046);
        paint2.setStrokeWidth(2.0f);
        paint2.setStyle(style);
        Paint paint3 = new Paint();
        this.f10018g = paint3;
        paint3.setAntiAlias(true);
        paint3.setColor(-13391360);
        paint3.setStrokeWidth(2.0f);
        paint3.setStyle(style);
        Paint paint4 = new Paint();
        this.f10019h = paint4;
        paint4.setAntiAlias(true);
        paint4.setColor(-13391360);
        paint4.setTextSize(motionLayout.getContext().getResources().getDisplayMetrics().density * 12.0f);
        this.f10021j = new float[8];
        Paint paint5 = new Paint();
        this.f10020i = paint5;
        paint5.setAntiAlias(true);
        paint3.setPathEffect(new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f));
        this.f10016c = new float[100];
        this.f10015b = new int[50];
    }

    public final void a(Canvas canvas, int i6, int i10, o oVar) {
        int width;
        int height;
        Paint paint;
        float f;
        float f3;
        int i11;
        int[] iArr = this.f10015b;
        int i12 = 4;
        if (i6 == 4) {
            boolean z7 = false;
            boolean z10 = false;
            for (int i13 = 0; i13 < this.f10022k; i13++) {
                int i14 = iArr[i13];
                if (i14 == 1) {
                    z7 = true;
                }
                if (i14 == 2) {
                    z10 = true;
                }
            }
            if (z7) {
                float[] fArr = this.f10014a;
                canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.f10018g);
            }
            if (z10) {
                b(canvas);
            }
        }
        if (i6 == 2) {
            float[] fArr2 = this.f10014a;
            canvas.drawLine(fArr2[0], fArr2[1], fArr2[fArr2.length - 2], fArr2[fArr2.length - 1], this.f10018g);
        }
        if (i6 == 3) {
            b(canvas);
        }
        canvas.drawLines(this.f10014a, this.f10017e);
        View view = oVar.f9966a;
        if (view != null) {
            width = view.getWidth();
            height = oVar.f9966a.getHeight();
        } else {
            width = 0;
            height = 0;
        }
        int i15 = 1;
        while (i15 < i10 - 1) {
            if (i6 == i12 && iArr[i15 - 1] == 0) {
                i11 = i15;
            } else {
                int i16 = i15 * 2;
                float[] fArr3 = this.f10016c;
                float f4 = fArr3[i16];
                float f5 = fArr3[i16 + 1];
                this.d.reset();
                this.d.moveTo(f4, f5 + 10.0f);
                this.d.lineTo(f4 + 10.0f, f5);
                this.d.lineTo(f4, f5 - 10.0f);
                this.d.lineTo(f4 - 10.0f, f5);
                this.d.close();
                int i17 = i15 - 1;
                Paint paint2 = this.f10020i;
                if (i6 == i12) {
                    int i18 = iArr[i17];
                    if (i18 == 1) {
                        d(canvas, f4 - 0.0f, f5 - 0.0f);
                    } else if (i18 == 2) {
                        c(canvas, f4 - 0.0f, f5 - 0.0f);
                    } else {
                        if (i18 == 3) {
                            paint = paint2;
                            f = f5;
                            f3 = f4;
                            i11 = i15;
                            e(canvas, f4 - 0.0f, f5 - 0.0f, width, height);
                        }
                        canvas.drawPath(this.d, paint);
                    }
                    paint = paint2;
                    f = f5;
                    f3 = f4;
                    i11 = i15;
                    canvas.drawPath(this.d, paint);
                } else {
                    paint = paint2;
                    f = f5;
                    f3 = f4;
                    i11 = i15;
                }
                if (i6 == 2) {
                    d(canvas, f3 - 0.0f, f - 0.0f);
                }
                if (i6 == 3) {
                    c(canvas, f3 - 0.0f, f - 0.0f);
                }
                if (i6 == 6) {
                    e(canvas, f3 - 0.0f, f - 0.0f, width, height);
                }
                canvas.drawPath(this.d, paint);
            }
            i15 = i11 + 1;
            i12 = 4;
        }
        float[] fArr4 = this.f10014a;
        if (fArr4.length > 1) {
            float f10 = fArr4[0];
            float f11 = fArr4[1];
            Paint paint3 = this.f;
            canvas.drawCircle(f10, f11, 8.0f, paint3);
            float[] fArr5 = this.f10014a;
            canvas.drawCircle(fArr5[fArr5.length - 2], fArr5[fArr5.length - 1], 8.0f, paint3);
        }
    }

    public final void b(Canvas canvas) {
        float[] fArr = this.f10014a;
        float f = fArr[0];
        float f3 = fArr[1];
        float f4 = fArr[fArr.length - 2];
        float f5 = fArr[fArr.length - 1];
        float fMin = Math.min(f, f4);
        float fMax = Math.max(f3, f5);
        float fMax2 = Math.max(f, f4);
        float fMax3 = Math.max(f3, f5);
        Paint paint = this.f10018g;
        canvas.drawLine(fMin, fMax, fMax2, fMax3, paint);
        canvas.drawLine(Math.min(f, f4), Math.min(f3, f5), Math.min(f, f4), Math.max(f3, f5), paint);
    }

    public final void c(Canvas canvas, float f, float f3) {
        float[] fArr = this.f10014a;
        float f4 = fArr[0];
        float f5 = fArr[1];
        float f10 = fArr[fArr.length - 2];
        float f11 = fArr[fArr.length - 1];
        float fMin = Math.min(f4, f10);
        float fMax = Math.max(f5, f11);
        float fMin2 = f - Math.min(f4, f10);
        float fMax2 = Math.max(f5, f11) - f3;
        String str = "" + (((int) (((fMin2 * 100.0f) / Math.abs(f10 - f4)) + 0.5d)) / 100.0f);
        Paint paint = this.f10019h;
        paint.getTextBounds(str, 0, str.length(), this.f10023l);
        Rect rect = this.f10023l;
        canvas.drawText(str, ((fMin2 / 2.0f) - (rect.width() / 2)) + fMin, f3 - 20.0f, paint);
        float fMin3 = Math.min(f4, f10);
        Paint paint2 = this.f10018g;
        canvas.drawLine(f, f3, fMin3, f3, paint2);
        String str2 = "" + (((int) (((fMax2 * 100.0f) / Math.abs(f11 - f5)) + 0.5d)) / 100.0f);
        paint.getTextBounds(str2, 0, str2.length(), this.f10023l);
        canvas.drawText(str2, f + 5.0f, fMax - ((fMax2 / 2.0f) - (rect.height() / 2)), paint);
        canvas.drawLine(f, f3, f, Math.max(f5, f11), paint2);
    }

    public final void d(Canvas canvas, float f, float f3) {
        float[] fArr = this.f10014a;
        float f4 = fArr[0];
        float f5 = fArr[1];
        float f10 = fArr[fArr.length - 2];
        float f11 = fArr[fArr.length - 1];
        float fHypot = (float) Math.hypot(f4 - f10, f5 - f11);
        float f12 = f10 - f4;
        float f13 = f11 - f5;
        float f14 = (((f3 - f5) * f13) + ((f - f4) * f12)) / (fHypot * fHypot);
        float f15 = f4 + (f12 * f14);
        float f16 = f5 + (f14 * f13);
        Path path = new Path();
        path.moveTo(f, f3);
        path.lineTo(f15, f16);
        float fHypot2 = (float) Math.hypot(f15 - f, f16 - f3);
        String str = "" + (((int) ((fHypot2 * 100.0f) / fHypot)) / 100.0f);
        Paint paint = this.f10019h;
        paint.getTextBounds(str, 0, str.length(), this.f10023l);
        canvas.drawTextOnPath(str, path, (fHypot2 / 2.0f) - (this.f10023l.width() / 2), -20.0f, paint);
        canvas.drawLine(f, f3, f15, f16, this.f10018g);
    }

    public final void e(Canvas canvas, float f, float f3, int i6, int i10) {
        StringBuilder sb = new StringBuilder("");
        MotionLayout motionLayout = this.f10025n;
        sb.append(((int) ((((f - (i6 / 2)) * 100.0f) / (motionLayout.getWidth() - i6)) + 0.5d)) / 100.0f);
        String string = sb.toString();
        Paint paint = this.f10019h;
        paint.getTextBounds(string, 0, string.length(), this.f10023l);
        Rect rect = this.f10023l;
        canvas.drawText(string, ((f / 2.0f) - (rect.width() / 2)) + 0.0f, f3 - 20.0f, paint);
        float fMin = Math.min(0.0f, 1.0f);
        Paint paint2 = this.f10018g;
        canvas.drawLine(f, f3, fMin, f3, paint2);
        String str = "" + (((int) ((((f3 - (i10 / 2)) * 100.0f) / (motionLayout.getHeight() - i10)) + 0.5d)) / 100.0f);
        paint.getTextBounds(str, 0, str.length(), this.f10023l);
        canvas.drawText(str, f + 5.0f, 0.0f - ((f3 / 2.0f) - (rect.height() / 2)), paint);
        canvas.drawLine(f, f3, f, Math.max(0.0f, 1.0f), paint2);
    }
}
