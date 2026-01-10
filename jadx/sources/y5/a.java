package y5;

import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import ea.q;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final LinearInterpolator f11406a = new LinearInterpolator();

    /* renamed from: b, reason: collision with root package name */
    public static final g1.a f11407b = new g1.a();

    /* renamed from: c, reason: collision with root package name */
    public static final g1.a f11408c = new g1.a(g1.a.f7060c);
    public static final g1.a d = new g1.a(g1.a.f7061e);

    /* renamed from: e, reason: collision with root package name */
    public static final DecelerateInterpolator f11409e = new DecelerateInterpolator();

    public static float a(float f, float f3, float f4) {
        return q.d(f3, f, f4, f);
    }

    public static float b(float f, float f3, float f4, float f5, float f10) {
        return f10 < f4 ? f : f10 > f5 ? f3 : a(f, f3, (f10 - f4) / (f5 - f4));
    }

    public static int c(float f, int i6, int i10) {
        return Math.round(f * (i10 - i6)) + i6;
    }
}
