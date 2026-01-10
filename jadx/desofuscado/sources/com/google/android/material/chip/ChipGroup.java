package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.internal.FlowLayout;
import com.google.android.material.internal.a;
import com.google.android.material.internal.a0;
import com.p2elite.brtv2.R;
import e6.e;
import e6.f;
import e6.g;
import e6.h;
import j7.c;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ChipGroup extends FlowLayout {

    /* renamed from: e, reason: collision with root package name */
    public int f4787e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public g f4788g;

    /* renamed from: h, reason: collision with root package name */
    public final a f4789h;

    /* renamed from: i, reason: collision with root package name */
    public final int f4790i;

    /* renamed from: j, reason: collision with root package name */
    public final h f4791j;

    /* compiled from: MyApplication */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.chipGroupStyle);
    }

    private int getChipCount() {
        int i6 = 0;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            if (getChildAt(i10) instanceof Chip) {
                i6++;
            }
        }
        return i6;
    }

    @Override // com.google.android.material.internal.FlowLayout
    public final boolean a() {
        return this.f4959c;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public int getCheckedChipId() {
        return this.f4789h.c();
    }

    public List<Integer> getCheckedChipIds() {
        return this.f4789h.b(this);
    }

    public int getChipSpacingHorizontal() {
        return this.f4787e;
    }

    public int getChipSpacingVertical() {
        return this.f;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i6 = this.f4790i;
        if (i6 != -1) {
            a aVar = this.f4789h;
            com.google.android.material.internal.g gVar = (com.google.android.material.internal.g) aVar.f4976a.get(Integer.valueOf(i6));
            if (gVar != null && aVar.a(gVar)) {
                aVar.d();
            }
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) c.z(getRowCount(), this.f4959c ? getChipCount() : -1, this.f4789h.d ? 1 : 2, false).f7444b);
    }

    public void setChipSpacing(int i6) {
        setChipSpacingHorizontal(i6);
        setChipSpacingVertical(i6);
    }

    public void setChipSpacingHorizontal(int i6) {
        if (this.f4787e != i6) {
            this.f4787e = i6;
            setItemSpacing(i6);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(int i6) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i6));
    }

    public void setChipSpacingResource(int i6) {
        setChipSpacing(getResources().getDimensionPixelOffset(i6));
    }

    public void setChipSpacingVertical(int i6) {
        if (this.f != i6) {
            this.f = i6;
            setLineSpacing(i6);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(int i6) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i6));
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setDividerDrawableVertical(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int i6) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    @Deprecated
    public void setOnCheckedChangeListener(f fVar) {
        if (fVar == null) {
            setOnCheckedStateChangeListener(null);
        } else {
            setOnCheckedStateChangeListener(new e(this));
        }
    }

    public void setOnCheckedStateChangeListener(g gVar) {
        this.f4788g = gVar;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f4791j.f6597a = onHierarchyChangeListener;
    }

    public void setSelectionRequired(boolean z7) {
        this.f4789h.f4979e = z7;
    }

    @Deprecated
    public void setShowDividerHorizontal(int i6) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int i6) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Override // com.google.android.material.internal.FlowLayout
    public void setSingleLine(boolean z7) {
        super.setSingleLine(z7);
    }

    public void setSingleSelection(boolean z7) {
        a aVar = this.f4789h;
        if (aVar.d != z7) {
            aVar.d = z7;
            boolean zIsEmpty = aVar.f4977b.isEmpty();
            Iterator it = aVar.f4976a.values().iterator();
            while (it.hasNext()) {
                aVar.e((com.google.android.material.internal.g) it.next(), false);
            }
            if (zIsEmpty) {
                return;
            }
            aVar.d();
        }
    }

    public ChipGroup(Context context, AttributeSet attributeSet, int i6) {
        super(y6.a.a(context, attributeSet, i6, R.style.Widget_MaterialComponents_ChipGroup), attributeSet, i6);
        a aVar = new a();
        this.f4789h = aVar;
        h hVar = new h(this);
        this.f4791j = hVar;
        TypedArray typedArrayJ = a0.j(getContext(), attributeSet, x5.a.f11029j, i6, R.style.Widget_MaterialComponents_ChipGroup, new int[0]);
        int dimensionPixelOffset = typedArrayJ.getDimensionPixelOffset(1, 0);
        setChipSpacingHorizontal(typedArrayJ.getDimensionPixelOffset(2, dimensionPixelOffset));
        setChipSpacingVertical(typedArrayJ.getDimensionPixelOffset(3, dimensionPixelOffset));
        setSingleLine(typedArrayJ.getBoolean(5, false));
        setSingleSelection(typedArrayJ.getBoolean(6, false));
        setSelectionRequired(typedArrayJ.getBoolean(4, false));
        this.f4790i = typedArrayJ.getResourceId(0, -1);
        typedArrayJ.recycle();
        aVar.f4978c = new e(this);
        super.setOnHierarchyChangeListener(hVar);
        WeakHashMap weakHashMap = s0.f8353a;
        setImportantForAccessibility(1);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public void setSingleLine(int i6) {
        setSingleLine(getResources().getBoolean(i6));
    }

    public void setSingleSelection(int i6) {
        setSingleSelection(getResources().getBoolean(i6));
    }
}
