package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import b2.h;
import com.google.android.material.internal.a0;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;
import java.util.WeakHashMap;
import n0.s0;
import u6.l;
import u6.m;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MaterialButtonToggleGroup extends LinearLayout {

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ int f4723k = 0;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f4724a;

    /* renamed from: b, reason: collision with root package name */
    public final a0.b f4725b;

    /* renamed from: c, reason: collision with root package name */
    public final LinkedHashSet f4726c;
    public final d d;

    /* renamed from: e, reason: collision with root package name */
    public Integer[] f4727e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f4728g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f4729h;

    /* renamed from: i, reason: collision with root package name */
    public final int f4730i;

    /* renamed from: j, reason: collision with root package name */
    public HashSet f4731j;

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialButtonToggleGroupStyle);
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            if (c(i6)) {
                return i6;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (c(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private int getVisibleButtonCount() {
        int i6 = 0;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            if ((getChildAt(i10) instanceof MaterialButton) && c(i10)) {
                i6++;
            }
        }
        return i6;
    }

    private void setGeneratedIdIfNeeded(MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            WeakHashMap weakHashMap = s0.f8353a;
            materialButton.setId(View.generateViewId());
        }
    }

    private void setupButtonChild(MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.setOnPressedChangeListenerInternal(this.f4725b);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    public final void a() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i6 = firstVisibleChildIndex + 1; i6 < getChildCount(); i6++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i6);
            int iMin = Math.min(materialButton.getStrokeWidth(), ((MaterialButton) getChildAt(i6 - 1)).getStrokeWidth());
            ViewGroup.LayoutParams layoutParams = materialButton.getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
            if (getOrientation() == 0) {
                layoutParams2.setMarginEnd(0);
                layoutParams2.setMarginStart(-iMin);
                layoutParams2.topMargin = 0;
            } else {
                layoutParams2.bottomMargin = 0;
                layoutParams2.topMargin = -iMin;
                layoutParams2.setMarginStart(0);
            }
            materialButton.setLayoutParams(layoutParams2);
        }
        if (getChildCount() == 0 || firstVisibleChildIndex == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) ((MaterialButton) getChildAt(firstVisibleChildIndex)).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams3.topMargin = 0;
            layoutParams3.bottomMargin = 0;
        } else {
            layoutParams3.setMarginEnd(0);
            layoutParams3.setMarginStart(0);
            layoutParams3.leftMargin = 0;
            layoutParams3.rightMargin = 0;
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i6, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e("MaterialButtonToggleGroup", "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i6, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setGeneratedIdIfNeeded(materialButton);
        setupButtonChild(materialButton);
        b(materialButton.getId(), materialButton.f4719n);
        m shapeAppearanceModel = materialButton.getShapeAppearanceModel();
        this.f4724a.add(new e(shapeAppearanceModel.f10403e, shapeAppearanceModel.f10405h, shapeAppearanceModel.f, shapeAppearanceModel.f10404g));
        s0.q(materialButton, new h(1, this));
    }

    public final void b(int i6, boolean z7) {
        if (i6 == -1) {
            Log.e("MaterialButtonToggleGroup", "Button ID is not valid: " + i6);
            return;
        }
        HashSet hashSet = new HashSet(this.f4731j);
        if (z7 && !hashSet.contains(Integer.valueOf(i6))) {
            if (this.f4728g && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i6));
        } else {
            if (z7 || !hashSet.contains(Integer.valueOf(i6))) {
                return;
            }
            if (!this.f4729h || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i6));
            }
        }
        d(hashSet);
    }

    public final boolean c(int i6) {
        return getChildAt(i6).getVisibility() != 8;
    }

    public final void d(Set set) {
        HashSet hashSet = this.f4731j;
        this.f4731j = new HashSet(set);
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            int id = ((MaterialButton) getChildAt(i6)).getId();
            boolean zContains = set.contains(Integer.valueOf(id));
            View viewFindViewById = findViewById(id);
            if (viewFindViewById instanceof MaterialButton) {
                this.f = true;
                ((MaterialButton) viewFindViewById).setChecked(zContains);
                this.f = false;
            }
            if (hashSet.contains(Integer.valueOf(id)) != set.contains(Integer.valueOf(id))) {
                set.contains(Integer.valueOf(id));
                Iterator it = this.f4726c.iterator();
                while (it.hasNext()) {
                    ((com.google.android.material.timepicker.h) it.next()).a();
                }
            }
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.d);
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            treeMap.put((MaterialButton) getChildAt(i6), Integer.valueOf(i6));
        }
        this.f4727e = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    public final void e() {
        e eVar;
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i6 = 0; i6 < childCount; i6++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i6);
            if (materialButton.getVisibility() != 8) {
                l lVarF = materialButton.getShapeAppearanceModel().f();
                e eVar2 = (e) this.f4724a.get(i6);
                if (firstVisibleChildIndex != lastVisibleChildIndex) {
                    boolean z7 = getOrientation() == 0;
                    u6.a aVar = e.f4752e;
                    if (i6 == firstVisibleChildIndex) {
                        eVar = z7 ? a0.i(this) ? new e(aVar, aVar, eVar2.f4754b, eVar2.f4755c) : new e(eVar2.f4753a, eVar2.d, aVar, aVar) : new e(eVar2.f4753a, aVar, eVar2.f4754b, aVar);
                    } else if (i6 == lastVisibleChildIndex) {
                        eVar = z7 ? a0.i(this) ? new e(eVar2.f4753a, eVar2.d, aVar, aVar) : new e(aVar, aVar, eVar2.f4754b, eVar2.f4755c) : new e(aVar, eVar2.d, aVar, eVar2.f4755c);
                    } else {
                        eVar2 = null;
                    }
                    eVar2 = eVar;
                }
                if (eVar2 == null) {
                    lVarF.c(0.0f);
                } else {
                    lVarF.f10392e = eVar2.f4753a;
                    lVarF.f10394h = eVar2.d;
                    lVarF.f = eVar2.f4754b;
                    lVarF.f10393g = eVar2.f4755c;
                }
                materialButton.setShapeAppearanceModel(lVarF.a());
            }
        }
    }

    public int getCheckedButtonId() {
        if (!this.f4728g || this.f4731j.isEmpty()) {
            return -1;
        }
        return ((Integer) this.f4731j.iterator().next()).intValue();
    }

    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            int id = ((MaterialButton) getChildAt(i6)).getId();
            if (this.f4731j.contains(Integer.valueOf(id))) {
                arrayList.add(Integer.valueOf(id));
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i6, int i10) {
        Integer[] numArr = this.f4727e;
        if (numArr != null && i10 < numArr.length) {
            return numArr[i10].intValue();
        }
        Log.w("MaterialButtonToggleGroup", "Child order wasn't updated");
        return i10;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i6 = this.f4730i;
        if (i6 != -1) {
            d(Collections.singleton(Integer.valueOf(i6)));
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) j7.c.z(1, getVisibleButtonCount(), this.f4728g ? 1 : 2, false).f7444b);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i6, int i10) {
        e();
        a();
        super.onMeasure(i6, i10);
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).setOnPressedChangeListenerInternal(null);
        }
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            this.f4724a.remove(iIndexOfChild);
        }
        e();
        a();
    }

    public void setSelectionRequired(boolean z7) {
        this.f4729h = z7;
    }

    public void setSingleSelection(boolean z7) {
        if (this.f4728g != z7) {
            this.f4728g = z7;
            d(new HashSet());
        }
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet, int i6) {
        super(y6.a.a(context, attributeSet, i6, R.style.Widget_MaterialComponents_MaterialButtonToggleGroup), attributeSet, i6);
        this.f4724a = new ArrayList();
        this.f4725b = new a0.b(15, this);
        this.f4726c = new LinkedHashSet();
        this.d = new d(this);
        this.f = false;
        this.f4731j = new HashSet();
        TypedArray typedArrayJ = a0.j(getContext(), attributeSet, x5.a.f11045z, i6, R.style.Widget_MaterialComponents_MaterialButtonToggleGroup, new int[0]);
        setSingleSelection(typedArrayJ.getBoolean(2, false));
        this.f4730i = typedArrayJ.getResourceId(0, -1);
        this.f4729h = typedArrayJ.getBoolean(1, false);
        setChildrenDrawingOrderEnabled(true);
        typedArrayJ.recycle();
        WeakHashMap weakHashMap = s0.f8353a;
        setImportantForAccessibility(1);
    }

    public void setSingleSelection(int i6) {
        setSingleSelection(getResources().getBoolean(i6));
    }
}
