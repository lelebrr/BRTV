package y1;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class c0 implements TypeEvaluator {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f11248a = new float[9];

    /* renamed from: b, reason: collision with root package name */
    public final float[] f11249b = new float[9];

    /* renamed from: c, reason: collision with root package name */
    public final Matrix f11250c = new Matrix();

    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f, Object obj, Object obj2) {
        float[] fArr = this.f11248a;
        ((Matrix) obj).getValues(fArr);
        float[] fArr2 = this.f11249b;
        ((Matrix) obj2).getValues(fArr2);
        for (int i6 = 0; i6 < 9; i6++) {
            float f3 = fArr2[i6];
            float f4 = fArr[i6];
            fArr2[i6] = ea.q.d(f3, f4, f, f4);
        }
        Matrix matrix = this.f11250c;
        matrix.setValues(fArr2);
        return matrix;
    }
}
