package u6;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class r extends v {

    /* renamed from: b, reason: collision with root package name */
    public final t f10424b;

    /* renamed from: c, reason: collision with root package name */
    public final float f10425c;
    public final float d;

    public r(t tVar, float f, float f3) {
        this.f10424b = tVar;
        this.f10425c = f;
        this.d = f3;
    }

    @Override // u6.v
    public final void a(Matrix matrix, t6.a aVar, int i6, Canvas canvas) {
        t tVar = this.f10424b;
        float f = tVar.f10432c;
        float f3 = this.d;
        float f4 = tVar.f10431b;
        float f5 = this.f10425c;
        RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(f - f3, f4 - f5), 0.0f);
        Matrix matrix2 = new Matrix(matrix);
        matrix2.preTranslate(f5, f3);
        matrix2.preRotate(b());
        aVar.getClass();
        rectF.bottom += i6;
        rectF.offset(0.0f, -i6);
        int[] iArr = t6.a.f10145i;
        iArr[0] = aVar.f;
        iArr[1] = aVar.f10152e;
        iArr[2] = aVar.d;
        Paint paint = aVar.f10151c;
        float f10 = rectF.left;
        paint.setShader(new LinearGradient(f10, rectF.top, f10, rectF.bottom, iArr, t6.a.f10146j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix2);
        canvas.drawRect(rectF, paint);
        canvas.restore();
    }

    public final float b() {
        t tVar = this.f10424b;
        return (float) Math.toDegrees(Math.atan((tVar.f10432c - this.d) / (tVar.f10431b - this.f10425c)));
    }
}
