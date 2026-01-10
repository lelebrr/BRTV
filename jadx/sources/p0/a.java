package p0;

import android.graphics.Path;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a {
    public static Interpolator a(float f, float f3) {
        return new PathInterpolator(f, f3);
    }

    public static Interpolator b(float f, float f3, float f4, float f5) {
        return new PathInterpolator(f, f3, f4, f5);
    }

    public static Interpolator c(Path path) {
        return new PathInterpolator(path);
    }
}
