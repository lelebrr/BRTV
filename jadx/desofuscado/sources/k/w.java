package k;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import com.p2elite.brtv2.R;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7668a;

    /* renamed from: b, reason: collision with root package name */
    public final l f7669b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f7670c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public View f7671e;

    /* renamed from: g, reason: collision with root package name */
    public boolean f7672g;

    /* renamed from: h, reason: collision with root package name */
    public x f7673h;

    /* renamed from: i, reason: collision with root package name */
    public t f7674i;

    /* renamed from: j, reason: collision with root package name */
    public u f7675j;
    public int f = 8388611;

    /* renamed from: k, reason: collision with root package name */
    public final u f7676k = new u(this);

    public w(int i6, Context context, View view, l lVar, boolean z7) {
        this.f7668a = context;
        this.f7669b = lVar;
        this.f7671e = view;
        this.f7670c = z7;
        this.d = i6;
    }

    public final t a() {
        t d0Var;
        if (this.f7674i == null) {
            Context context = this.f7668a;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            v.a(defaultDisplay, point);
            if (Math.min(point.x, point.y) >= context.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width)) {
                d0Var = new f(context, this.f7671e, this.d, this.f7670c);
            } else {
                View view = this.f7671e;
                Context context2 = this.f7668a;
                boolean z7 = this.f7670c;
                d0Var = new d0(this.d, context2, view, this.f7669b, z7);
            }
            d0Var.n(this.f7669b);
            d0Var.t(this.f7676k);
            d0Var.p(this.f7671e);
            d0Var.i(this.f7673h);
            d0Var.q(this.f7672g);
            d0Var.r(this.f);
            this.f7674i = d0Var;
        }
        return this.f7674i;
    }

    public final boolean b() {
        t tVar = this.f7674i;
        return tVar != null && tVar.c();
    }

    public void c() {
        this.f7674i = null;
        u uVar = this.f7675j;
        if (uVar != null) {
            uVar.onDismiss();
        }
    }

    public final void d(int i6, int i10, boolean z7, boolean z10) {
        t tVarA = a();
        tVarA.u(z10);
        if (z7) {
            int i11 = this.f;
            View view = this.f7671e;
            WeakHashMap weakHashMap = s0.f8353a;
            if ((Gravity.getAbsoluteGravity(i11, view.getLayoutDirection()) & 7) == 5) {
                i6 -= this.f7671e.getWidth();
            }
            tVarA.s(i6);
            tVarA.v(i10);
            int i12 = (int) ((this.f7668a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            tVarA.f7666a = new Rect(i6 - i12, i10 - i12, i6 + i12, i10 + i12);
        }
        tVarA.a();
    }
}
