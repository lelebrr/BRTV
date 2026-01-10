package n0;

import android.view.View;
import android.view.WindowInsets;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class h0 {
    public static r1 a(View view) {
        WindowInsets rootWindowInsets = view.getRootWindowInsets();
        if (rootWindowInsets == null) {
            return null;
        }
        r1 r1VarH = r1.h(rootWindowInsets, null);
        o1 o1Var = r1VarH.f8352a;
        o1Var.r(r1VarH);
        o1Var.d(view.getRootView());
        return r1VarH;
    }

    public static int b(View view) {
        return view.getScrollIndicators();
    }

    public static void c(View view, int i6) {
        view.setScrollIndicators(i6);
    }

    public static void d(View view, int i6, int i10) {
        view.setScrollIndicators(i6, i10);
    }
}
