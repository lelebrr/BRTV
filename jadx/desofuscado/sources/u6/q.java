package u6;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class q extends v {

    /* renamed from: b, reason: collision with root package name */
    public final s f10423b;

    public q(s sVar) {
        this.f10423b = sVar;
    }

    @Override // u6.v
    public final void a(Matrix matrix, t6.a aVar, int i6, Canvas canvas) {
        s sVar = this.f10423b;
        float f = sVar.f;
        float f3 = sVar.f10430g;
        RectF rectF = new RectF(sVar.f10427b, sVar.f10428c, sVar.d, sVar.f10429e);
        aVar.getClass();
        boolean z7 = f3 < 0.0f;
        Path path = aVar.f10153g;
        int[] iArr = t6.a.f10147k;
        if (z7) {
            iArr[0] = 0;
            iArr[1] = aVar.f;
            iArr[2] = aVar.f10152e;
            iArr[3] = aVar.d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f, f3);
            path.close();
            float f4 = -i6;
            rectF.inset(f4, f4);
            iArr[0] = 0;
            iArr[1] = aVar.d;
            iArr[2] = aVar.f10152e;
            iArr[3] = aVar.f;
        }
        float fWidth = rectF.width() / 2.0f;
        if (fWidth <= 0.0f) {
            return;
        }
        float f5 = 1.0f - (i6 / fWidth);
        float[] fArr = t6.a.f10148l;
        fArr[1] = f5;
        fArr[2] = ((1.0f - f5) / 2.0f) + f5;
        RadialGradient radialGradient = new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, iArr, fArr, Shader.TileMode.CLAMP);
        Paint paint = aVar.f10150b;
        paint.setShader(radialGradient);
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z7) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, aVar.f10154h);
        }
        canvas.drawArc(rectF, f, f3, true, paint);
        canvas.restore();
    }
}
