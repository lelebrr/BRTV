package androidx.appcompat.widget;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Color;
import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.material.internal.NavigationMenuView;
import com.google.android.material.navigation.NavigationView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f803a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f804b;

    public /* synthetic */ q(int i6, Object obj) {
        this.f803a = i6;
        this.f804b = obj;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        k kVar;
        k.x xVar;
        Activity activity;
        boolean z7 = false;
        Object obj = this.f804b;
        switch (this.f803a) {
            case 0:
                ActivityChooserView activityChooserView = (ActivityChooserView) obj;
                if (activityChooserView.b()) {
                    if (!activityChooserView.isShown()) {
                        activityChooserView.getListPopupWindow().dismiss();
                        break;
                    } else {
                        activityChooserView.getListPopupWindow().a();
                        n0.c cVar = activityChooserView.f486g;
                        if (cVar != null && (kVar = cVar.f8300a) != null && (xVar = kVar.f7546e) != null) {
                            xVar.f(kVar.f7545c);
                            break;
                        }
                    }
                }
                break;
            case 1:
                AppCompatSpinner appCompatSpinner = (AppCompatSpinner) obj;
                if (!appCompatSpinner.getInternalPopup().c()) {
                    appCompatSpinner.f.n(g0.b(appCompatSpinner), g0.a(appCompatSpinner));
                }
                ViewTreeObserver viewTreeObserver = appCompatSpinner.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    f0.a(viewTreeObserver, this);
                    break;
                }
                break;
            case 2:
                m0 m0Var = (m0) obj;
                AppCompatSpinner appCompatSpinner2 = m0Var.G;
                m0Var.getClass();
                WeakHashMap weakHashMap = n0.s0.f8353a;
                if (!appCompatSpinner2.isAttachedToWindow() || !appCompatSpinner2.getGlobalVisibleRect(m0Var.E)) {
                    m0Var.dismiss();
                    break;
                } else {
                    m0Var.s();
                    m0Var.a();
                    break;
                }
                break;
            case 3:
                NavigationView navigationView = (NavigationView) obj;
                navigationView.getLocationOnScreen(navigationView.f5092i);
                boolean z10 = navigationView.f5092i[1] == 0;
                com.google.android.material.internal.r rVar = navigationView.f5090g;
                if (rVar.f5060v != z10) {
                    rVar.f5060v = z10;
                    int i6 = (rVar.f5042b.getChildCount() == 0 && rVar.f5060v) ? rVar.f5062x : 0;
                    NavigationMenuView navigationMenuView = rVar.f5041a;
                    navigationMenuView.setPadding(0, i6, 0, navigationMenuView.getPaddingBottom());
                }
                navigationView.setDrawTopInsetForeground(z10 && navigationView.f5095l);
                Context context = navigationView.getContext();
                while (true) {
                    if (!(context instanceof ContextWrapper)) {
                        activity = null;
                    } else if (context instanceof Activity) {
                        activity = (Activity) context;
                    } else {
                        context = ((ContextWrapper) context).getBaseContext();
                    }
                }
                if (activity != null) {
                    boolean z11 = activity.findViewById(R.id.content).getHeight() == navigationView.getHeight();
                    boolean z12 = Color.alpha(activity.getWindow().getNavigationBarColor()) != 0;
                    if (z11 && z12 && navigationView.f5096m) {
                        z7 = true;
                    }
                    navigationView.setDrawBottomInsetForeground(z7);
                    break;
                }
                break;
            case 4:
                k.f fVar = (k.f) obj;
                if (fVar.c()) {
                    ArrayList arrayList = fVar.f7579h;
                    if (arrayList.size() > 0 && !((k.e) arrayList.get(0)).f7571a.f582x) {
                        View view = fVar.f7586o;
                        if (view != null && view.isShown()) {
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                ((k.e) it.next()).f7571a.a();
                            }
                            break;
                        } else {
                            fVar.dismiss();
                            break;
                        }
                    }
                }
                break;
            default:
                k.d0 d0Var = (k.d0) obj;
                if (d0Var.c()) {
                    i2 i2Var = d0Var.f7558h;
                    if (!i2Var.f582x) {
                        View view2 = d0Var.f7563m;
                        if (view2 != null && view2.isShown()) {
                            i2Var.a();
                            break;
                        } else {
                            d0Var.dismiss();
                            break;
                        }
                    }
                }
                break;
        }
    }
}
