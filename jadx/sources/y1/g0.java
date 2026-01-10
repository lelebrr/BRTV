package y1;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import androidx.appcompat.widget.g3;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class g0 {

    /* renamed from: a, reason: collision with root package name */
    public static final h0 f11276a;

    /* renamed from: b, reason: collision with root package name */
    public static final g3 f11277b;

    /* renamed from: c, reason: collision with root package name */
    public static final g3 f11278c;

    static {
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 29) {
            f11276a = new k0();
        } else if (i6 >= 23) {
            f11276a = new j0();
        } else if (i6 >= 22) {
            f11276a = new i0();
        } else {
            f11276a = new h0();
        }
        f11277b = new g3("translationAlpha", Float.class, 18);
        f11278c = new g3("clipBounds", Rect.class, 19);
    }

    public static void a(View view, int i6, int i10, int i11, int i12) {
        f11276a.h(view, i6, i10, i11, i12);
    }

    public static void b(View view, float f) {
        f11276a.m(view, f);
    }

    public static void c(int i6, View view) {
        f11276a.i(i6, view);
    }
}
