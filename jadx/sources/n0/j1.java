package n0;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class j1 extends o1 {

    /* renamed from: h, reason: collision with root package name */
    public static boolean f8325h;

    /* renamed from: i, reason: collision with root package name */
    public static Method f8326i;

    /* renamed from: j, reason: collision with root package name */
    public static Class f8327j;

    /* renamed from: k, reason: collision with root package name */
    public static Field f8328k;

    /* renamed from: l, reason: collision with root package name */
    public static Field f8329l;

    /* renamed from: c, reason: collision with root package name */
    public final WindowInsets f8330c;
    public f0.c[] d;

    /* renamed from: e, reason: collision with root package name */
    public f0.c f8331e;
    public r1 f;

    /* renamed from: g, reason: collision with root package name */
    public f0.c f8332g;

    public j1(r1 r1Var, WindowInsets windowInsets) {
        super(r1Var);
        this.f8331e = null;
        this.f8330c = windowInsets;
    }

    @SuppressLint({"WrongConstant"})
    private f0.c t(int i6, boolean z7) {
        f0.c cVarA = f0.c.f6753e;
        for (int i10 = 1; i10 <= 256; i10 <<= 1) {
            if ((i6 & i10) != 0) {
                f0.c cVarU = u(i10, z7);
                cVarA = f0.c.a(Math.max(cVarA.f6754a, cVarU.f6754a), Math.max(cVarA.f6755b, cVarU.f6755b), Math.max(cVarA.f6756c, cVarU.f6756c), Math.max(cVarA.d, cVarU.d));
            }
        }
        return cVarA;
    }

    private f0.c v() {
        r1 r1Var = this.f;
        return r1Var != null ? r1Var.f8352a.i() : f0.c.f6753e;
    }

    private f0.c w(View view) throws IllegalAccessException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 30) {
            throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
        }
        if (!f8325h) {
            x();
        }
        Method method = f8326i;
        if (method != null && f8327j != null && f8328k != null) {
            try {
                Object objInvoke = method.invoke(view, null);
                if (objInvoke == null) {
                    Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                    return null;
                }
                Rect rect = (Rect) f8328k.get(f8329l.get(objInvoke));
                if (rect != null) {
                    return f0.c.a(rect.left, rect.top, rect.right, rect.bottom);
                }
                return null;
            } catch (ReflectiveOperationException e5) {
                Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e5.getMessage(), e5);
            }
        }
        return null;
    }

    @SuppressLint({"PrivateApi"})
    private static void x() throws ClassNotFoundException, SecurityException {
        try {
            f8326i = View.class.getDeclaredMethod("getViewRootImpl", null);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            f8327j = cls;
            f8328k = cls.getDeclaredField("mVisibleInsets");
            f8329l = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
            f8328k.setAccessible(true);
            f8329l.setAccessible(true);
        } catch (ReflectiveOperationException e5) {
            Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e5.getMessage(), e5);
        }
        f8325h = true;
    }

    @Override // n0.o1
    public void d(View view) throws IllegalAccessException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        f0.c cVarW = w(view);
        if (cVarW == null) {
            cVarW = f0.c.f6753e;
        }
        q(cVarW);
    }

    @Override // n0.o1
    public void e(r1 r1Var) {
        r1Var.f8352a.r(this.f);
        r1Var.f8352a.q(this.f8332g);
    }

    @Override // n0.o1
    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return Objects.equals(this.f8332g, ((j1) obj).f8332g);
        }
        return false;
    }

    @Override // n0.o1
    public f0.c g(int i6) {
        return t(i6, false);
    }

    @Override // n0.o1
    public final f0.c k() {
        if (this.f8331e == null) {
            WindowInsets windowInsets = this.f8330c;
            this.f8331e = f0.c.a(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        return this.f8331e;
    }

    @Override // n0.o1
    public r1 m(int i6, int i10, int i11, int i12) {
        r1 r1VarH = r1.h(this.f8330c, null);
        int i13 = Build.VERSION.SDK_INT;
        i1 h1Var = i13 >= 30 ? new h1(r1VarH) : i13 >= 29 ? new g1(r1VarH) : new e1(r1VarH);
        h1Var.d(r1.e(k(), i6, i10, i11, i12));
        h1Var.c(r1.e(i(), i6, i10, i11, i12));
        return h1Var.b();
    }

    @Override // n0.o1
    public boolean o() {
        return this.f8330c.isRound();
    }

    @Override // n0.o1
    public void p(f0.c[] cVarArr) {
        this.d = cVarArr;
    }

    @Override // n0.o1
    public void q(f0.c cVar) {
        this.f8332g = cVar;
    }

    @Override // n0.o1
    public void r(r1 r1Var) {
        this.f = r1Var;
    }

    public f0.c u(int i6, boolean z7) {
        f0.c cVarI;
        int i10;
        if (i6 == 1) {
            return z7 ? f0.c.a(0, Math.max(v().f6755b, k().f6755b), 0, 0) : f0.c.a(0, k().f6755b, 0, 0);
        }
        if (i6 == 2) {
            if (z7) {
                f0.c cVarV = v();
                f0.c cVarI2 = i();
                return f0.c.a(Math.max(cVarV.f6754a, cVarI2.f6754a), 0, Math.max(cVarV.f6756c, cVarI2.f6756c), Math.max(cVarV.d, cVarI2.d));
            }
            f0.c cVarK = k();
            r1 r1Var = this.f;
            cVarI = r1Var != null ? r1Var.f8352a.i() : null;
            int iMin = cVarK.d;
            if (cVarI != null) {
                iMin = Math.min(iMin, cVarI.d);
            }
            return f0.c.a(cVarK.f6754a, 0, cVarK.f6756c, iMin);
        }
        f0.c cVar = f0.c.f6753e;
        if (i6 == 8) {
            f0.c[] cVarArr = this.d;
            cVarI = cVarArr != null ? cVarArr[3] : null;
            if (cVarI != null) {
                return cVarI;
            }
            f0.c cVarK2 = k();
            f0.c cVarV2 = v();
            int i11 = cVarK2.d;
            if (i11 > cVarV2.d) {
                return f0.c.a(0, 0, 0, i11);
            }
            f0.c cVar2 = this.f8332g;
            return (cVar2 == null || cVar2.equals(cVar) || (i10 = this.f8332g.d) <= cVarV2.d) ? cVar : f0.c.a(0, 0, 0, i10);
        }
        if (i6 == 16) {
            return j();
        }
        if (i6 == 32) {
            return h();
        }
        if (i6 == 64) {
            return l();
        }
        if (i6 != 128) {
            return cVar;
        }
        r1 r1Var2 = this.f;
        k kVarF = r1Var2 != null ? r1Var2.f8352a.f() : f();
        if (kVarF == null) {
            return cVar;
        }
        int i12 = Build.VERSION.SDK_INT;
        return f0.c.a(i12 >= 28 ? j.d(kVarF.f8333a) : 0, i12 >= 28 ? j.f(kVarF.f8333a) : 0, i12 >= 28 ? j.e(kVarF.f8333a) : 0, i12 >= 28 ? j.c(kVarF.f8333a) : 0);
    }

    public j1(r1 r1Var, j1 j1Var) {
        this(r1Var, new WindowInsets(j1Var.f8330c));
    }
}
