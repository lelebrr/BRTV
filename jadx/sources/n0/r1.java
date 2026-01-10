package n0;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.Objects;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r1 {

    /* renamed from: b, reason: collision with root package name */
    public static final r1 f8351b;

    /* renamed from: a, reason: collision with root package name */
    public final o1 f8352a;

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            f8351b = n1.f8338q;
        } else {
            f8351b = o1.f8343b;
        }
    }

    public r1(WindowInsets windowInsets) {
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 30) {
            this.f8352a = new n1(this, windowInsets);
            return;
        }
        if (i6 >= 29) {
            this.f8352a = new m1(this, windowInsets);
        } else if (i6 >= 28) {
            this.f8352a = new l1(this, windowInsets);
        } else {
            this.f8352a = new k1(this, windowInsets);
        }
    }

    public static f0.c e(f0.c cVar, int i6, int i10, int i11, int i12) {
        int iMax = Math.max(0, cVar.f6754a - i6);
        int iMax2 = Math.max(0, cVar.f6755b - i10);
        int iMax3 = Math.max(0, cVar.f6756c - i11);
        int iMax4 = Math.max(0, cVar.d - i12);
        return (iMax == i6 && iMax2 == i10 && iMax3 == i11 && iMax4 == i12) ? cVar : f0.c.a(iMax, iMax2, iMax3, iMax4);
    }

    public static r1 h(WindowInsets windowInsets, View view) {
        windowInsets.getClass();
        r1 r1Var = new r1(windowInsets);
        if (view != null && view.isAttachedToWindow()) {
            WeakHashMap weakHashMap = s0.f8353a;
            r1 r1VarA = Build.VERSION.SDK_INT >= 23 ? h0.a(view) : g0.j(view);
            o1 o1Var = r1Var.f8352a;
            o1Var.r(r1VarA);
            o1Var.d(view.getRootView());
        }
        return r1Var;
    }

    public final int a() {
        return this.f8352a.k().d;
    }

    public final int b() {
        return this.f8352a.k().f6754a;
    }

    public final int c() {
        return this.f8352a.k().f6756c;
    }

    public final int d() {
        return this.f8352a.k().f6755b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r1)) {
            return false;
        }
        return Objects.equals(this.f8352a, ((r1) obj).f8352a);
    }

    public final r1 f(int i6, int i10, int i11, int i12) {
        int i13 = Build.VERSION.SDK_INT;
        i1 h1Var = i13 >= 30 ? new h1(this) : i13 >= 29 ? new g1(this) : new e1(this);
        h1Var.d(f0.c.a(i6, i10, i11, i12));
        return h1Var.b();
    }

    public final WindowInsets g() {
        o1 o1Var = this.f8352a;
        if (o1Var instanceof j1) {
            return ((j1) o1Var).f8330c;
        }
        return null;
    }

    public final int hashCode() {
        o1 o1Var = this.f8352a;
        if (o1Var == null) {
            return 0;
        }
        return o1Var.hashCode();
    }

    public r1(r1 r1Var) {
        if (r1Var != null) {
            o1 o1Var = r1Var.f8352a;
            int i6 = Build.VERSION.SDK_INT;
            if (i6 >= 30 && (o1Var instanceof n1)) {
                this.f8352a = new n1(this, (n1) o1Var);
            } else if (i6 >= 29 && (o1Var instanceof m1)) {
                this.f8352a = new m1(this, (m1) o1Var);
            } else if (i6 >= 28 && (o1Var instanceof l1)) {
                this.f8352a = new l1(this, (l1) o1Var);
            } else if (o1Var instanceof k1) {
                this.f8352a = new k1(this, (k1) o1Var);
            } else if (o1Var instanceof j1) {
                this.f8352a = new j1(this, (j1) o1Var);
            } else {
                this.f8352a = new o1(this);
            }
            o1Var.e(this);
            return;
        }
        this.f8352a = new o1(this);
    }
}
