package z2;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: e, reason: collision with root package name */
    public static final int f11518e;

    /* renamed from: a, reason: collision with root package name */
    public final Context f11519a;

    /* renamed from: b, reason: collision with root package name */
    public final ActivityManager f11520b;

    /* renamed from: c, reason: collision with root package name */
    public final s2.c f11521c;
    public final float d;

    static {
        f11518e = Build.VERSION.SDK_INT < 26 ? 4 : 1;
    }

    public f(Context context) {
        this.d = f11518e;
        this.f11519a = context;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        this.f11520b = activityManager;
        this.f11521c = new s2.c(10, context.getResources().getDisplayMetrics());
        if (Build.VERSION.SDK_INT < 26 || !activityManager.isLowRamDevice()) {
            return;
        }
        this.d = 0.0f;
    }
}
