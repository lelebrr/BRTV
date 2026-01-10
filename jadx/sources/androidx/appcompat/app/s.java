package androidx.appcompat.app;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.c4;
import androidx.appcompat.widget.h1;
import com.p2elite.brtv2.R;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import n0.r1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s implements n0.s, h1, k.x {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f354a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g0 f355b;

    public /* synthetic */ s(g0 g0Var, int i6) {
        this.f354a = i6;
        this.f355b = g0Var;
    }

    @Override // k.x
    public void b(k.l lVar, boolean z7) {
        f0 f0Var;
        switch (this.f354a) {
            case 2:
                this.f355b.r(lVar);
                break;
            default:
                k.l lVarK = lVar.k();
                int i6 = 0;
                boolean z10 = lVarK != lVar;
                if (z10) {
                    lVar = lVarK;
                }
                g0 g0Var = this.f355b;
                f0[] f0VarArr = g0Var.M;
                int length = f0VarArr != null ? f0VarArr.length : 0;
                while (true) {
                    if (i6 >= length) {
                        f0Var = null;
                    } else {
                        f0Var = f0VarArr[i6];
                        if (f0Var == null || f0Var.f253h != lVar) {
                            i6++;
                        }
                    }
                }
                if (f0Var != null) {
                    if (!z10) {
                        g0Var.s(f0Var, z7);
                        break;
                    } else {
                        g0Var.q(f0Var.f248a, f0Var, lVarK);
                        g0Var.s(f0Var, true);
                        break;
                    }
                }
                break;
        }
    }

    @Override // k.x
    public boolean f(k.l lVar) {
        Window.Callback callback;
        switch (this.f354a) {
            case 2:
                Window.Callback callback2 = this.f355b.f275l.getCallback();
                if (callback2 != null) {
                    callback2.onMenuOpened(108, lVar);
                    break;
                }
                break;
            default:
                if (lVar == lVar.k()) {
                    g0 g0Var = this.f355b;
                    if (g0Var.G && (callback = g0Var.f275l.getCallback()) != null && !g0Var.R) {
                        callback.onMenuOpened(108, lVar);
                        break;
                    }
                }
                break;
        }
        return true;
    }

    @Override // n0.s
    public r1 onApplyWindowInsets(View view, r1 r1Var) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        boolean z7;
        View view2;
        r1 r1VarF;
        boolean z10;
        int iD = r1Var.d();
        g0 g0Var = this.f355b;
        g0Var.getClass();
        int iD2 = r1Var.d();
        ActionBarContextView actionBarContextView = g0Var.f285v;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z7 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) g0Var.f285v.getLayoutParams();
            if (g0Var.f285v.isShown()) {
                if (g0Var.f269e0 == null) {
                    g0Var.f269e0 = new Rect();
                    g0Var.f270f0 = new Rect();
                }
                Rect rect = g0Var.f269e0;
                Rect rect2 = g0Var.f270f0;
                rect.set(r1Var.b(), r1Var.d(), r1Var.c(), r1Var.a());
                ViewGroup viewGroup = g0Var.B;
                Method method = c4.f678a;
                if (method != null) {
                    try {
                        method.invoke(viewGroup, rect, rect2);
                    } catch (Exception e5) {
                        Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", e5);
                    }
                }
                int i6 = rect.top;
                int i10 = rect.left;
                int i11 = rect.right;
                ViewGroup viewGroup2 = g0Var.B;
                WeakHashMap weakHashMap = n0.s0.f8353a;
                r1 r1VarA = Build.VERSION.SDK_INT >= 23 ? n0.h0.a(viewGroup2) : n0.g0.j(viewGroup2);
                int iB = r1VarA == null ? 0 : r1VarA.b();
                int iC = r1VarA == null ? 0 : r1VarA.c();
                if (marginLayoutParams.topMargin == i6 && marginLayoutParams.leftMargin == i10 && marginLayoutParams.rightMargin == i11) {
                    z10 = false;
                } else {
                    marginLayoutParams.topMargin = i6;
                    marginLayoutParams.leftMargin = i10;
                    marginLayoutParams.rightMargin = i11;
                    z10 = true;
                }
                Context context = g0Var.f274k;
                if (i6 <= 0 || g0Var.D != null) {
                    View view3 = g0Var.D;
                    if (view3 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view3.getLayoutParams();
                        int i12 = marginLayoutParams2.height;
                        int i13 = marginLayoutParams.topMargin;
                        if (i12 != i13 || marginLayoutParams2.leftMargin != iB || marginLayoutParams2.rightMargin != iC) {
                            marginLayoutParams2.height = i13;
                            marginLayoutParams2.leftMargin = iB;
                            marginLayoutParams2.rightMargin = iC;
                            g0Var.D.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view4 = new View(context);
                    g0Var.D = view4;
                    view4.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = iB;
                    layoutParams.rightMargin = iC;
                    g0Var.B.addView(g0Var.D, -1, layoutParams);
                }
                View view5 = g0Var.D;
                z = view5 != null;
                if (z && view5.getVisibility() != 0) {
                    View view6 = g0Var.D;
                    view6.setBackgroundColor((view6.getWindowSystemUiVisibility() & 8192) != 0 ? u7.d.i(context, R.color.abc_decor_view_status_guard_light) : u7.d.i(context, R.color.abc_decor_view_status_guard));
                }
                if (!g0Var.I && z) {
                    iD2 = 0;
                }
                z7 = z;
                z = z10;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z7 = false;
            } else {
                z7 = false;
                z = false;
            }
            if (z) {
                g0Var.f285v.setLayoutParams(marginLayoutParams);
            }
        }
        View view7 = g0Var.D;
        if (view7 != null) {
            view7.setVisibility(z7 ? 0 : 8);
        }
        if (iD != iD2) {
            r1VarF = r1Var.f(r1Var.b(), iD2, r1Var.c(), r1Var.a());
            view2 = view;
        } else {
            view2 = view;
            r1VarF = r1Var;
        }
        return n0.s0.k(view2, r1VarF);
    }
}
