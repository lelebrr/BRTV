package com.google.android.material.navigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.FrameLayout;
import com.google.android.material.internal.a0;
import com.p2elite.brtv2.R;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class l extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public final e f5156a;

    /* renamed from: b, reason: collision with root package name */
    public final f f5157b;

    /* renamed from: c, reason: collision with root package name */
    public final h f5158c;
    public ColorStateList d;

    /* renamed from: e, reason: collision with root package name */
    public j.i f5159e;

    public l(Context context, AttributeSet attributeSet, int i6, int i10) throws Resources.NotFoundException {
        super(y6.a.a(context, attributeSet, i6, i10), attributeSet, i6);
        h hVar = new h();
        hVar.f5154b = false;
        this.f5158c = hVar;
        Context context2 = getContext();
        a1.b bVarK = a0.k(context2, attributeSet, x5.a.L, i6, i10, 10, 9);
        e eVar = new e(context2, getClass(), getMaxItemCount());
        this.f5156a = eVar;
        f fVarA = a(context2);
        this.f5157b = fVarA;
        hVar.f5153a = fVarA;
        hVar.f5155c = 1;
        fVarA.setPresenter(hVar);
        eVar.b(hVar, eVar.f7609a);
        getContext();
        hVar.f5153a.B = eVar;
        TypedArray typedArray = (TypedArray) bVarK.f48c;
        if (typedArray.hasValue(5)) {
            fVarA.setIconTintList(bVarK.s(5));
        } else {
            fVarA.setIconTintList(fVarA.b());
        }
        setItemIconSize(typedArray.getDimensionPixelSize(4, getResources().getDimensionPixelSize(R.dimen.mtrl_navigation_bar_item_default_icon_size)));
        if (typedArray.hasValue(10)) {
            setItemTextAppearanceInactive(typedArray.getResourceId(10, 0));
        }
        if (typedArray.hasValue(9)) {
            setItemTextAppearanceActive(typedArray.getResourceId(9, 0));
        }
        if (typedArray.hasValue(11)) {
            setItemTextColor(bVarK.s(11));
        }
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            u6.h hVar2 = new u6.h();
            Drawable background = getBackground();
            if (background instanceof ColorDrawable) {
                hVar2.n(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
            }
            hVar2.k(context2);
            WeakHashMap weakHashMap = s0.f8353a;
            setBackground(hVar2);
        }
        if (typedArray.hasValue(7)) {
            setItemPaddingTop(typedArray.getDimensionPixelSize(7, 0));
        }
        if (typedArray.hasValue(6)) {
            setItemPaddingBottom(typedArray.getDimensionPixelSize(6, 0));
        }
        if (typedArray.hasValue(1)) {
            setElevation(typedArray.getDimensionPixelSize(1, 0));
        }
        g0.a.h(getBackground().mutate(), com.bumptech.glide.d.j(context2, bVarK, 0));
        setLabelVisibilityMode(typedArray.getInteger(12, -1));
        int resourceId = typedArray.getResourceId(3, 0);
        if (resourceId != 0) {
            fVarA.setItemBackgroundRes(resourceId);
        } else {
            setItemRippleColor(com.bumptech.glide.d.j(context2, bVarK, 8));
        }
        int resourceId2 = typedArray.getResourceId(2, 0);
        if (resourceId2 != 0) {
            setItemActiveIndicatorEnabled(true);
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(resourceId2, x5.a.K);
            setItemActiveIndicatorWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0));
            setItemActiveIndicatorHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0));
            setItemActiveIndicatorMarginHorizontal(typedArrayObtainStyledAttributes.getDimensionPixelOffset(3, 0));
            setItemActiveIndicatorColor(com.bumptech.glide.d.k(context2, typedArrayObtainStyledAttributes, 2));
            setItemActiveIndicatorShapeAppearance(u6.m.a(context2, typedArrayObtainStyledAttributes.getResourceId(4, 0), 0, new u6.a(0)).a());
            typedArrayObtainStyledAttributes.recycle();
        }
        if (typedArray.hasValue(13)) {
            int resourceId3 = typedArray.getResourceId(13, 0);
            hVar.f5154b = true;
            getMenuInflater().inflate(resourceId3, eVar);
            hVar.f5154b = false;
            hVar.j(true);
        }
        bVarK.F();
        addView(fVarA);
        eVar.f7612e = new a0.b(19, this);
    }

    private MenuInflater getMenuInflater() {
        if (this.f5159e == null) {
            this.f5159e = new j.i(getContext());
        }
        return this.f5159e;
    }

    public abstract f a(Context context);

    public ColorStateList getItemActiveIndicatorColor() {
        return this.f5157b.getItemActiveIndicatorColor();
    }

    public int getItemActiveIndicatorHeight() {
        return this.f5157b.getItemActiveIndicatorHeight();
    }

    public int getItemActiveIndicatorMarginHorizontal() {
        return this.f5157b.getItemActiveIndicatorMarginHorizontal();
    }

    public u6.m getItemActiveIndicatorShapeAppearance() {
        return this.f5157b.getItemActiveIndicatorShapeAppearance();
    }

    public int getItemActiveIndicatorWidth() {
        return this.f5157b.getItemActiveIndicatorWidth();
    }

    public Drawable getItemBackground() {
        return this.f5157b.getItemBackground();
    }

    @Deprecated
    public int getItemBackgroundResource() {
        return this.f5157b.getItemBackgroundRes();
    }

    public int getItemIconSize() {
        return this.f5157b.getItemIconSize();
    }

    public ColorStateList getItemIconTintList() {
        return this.f5157b.getIconTintList();
    }

    public int getItemPaddingBottom() {
        return this.f5157b.getItemPaddingBottom();
    }

    public int getItemPaddingTop() {
        return this.f5157b.getItemPaddingTop();
    }

    public ColorStateList getItemRippleColor() {
        return this.d;
    }

    public int getItemTextAppearanceActive() {
        return this.f5157b.getItemTextAppearanceActive();
    }

    public int getItemTextAppearanceInactive() {
        return this.f5157b.getItemTextAppearanceInactive();
    }

    public ColorStateList getItemTextColor() {
        return this.f5157b.getItemTextColor();
    }

    public int getLabelVisibilityMode() {
        return this.f5157b.getLabelVisibilityMode();
    }

    public abstract int getMaxItemCount();

    public Menu getMenu() {
        return this.f5156a;
    }

    public k.a0 getMenuView() {
        return this.f5157b;
    }

    public h getPresenter() {
        return this.f5158c;
    }

    public int getSelectedItemId() {
        return this.f5157b.getSelectedItemId();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        o9.d.E(this);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof NavigationBarView$SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        NavigationBarView$SavedState navigationBarView$SavedState = (NavigationBarView$SavedState) parcelable;
        super.onRestoreInstanceState(navigationBarView$SavedState.f1319a);
        this.f5156a.t(navigationBarView$SavedState.f5087c);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        NavigationBarView$SavedState navigationBarView$SavedState = new NavigationBarView$SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        navigationBarView$SavedState.f5087c = bundle;
        this.f5156a.v(bundle);
        return navigationBarView$SavedState;
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        o9.d.B(this, f);
    }

    public void setItemActiveIndicatorColor(ColorStateList colorStateList) {
        this.f5157b.setItemActiveIndicatorColor(colorStateList);
    }

    public void setItemActiveIndicatorEnabled(boolean z7) {
        this.f5157b.setItemActiveIndicatorEnabled(z7);
    }

    public void setItemActiveIndicatorHeight(int i6) {
        this.f5157b.setItemActiveIndicatorHeight(i6);
    }

    public void setItemActiveIndicatorMarginHorizontal(int i6) {
        this.f5157b.setItemActiveIndicatorMarginHorizontal(i6);
    }

    public void setItemActiveIndicatorShapeAppearance(u6.m mVar) {
        this.f5157b.setItemActiveIndicatorShapeAppearance(mVar);
    }

    public void setItemActiveIndicatorWidth(int i6) {
        this.f5157b.setItemActiveIndicatorWidth(i6);
    }

    public void setItemBackground(Drawable drawable) {
        this.f5157b.setItemBackground(drawable);
        this.d = null;
    }

    public void setItemBackgroundResource(int i6) {
        this.f5157b.setItemBackgroundRes(i6);
        this.d = null;
    }

    public void setItemIconSize(int i6) {
        this.f5157b.setItemIconSize(i6);
    }

    public void setItemIconSizeRes(int i6) {
        setItemIconSize(getResources().getDimensionPixelSize(i6));
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.f5157b.setIconTintList(colorStateList);
    }

    public void setItemPaddingBottom(int i6) throws Resources.NotFoundException {
        this.f5157b.setItemPaddingBottom(i6);
    }

    public void setItemPaddingTop(int i6) throws Resources.NotFoundException {
        this.f5157b.setItemPaddingTop(i6);
    }

    public void setItemRippleColor(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = this.d;
        f fVar = this.f5157b;
        if (colorStateList2 == colorStateList) {
            if (colorStateList != null || fVar.getItemBackground() == null) {
                return;
            }
            fVar.setItemBackground(null);
            return;
        }
        this.d = colorStateList;
        if (colorStateList == null) {
            fVar.setItemBackground(null);
        } else {
            fVar.setItemBackground(new RippleDrawable(s6.c.a(colorStateList), null, null));
        }
    }

    public void setItemTextAppearanceActive(int i6) throws Resources.NotFoundException {
        this.f5157b.setItemTextAppearanceActive(i6);
    }

    public void setItemTextAppearanceInactive(int i6) throws Resources.NotFoundException {
        this.f5157b.setItemTextAppearanceInactive(i6);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f5157b.setItemTextColor(colorStateList);
    }

    public void setLabelVisibilityMode(int i6) throws Resources.NotFoundException {
        f fVar = this.f5157b;
        if (fVar.getLabelVisibilityMode() != i6) {
            fVar.setLabelVisibilityMode(i6);
            this.f5158c.j(false);
        }
    }

    public void setSelectedItemId(int i6) {
        e eVar = this.f5156a;
        MenuItem menuItemFindItem = eVar.findItem(i6);
        if (menuItemFindItem == null || eVar.q(menuItemFindItem, this.f5158c, 0)) {
            return;
        }
        menuItemFindItem.setChecked(true);
    }

    public void setOnItemReselectedListener(i iVar) {
    }

    public void setOnItemSelectedListener(j jVar) {
    }
}
