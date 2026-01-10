package com.google.android.material.internal;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.k0;
import androidx.recyclerview.widget.p1;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j extends k0 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f5034a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public k.n f5035b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f5036c;
    public final /* synthetic */ r d;

    public j(r rVar) {
        this.d = rVar;
        a();
    }

    public final void a() {
        if (this.f5036c) {
            return;
        }
        this.f5036c = true;
        ArrayList arrayList = this.f5034a;
        arrayList.clear();
        arrayList.add(new k());
        r rVar = this.d;
        int size = rVar.f5043c.l().size();
        boolean z7 = false;
        int i6 = -1;
        int i10 = 0;
        boolean z10 = false;
        int size2 = 0;
        while (i10 < size) {
            k.n nVar = (k.n) rVar.f5043c.l().get(i10);
            if (nVar.isChecked()) {
                b(nVar);
            }
            if (nVar.isCheckable()) {
                nVar.g(z7);
            }
            if (nVar.hasSubMenu()) {
                k.e0 e0Var = nVar.f7646o;
                if (e0Var.hasVisibleItems()) {
                    if (i10 != 0) {
                        arrayList.add(new m(rVar.f5063y, z7 ? 1 : 0));
                    }
                    arrayList.add(new n(nVar));
                    int size3 = e0Var.f.size();
                    int i11 = 0;
                    boolean z11 = false;
                    while (i11 < size3) {
                        k.n nVar2 = (k.n) e0Var.getItem(i11);
                        if (nVar2.isVisible()) {
                            if (!z11 && nVar2.getIcon() != null) {
                                z11 = true;
                            }
                            if (nVar2.isCheckable()) {
                                nVar2.g(z7);
                            }
                            if (nVar.isChecked()) {
                                b(nVar);
                            }
                            arrayList.add(new n(nVar2));
                        }
                        i11++;
                        z7 = false;
                    }
                    if (z11) {
                        int size4 = arrayList.size();
                        for (int size5 = arrayList.size(); size5 < size4; size5++) {
                            ((n) arrayList.get(size5)).f5040b = true;
                        }
                    }
                }
            } else {
                int i12 = nVar.f7635b;
                if (i12 != i6) {
                    size2 = arrayList.size();
                    z10 = nVar.getIcon() != null;
                    if (i10 != 0) {
                        size2++;
                        int i13 = rVar.f5063y;
                        arrayList.add(new m(i13, i13));
                    }
                } else {
                    if (!z10 && nVar.getIcon() != null) {
                        int size6 = arrayList.size();
                        for (int i14 = size2; i14 < size6; i14++) {
                            ((n) arrayList.get(i14)).f5040b = true;
                        }
                        z10 = true;
                    }
                    n nVar3 = new n(nVar);
                    nVar3.f5040b = z10;
                    arrayList.add(nVar3);
                    i6 = i12;
                }
                n nVar32 = new n(nVar);
                nVar32.f5040b = z10;
                arrayList.add(nVar32);
                i6 = i12;
            }
            i10++;
            z7 = false;
        }
        this.f5036c = false;
    }

    public final void b(k.n nVar) {
        if (this.f5035b == nVar || !nVar.isCheckable()) {
            return;
        }
        k.n nVar2 = this.f5035b;
        if (nVar2 != null) {
            nVar2.setChecked(false);
        }
        this.f5035b = nVar;
        nVar.setChecked(true);
    }

    @Override // androidx.recyclerview.widget.k0
    public final int getItemCount() {
        return this.f5034a.size();
    }

    @Override // androidx.recyclerview.widget.k0
    public final long getItemId(int i6) {
        return i6;
    }

    @Override // androidx.recyclerview.widget.k0
    public final int getItemViewType(int i6) {
        l lVar = (l) this.f5034a.get(i6);
        if (lVar instanceof m) {
            return 2;
        }
        if (lVar instanceof k) {
            return 3;
        }
        if (lVar instanceof n) {
            return ((n) lVar).f5039a.hasSubMenu() ? 1 : 0;
        }
        throw new RuntimeException("Unknown item type.");
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(p1 p1Var, int i6) {
        q qVar = (q) p1Var;
        int itemViewType = getItemViewType(i6);
        ArrayList arrayList = this.f5034a;
        r rVar = this.d;
        if (itemViewType != 0) {
            if (itemViewType != 1) {
                if (itemViewType != 2) {
                    return;
                }
                m mVar = (m) arrayList.get(i6);
                qVar.itemView.setPadding(rVar.f5056r, mVar.f5037a, rVar.f5057s, mVar.f5038b);
                return;
            }
            TextView textView = (TextView) qVar.itemView;
            textView.setText(((n) arrayList.get(i6)).f5039a.f7637e);
            int i10 = rVar.f5045g;
            if (i10 != 0) {
                n5.d.R(textView, i10);
            }
            textView.setPadding(rVar.f5058t, textView.getPaddingTop(), 0, textView.getPaddingBottom());
            ColorStateList colorStateList = rVar.f5046h;
            if (colorStateList != null) {
                textView.setTextColor(colorStateList);
                return;
            }
            return;
        }
        NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) qVar.itemView;
        navigationMenuItemView.setIconTintList(rVar.f5049k);
        int i11 = rVar.f5047i;
        if (i11 != 0) {
            navigationMenuItemView.setTextAppearance(i11);
        }
        ColorStateList colorStateList2 = rVar.f5048j;
        if (colorStateList2 != null) {
            navigationMenuItemView.setTextColor(colorStateList2);
        }
        Drawable drawable = rVar.f5050l;
        Drawable drawableNewDrawable = drawable != null ? drawable.getConstantState().newDrawable() : null;
        WeakHashMap weakHashMap = s0.f8353a;
        navigationMenuItemView.setBackground(drawableNewDrawable);
        RippleDrawable rippleDrawable = rVar.f5051m;
        if (rippleDrawable != null) {
            navigationMenuItemView.setForeground(rippleDrawable.getConstantState().newDrawable());
        }
        n nVar = (n) arrayList.get(i6);
        navigationMenuItemView.setNeedsEmptyIcon(nVar.f5040b);
        int i12 = rVar.f5052n;
        int i13 = rVar.f5053o;
        navigationMenuItemView.setPadding(i12, i13, i12, i13);
        navigationMenuItemView.setIconPadding(rVar.f5054p);
        if (rVar.f5059u) {
            navigationMenuItemView.setIconSize(rVar.f5055q);
        }
        navigationMenuItemView.setMaxLines(rVar.f5061w);
        navigationMenuItemView.c(nVar.f5039a);
    }

    @Override // androidx.recyclerview.widget.k0
    public final p1 onCreateViewHolder(ViewGroup viewGroup, int i6) {
        p1 pVar;
        r rVar = this.d;
        if (i6 == 0) {
            LayoutInflater layoutInflater = rVar.f;
            androidx.appcompat.app.a aVar = rVar.A;
            pVar = new p(layoutInflater.inflate(R.layout.design_navigation_item, viewGroup, false));
            pVar.itemView.setOnClickListener(aVar);
        } else if (i6 == 1) {
            pVar = new i(rVar.f.inflate(R.layout.design_navigation_item_subheader, viewGroup, false));
        } else {
            if (i6 != 2) {
                if (i6 != 3) {
                    return null;
                }
                return new i(rVar.f5042b);
            }
            pVar = new i(rVar.f.inflate(R.layout.design_navigation_item_separator, viewGroup, false));
        }
        return pVar;
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onViewRecycled(p1 p1Var) {
        q qVar = (q) p1Var;
        if (qVar instanceof p) {
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) qVar.itemView;
            FrameLayout frameLayout = navigationMenuItemView.f4970z;
            if (frameLayout != null) {
                frameLayout.removeAllViews();
            }
            navigationMenuItemView.f4969y.setCompoundDrawables(null, null, null, null);
        }
    }
}
