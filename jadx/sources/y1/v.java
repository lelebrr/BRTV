package y1;

import android.R;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Transition;
import androidx.transition.Visibility;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class v implements u {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f11323a = {R.attr.interpolator, R.attr.duration, R.attr.startDelay, R.attr.matchOrder};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f11324b = {R.attr.resizeClip};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f11325c = {R.attr.transitionVisibilityMode};
    public static final int[] d = {R.attr.fadingMode};

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f11326e = {R.attr.reparent, R.attr.reparentWithOverlay};
    public static final int[] f = {R.attr.slideEdge};

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f11327g = {R.attr.transitionOrdering};

    /* renamed from: h, reason: collision with root package name */
    public static final int[] f11328h = {R.attr.minimumHorizontalAngle, R.attr.minimumVerticalAngle, R.attr.maximumAngle};

    /* renamed from: i, reason: collision with root package name */
    public static final int[] f11329i = {R.attr.patternPathData};

    /* renamed from: j, reason: collision with root package name */
    public static final String[] f11330j = {"android:visibilityPropagation:visibility", "android:visibilityPropagation:center"};

    /* renamed from: k, reason: collision with root package name */
    public static Method f11331k = null;

    /* renamed from: l, reason: collision with root package name */
    public static Method f11332l = null;

    /* renamed from: m, reason: collision with root package name */
    public static boolean f11333m = false;

    /* renamed from: n, reason: collision with root package name */
    public static boolean f11334n = true;

    /* renamed from: o, reason: collision with root package name */
    public static boolean f11335o = true;

    /* renamed from: p, reason: collision with root package name */
    public static Method f11336p;

    /* renamed from: q, reason: collision with root package name */
    public static boolean f11337q;

    /* renamed from: r, reason: collision with root package name */
    public static Method f11338r;

    /* renamed from: s, reason: collision with root package name */
    public static boolean f11339s;

    /* renamed from: t, reason: collision with root package name */
    public static Field f11340t;

    /* renamed from: u, reason: collision with root package name */
    public static boolean f11341u;

    public static ObjectAnimator c(View view, e0 e0Var, int i6, int i10, float f3, float f4, float f5, float f10, TimeInterpolator timeInterpolator, Visibility visibility) {
        float f11;
        float f12;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        if (((int[]) e0Var.f11260b.getTag(com.p2elite.brtv2.R.id.transition_position)) != null) {
            f11 = (r7[0] - i6) + translationX;
            f12 = (r7[1] - i10) + translationY;
        } else {
            f11 = f3;
            f12 = f4;
        }
        int iRound = Math.round(f11 - translationX) + i6;
        int iRound2 = Math.round(f12 - translationY) + i10;
        view.setTranslationX(f11);
        view.setTranslationY(f12);
        if (f11 == f5 && f12 == f10) {
            return null;
        }
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, f11, f5), PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, f12, f10));
        f0 f0Var = new f0(view, e0Var.f11260b, iRound, iRound2, translationX, translationY);
        visibility.a(f0Var);
        objectAnimatorOfPropertyValuesHolder.addListener(f0Var);
        objectAnimatorOfPropertyValuesHolder.addPauseListener(f0Var);
        objectAnimatorOfPropertyValuesHolder.setInterpolator(timeInterpolator);
        return objectAnimatorOfPropertyValuesHolder;
    }

    public static void d(Canvas canvas, boolean z7) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Method method;
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 29) {
            if (z7) {
                canvas.enableZ();
                return;
            } else {
                canvas.disableZ();
                return;
            }
        }
        if (i6 == 28) {
            throw new IllegalStateException("This method doesn't work on Pie!");
        }
        if (!f11333m) {
            try {
                Method declaredMethod = Canvas.class.getDeclaredMethod("insertReorderBarrier", null);
                f11331k = declaredMethod;
                declaredMethod.setAccessible(true);
                Method declaredMethod2 = Canvas.class.getDeclaredMethod("insertInorderBarrier", null);
                f11332l = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            f11333m = true;
        }
        if (z7) {
            try {
                Method method2 = f11331k;
                if (method2 != null) {
                    method2.invoke(canvas, null);
                }
            } catch (IllegalAccessException unused2) {
                return;
            } catch (InvocationTargetException e5) {
                throw new RuntimeException(e5.getCause());
            }
        }
        if (z7 || (method = f11332l) == null) {
            return;
        }
        method.invoke(canvas, null);
    }

    public static int f(e0 e0Var, int i6) {
        int[] iArr;
        if (e0Var == null || (iArr = (int[]) e0Var.f11259a.get("android:visibilityPropagation:center")) == null) {
            return -1;
        }
        return iArr[i6];
    }

    public static void j(ViewGroup viewGroup, boolean z7) {
        if (Build.VERSION.SDK_INT >= 29) {
            viewGroup.suppressLayout(z7);
        } else if (f11335o) {
            try {
                viewGroup.suppressLayout(z7);
            } catch (NoSuchMethodError unused) {
                f11335o = false;
            }
        }
    }

    @Override // y1.u
    public float a(ViewGroup viewGroup, View view) {
        return view.getTranslationY();
    }

    @Override // y1.u
    public float b(ViewGroup viewGroup, View view) {
        return view.getTranslationX();
    }

    public abstract long e(ViewGroup viewGroup, Transition transition, e0 e0Var, e0 e0Var2);

    public abstract Rect g();

    public void h(View view, int i6, int i10, int i11, int i12) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (!f11339s) {
            try {
                Class cls = Integer.TYPE;
                Method declaredMethod = View.class.getDeclaredMethod("setFrame", cls, cls, cls, cls);
                f11338r = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e5) {
                Log.i("ViewUtilsBase", "Failed to retrieve setFrame method", e5);
            }
            f11339s = true;
        }
        Method method = f11338r;
        if (method != null) {
            try {
                method.invoke(view, Integer.valueOf(i6), Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e10) {
                throw new RuntimeException(e10.getCause());
            }
        }
    }

    public void i(int i6, View view) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        if (!f11341u) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                f11340t = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                Log.i("ViewUtilsBase", "fetchViewFlagsField: ");
            }
            f11341u = true;
        }
        Field field = f11340t;
        if (field != null) {
            try {
                f11340t.setInt(view, i6 | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused2) {
            }
        }
    }
}
