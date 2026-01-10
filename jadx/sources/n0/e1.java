package n0;

import android.graphics.Rect;
import android.util.Log;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e1 extends i1 {

    /* renamed from: c, reason: collision with root package name */
    public static Field f8310c;
    public static boolean d;

    /* renamed from: e, reason: collision with root package name */
    public static Constructor f8311e;
    public static boolean f;

    /* renamed from: a, reason: collision with root package name */
    public WindowInsets f8312a;

    /* renamed from: b, reason: collision with root package name */
    public f0.c f8313b;

    public e1() {
        this.f8312a = e();
    }

    private static WindowInsets e() {
        if (!d) {
            try {
                f8310c = WindowInsets.class.getDeclaredField("CONSUMED");
            } catch (ReflectiveOperationException e5) {
                Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e5);
            }
            d = true;
        }
        Field field = f8310c;
        if (field != null) {
            try {
                WindowInsets windowInsets = (WindowInsets) field.get(null);
                if (windowInsets != null) {
                    return new WindowInsets(windowInsets);
                }
            } catch (ReflectiveOperationException e10) {
                Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e10);
            }
        }
        if (!f) {
            try {
                f8311e = WindowInsets.class.getConstructor(Rect.class);
            } catch (ReflectiveOperationException e11) {
                Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e11);
            }
            f = true;
        }
        Constructor constructor = f8311e;
        if (constructor != null) {
            try {
                return (WindowInsets) constructor.newInstance(new Rect());
            } catch (ReflectiveOperationException e12) {
                Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e12);
            }
        }
        return null;
    }

    @Override // n0.i1
    public r1 b() {
        a();
        r1 r1VarH = r1.h(this.f8312a, null);
        o1 o1Var = r1VarH.f8352a;
        o1Var.p(null);
        o1Var.s(this.f8313b);
        return r1VarH;
    }

    @Override // n0.i1
    public void c(f0.c cVar) {
        this.f8313b = cVar;
    }

    @Override // n0.i1
    public void d(f0.c cVar) {
        WindowInsets windowInsets = this.f8312a;
        if (windowInsets != null) {
            this.f8312a = windowInsets.replaceSystemWindowInsets(cVar.f6754a, cVar.f6755b, cVar.f6756c, cVar.d);
        }
    }

    public e1(r1 r1Var) {
        super(r1Var);
        this.f8312a = r1Var.g();
    }
}
