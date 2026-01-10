package g1;

import android.view.animation.Interpolator;
import ea.q;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class b implements Interpolator {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f7062a;

    /* renamed from: b, reason: collision with root package name */
    public final float f7063b;

    public b(float[] fArr) {
        this.f7062a = fArr;
        this.f7063b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.f7062a;
        int iMin = Math.min((int) ((fArr.length - 1) * f), fArr.length - 2);
        float f3 = this.f7063b;
        float f4 = (f - (iMin * f3)) / f3;
        float f5 = fArr[iMin];
        return q.d(fArr[iMin + 1], f5, f4, f5);
    }
}
