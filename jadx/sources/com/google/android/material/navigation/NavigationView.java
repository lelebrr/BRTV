package com.google.android.material.navigation;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.q;
import androidx.customview.view.AbsSavedState;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.material.internal.NavigationMenuView;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.internal.a0;
import com.google.android.material.internal.r;
import java.util.WeakHashMap;
import n0.r1;
import n0.s0;
import u6.o;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class NavigationView extends ScrimInsetsFrameLayout {

    /* renamed from: r, reason: collision with root package name */
    public static final int[] f5088r = {R.attr.state_checked};

    /* renamed from: s, reason: collision with root package name */
    public static final int[] f5089s = {-16842910};
    public final com.google.android.material.internal.h f;

    /* renamed from: g, reason: collision with root package name */
    public final r f5090g;

    /* renamed from: h, reason: collision with root package name */
    public final int f5091h;

    /* renamed from: i, reason: collision with root package name */
    public final int[] f5092i;

    /* renamed from: j, reason: collision with root package name */
    public j.i f5093j;

    /* renamed from: k, reason: collision with root package name */
    public final q f5094k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f5095l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f5096m;

    /* renamed from: n, reason: collision with root package name */
    public final int f5097n;

    /* renamed from: o, reason: collision with root package name */
    public final int f5098o;

    /* renamed from: p, reason: collision with root package name */
    public Path f5099p;

    /* renamed from: q, reason: collision with root package name */
    public final RectF f5100q;

    /* compiled from: MyApplication */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new n();

        /* renamed from: c, reason: collision with root package name */
        public Bundle f5101c;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f5101c = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i6) {
            super.writeToParcel(parcel, i6);
            parcel.writeBundle(this.f5101c);
        }
    }

    public NavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.p2elite.brtv2.R.attr.navigationViewStyle);
    }

    private MenuInflater getMenuInflater() {
        if (this.f5093j == null) {
            this.f5093j = new j.i(getContext());
        }
        return this.f5093j;
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    public final void a(r1 r1Var) {
        r rVar = this.f5090g;
        rVar.getClass();
        int iD = r1Var.d();
        if (rVar.f5062x != iD) {
            rVar.f5062x = iD;
            int i6 = (rVar.f5042b.getChildCount() == 0 && rVar.f5060v) ? rVar.f5062x : 0;
            NavigationMenuView navigationMenuView = rVar.f5041a;
            navigationMenuView.setPadding(0, i6, 0, navigationMenuView.getPaddingBottom());
        }
        NavigationMenuView navigationMenuView2 = rVar.f5041a;
        navigationMenuView2.setPadding(0, navigationMenuView2.getPaddingTop(), 0, r1Var.a());
        s0.b(rVar.f5042b, r1Var);
    }

    public final ColorStateList b(int i6) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i6, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateListK = u7.d.k(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(com.p2elite.brtv2.R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i10 = typedValue.data;
        int defaultColor = colorStateListK.getDefaultColor();
        int[] iArr = f5089s;
        return new ColorStateList(new int[][]{iArr, f5088r, FrameLayout.EMPTY_STATE_SET}, new int[]{colorStateListK.getColorForState(iArr, defaultColor), i10, defaultColor});
    }

    public final InsetDrawable c(a1.b bVar, ColorStateList colorStateList) {
        TypedArray typedArray = (TypedArray) bVar.f48c;
        u6.h hVar = new u6.h(u6.m.a(getContext(), typedArray.getResourceId(17, 0), typedArray.getResourceId(18, 0), new u6.a(0)).a());
        hVar.n(colorStateList);
        return new InsetDrawable((Drawable) hVar, typedArray.getDimensionPixelSize(22, 0), typedArray.getDimensionPixelSize(23, 0), typedArray.getDimensionPixelSize(21, 0), typedArray.getDimensionPixelSize(20, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.f5099p == null) {
            super.dispatchDraw(canvas);
            return;
        }
        int iSave = canvas.save();
        canvas.clipPath(this.f5099p);
        super.dispatchDraw(canvas);
        canvas.restoreToCount(iSave);
    }

    public MenuItem getCheckedItem() {
        return this.f5090g.f5044e.f5035b;
    }

    public int getDividerInsetEnd() {
        return this.f5090g.f5057s;
    }

    public int getDividerInsetStart() {
        return this.f5090g.f5056r;
    }

    public int getHeaderCount() {
        return this.f5090g.f5042b.getChildCount();
    }

    public Drawable getItemBackground() {
        return this.f5090g.f5050l;
    }

    public int getItemHorizontalPadding() {
        return this.f5090g.f5052n;
    }

    public int getItemIconPadding() {
        return this.f5090g.f5054p;
    }

    public ColorStateList getItemIconTintList() {
        return this.f5090g.f5049k;
    }

    public int getItemMaxLines() {
        return this.f5090g.f5061w;
    }

    public ColorStateList getItemTextColor() {
        return this.f5090g.f5048j;
    }

    public int getItemVerticalPadding() {
        return this.f5090g.f5053o;
    }

    public Menu getMenu() {
        return this.f;
    }

    public int getSubheaderInsetEnd() {
        this.f5090g.getClass();
        return 0;
    }

    public int getSubheaderInsetStart() {
        return this.f5090g.f5058t;
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        o9.d.E(this);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this.f5094k);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i6, int i10) {
        int mode = View.MeasureSpec.getMode(i6);
        int i11 = this.f5091h;
        if (mode == Integer.MIN_VALUE) {
            i6 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i6), i11), 1073741824);
        } else if (mode == 0) {
            i6 = View.MeasureSpec.makeMeasureSpec(i11, 1073741824);
        }
        super.onMeasure(i6, i10);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f1319a);
        this.f.t(savedState.f5101c);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.f5101c = bundle;
        this.f.v(bundle);
        return savedState;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i6, int i10, int i11, int i12) {
        int i13;
        super.onSizeChanged(i6, i10, i11, i12);
        boolean z7 = getParent() instanceof DrawerLayout;
        RectF rectF = this.f5100q;
        if (!z7 || (i13 = this.f5098o) <= 0 || !(getBackground() instanceof u6.h)) {
            this.f5099p = null;
            rectF.setEmpty();
            return;
        }
        u6.h hVar = (u6.h) getBackground();
        u6.l lVarF = hVar.f10367a.f10350a.f();
        WeakHashMap weakHashMap = s0.f8353a;
        if (Gravity.getAbsoluteGravity(this.f5097n, getLayoutDirection()) == 3) {
            float f = i13;
            lVarF.f = new u6.a(f);
            lVarF.f10393g = new u6.a(f);
        } else {
            float f3 = i13;
            lVarF.f10392e = new u6.a(f3);
            lVarF.f10394h = new u6.a(f3);
        }
        hVar.setShapeAppearanceModel(lVarF.a());
        if (this.f5099p == null) {
            this.f5099p = new Path();
        }
        this.f5099p.reset();
        rectF.set(0.0f, 0.0f, i6, i10);
        o oVar = u6.n.f10410a;
        u6.g gVar = hVar.f10367a;
        oVar.a(gVar.f10350a, gVar.f10356i, rectF, null, this.f5099p);
        invalidate();
    }

    public void setBottomInsetScrimEnabled(boolean z7) {
        this.f5096m = z7;
    }

    public void setCheckedItem(int i6) {
        MenuItem menuItemFindItem = this.f.findItem(i6);
        if (menuItemFindItem != null) {
            this.f5090g.f5044e.b((k.n) menuItemFindItem);
        }
    }

    public void setDividerInsetEnd(int i6) {
        r rVar = this.f5090g;
        rVar.f5057s = i6;
        rVar.j(false);
    }

    public void setDividerInsetStart(int i6) {
        r rVar = this.f5090g;
        rVar.f5056r = i6;
        rVar.j(false);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        o9.d.B(this, f);
    }

    public void setItemBackground(Drawable drawable) {
        r rVar = this.f5090g;
        rVar.f5050l = drawable;
        rVar.j(false);
    }

    public void setItemBackgroundResource(int i6) {
        setItemBackground(d0.a.b(getContext(), i6));
    }

    public void setItemHorizontalPadding(int i6) {
        r rVar = this.f5090g;
        rVar.f5052n = i6;
        rVar.j(false);
    }

    public void setItemHorizontalPaddingResource(int i6) throws Resources.NotFoundException {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i6);
        r rVar = this.f5090g;
        rVar.f5052n = dimensionPixelSize;
        rVar.j(false);
    }

    public void setItemIconPadding(int i6) {
        r rVar = this.f5090g;
        rVar.f5054p = i6;
        rVar.j(false);
    }

    public void setItemIconPaddingResource(int i6) throws Resources.NotFoundException {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i6);
        r rVar = this.f5090g;
        rVar.f5054p = dimensionPixelSize;
        rVar.j(false);
    }

    public void setItemIconSize(int i6) {
        r rVar = this.f5090g;
        if (rVar.f5055q != i6) {
            rVar.f5055q = i6;
            rVar.f5059u = true;
            rVar.j(false);
        }
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        r rVar = this.f5090g;
        rVar.f5049k = colorStateList;
        rVar.j(false);
    }

    public void setItemMaxLines(int i6) {
        r rVar = this.f5090g;
        rVar.f5061w = i6;
        rVar.j(false);
    }

    public void setItemTextAppearance(int i6) {
        r rVar = this.f5090g;
        rVar.f5047i = i6;
        rVar.j(false);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        r rVar = this.f5090g;
        rVar.f5048j = colorStateList;
        rVar.j(false);
    }

    public void setItemVerticalPadding(int i6) {
        r rVar = this.f5090g;
        rVar.f5053o = i6;
        rVar.j(false);
    }

    public void setItemVerticalPaddingResource(int i6) throws Resources.NotFoundException {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i6);
        r rVar = this.f5090g;
        rVar.f5053o = dimensionPixelSize;
        rVar.j(false);
    }

    @Override // android.view.View
    public void setOverScrollMode(int i6) {
        super.setOverScrollMode(i6);
        r rVar = this.f5090g;
        if (rVar != null) {
            rVar.f5064z = i6;
            NavigationMenuView navigationMenuView = rVar.f5041a;
            if (navigationMenuView != null) {
                navigationMenuView.setOverScrollMode(i6);
            }
        }
    }

    public void setSubheaderInsetEnd(int i6) {
        r rVar = this.f5090g;
        rVar.f5058t = i6;
        rVar.j(false);
    }

    public void setSubheaderInsetStart(int i6) {
        r rVar = this.f5090g;
        rVar.f5058t = i6;
        rVar.j(false);
    }

    public void setTopInsetScrimEnabled(boolean z7) {
        this.f5095l = z7;
    }

    public NavigationView(Context context, AttributeSet attributeSet, int i6) {
        super(y6.a.a(context, attributeSet, i6, com.p2elite.brtv2.R.style.Widget_Design_NavigationView), attributeSet, i6);
        r rVar = new r();
        this.f5090g = rVar;
        this.f5092i = new int[2];
        this.f5095l = true;
        this.f5096m = true;
        this.f5097n = 0;
        this.f5098o = 0;
        this.f5100q = new RectF();
        Context context2 = getContext();
        com.google.android.material.internal.h hVar = new com.google.android.material.internal.h(context2);
        this.f = hVar;
        a1.b bVarK = a0.k(context2, attributeSet, x5.a.N, i6, com.p2elite.brtv2.R.style.Widget_Design_NavigationView, new int[0]);
        TypedArray typedArray = (TypedArray) bVarK.f48c;
        if (typedArray.hasValue(1)) {
            Drawable drawableT = bVarK.t(1);
            WeakHashMap weakHashMap = s0.f8353a;
            setBackground(drawableT);
        }
        this.f5098o = typedArray.getDimensionPixelSize(7, 0);
        this.f5097n = typedArray.getInt(0, 0);
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            u6.m mVarA = u6.m.b(context2, attributeSet, i6, com.p2elite.brtv2.R.style.Widget_Design_NavigationView).a();
            Drawable background = getBackground();
            u6.h hVar2 = new u6.h(mVarA);
            if (background instanceof ColorDrawable) {
                hVar2.n(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
            }
            hVar2.k(context2);
            WeakHashMap weakHashMap2 = s0.f8353a;
            setBackground(hVar2);
        }
        if (typedArray.hasValue(8)) {
            setElevation(typedArray.getDimensionPixelSize(8, 0));
        }
        setFitsSystemWindows(typedArray.getBoolean(2, false));
        this.f5091h = typedArray.getDimensionPixelSize(3, 0);
        ColorStateList colorStateListS = typedArray.hasValue(30) ? bVarK.s(30) : null;
        int resourceId = typedArray.hasValue(33) ? typedArray.getResourceId(33, 0) : 0;
        if (resourceId == 0 && colorStateListS == null) {
            colorStateListS = b(R.attr.textColorSecondary);
        }
        ColorStateList colorStateListS2 = typedArray.hasValue(14) ? bVarK.s(14) : b(R.attr.textColorSecondary);
        int resourceId2 = typedArray.hasValue(24) ? typedArray.getResourceId(24, 0) : 0;
        if (typedArray.hasValue(13)) {
            setItemIconSize(typedArray.getDimensionPixelSize(13, 0));
        }
        ColorStateList colorStateListS3 = typedArray.hasValue(25) ? bVarK.s(25) : null;
        if (resourceId2 == 0 && colorStateListS3 == null) {
            colorStateListS3 = b(R.attr.textColorPrimary);
        }
        Drawable drawableT2 = bVarK.t(10);
        if (drawableT2 == null && (typedArray.hasValue(17) || typedArray.hasValue(18))) {
            drawableT2 = c(bVarK, com.bumptech.glide.d.j(getContext(), bVarK, 19));
            ColorStateList colorStateListJ = com.bumptech.glide.d.j(context2, bVarK, 16);
            if (colorStateListJ != null) {
                rVar.f5051m = new RippleDrawable(s6.c.b(colorStateListJ), null, c(bVarK, null));
                rVar.j(false);
            }
        }
        if (typedArray.hasValue(11)) {
            setItemHorizontalPadding(typedArray.getDimensionPixelSize(11, 0));
        }
        if (typedArray.hasValue(26)) {
            setItemVerticalPadding(typedArray.getDimensionPixelSize(26, 0));
        }
        setDividerInsetStart(typedArray.getDimensionPixelSize(6, 0));
        setDividerInsetEnd(typedArray.getDimensionPixelSize(5, 0));
        setSubheaderInsetStart(typedArray.getDimensionPixelSize(32, 0));
        setSubheaderInsetEnd(typedArray.getDimensionPixelSize(31, 0));
        setTopInsetScrimEnabled(typedArray.getBoolean(34, this.f5095l));
        setBottomInsetScrimEnabled(typedArray.getBoolean(4, this.f5096m));
        int dimensionPixelSize = typedArray.getDimensionPixelSize(12, 0);
        setItemMaxLines(typedArray.getInt(15, 1));
        hVar.f7612e = new a0.b(20, this);
        rVar.d = 1;
        rVar.k(context2, hVar);
        if (resourceId != 0) {
            rVar.f5045g = resourceId;
            rVar.j(false);
        }
        rVar.f5046h = colorStateListS;
        rVar.j(false);
        rVar.f5049k = colorStateListS2;
        rVar.j(false);
        int overScrollMode = getOverScrollMode();
        rVar.f5064z = overScrollMode;
        NavigationMenuView navigationMenuView = rVar.f5041a;
        if (navigationMenuView != null) {
            navigationMenuView.setOverScrollMode(overScrollMode);
        }
        if (resourceId2 != 0) {
            rVar.f5047i = resourceId2;
            rVar.j(false);
        }
        rVar.f5048j = colorStateListS3;
        rVar.j(false);
        rVar.f5050l = drawableT2;
        rVar.j(false);
        rVar.f5054p = dimensionPixelSize;
        rVar.j(false);
        hVar.b(rVar, hVar.f7609a);
        if (rVar.f5041a == null) {
            NavigationMenuView navigationMenuView2 = (NavigationMenuView) rVar.f.inflate(com.p2elite.brtv2.R.layout.design_navigation_menu, (ViewGroup) this, false);
            rVar.f5041a = navigationMenuView2;
            navigationMenuView2.setAccessibilityDelegateCompat(new com.google.android.material.internal.o(rVar, rVar.f5041a));
            if (rVar.f5044e == null) {
                rVar.f5044e = new com.google.android.material.internal.j(rVar);
            }
            int i10 = rVar.f5064z;
            if (i10 != -1) {
                rVar.f5041a.setOverScrollMode(i10);
            }
            rVar.f5042b = (LinearLayout) rVar.f.inflate(com.p2elite.brtv2.R.layout.design_navigation_item_header, (ViewGroup) rVar.f5041a, false);
            rVar.f5041a.setAdapter(rVar.f5044e);
        }
        addView(rVar.f5041a);
        if (typedArray.hasValue(27)) {
            int resourceId3 = typedArray.getResourceId(27, 0);
            com.google.android.material.internal.j jVar = rVar.f5044e;
            if (jVar != null) {
                jVar.f5036c = true;
            }
            getMenuInflater().inflate(resourceId3, hVar);
            com.google.android.material.internal.j jVar2 = rVar.f5044e;
            if (jVar2 != null) {
                jVar2.f5036c = false;
            }
            rVar.j(false);
        }
        if (typedArray.hasValue(9)) {
            rVar.f5042b.addView(rVar.f.inflate(typedArray.getResourceId(9, 0), (ViewGroup) rVar.f5042b, false));
            NavigationMenuView navigationMenuView3 = rVar.f5041a;
            navigationMenuView3.setPadding(0, 0, 0, navigationMenuView3.getPaddingBottom());
        }
        bVarK.F();
        this.f5094k = new q(3, this);
        getViewTreeObserver().addOnGlobalLayoutListener(this.f5094k);
    }

    public void setCheckedItem(MenuItem menuItem) {
        MenuItem menuItemFindItem = this.f.findItem(menuItem.getItemId());
        if (menuItemFindItem != null) {
            this.f5090g.f5044e.b((k.n) menuItemFindItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }

    public void setNavigationItemSelectedListener(m mVar) {
    }
}
