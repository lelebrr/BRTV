package q6;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.material.progressindicator.LinearProgressIndicatorSpec;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p extends m {

    /* renamed from: c, reason: collision with root package name */
    public float f9296c;
    public float d;

    /* renamed from: e, reason: collision with root package name */
    public float f9297e;

    public p(LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(linearProgressIndicatorSpec);
        this.f9296c = 300.0f;
    }

    @Override // q6.m
    public final void a(Canvas canvas, float f) {
        Rect clipBounds = canvas.getClipBounds();
        this.f9296c = clipBounds.width();
        e eVar = this.f9289a;
        float f3 = ((LinearProgressIndicatorSpec) eVar).f9253a;
        canvas.translate((clipBounds.width() / 2.0f) + clipBounds.left, Math.max(0.0f, (clipBounds.height() - ((LinearProgressIndicatorSpec) eVar).f9253a) / 2.0f) + (clipBounds.height() / 2.0f) + clipBounds.top);
        if (((LinearProgressIndicatorSpec) eVar).f5170i) {
            canvas.scale(-1.0f, 1.0f);
        }
        if ((this.f9290b.d() && ((LinearProgressIndicatorSpec) eVar).f9256e == 1) || (this.f9290b.c() && ((LinearProgressIndicatorSpec) eVar).f == 2)) {
            canvas.scale(1.0f, -1.0f);
        }
        if (this.f9290b.d() || this.f9290b.c()) {
            canvas.translate(0.0f, ((f - 1.0f) * ((LinearProgressIndicatorSpec) eVar).f9253a) / 2.0f);
        }
        float f4 = this.f9296c;
        canvas.clipRect((-f4) / 2.0f, (-f3) / 2.0f, f4 / 2.0f, f3 / 2.0f);
        this.d = ((LinearProgressIndicatorSpec) eVar).f9253a * f;
        this.f9297e = ((LinearProgressIndicatorSpec) eVar).f9254b * f;
    }

    @Override // q6.m
    public final void b(Canvas canvas, Paint paint, float f, float f3, int i6) {
        if (f == f3) {
            return;
        }
        float f4 = this.f9296c;
        float f5 = (-f4) / 2.0f;
        float f10 = this.f9297e * 2.0f;
        float f11 = f4 - f10;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(i6);
        float f12 = this.d;
        RectF rectF = new RectF((f * f11) + f5, (-f12) / 2.0f, (f11 * f3) + f5 + f10, f12 / 2.0f);
        float f13 = this.f9297e;
        canvas.drawRoundRect(rectF, f13, f13, paint);
    }

    @Override // q6.m
    public final void c(Canvas canvas, Paint paint) {
        int iJ = o9.e.j(((LinearProgressIndicatorSpec) this.f9289a).d, this.f9290b.f9288j);
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(iJ);
        float f = this.f9296c;
        float f3 = this.d;
        RectF rectF = new RectF((-f) / 2.0f, (-f3) / 2.0f, f / 2.0f, f3 / 2.0f);
        float f4 = this.f9297e;
        canvas.drawRoundRect(rectF, f4, f4, paint);
    }

    @Override // q6.m
    public final int d() {
        return ((LinearProgressIndicatorSpec) this.f9289a).f9253a;
    }

    @Override // q6.m
    public final int e() {
        return -1;
    }
}
