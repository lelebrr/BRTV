package androidx.recyclerview.widget;

import android.view.animation.Interpolator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h0 implements Interpolator {
    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        float f3 = f - 1.0f;
        return (f3 * f3 * f3 * f3 * f3) + 1.0f;
    }
}
