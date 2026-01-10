package com.google.android.material.navigation;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.transition.AutoTransition;
import com.google.android.material.internal.y;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.WeakHashMap;
import k.a0;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class f extends ViewGroup implements a0 {
    public static final int[] C = {R.attr.state_checked};
    public static final int[] D = {-16842910};
    public h A;
    public k.l B;

    /* renamed from: a, reason: collision with root package name */
    public final AutoTransition f5129a;

    /* renamed from: b, reason: collision with root package name */
    public final androidx.appcompat.app.a f5130b;

    /* renamed from: c, reason: collision with root package name */
    public final m0.d f5131c;
    public final SparseArray d;

    /* renamed from: e, reason: collision with root package name */
    public int f5132e;
    public d[] f;

    /* renamed from: g, reason: collision with root package name */
    public int f5133g;

    /* renamed from: h, reason: collision with root package name */
    public int f5134h;

    /* renamed from: i, reason: collision with root package name */
    public ColorStateList f5135i;

    /* renamed from: j, reason: collision with root package name */
    public int f5136j;

    /* renamed from: k, reason: collision with root package name */
    public ColorStateList f5137k;

    /* renamed from: l, reason: collision with root package name */
    public final ColorStateList f5138l;

    /* renamed from: m, reason: collision with root package name */
    public int f5139m;

    /* renamed from: n, reason: collision with root package name */
    public int f5140n;

    /* renamed from: o, reason: collision with root package name */
    public Drawable f5141o;

    /* renamed from: p, reason: collision with root package name */
    public int f5142p;

    /* renamed from: q, reason: collision with root package name */
    public final SparseArray f5143q;

    /* renamed from: r, reason: collision with root package name */
    public int f5144r;

    /* renamed from: s, reason: collision with root package name */
    public int f5145s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f5146t;

    /* renamed from: u, reason: collision with root package name */
    public int f5147u;

    /* renamed from: v, reason: collision with root package name */
    public int f5148v;

    /* renamed from: w, reason: collision with root package name */
    public int f5149w;

    /* renamed from: x, reason: collision with root package name */
    public u6.m f5150x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f5151y;

    /* renamed from: z, reason: collision with root package name */
    public ColorStateList f5152z;

    public f(Context context) throws Resources.NotFoundException {
        super(context);
        int i6 = 5;
        this.f5131c = new m0.d(5);
        this.d = new SparseArray(5);
        this.f5133g = 0;
        this.f5134h = 0;
        this.f5143q = new SparseArray(5);
        this.f5144r = -1;
        this.f5145s = -1;
        this.f5151y = false;
        this.f5138l = b();
        if (isInEditMode()) {
            this.f5129a = null;
        } else {
            AutoTransition autoTransition = new AutoTransition();
            this.f5129a = autoTransition;
            autoTransition.I(0);
            Context context2 = getContext();
            int integer = getResources().getInteger(com.p2elite.brtv2.R.integer.material_motion_duration_long_1);
            TypedValue typedValueL = com.bumptech.glide.c.l(context2, com.p2elite.brtv2.R.attr.motionDurationLong1);
            if (typedValueL != null && typedValueL.type == 16) {
                integer = typedValueL.data;
            }
            autoTransition.x(integer);
            autoTransition.z(a2.a.K(getContext(), y5.a.f11407b));
            autoTransition.F(new y());
        }
        this.f5130b = new androidx.appcompat.app.a(i6, this);
        WeakHashMap weakHashMap = s0.f8353a;
        setImportantForAccessibility(1);
    }

    public static boolean f(int i6, int i10) {
        if (i6 == -1) {
            if (i10 <= 3) {
                return false;
            }
        } else if (i6 != 0) {
            return false;
        }
        return true;
    }

    private d getNewItem() {
        d dVar = (d) this.f5131c.a();
        return dVar == null ? e(getContext()) : dVar;
    }

    private void setBadgeIfNeeded(d dVar) {
        z5.a aVar;
        int id = dVar.getId();
        if (id == -1 || (aVar = (z5.a) this.f5143q.get(id)) == null) {
            return;
        }
        dVar.setBadge(aVar);
    }

    public final void a() {
        removeAllViews();
        d[] dVarArr = this.f;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                if (dVar != null) {
                    this.f5131c.c(dVar);
                    if (dVar.B != null) {
                        ImageView imageView = dVar.f5112k;
                        if (imageView != null) {
                            dVar.setClipChildren(true);
                            dVar.setClipToPadding(true);
                            z5.a aVar = dVar.B;
                            if (aVar != null) {
                                WeakReference weakReference = aVar.f11664m;
                                if ((weakReference != null ? (FrameLayout) weakReference.get() : null) != null) {
                                    WeakReference weakReference2 = aVar.f11664m;
                                    (weakReference2 != null ? (FrameLayout) weakReference2.get() : null).setForeground(null);
                                } else {
                                    imageView.getOverlay().remove(aVar);
                                }
                            }
                        }
                        dVar.B = null;
                    }
                    dVar.f5117p = null;
                    dVar.f5123v = 0.0f;
                    dVar.f5104a = false;
                }
            }
        }
        if (this.B.f.size() == 0) {
            this.f5133g = 0;
            this.f5134h = 0;
            this.f = null;
            return;
        }
        HashSet hashSet = new HashSet();
        for (int i6 = 0; i6 < this.B.f.size(); i6++) {
            hashSet.add(Integer.valueOf(this.B.getItem(i6).getItemId()));
        }
        int i10 = 0;
        while (true) {
            SparseArray sparseArray = this.f5143q;
            if (i10 >= sparseArray.size()) {
                break;
            }
            int iKeyAt = sparseArray.keyAt(i10);
            if (!hashSet.contains(Integer.valueOf(iKeyAt))) {
                sparseArray.delete(iKeyAt);
            }
            i10++;
        }
        this.f = new d[this.B.f.size()];
        boolean zF = f(this.f5132e, this.B.l().size());
        for (int i11 = 0; i11 < this.B.f.size(); i11++) {
            this.A.f5154b = true;
            this.B.getItem(i11).setCheckable(true);
            this.A.f5154b = false;
            d newItem = getNewItem();
            this.f[i11] = newItem;
            newItem.setIconTintList(this.f5135i);
            newItem.setIconSize(this.f5136j);
            newItem.setTextColor(this.f5138l);
            newItem.setTextAppearanceInactive(this.f5139m);
            newItem.setTextAppearanceActive(this.f5140n);
            newItem.setTextColor(this.f5137k);
            int i12 = this.f5144r;
            if (i12 != -1) {
                newItem.setItemPaddingTop(i12);
            }
            int i13 = this.f5145s;
            if (i13 != -1) {
                newItem.setItemPaddingBottom(i13);
            }
            newItem.setActiveIndicatorWidth(this.f5147u);
            newItem.setActiveIndicatorHeight(this.f5148v);
            newItem.setActiveIndicatorMarginHorizontal(this.f5149w);
            newItem.setActiveIndicatorDrawable(c());
            newItem.setActiveIndicatorResizeable(this.f5151y);
            newItem.setActiveIndicatorEnabled(this.f5146t);
            Drawable drawable = this.f5141o;
            if (drawable != null) {
                newItem.setItemBackground(drawable);
            } else {
                newItem.setItemBackground(this.f5142p);
            }
            newItem.setShifting(zF);
            newItem.setLabelVisibilityMode(this.f5132e);
            k.n nVar = (k.n) this.B.getItem(i11);
            newItem.c(nVar);
            newItem.setItemPosition(i11);
            SparseArray sparseArray2 = this.d;
            int i14 = nVar.f7634a;
            newItem.setOnTouchListener((View.OnTouchListener) sparseArray2.get(i14));
            newItem.setOnClickListener(this.f5130b);
            int i15 = this.f5133g;
            if (i15 != 0 && i14 == i15) {
                this.f5134h = i11;
            }
            setBadgeIfNeeded(newItem);
            addView(newItem);
        }
        int iMin = Math.min(this.B.f.size() - 1, this.f5134h);
        this.f5134h = iMin;
        this.B.getItem(iMin).setChecked(true);
    }

    public final ColorStateList b() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(R.attr.textColorSecondary, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateListK = u7.d.k(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(com.p2elite.brtv2.R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i6 = typedValue.data;
        int defaultColor = colorStateListK.getDefaultColor();
        int[] iArr = D;
        return new ColorStateList(new int[][]{iArr, C, ViewGroup.EMPTY_STATE_SET}, new int[]{colorStateListK.getColorForState(iArr, defaultColor), i6, defaultColor});
    }

    public final u6.h c() {
        if (this.f5150x == null || this.f5152z == null) {
            return null;
        }
        u6.h hVar = new u6.h(this.f5150x);
        hVar.n(this.f5152z);
        return hVar;
    }

    @Override // k.a0
    public final void d(k.l lVar) {
        this.B = lVar;
    }

    public abstract d e(Context context);

    public SparseArray<z5.a> getBadgeDrawables() {
        return this.f5143q;
    }

    public ColorStateList getIconTintList() {
        return this.f5135i;
    }

    public ColorStateList getItemActiveIndicatorColor() {
        return this.f5152z;
    }

    public boolean getItemActiveIndicatorEnabled() {
        return this.f5146t;
    }

    public int getItemActiveIndicatorHeight() {
        return this.f5148v;
    }

    public int getItemActiveIndicatorMarginHorizontal() {
        return this.f5149w;
    }

    public u6.m getItemActiveIndicatorShapeAppearance() {
        return this.f5150x;
    }

    public int getItemActiveIndicatorWidth() {
        return this.f5147u;
    }

    public Drawable getItemBackground() {
        d[] dVarArr = this.f;
        return (dVarArr == null || dVarArr.length <= 0) ? this.f5141o : dVarArr[0].getBackground();
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.f5142p;
    }

    public int getItemIconSize() {
        return this.f5136j;
    }

    public int getItemPaddingBottom() {
        return this.f5145s;
    }

    public int getItemPaddingTop() {
        return this.f5144r;
    }

    public int getItemTextAppearanceActive() {
        return this.f5140n;
    }

    public int getItemTextAppearanceInactive() {
        return this.f5139m;
    }

    public ColorStateList getItemTextColor() {
        return this.f5137k;
    }

    public int getLabelVisibilityMode() {
        return this.f5132e;
    }

    public k.l getMenu() {
        return this.B;
    }

    public int getSelectedItemId() {
        return this.f5133g;
    }

    public int getSelectedItemPosition() {
        return this.f5134h;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) j7.c.z(1, this.B.l().size(), 1, false).f7444b);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f5135i = colorStateList;
        d[] dVarArr = this.f;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemActiveIndicatorColor(ColorStateList colorStateList) {
        this.f5152z = colorStateList;
        d[] dVarArr = this.f;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setActiveIndicatorDrawable(c());
            }
        }
    }

    public void setItemActiveIndicatorEnabled(boolean z7) {
        this.f5146t = z7;
        d[] dVarArr = this.f;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setActiveIndicatorEnabled(z7);
            }
        }
    }

    public void setItemActiveIndicatorHeight(int i6) {
        this.f5148v = i6;
        d[] dVarArr = this.f;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setActiveIndicatorHeight(i6);
            }
        }
    }

    public void setItemActiveIndicatorMarginHorizontal(int i6) {
        this.f5149w = i6;
        d[] dVarArr = this.f;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setActiveIndicatorMarginHorizontal(i6);
            }
        }
    }

    public void setItemActiveIndicatorResizeable(boolean z7) {
        this.f5151y = z7;
        d[] dVarArr = this.f;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setActiveIndicatorResizeable(z7);
            }
        }
    }

    public void setItemActiveIndicatorShapeAppearance(u6.m mVar) {
        this.f5150x = mVar;
        d[] dVarArr = this.f;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setActiveIndicatorDrawable(c());
            }
        }
    }

    public void setItemActiveIndicatorWidth(int i6) {
        this.f5147u = i6;
        d[] dVarArr = this.f;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setActiveIndicatorWidth(i6);
            }
        }
    }

    public void setItemBackground(Drawable drawable) {
        this.f5141o = drawable;
        d[] dVarArr = this.f;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setItemBackground(drawable);
            }
        }
    }

    public void setItemBackgroundRes(int i6) {
        this.f5142p = i6;
        d[] dVarArr = this.f;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setItemBackground(i6);
            }
        }
    }

    public void setItemIconSize(int i6) {
        this.f5136j = i6;
        d[] dVarArr = this.f;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setIconSize(i6);
            }
        }
    }

    public void setItemPaddingBottom(int i6) throws Resources.NotFoundException {
        this.f5145s = i6;
        d[] dVarArr = this.f;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setItemPaddingBottom(i6);
            }
        }
    }

    public void setItemPaddingTop(int i6) throws Resources.NotFoundException {
        this.f5144r = i6;
        d[] dVarArr = this.f;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setItemPaddingTop(i6);
            }
        }
    }

    public void setItemTextAppearanceActive(int i6) throws Resources.NotFoundException {
        this.f5140n = i6;
        d[] dVarArr = this.f;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setTextAppearanceActive(i6);
                ColorStateList colorStateList = this.f5137k;
                if (colorStateList != null) {
                    dVar.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextAppearanceInactive(int i6) throws Resources.NotFoundException {
        this.f5139m = i6;
        d[] dVarArr = this.f;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setTextAppearanceInactive(i6);
                ColorStateList colorStateList = this.f5137k;
                if (colorStateList != null) {
                    dVar.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f5137k = colorStateList;
        d[] dVarArr = this.f;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setTextColor(colorStateList);
            }
        }
    }

    public void setLabelVisibilityMode(int i6) {
        this.f5132e = i6;
    }

    public void setPresenter(h hVar) {
        this.A = hVar;
    }
}
