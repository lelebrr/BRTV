package y1;

import android.graphics.Matrix;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public class h0 extends v {

    /* renamed from: v, reason: collision with root package name */
    public static boolean f11282v = true;

    /* renamed from: w, reason: collision with root package name */
    public static boolean f11283w = true;

    /* renamed from: x, reason: collision with root package name */
    public static boolean f11284x = true;

    /* renamed from: y, reason: collision with root package name */
    public static boolean f11285y = true;

    public float k(View view) {
        if (f11282v) {
            try {
                return view.getTransitionAlpha();
            } catch (NoSuchMethodError unused) {
                f11282v = false;
            }
        }
        return view.getAlpha();
    }

    public void l(View view, Matrix matrix) {
        if (f11283w) {
            try {
                view.setAnimationMatrix(matrix);
            } catch (NoSuchMethodError unused) {
                f11283w = false;
            }
        }
    }

    public void m(View view, float f) {
        if (f11282v) {
            try {
                view.setTransitionAlpha(f);
                return;
            } catch (NoSuchMethodError unused) {
                f11282v = false;
            }
        }
        view.setAlpha(f);
    }

    public void n(View view, Matrix matrix) {
        if (f11284x) {
            try {
                view.transformMatrixToGlobal(matrix);
            } catch (NoSuchMethodError unused) {
                f11284x = false;
            }
        }
    }

    public void o(View view, Matrix matrix) {
        if (f11285y) {
            try {
                view.transformMatrixToLocal(matrix);
            } catch (NoSuchMethodError unused) {
                f11285y = false;
            }
        }
    }
}
