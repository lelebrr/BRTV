package b2;

import android.view.animation.Interpolator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e implements Interpolator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3152a;

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        switch (this.f3152a) {
            case 0:
                float f3 = f - 1.0f;
                return (f3 * f3 * f3 * f3 * f3) + 1.0f;
            default:
                float f4 = f - 1.0f;
                return (f4 * f4 * f4 * f4 * f4) + 1.0f;
        }
    }
}
