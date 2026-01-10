package q6;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.google.android.material.progressindicator.CircularProgressIndicatorSpec;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends m {

    /* renamed from: c, reason: collision with root package name */
    public int f9257c;
    public float d;

    /* renamed from: e, reason: collision with root package name */
    public float f9258e;
    public float f;

    public f(CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(circularProgressIndicatorSpec);
        this.f9257c = 1;
    }

    @Override // q6.m
    public final void a(Canvas canvas, float f) {
        e eVar = this.f9289a;
        float f3 = (((CircularProgressIndicatorSpec) eVar).f5164g / 2.0f) + ((CircularProgressIndicatorSpec) eVar).f5165h;
        canvas.translate(f3, f3);
        canvas.rotate(-90.0f);
        float f4 = -f3;
        canvas.clipRect(f4, f4, f3, f3);
        this.f9257c = ((CircularProgressIndicatorSpec) eVar).f5166i == 0 ? 1 : -1;
        this.d = ((CircularProgressIndicatorSpec) eVar).f9253a * f;
        this.f9258e = ((CircularProgressIndicatorSpec) eVar).f9254b * f;
        this.f = (((CircularProgressIndicatorSpec) eVar).f5164g - ((CircularProgressIndicatorSpec) eVar).f9253a) / 2.0f;
        if ((this.f9290b.d() && ((CircularProgressIndicatorSpec) eVar).f9256e == 2) || (this.f9290b.c() && ((CircularProgressIndicatorSpec) eVar).f == 1)) {
            this.f = (((1.0f - f) * ((CircularProgressIndicatorSpec) eVar).f9253a) / 2.0f) + this.f;
        } else if ((this.f9290b.d() && ((CircularProgressIndicatorSpec) eVar).f9256e == 1) || (this.f9290b.c() && ((CircularProgressIndicatorSpec) eVar).f == 2)) {
            this.f -= ((1.0f - f) * ((CircularProgressIndicatorSpec) eVar).f9253a) / 2.0f;
        }
    }

    @Override // q6.m
    public final void b(Canvas canvas, Paint paint, float f, float f3, int i6) {
        if (f == f3) {
            return;
        }
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(i6);
        paint.setStrokeWidth(this.d);
        float f4 = this.f9257c;
        float f5 = f * 360.0f * f4;
        float f10 = (f3 >= f ? f3 - f : (1.0f + f3) - f) * 360.0f * f4;
        float f11 = this.f;
        float f12 = -f11;
        canvas.drawArc(new RectF(f12, f12, f11, f11), f5, f10, false, paint);
        if (this.f9258e <= 0.0f || Math.abs(f10) >= 360.0f) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        f(canvas, paint, this.d, this.f9258e, f5);
        f(canvas, paint, this.d, this.f9258e, f5 + f10);
    }

    @Override // q6.m
    public final void c(Canvas canvas, Paint paint) {
        int iJ = o9.e.j(((CircularProgressIndicatorSpec) this.f9289a).d, this.f9290b.f9288j);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(iJ);
        paint.setStrokeWidth(this.d);
        float f = this.f;
        canvas.drawArc(new RectF(-f, -f, f, f), 0.0f, 360.0f, false, paint);
    }

    @Override // q6.m
    public final int d() {
        CircularProgressIndicatorSpec circularProgressIndicatorSpec = (CircularProgressIndicatorSpec) this.f9289a;
        return (circularProgressIndicatorSpec.f5165h * 2) + circularProgressIndicatorSpec.f5164g;
    }

    @Override // q6.m
    public final int e() {
        CircularProgressIndicatorSpec circularProgressIndicatorSpec = (CircularProgressIndicatorSpec) this.f9289a;
        return (circularProgressIndicatorSpec.f5165h * 2) + circularProgressIndicatorSpec.f5164g;
    }

    public final void f(Canvas canvas, Paint paint, float f, float f3, float f4) {
        canvas.save();
        canvas.rotate(f4);
        float f5 = this.f;
        float f10 = f / 2.0f;
        canvas.drawRoundRect(new RectF(f5 - f10, f3, f5 + f10, -f3), f3, f3, paint);
        canvas.restore();
    }
}
