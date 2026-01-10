package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import com.p2elite.brtv2.R;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k extends k.c {

    /* renamed from: j, reason: collision with root package name */
    public i f747j;

    /* renamed from: k, reason: collision with root package name */
    public Drawable f748k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f749l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f750m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f751n;

    /* renamed from: o, reason: collision with root package name */
    public int f752o;

    /* renamed from: p, reason: collision with root package name */
    public int f753p;

    /* renamed from: q, reason: collision with root package name */
    public int f754q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f755r;

    /* renamed from: s, reason: collision with root package name */
    public final SparseBooleanArray f756s;

    /* renamed from: t, reason: collision with root package name */
    public e f757t;

    /* renamed from: u, reason: collision with root package name */
    public e f758u;

    /* renamed from: v, reason: collision with root package name */
    public g f759v;

    /* renamed from: w, reason: collision with root package name */
    public f f760w;

    /* renamed from: x, reason: collision with root package name */
    public final a0.b f761x;

    /* renamed from: y, reason: collision with root package name */
    public int f762y;

    public k(Context context) {
        this.f7543a = context;
        this.d = LayoutInflater.from(context);
        this.f = R.layout.abc_action_menu_layout;
        this.f7547g = R.layout.abc_action_menu_item_layout;
        this.f756s = new SparseBooleanArray();
        this.f761x = new a0.b(4, this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r5v4, types: [k.z] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    public final View a(k.n nVar, View view, ViewGroup viewGroup) {
        View actionView = nVar.getActionView();
        if (actionView == null || nVar.e()) {
            ActionMenuItemView actionMenuItemView = view instanceof k.z ? (k.z) view : (k.z) this.d.inflate(this.f7547g, viewGroup, false);
            actionMenuItemView.c(nVar);
            ActionMenuItemView actionMenuItemView2 = actionMenuItemView;
            actionMenuItemView2.setItemInvoker((ActionMenuView) this.f7548h);
            if (this.f760w == null) {
                this.f760w = new f(this);
            }
            actionMenuItemView2.setPopupCallback(this.f760w);
            actionView = actionMenuItemView;
        }
        actionView.setVisibility(nVar.C ? 8 : 0);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        ((ActionMenuView) viewGroup).getClass();
        if (!(layoutParams instanceof ActionMenuView.LayoutParams)) {
            actionView.setLayoutParams(ActionMenuView.m(layoutParams));
        }
        return actionView;
    }

    @Override // k.y
    public final void b(k.l lVar, boolean z7) {
        c();
        e eVar = this.f758u;
        if (eVar != null && eVar.b()) {
            eVar.f7674i.dismiss();
        }
        k.x xVar = this.f7546e;
        if (xVar != null) {
            xVar.b(lVar, z7);
        }
    }

    public final boolean c() {
        Object obj;
        g gVar = this.f759v;
        if (gVar != null && (obj = this.f7548h) != null) {
            ((View) obj).removeCallbacks(gVar);
            this.f759v = null;
            return true;
        }
        e eVar = this.f757t;
        if (eVar == null) {
            return false;
        }
        if (eVar.b()) {
            eVar.f7674i.dismiss();
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // k.y
    public final boolean e(k.e0 e0Var) {
        boolean z7;
        if (!e0Var.hasVisibleItems()) {
            return false;
        }
        k.e0 e0Var2 = e0Var;
        while (true) {
            k.l lVar = e0Var2.f7574z;
            if (lVar == this.f7545c) {
                break;
            }
            e0Var2 = (k.e0) lVar;
        }
        ViewGroup viewGroup = (ViewGroup) this.f7548h;
        View view = null;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            int i6 = 0;
            while (true) {
                if (i6 >= childCount) {
                    break;
                }
                View childAt = viewGroup.getChildAt(i6);
                if ((childAt instanceof k.z) && ((k.z) childAt).getItemData() == e0Var2.A) {
                    view = childAt;
                    break;
                }
                i6++;
            }
        }
        if (view == null) {
            return false;
        }
        this.f762y = e0Var.A.f7634a;
        int size = e0Var.f.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                z7 = false;
                break;
            }
            MenuItem item = e0Var.getItem(i10);
            if (item.isVisible() && item.getIcon() != null) {
                z7 = true;
                break;
            }
            i10++;
        }
        e eVar = new e(this, this.f7544b, e0Var, view);
        this.f758u = eVar;
        eVar.f7672g = z7;
        k.t tVar = eVar.f7674i;
        if (tVar != null) {
            tVar.q(z7);
        }
        e eVar2 = this.f758u;
        if (!eVar2.b()) {
            if (eVar2.f7671e == null) {
                throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
            }
            eVar2.d(0, 0, false, false);
        }
        k.x xVar = this.f7546e;
        if (xVar != null) {
            xVar.f(e0Var);
        }
        return true;
    }

    @Override // k.y
    public final void g(Parcelable parcelable) {
        int i6;
        MenuItem menuItemFindItem;
        if ((parcelable instanceof ActionMenuPresenter$SavedState) && (i6 = ((ActionMenuPresenter$SavedState) parcelable).f466a) > 0 && (menuItemFindItem = this.f7545c.findItem(i6)) != null) {
            e((k.e0) menuItemFindItem.getSubMenu());
        }
    }

    public final boolean h() {
        e eVar = this.f757t;
        return eVar != null && eVar.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // k.y
    public final void j(boolean z7) {
        int i6;
        ViewGroup viewGroup = (ViewGroup) this.f7548h;
        ArrayList arrayList = null;
        boolean z10 = false;
        if (viewGroup != null) {
            k.l lVar = this.f7545c;
            if (lVar != null) {
                lVar.i();
                ArrayList arrayListL = this.f7545c.l();
                int size = arrayListL.size();
                i6 = 0;
                for (int i10 = 0; i10 < size; i10++) {
                    k.n nVar = (k.n) arrayListL.get(i10);
                    if (nVar.f()) {
                        View childAt = viewGroup.getChildAt(i6);
                        k.n itemData = childAt instanceof k.z ? ((k.z) childAt).getItemData() : null;
                        View viewA = a(nVar, childAt, viewGroup);
                        if (nVar != itemData) {
                            viewA.setPressed(false);
                            viewA.jumpDrawablesToCurrentState();
                        }
                        if (viewA != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) viewA.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(viewA);
                            }
                            ((ViewGroup) this.f7548h).addView(viewA, i6);
                        }
                        i6++;
                    }
                }
            } else {
                i6 = 0;
            }
            while (i6 < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i6) == this.f747j) {
                    i6++;
                } else {
                    viewGroup.removeViewAt(i6);
                }
            }
        }
        ((View) this.f7548h).requestLayout();
        k.l lVar2 = this.f7545c;
        if (lVar2 != null) {
            lVar2.i();
            ArrayList arrayList2 = lVar2.f7615i;
            int size2 = arrayList2.size();
            for (int i11 = 0; i11 < size2; i11++) {
                n0.c cVar = ((k.n) arrayList2.get(i11)).A;
                if (cVar != null) {
                    cVar.f8300a = this;
                }
            }
        }
        k.l lVar3 = this.f7545c;
        if (lVar3 != null) {
            lVar3.i();
            arrayList = lVar3.f7616j;
        }
        if (this.f750m && arrayList != null) {
            int size3 = arrayList.size();
            if (size3 == 1) {
                z10 = !((k.n) arrayList.get(0)).C;
            } else if (size3 > 0) {
                z10 = true;
            }
        }
        if (z10) {
            if (this.f747j == null) {
                this.f747j = new i(this, this.f7543a);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.f747j.getParent();
            if (viewGroup3 != this.f7548h) {
                if (viewGroup3 != null) {
                    viewGroup3.removeView(this.f747j);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f7548h;
                i iVar = this.f747j;
                actionMenuView.getClass();
                ActionMenuView.LayoutParams layoutParamsL = ActionMenuView.l();
                layoutParamsL.f478a = true;
                actionMenuView.addView(iVar, layoutParamsL);
            }
        } else {
            i iVar2 = this.f747j;
            if (iVar2 != null) {
                Object parent = iVar2.getParent();
                Object obj = this.f7548h;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.f747j);
                }
            }
        }
        ((ActionMenuView) this.f7548h).setOverflowReserved(this.f750m);
    }

    @Override // k.y
    public final void k(Context context, k.l lVar) {
        this.f7544b = context;
        LayoutInflater.from(context);
        this.f7545c = lVar;
        Resources resources = context.getResources();
        if (!this.f751n) {
            this.f750m = true;
        }
        int i6 = 2;
        this.f752o = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i10 = configuration.screenWidthDp;
        int i11 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i10 > 600 || ((i10 > 960 && i11 > 720) || (i10 > 720 && i11 > 960))) {
            i6 = 5;
        } else if (i10 >= 500 || ((i10 > 640 && i11 > 480) || (i10 > 480 && i11 > 640))) {
            i6 = 4;
        } else if (i10 >= 360) {
            i6 = 3;
        }
        this.f754q = i6;
        int measuredWidth = this.f752o;
        if (this.f750m) {
            if (this.f747j == null) {
                i iVar = new i(this, this.f7543a);
                this.f747j = iVar;
                if (this.f749l) {
                    iVar.setImageDrawable(this.f748k);
                    this.f748k = null;
                    this.f749l = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f747j.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.f747j.getMeasuredWidth();
        } else {
            this.f747j = null;
        }
        this.f753p = measuredWidth;
        float f = resources.getDisplayMetrics().density;
    }

    @Override // k.y
    public final boolean l() {
        ArrayList arrayListL;
        int size;
        int i6;
        boolean z7;
        k.l lVar = this.f7545c;
        if (lVar != null) {
            arrayListL = lVar.l();
            size = arrayListL.size();
        } else {
            arrayListL = null;
            size = 0;
        }
        int i10 = this.f754q;
        int i11 = this.f753p;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.f7548h;
        int i12 = 0;
        boolean z10 = false;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            i6 = 2;
            z7 = true;
            if (i12 >= size) {
                break;
            }
            k.n nVar = (k.n) arrayListL.get(i12);
            int i15 = nVar.f7656y;
            if ((i15 & 2) == 2) {
                i13++;
            } else if ((i15 & 1) == 1) {
                i14++;
            } else {
                z10 = true;
            }
            if (this.f755r && nVar.C) {
                i10 = 0;
            }
            i12++;
        }
        if (this.f750m && (z10 || i14 + i13 > i10)) {
            i10--;
        }
        int i16 = i10 - i13;
        SparseBooleanArray sparseBooleanArray = this.f756s;
        sparseBooleanArray.clear();
        int i17 = 0;
        int i18 = 0;
        while (i17 < size) {
            k.n nVar2 = (k.n) arrayListL.get(i17);
            int i19 = nVar2.f7656y;
            boolean z11 = (i19 & 2) == i6;
            int i20 = nVar2.f7635b;
            if (z11) {
                View viewA = a(nVar2, null, viewGroup);
                viewA.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredWidth = viewA.getMeasuredWidth();
                i11 -= measuredWidth;
                if (i18 == 0) {
                    i18 = measuredWidth;
                }
                if (i20 != 0) {
                    sparseBooleanArray.put(i20, z7);
                }
                nVar2.h(z7);
            } else if ((i19 & 1) == z7) {
                boolean z12 = sparseBooleanArray.get(i20);
                boolean z13 = (i16 > 0 || z12) && i11 > 0;
                if (z13) {
                    View viewA2 = a(nVar2, null, viewGroup);
                    viewA2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    int measuredWidth2 = viewA2.getMeasuredWidth();
                    i11 -= measuredWidth2;
                    if (i18 == 0) {
                        i18 = measuredWidth2;
                    }
                    z13 &= i11 + i18 > 0;
                }
                if (z13 && i20 != 0) {
                    sparseBooleanArray.put(i20, true);
                } else if (z12) {
                    sparseBooleanArray.put(i20, false);
                    for (int i21 = 0; i21 < i17; i21++) {
                        k.n nVar3 = (k.n) arrayListL.get(i21);
                        if (nVar3.f7635b == i20) {
                            if (nVar3.f()) {
                                i16++;
                            }
                            nVar3.h(false);
                        }
                    }
                }
                if (z13) {
                    i16--;
                }
                nVar2.h(z13);
            } else {
                nVar2.h(false);
                i17++;
                i6 = 2;
                z7 = true;
            }
            i17++;
            i6 = 2;
            z7 = true;
        }
        return true;
    }

    @Override // k.y
    public final Parcelable m() {
        ActionMenuPresenter$SavedState actionMenuPresenter$SavedState = new ActionMenuPresenter$SavedState();
        actionMenuPresenter$SavedState.f466a = this.f762y;
        return actionMenuPresenter$SavedState;
    }

    public final boolean n() {
        k.l lVar;
        if (!this.f750m || h() || (lVar = this.f7545c) == null || this.f7548h == null || this.f759v != null) {
            return false;
        }
        lVar.i();
        if (lVar.f7616j.isEmpty()) {
            return false;
        }
        g gVar = new g(this, new e(this, this.f7544b, this.f7545c, this.f747j));
        this.f759v = gVar;
        ((View) this.f7548h).post(gVar);
        return true;
    }
}
