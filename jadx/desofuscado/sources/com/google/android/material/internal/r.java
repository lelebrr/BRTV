package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import com.p2elite.brtv2.R;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r implements k.y {

    /* renamed from: a, reason: collision with root package name */
    public NavigationMenuView f5041a;

    /* renamed from: b, reason: collision with root package name */
    public LinearLayout f5042b;

    /* renamed from: c, reason: collision with root package name */
    public k.l f5043c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public j f5044e;
    public LayoutInflater f;

    /* renamed from: h, reason: collision with root package name */
    public ColorStateList f5046h;

    /* renamed from: j, reason: collision with root package name */
    public ColorStateList f5048j;

    /* renamed from: k, reason: collision with root package name */
    public ColorStateList f5049k;

    /* renamed from: l, reason: collision with root package name */
    public Drawable f5050l;

    /* renamed from: m, reason: collision with root package name */
    public RippleDrawable f5051m;

    /* renamed from: n, reason: collision with root package name */
    public int f5052n;

    /* renamed from: o, reason: collision with root package name */
    public int f5053o;

    /* renamed from: p, reason: collision with root package name */
    public int f5054p;

    /* renamed from: q, reason: collision with root package name */
    public int f5055q;

    /* renamed from: r, reason: collision with root package name */
    public int f5056r;

    /* renamed from: s, reason: collision with root package name */
    public int f5057s;

    /* renamed from: t, reason: collision with root package name */
    public int f5058t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f5059u;

    /* renamed from: w, reason: collision with root package name */
    public int f5061w;

    /* renamed from: x, reason: collision with root package name */
    public int f5062x;

    /* renamed from: y, reason: collision with root package name */
    public int f5063y;

    /* renamed from: g, reason: collision with root package name */
    public int f5045g = 0;

    /* renamed from: i, reason: collision with root package name */
    public int f5047i = 0;

    /* renamed from: v, reason: collision with root package name */
    public boolean f5060v = true;

    /* renamed from: z, reason: collision with root package name */
    public int f5064z = -1;
    public final androidx.appcompat.app.a A = new androidx.appcompat.app.a(4, this);

    @Override // k.y
    public final boolean d(k.n nVar) {
        return false;
    }

    @Override // k.y
    public final boolean e(k.e0 e0Var) {
        return false;
    }

    @Override // k.y
    public final boolean f(k.n nVar) {
        return false;
    }

    @Override // k.y
    public final void g(Parcelable parcelable) {
        k.n nVar;
        View actionView;
        ParcelableSparseArray parcelableSparseArray;
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.f5041a.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle("android:menu:adapter");
            if (bundle2 != null) {
                j jVar = this.f5044e;
                jVar.getClass();
                int i6 = bundle2.getInt("android:menu:checked", 0);
                ArrayList arrayList = jVar.f5034a;
                if (i6 != 0) {
                    jVar.f5036c = true;
                    int size = arrayList.size();
                    int i10 = 0;
                    while (true) {
                        if (i10 >= size) {
                            break;
                        }
                        l lVar = (l) arrayList.get(i10);
                        if (lVar instanceof n) {
                            k.n nVar2 = ((n) lVar).f5039a;
                            if (nVar2.f7634a == i6) {
                                jVar.b(nVar2);
                                break;
                            }
                        }
                        i10++;
                    }
                    jVar.f5036c = false;
                    jVar.a();
                }
                SparseArray sparseParcelableArray2 = bundle2.getSparseParcelableArray("android:menu:action_views");
                if (sparseParcelableArray2 != null) {
                    int size2 = arrayList.size();
                    for (int i11 = 0; i11 < size2; i11++) {
                        l lVar2 = (l) arrayList.get(i11);
                        if ((lVar2 instanceof n) && (actionView = (nVar = ((n) lVar2).f5039a).getActionView()) != null && (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray2.get(nVar.f7634a)) != null) {
                            actionView.restoreHierarchyState(parcelableSparseArray);
                        }
                    }
                }
            }
            SparseArray<Parcelable> sparseParcelableArray3 = bundle.getSparseParcelableArray("android:menu:header");
            if (sparseParcelableArray3 != null) {
                this.f5042b.restoreHierarchyState(sparseParcelableArray3);
            }
        }
    }

    @Override // k.y
    public final int getId() {
        return this.d;
    }

    @Override // k.y
    public final void j(boolean z7) {
        j jVar = this.f5044e;
        if (jVar != null) {
            jVar.a();
            jVar.notifyDataSetChanged();
        }
    }

    @Override // k.y
    public final void k(Context context, k.l lVar) {
        this.f = LayoutInflater.from(context);
        this.f5043c = lVar;
        this.f5063y = context.getResources().getDimensionPixelOffset(R.dimen.design_navigation_separator_vertical_padding);
    }

    @Override // k.y
    public final boolean l() {
        return false;
    }

    @Override // k.y
    public final Parcelable m() {
        Bundle bundle = new Bundle();
        if (this.f5041a != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.f5041a.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        j jVar = this.f5044e;
        if (jVar != null) {
            jVar.getClass();
            Bundle bundle2 = new Bundle();
            k.n nVar = jVar.f5035b;
            if (nVar != null) {
                bundle2.putInt("android:menu:checked", nVar.f7634a);
            }
            SparseArray<? extends Parcelable> sparseArray2 = new SparseArray<>();
            ArrayList arrayList = jVar.f5034a;
            int size = arrayList.size();
            for (int i6 = 0; i6 < size; i6++) {
                l lVar = (l) arrayList.get(i6);
                if (lVar instanceof n) {
                    k.n nVar2 = ((n) lVar).f5039a;
                    View actionView = nVar2 != null ? nVar2.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray2.put(nVar2.f7634a, parcelableSparseArray);
                    }
                }
            }
            bundle2.putSparseParcelableArray("android:menu:action_views", sparseArray2);
            bundle.putBundle("android:menu:adapter", bundle2);
        }
        if (this.f5042b != null) {
            SparseArray<Parcelable> sparseArray3 = new SparseArray<>();
            this.f5042b.saveHierarchyState(sparseArray3);
            bundle.putSparseParcelableArray("android:menu:header", sparseArray3);
        }
        return bundle;
    }

    @Override // k.y
    public final void b(k.l lVar, boolean z7) {
    }
}
