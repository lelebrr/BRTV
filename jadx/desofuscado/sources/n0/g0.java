package n0;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class g0 {
    public static void a(WindowInsets windowInsets, View view) {
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback);
        if (onApplyWindowInsetsListener != null) {
            onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
        }
    }

    public static r1 b(View view, r1 r1Var, Rect rect) {
        WindowInsets windowInsetsG = r1Var.g();
        if (windowInsetsG != null) {
            return r1.h(view.computeSystemWindowInsets(windowInsetsG, rect), view);
        }
        rect.setEmpty();
        return r1Var;
    }

    public static boolean c(View view, float f, float f3, boolean z7) {
        return view.dispatchNestedFling(f, f3, z7);
    }

    public static boolean d(View view, float f, float f3) {
        return view.dispatchNestedPreFling(f, f3);
    }

    public static boolean e(View view, int i6, int i10, int[] iArr, int[] iArr2) {
        return view.dispatchNestedPreScroll(i6, i10, iArr, iArr2);
    }

    public static boolean f(View view, int i6, int i10, int i11, int i12, int[] iArr) {
        return view.dispatchNestedScroll(i6, i10, i11, i12, iArr);
    }

    public static ColorStateList g(View view) {
        return view.getBackgroundTintList();
    }

    public static PorterDuff.Mode h(View view) {
        return view.getBackgroundTintMode();
    }

    public static float i(View view) {
        return view.getElevation();
    }

    public static r1 j(View view) throws IllegalAccessException, IllegalArgumentException {
        if (!d1.d || !view.isAttachedToWindow()) {
            return null;
        }
        try {
            Object obj = d1.f8303a.get(view.getRootView());
            if (obj == null) {
                return null;
            }
            Rect rect = (Rect) d1.f8304b.get(obj);
            Rect rect2 = (Rect) d1.f8305c.get(obj);
            if (rect == null || rect2 == null) {
                return null;
            }
            int i6 = Build.VERSION.SDK_INT;
            i1 h1Var = i6 >= 30 ? new h1() : i6 >= 29 ? new g1() : new e1();
            h1Var.c(f0.c.a(rect.left, rect.top, rect.right, rect.bottom));
            h1Var.d(f0.c.a(rect2.left, rect2.top, rect2.right, rect2.bottom));
            r1 r1VarB = h1Var.b();
            r1VarB.f8352a.r(r1VarB);
            r1VarB.f8352a.d(view.getRootView());
            return r1VarB;
        } catch (IllegalAccessException e5) {
            Log.w("WindowInsetsCompat", "Failed to get insets from AttachInfo. " + e5.getMessage(), e5);
            return null;
        }
    }

    public static String k(View view) {
        return view.getTransitionName();
    }

    public static float l(View view) {
        return view.getTranslationZ();
    }

    public static float m(View view) {
        return view.getZ();
    }

    public static boolean n(View view) {
        return view.hasNestedScrollingParent();
    }

    public static boolean o(View view) {
        return view.isImportantForAccessibility();
    }

    public static boolean p(View view) {
        return view.isNestedScrollingEnabled();
    }

    public static void q(View view, ColorStateList colorStateList) {
        view.setBackgroundTintList(colorStateList);
    }

    public static void r(View view, PorterDuff.Mode mode) {
        view.setBackgroundTintMode(mode);
    }

    public static void s(View view, float f) {
        view.setElevation(f);
    }

    public static void t(View view, boolean z7) {
        view.setNestedScrollingEnabled(z7);
    }

    public static void u(View view, s sVar) {
        if (Build.VERSION.SDK_INT < 30) {
            view.setTag(R.id.tag_on_apply_window_listener, sVar);
        }
        if (sVar == null) {
            view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback));
        } else {
            view.setOnApplyWindowInsetsListener(new f0(view, sVar));
        }
    }

    public static void v(View view, String str) {
        view.setTransitionName(str);
    }

    public static void w(View view, float f) {
        view.setTranslationZ(f);
    }

    public static void x(View view, float f) {
        view.setZ(f);
    }

    public static boolean y(View view, int i6) {
        return view.startNestedScroll(i6);
    }

    public static void z(View view) {
        view.stopNestedScroll();
    }
}
