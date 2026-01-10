package androidx.appcompat.widget;

import android.content.Context;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q3 implements k.y {

    /* renamed from: a, reason: collision with root package name */
    public k.l f813a;

    /* renamed from: b, reason: collision with root package name */
    public k.n f814b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Toolbar f815c;

    public q3(Toolbar toolbar) {
        this.f815c = toolbar;
    }

    @Override // k.y
    public final boolean d(k.n nVar) {
        Toolbar toolbar = this.f815c;
        toolbar.c();
        ViewParent parent = toolbar.f635h.getParent();
        if (parent != toolbar) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(toolbar.f635h);
            }
            toolbar.addView(toolbar.f635h);
        }
        View actionView = nVar.getActionView();
        toolbar.f636i = actionView;
        this.f814b = nVar;
        ViewParent parent2 = actionView.getParent();
        if (parent2 != toolbar) {
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(toolbar.f636i);
            }
            Toolbar.LayoutParams layoutParamsH = Toolbar.h();
            layoutParamsH.f213a = (toolbar.f641n & 112) | 8388611;
            layoutParamsH.f654b = 2;
            toolbar.f636i.setLayoutParams(layoutParamsH);
            toolbar.addView(toolbar.f636i);
        }
        for (int childCount = toolbar.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = toolbar.getChildAt(childCount);
            if (((Toolbar.LayoutParams) childAt.getLayoutParams()).f654b != 2 && childAt != toolbar.f630a) {
                toolbar.removeViewAt(childCount);
                toolbar.E.add(childAt);
            }
        }
        toolbar.requestLayout();
        nVar.C = true;
        nVar.f7645n.p(false);
        KeyEvent.Callback callback = toolbar.f636i;
        if (callback instanceof j.b) {
            ((j.b) callback).b();
        }
        toolbar.w();
        return true;
    }

    @Override // k.y
    public final boolean e(k.e0 e0Var) {
        return false;
    }

    @Override // k.y
    public final boolean f(k.n nVar) {
        Toolbar toolbar = this.f815c;
        KeyEvent.Callback callback = toolbar.f636i;
        if (callback instanceof j.b) {
            ((j.b) callback).e();
        }
        toolbar.removeView(toolbar.f636i);
        toolbar.removeView(toolbar.f635h);
        toolbar.f636i = null;
        ArrayList arrayList = toolbar.E;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            toolbar.addView((View) arrayList.get(size));
        }
        arrayList.clear();
        this.f814b = null;
        toolbar.requestLayout();
        nVar.C = false;
        nVar.f7645n.p(false);
        toolbar.w();
        return true;
    }

    @Override // k.y
    public final int getId() {
        return 0;
    }

    @Override // k.y
    public final void j(boolean z7) {
        if (this.f814b != null) {
            k.l lVar = this.f813a;
            if (lVar != null) {
                int size = lVar.f.size();
                for (int i6 = 0; i6 < size; i6++) {
                    if (this.f813a.getItem(i6) == this.f814b) {
                        return;
                    }
                }
            }
            f(this.f814b);
        }
    }

    @Override // k.y
    public final void k(Context context, k.l lVar) {
        k.n nVar;
        k.l lVar2 = this.f813a;
        if (lVar2 != null && (nVar = this.f814b) != null) {
            lVar2.d(nVar);
        }
        this.f813a = lVar;
    }

    @Override // k.y
    public final boolean l() {
        return false;
    }

    @Override // k.y
    public final Parcelable m() {
        return null;
    }

    @Override // k.y
    public final void g(Parcelable parcelable) {
    }

    @Override // k.y
    public final void b(k.l lVar, boolean z7) {
    }
}
