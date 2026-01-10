package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class d0 {

    /* renamed from: a, reason: collision with root package name */
    public final x0 f2820a;

    /* renamed from: b, reason: collision with root package name */
    public int f2821b = Integer.MIN_VALUE;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f2822c = new Rect();

    public d0(x0 x0Var) {
        this.f2820a = x0Var;
    }

    public static d0 a(x0 x0Var, int i6) {
        if (i6 == 0) {
            return new b0(x0Var);
        }
        if (i6 == 1) {
            return new c0(x0Var);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public abstract int b(View view);

    public abstract int c(View view);

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f();

    public abstract int g();

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public final int m() {
        if (Integer.MIN_VALUE == this.f2821b) {
            return 0;
        }
        return l() - this.f2821b;
    }

    public abstract int n(View view);

    public abstract int o(View view);

    public abstract void p(int i6);
}
