package l6;

import android.animation.FloatEvaluator;
import android.animation.TypeEvaluator;
import android.graphics.Rect;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m implements TypeEvaluator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8033a;

    /* renamed from: b, reason: collision with root package name */
    public Object f8034b;

    public /* synthetic */ m(int i6) {
        this.f8033a = i6;
    }

    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f, Object obj, Object obj2) {
        switch (this.f8033a) {
            case 0:
                float fFloatValue = ((FloatEvaluator) this.f8034b).evaluate(f, (Number) obj, (Number) obj2).floatValue();
                if (fFloatValue < 0.1f) {
                    fFloatValue = 0.0f;
                }
                return Float.valueOf(fFloatValue);
            case 1:
                float[] fArr = (float[]) obj;
                float[] fArr2 = (float[]) obj2;
                float[] fArr3 = (float[]) this.f8034b;
                if (fArr3 == null) {
                    fArr3 = new float[fArr.length];
                }
                for (int i6 = 0; i6 < fArr3.length; i6++) {
                    float f3 = fArr[i6];
                    fArr3[i6] = ea.q.d(fArr2[i6], f3, f, f3);
                }
                return fArr3;
            case 2:
                Rect rect = (Rect) obj;
                Rect rect2 = (Rect) obj2;
                int i10 = rect.left + ((int) ((rect2.left - r0) * f));
                int i11 = rect.top + ((int) ((rect2.top - r1) * f));
                int i12 = rect.right + ((int) ((rect2.right - r2) * f));
                int i13 = rect.bottom + ((int) ((rect2.bottom - r10) * f));
                Rect rect3 = (Rect) this.f8034b;
                if (rect3 == null) {
                    return new Rect(i10, i11, i12, i13);
                }
                rect3.set(i10, i11, i12, i13);
                return rect3;
            default:
                f0.f[] fVarArr = (f0.f[]) obj;
                f0.f[] fVarArr2 = (f0.f[]) obj2;
                if (!com.bumptech.glide.d.a(fVarArr, fVarArr2)) {
                    throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
                }
                if (!com.bumptech.glide.d.a((f0.f[]) this.f8034b, fVarArr)) {
                    this.f8034b = com.bumptech.glide.d.h(fVarArr);
                }
                for (int i14 = 0; i14 < fVarArr.length; i14++) {
                    f0.f fVar = ((f0.f[]) this.f8034b)[i14];
                    f0.f fVar2 = fVarArr[i14];
                    f0.f fVar3 = fVarArr2[i14];
                    fVar.getClass();
                    fVar.f6758a = fVar2.f6758a;
                    int i15 = 0;
                    while (true) {
                        float[] fArr4 = fVar2.f6759b;
                        if (i15 < fArr4.length) {
                            fVar.f6759b[i15] = (fVar3.f6759b[i15] * f) + ((1.0f - f) * fArr4[i15]);
                            i15++;
                        }
                    }
                }
                return (f0.f[]) this.f8034b;
        }
    }
}
