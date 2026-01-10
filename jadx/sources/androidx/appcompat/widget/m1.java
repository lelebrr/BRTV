package androidx.appcompat.widget;

import android.R;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class m1 {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f784a = {R.attr.state_checked};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f785b = new int[0];

    /* renamed from: c, reason: collision with root package name */
    public static final Rect f786c = new Rect();

    public static void a(Drawable drawable) {
        String name = drawable.getClass().getName();
        int i6 = Build.VERSION.SDK_INT;
        int[] iArr = f784a;
        int[] iArr2 = f785b;
        if (i6 == 21 && "android.graphics.drawable.VectorDrawable".equals(name)) {
            int[] state = drawable.getState();
            if (state == null || state.length == 0) {
                drawable.setState(iArr);
            } else {
                drawable.setState(iArr2);
            }
            drawable.setState(state);
            return;
        }
        if (i6 < 29 || i6 >= 31 || !"android.graphics.drawable.ColorStateListDrawable".equals(name)) {
            return;
        }
        int[] state2 = drawable.getState();
        if (state2 == null || state2.length == 0) {
            drawable.setState(iArr);
        } else {
            drawable.setState(iArr2);
        }
        drawable.setState(state2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Rect b(Drawable drawable) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 29) {
            Insets insetsA = l1.a(drawable);
            return new Rect(insetsA.left, insetsA.top, insetsA.right, insetsA.bottom);
        }
        boolean z7 = drawable instanceof g0.i;
        Drawable drawable2 = drawable;
        if (z7) {
            drawable2 = ((g0.j) ((g0.i) drawable)).f;
        }
        if (i6 >= 29) {
            boolean z10 = k1.f765a;
        } else if (k1.f765a) {
            try {
                Object objInvoke = k1.f766b.invoke(drawable2, null);
                if (objInvoke != null) {
                    return new Rect(k1.f767c.getInt(objInvoke), k1.d.getInt(objInvoke), k1.f768e.getInt(objInvoke), k1.f.getInt(objInvoke));
                }
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
        return f786c;
    }

    public static PorterDuff.Mode c(int i6, PorterDuff.Mode mode) {
        if (i6 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i6 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i6 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i6) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }
}
