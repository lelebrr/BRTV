package o;

import android.graphics.drawable.Drawable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class b extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public static final double f8517a = Math.cos(Math.toRadians(45.0d));

    public static float a(float f, float f3, boolean z7) {
        if (!z7) {
            return f;
        }
        return (float) (((1.0d - f8517a) * f3) + f);
    }

    public static float b(float f, float f3, boolean z7) {
        if (!z7) {
            return f * 1.5f;
        }
        return (float) (((1.0d - f8517a) * f3) + (f * 1.5f));
    }
}
