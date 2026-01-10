package l6;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k implements TypeEvaluator {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f8023a = new float[9];

    /* renamed from: b, reason: collision with root package name */
    public final float[] f8024b = new float[9];

    /* renamed from: c, reason: collision with root package name */
    public final Matrix f8025c = new Matrix();
    public final /* synthetic */ q d;

    public k(q qVar) {
        this.d = qVar;
    }

    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f, Object obj, Object obj2) {
        this.d.f8052p = f;
        float[] fArr = this.f8023a;
        ((Matrix) obj).getValues(fArr);
        float[] fArr2 = this.f8024b;
        ((Matrix) obj2).getValues(fArr2);
        for (int i6 = 0; i6 < 9; i6++) {
            float f3 = fArr2[i6];
            float f4 = fArr[i6];
            fArr2[i6] = ea.q.d(f3, f4, f, f4);
        }
        Matrix matrix = this.f8025c;
        matrix.setValues(fArr2);
        return matrix;
    }
}
