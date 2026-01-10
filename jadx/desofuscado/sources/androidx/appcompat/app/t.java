package androidx.appcompat.app;

import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t extends o9.d {

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f364j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f365k;

    public /* synthetic */ t(int i6, Object obj) {
        this.f364j = i6;
        this.f365k = obj;
    }

    @Override // n0.b1
    public final void a() {
        Object obj = this.f365k;
        switch (this.f364j) {
            case 0:
                r rVar = (r) obj;
                rVar.f350b.f285v.setAlpha(1.0f);
                g0 g0Var = rVar.f350b;
                g0Var.f288y.d(null);
                g0Var.f288y = null;
                break;
            case 1:
                g0 g0Var2 = (g0) obj;
                g0Var2.f285v.setAlpha(1.0f);
                g0Var2.f288y.d(null);
                g0Var2.f288y = null;
                break;
            default:
                a7.f fVar = (a7.f) obj;
                ((g0) fVar.f170c).f285v.setVisibility(8);
                g0 g0Var3 = (g0) fVar.f170c;
                PopupWindow popupWindow = g0Var3.f286w;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (g0Var3.f285v.getParent() instanceof View) {
                    View view = (View) g0Var3.f285v.getParent();
                    WeakHashMap weakHashMap = n0.s0.f8353a;
                    n0.e0.c(view);
                }
                g0Var3.f285v.e();
                g0Var3.f288y.d(null);
                g0Var3.f288y = null;
                ViewGroup viewGroup = g0Var3.B;
                WeakHashMap weakHashMap2 = n0.s0.f8353a;
                n0.e0.c(viewGroup);
                break;
        }
    }

    @Override // o9.d, n0.b1
    public void c() {
        Object obj = this.f365k;
        switch (this.f364j) {
            case 0:
                ((r) obj).f350b.f285v.setVisibility(0);
                break;
            case 1:
                g0 g0Var = (g0) obj;
                g0Var.f285v.setVisibility(0);
                if (g0Var.f285v.getParent() instanceof View) {
                    View view = (View) g0Var.f285v.getParent();
                    WeakHashMap weakHashMap = n0.s0.f8353a;
                    n0.e0.c(view);
                    break;
                }
                break;
        }
    }
}
