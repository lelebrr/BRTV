package androidx.recyclerview.widget;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b2 {

    /* renamed from: a, reason: collision with root package name */
    public final a2 f2805a;

    /* renamed from: b, reason: collision with root package name */
    public final z1 f2806b;

    public b2(a2 a2Var) {
        this.f2805a = a2Var;
        z1 z1Var = new z1();
        z1Var.f2991a = 0;
        this.f2806b = z1Var;
    }

    public final View a(int i6, int i10, int i11, int i12) {
        a2 a2Var = this.f2805a;
        int iD = a2Var.d();
        int iA = a2Var.a();
        int i13 = i10 > i6 ? 1 : -1;
        View view = null;
        while (i6 != i10) {
            View viewC = a2Var.c(i6);
            int iB = a2Var.b(viewC);
            int iE = a2Var.e(viewC);
            z1 z1Var = this.f2806b;
            z1Var.f2992b = iD;
            z1Var.f2993c = iA;
            z1Var.d = iB;
            z1Var.f2994e = iE;
            if (i11 != 0) {
                z1Var.f2991a = i11;
                if (z1Var.a()) {
                    return viewC;
                }
            }
            if (i12 != 0) {
                z1Var.f2991a = i12;
                if (z1Var.a()) {
                    view = viewC;
                }
            }
            i6 += i13;
        }
        return view;
    }

    public final boolean b(View view) {
        a2 a2Var = this.f2805a;
        int iD = a2Var.d();
        int iA = a2Var.a();
        int iB = a2Var.b(view);
        int iE = a2Var.e(view);
        z1 z1Var = this.f2806b;
        z1Var.f2992b = iD;
        z1Var.f2993c = iA;
        z1Var.d = iB;
        z1Var.f2994e = iE;
        z1Var.f2991a = 24579;
        return z1Var.a();
    }
}
