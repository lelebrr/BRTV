package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import androidx.media3.common.C;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {

    /* renamed from: l, reason: collision with root package name */
    public static final Set f2743l = Collections.unmodifiableSet(new HashSet(Arrays.asList(17, 66, 33, Integer.valueOf(TsExtractor.TS_STREAM_TYPE_HDMV_DTS))));

    /* renamed from: a, reason: collision with root package name */
    public boolean f2744a;

    /* renamed from: b, reason: collision with root package name */
    public int f2745b;

    /* renamed from: c, reason: collision with root package name */
    public int[] f2746c;
    public View[] d;

    /* renamed from: e, reason: collision with root package name */
    public final SparseIntArray f2747e;
    public final SparseIntArray f;

    /* renamed from: g, reason: collision with root package name */
    public androidx.appcompat.app.c0 f2748g;

    /* renamed from: h, reason: collision with root package name */
    public final Rect f2749h;

    /* renamed from: i, reason: collision with root package name */
    public int f2750i;

    /* renamed from: j, reason: collision with root package name */
    public int f2751j;

    /* renamed from: k, reason: collision with root package name */
    public int f2752k;

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i6, int i10) {
        super(context, attributeSet, i6, i10);
        this.f2744a = false;
        this.f2745b = -1;
        this.f2747e = new SparseIntArray();
        this.f = new SparseIntArray();
        this.f2748g = new u();
        this.f2749h = new Rect();
        this.f2750i = -1;
        this.f2751j = -1;
        this.f2752k = -1;
        C(x0.getProperties(context, attributeSet, i6, i10).f2758b);
    }

    public final int A(int i6, e1 e1Var, l1 l1Var) {
        if (!l1Var.f2890g) {
            return this.f2748g.j(i6);
        }
        int i10 = this.f2747e.get(i6, -1);
        if (i10 != -1) {
            return i10;
        }
        int iB = e1Var.b(i6);
        if (iB != -1) {
            return this.f2748g.j(iB);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i6);
        return 1;
    }

    public final void B(View view, int i6, boolean z7) {
        int childMeasureSpec;
        int childMeasureSpec2;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.f2761b;
        int i10 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        int i11 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        int iX = x(layoutParams.f2753e, layoutParams.f);
        if (this.mOrientation == 1) {
            childMeasureSpec2 = x0.getChildMeasureSpec(iX, i6, i11, ((ViewGroup.MarginLayoutParams) layoutParams).width, false);
            childMeasureSpec = x0.getChildMeasureSpec(this.mOrientationHelper.l(), getHeightMode(), i10, ((ViewGroup.MarginLayoutParams) layoutParams).height, true);
        } else {
            int childMeasureSpec3 = x0.getChildMeasureSpec(iX, i6, i10, ((ViewGroup.MarginLayoutParams) layoutParams).height, false);
            int childMeasureSpec4 = x0.getChildMeasureSpec(this.mOrientationHelper.l(), getWidthMode(), i11, ((ViewGroup.MarginLayoutParams) layoutParams).width, true);
            childMeasureSpec = childMeasureSpec3;
            childMeasureSpec2 = childMeasureSpec4;
        }
        RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (z7 ? shouldReMeasureChild(view, childMeasureSpec2, childMeasureSpec, layoutParams2) : shouldMeasureChild(view, childMeasureSpec2, childMeasureSpec, layoutParams2)) {
            view.measure(childMeasureSpec2, childMeasureSpec);
        }
    }

    public final void C(int i6) {
        if (i6 == this.f2745b) {
            return;
        }
        this.f2744a = true;
        if (i6 < 1) {
            throw new IllegalArgumentException(a.e.n(i6, "Span count should be at least 1. Provided "));
        }
        this.f2745b = i6;
        this.f2748g.k();
        requestLayout();
    }

    public final void D() {
        int height;
        int paddingTop;
        if (getOrientation() == 1) {
            height = getWidth() - getPaddingRight();
            paddingTop = getPaddingLeft();
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = getPaddingTop();
        }
        r(height - paddingTop);
    }

    @Override // androidx.recyclerview.widget.x0
    public final boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void collectPrefetchPositionsForLayoutState(l1 l1Var, y yVar, w0 w0Var) {
        int i6;
        int iJ = this.f2745b;
        for (int i10 = 0; i10 < this.f2745b && (i6 = yVar.d) >= 0 && i6 < l1Var.b() && iJ > 0; i10++) {
            int i11 = yVar.d;
            ((r) w0Var).a(i11, Math.max(0, yVar.f2981g));
            iJ -= this.f2748g.j(i11);
            yVar.d += yVar.f2980e;
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final View findReferenceChild(e1 e1Var, l1 l1Var, boolean z7, boolean z10) {
        int i6;
        int childCount;
        int childCount2 = getChildCount();
        int i10 = 1;
        if (z10) {
            childCount = getChildCount() - 1;
            i6 = -1;
            i10 = -1;
        } else {
            i6 = childCount2;
            childCount = 0;
        }
        int iB = l1Var.b();
        ensureLayoutState();
        int iK = this.mOrientationHelper.k();
        int iG = this.mOrientationHelper.g();
        View view = null;
        View view2 = null;
        while (childCount != i6) {
            View childAt = getChildAt(childCount);
            int position = getPosition(childAt);
            if (position >= 0 && position < iB && z(position, e1Var, l1Var) == 0) {
                if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).f2760a.isRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.mOrientationHelper.e(childAt) < iG && this.mOrientationHelper.b(childAt) >= iK) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            childCount += i10;
        }
        return view != null ? view : view2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.x0
    public final RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return this.mOrientation == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.x0
    public final RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.x0
    public final int getColumnCountForAccessibility(e1 e1Var, l1 l1Var) {
        if (this.mOrientation == 1) {
            return Math.min(this.f2745b, getItemCount());
        }
        if (l1Var.b() < 1) {
            return 0;
        }
        return y(l1Var.b() - 1, e1Var, l1Var) + 1;
    }

    @Override // androidx.recyclerview.widget.x0
    public final int getRowCountForAccessibility(e1 e1Var, l1 l1Var) {
        if (this.mOrientation == 0) {
            return Math.min(this.f2745b, getItemCount());
        }
        if (l1Var.b() < 1) {
            return 0;
        }
        return y(l1Var.b() - 1, e1Var, l1Var) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void layoutChunk(e1 e1Var, l1 l1Var, y yVar, x xVar) {
        int i6;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int iD;
        int iD2;
        int i16;
        int iD3;
        int childMeasureSpec;
        int childMeasureSpec2;
        boolean z7;
        int i17;
        View viewB;
        int iJ = this.mOrientationHelper.j();
        boolean z10 = iJ != 1073741824;
        int i18 = getChildCount() > 0 ? this.f2746c[this.f2745b] : 0;
        if (z10) {
            D();
        }
        boolean z11 = yVar.f2980e == 1;
        int iZ = this.f2745b;
        if (!z11) {
            iZ = z(yVar.d, e1Var, l1Var) + A(yVar.d, e1Var, l1Var);
        }
        int i19 = 0;
        while (i19 < this.f2745b && (i17 = yVar.d) >= 0 && i17 < l1Var.b() && iZ > 0) {
            int i20 = yVar.d;
            int iA = A(i20, e1Var, l1Var);
            if (iA > this.f2745b) {
                StringBuilder sbV = a.e.v("Item at position ", i20, " requires ", iA, " spans but GridLayoutManager has only ");
                sbV.append(this.f2745b);
                sbV.append(" spans.");
                throw new IllegalArgumentException(sbV.toString());
            }
            iZ -= iA;
            if (iZ < 0 || (viewB = yVar.b(e1Var)) == null) {
                break;
            }
            this.d[i19] = viewB;
            i19++;
        }
        if (i19 == 0) {
            xVar.f2975b = true;
            return;
        }
        if (z11) {
            i10 = i19;
            i6 = 0;
            i11 = 1;
        } else {
            i6 = i19 - 1;
            i10 = -1;
            i11 = -1;
        }
        int i21 = 0;
        while (i6 != i10) {
            View view = this.d[i6];
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int iA2 = A(getPosition(view), e1Var, l1Var);
            layoutParams.f = iA2;
            layoutParams.f2753e = i21;
            i21 += iA2;
            i6 += i11;
        }
        float f = 0.0f;
        int i22 = 0;
        for (int i23 = 0; i23 < i19; i23++) {
            View view2 = this.d[i23];
            if (yVar.f2985k != null) {
                z7 = false;
                if (z11) {
                    addDisappearingView(view2);
                } else {
                    addDisappearingView(view2, 0);
                }
            } else if (z11) {
                addView(view2);
                z7 = false;
            } else {
                z7 = false;
                addView(view2, 0);
            }
            calculateItemDecorationsForChild(view2, this.f2749h);
            B(view2, iJ, z7);
            int iC = this.mOrientationHelper.c(view2);
            if (iC > i22) {
                i22 = iC;
            }
            float fD = (this.mOrientationHelper.d(view2) * 1.0f) / ((LayoutParams) view2.getLayoutParams()).f;
            if (fD > f) {
                f = fD;
            }
        }
        if (z10) {
            r(Math.max(Math.round(f * this.f2745b), i18));
            i22 = 0;
            for (int i24 = 0; i24 < i19; i24++) {
                View view3 = this.d[i24];
                B(view3, 1073741824, true);
                int iC2 = this.mOrientationHelper.c(view3);
                if (iC2 > i22) {
                    i22 = iC2;
                }
            }
        }
        for (int i25 = 0; i25 < i19; i25++) {
            View view4 = this.d[i25];
            if (this.mOrientationHelper.c(view4) != i22) {
                LayoutParams layoutParams2 = (LayoutParams) view4.getLayoutParams();
                Rect rect = layoutParams2.f2761b;
                int i26 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                int i27 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                int iX = x(layoutParams2.f2753e, layoutParams2.f);
                if (this.mOrientation == 1) {
                    childMeasureSpec2 = x0.getChildMeasureSpec(iX, 1073741824, i27, ((ViewGroup.MarginLayoutParams) layoutParams2).width, false);
                    childMeasureSpec = View.MeasureSpec.makeMeasureSpec(i22 - i26, 1073741824);
                } else {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i22 - i27, 1073741824);
                    childMeasureSpec = x0.getChildMeasureSpec(iX, 1073741824, i26, ((ViewGroup.MarginLayoutParams) layoutParams2).height, false);
                    childMeasureSpec2 = iMakeMeasureSpec;
                }
                if (shouldReMeasureChild(view4, childMeasureSpec2, childMeasureSpec, (RecyclerView.LayoutParams) view4.getLayoutParams())) {
                    view4.measure(childMeasureSpec2, childMeasureSpec);
                }
            }
        }
        int i28 = 0;
        xVar.f2974a = i22;
        if (this.mOrientation != 1) {
            if (yVar.f == -1) {
                int i29 = yVar.f2978b;
                i13 = i29 - i22;
                i12 = i29;
            } else {
                int i30 = yVar.f2978b;
                i12 = i30 + i22;
                i13 = i30;
            }
            i14 = 0;
            i15 = 0;
        } else if (yVar.f == -1) {
            i15 = yVar.f2978b;
            i14 = i15 - i22;
            i13 = 0;
            i12 = 0;
        } else {
            int i31 = yVar.f2978b;
            i14 = i31;
            i12 = 0;
            i15 = i31 + i22;
            i13 = 0;
        }
        while (i28 < i19) {
            View view5 = this.d[i28];
            LayoutParams layoutParams3 = (LayoutParams) view5.getLayoutParams();
            if (this.mOrientation != 1) {
                int paddingTop = getPaddingTop() + this.f2746c[layoutParams3.f2753e];
                iD = i13;
                iD2 = i12;
                i16 = paddingTop;
                iD3 = this.mOrientationHelper.d(view5) + paddingTop;
            } else if (isLayoutRTL()) {
                int paddingLeft = getPaddingLeft() + this.f2746c[this.f2745b - layoutParams3.f2753e];
                iD2 = paddingLeft;
                i16 = i14;
                iD3 = i15;
                iD = paddingLeft - this.mOrientationHelper.d(view5);
            } else {
                int paddingLeft2 = getPaddingLeft() + this.f2746c[layoutParams3.f2753e];
                iD2 = this.mOrientationHelper.d(view5) + paddingLeft2;
                i16 = i14;
                iD3 = i15;
                iD = paddingLeft2;
            }
            layoutDecoratedWithMargins(view5, iD, i16, iD2, iD3);
            if (layoutParams3.f2760a.isRemoved() || layoutParams3.f2760a.isUpdated()) {
                xVar.f2976c = true;
            }
            xVar.d |= view5.hasFocusable();
            i28++;
            i13 = iD;
            i12 = iD2;
            i14 = i16;
            i15 = iD3;
        }
        Arrays.fill(this.d, (Object) null);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void onAnchorReady(e1 e1Var, l1 l1Var, w wVar, int i6) {
        super.onAnchorReady(e1Var, l1Var, wVar, i6);
        D();
        if (l1Var.b() > 0 && !l1Var.f2890g) {
            boolean z7 = i6 == 1;
            int iZ = z(wVar.f2969b, e1Var, l1Var);
            if (z7) {
                while (iZ > 0) {
                    int i10 = wVar.f2969b;
                    if (i10 <= 0) {
                        break;
                    }
                    int i11 = i10 - 1;
                    wVar.f2969b = i11;
                    iZ = z(i11, e1Var, l1Var);
                }
            } else {
                int iB = l1Var.b() - 1;
                int i12 = wVar.f2969b;
                while (i12 < iB) {
                    int i13 = i12 + 1;
                    int iZ2 = z(i13, e1Var, l1Var);
                    if (iZ2 <= iZ) {
                        break;
                    }
                    i12 = i13;
                    iZ = iZ2;
                }
                wVar.f2969b = i12;
            }
        }
        s();
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x00d1, code lost:
    
        if (r13 == (r2 > r15)) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x010f  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.x0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.view.View onFocusSearchFailed(android.view.View r24, int r25, androidx.recyclerview.widget.e1 r26, androidx.recyclerview.widget.l1 r27) {
        /*
            Method dump skipped, instructions count: 317
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.onFocusSearchFailed(android.view.View, int, androidx.recyclerview.widget.e1, androidx.recyclerview.widget.l1):android.view.View");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.x0
    public final void onInitializeAccessibilityNodeInfo(e1 e1Var, l1 l1Var, o0.h hVar) {
        super.onInitializeAccessibilityNodeInfo(e1Var, l1Var, hVar);
        hVar.i(GridView.class.getName());
        k0 k0Var = this.mRecyclerView.mAdapter;
        if (k0Var == null || k0Var.getItemCount() <= 1) {
            return;
        }
        hVar.b(o0.c.f8535s);
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onInitializeAccessibilityNodeInfoForItem(e1 e1Var, l1 l1Var, View view, o0.h hVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, hVar);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int iY = y(layoutParams2.f2760a.getLayoutPosition(), e1Var, l1Var);
        if (this.mOrientation == 0) {
            hVar.k(o0.g.a(layoutParams2.f2753e, layoutParams2.f, iY, 1, false));
        } else {
            hVar.k(o0.g.a(iY, 1, layoutParams2.f2753e, layoutParams2.f, false));
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onItemsAdded(RecyclerView recyclerView, int i6, int i10) {
        this.f2748g.k();
        ((SparseIntArray) this.f2748g.f233b).clear();
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onItemsChanged(RecyclerView recyclerView) {
        this.f2748g.k();
        ((SparseIntArray) this.f2748g.f233b).clear();
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onItemsMoved(RecyclerView recyclerView, int i6, int i10, int i11) {
        this.f2748g.k();
        ((SparseIntArray) this.f2748g.f233b).clear();
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onItemsRemoved(RecyclerView recyclerView, int i6, int i10) {
        this.f2748g.k();
        ((SparseIntArray) this.f2748g.f233b).clear();
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onItemsUpdated(RecyclerView recyclerView, int i6, int i10, Object obj) {
        this.f2748g.k();
        ((SparseIntArray) this.f2748g.f233b).clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.x0
    public final void onLayoutChildren(e1 e1Var, l1 l1Var) {
        boolean z7 = l1Var.f2890g;
        SparseIntArray sparseIntArray = this.f;
        SparseIntArray sparseIntArray2 = this.f2747e;
        if (z7) {
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i6).getLayoutParams();
                int layoutPosition = layoutParams.f2760a.getLayoutPosition();
                sparseIntArray2.put(layoutPosition, layoutParams.f);
                sparseIntArray.put(layoutPosition, layoutParams.f2753e);
            }
        }
        super.onLayoutChildren(e1Var, l1Var);
        sparseIntArray2.clear();
        sparseIntArray.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.x0
    public final void onLayoutCompleted(l1 l1Var) {
        View viewFindViewByPosition;
        super.onLayoutCompleted(l1Var);
        this.f2744a = false;
        int i6 = this.f2750i;
        if (i6 == -1 || (viewFindViewByPosition = findViewByPosition(i6)) == null) {
            return;
        }
        viewFindViewByPosition.sendAccessibilityEvent(C.BUFFER_FLAG_NOT_DEPENDED_ON);
        this.f2750i = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01a4 A[EDGE_INSN: B:207:0x01a4->B:122:0x01a4 BREAK  A[LOOP:2: B:126:0x01b4->B:135:0x01dd, LOOP_LABEL: LOOP:2: B:126:0x01b4->B:135:0x01dd], EDGE_INSN: B:214:0x01a4->B:122:0x01a4 BREAK  A[LOOP:5: B:148:0x021b->B:159:0x024b, LOOP_LABEL: LOOP:5: B:148:0x021b->B:159:0x024b]] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0278  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.x0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean performAccessibilityAction(int r12, android.os.Bundle r13) {
        /*
            Method dump skipped, instructions count: 724
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.performAccessibilityAction(int, android.os.Bundle):boolean");
    }

    public final void r(int i6) {
        int i10;
        int[] iArr = this.f2746c;
        int i11 = this.f2745b;
        if (iArr == null || iArr.length != i11 + 1 || iArr[iArr.length - 1] != i6) {
            iArr = new int[i11 + 1];
        }
        int i12 = 0;
        iArr[0] = 0;
        int i13 = i6 / i11;
        int i14 = i6 % i11;
        int i15 = 0;
        for (int i16 = 1; i16 <= i11; i16++) {
            i12 += i14;
            if (i12 <= 0 || i11 - i12 >= i14) {
                i10 = i13;
            } else {
                i10 = i13 + 1;
                i12 -= i11;
            }
            i15 += i10;
            iArr[i16] = i15;
        }
        this.f2746c = iArr;
    }

    public final void s() {
        View[] viewArr = this.d;
        if (viewArr == null || viewArr.length != this.f2745b) {
            this.d = new View[this.f2745b];
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.x0
    public final int scrollHorizontallyBy(int i6, e1 e1Var, l1 l1Var) {
        D();
        s();
        return super.scrollHorizontallyBy(i6, e1Var, l1Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.x0
    public final int scrollVerticallyBy(int i6, e1 e1Var, l1 l1Var) {
        D();
        s();
        return super.scrollVerticallyBy(i6, e1Var, l1Var);
    }

    @Override // androidx.recyclerview.widget.x0
    public final void setMeasuredDimension(Rect rect, int i6, int i10) {
        int iChooseSize;
        int iChooseSize2;
        if (this.f2746c == null) {
            super.setMeasuredDimension(rect, i6, i10);
        }
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (this.mOrientation == 1) {
            iChooseSize2 = x0.chooseSize(i10, rect.height() + paddingBottom, getMinimumHeight());
            int[] iArr = this.f2746c;
            iChooseSize = x0.chooseSize(i6, iArr[iArr.length - 1] + paddingRight, getMinimumWidth());
        } else {
            iChooseSize = x0.chooseSize(i6, rect.width() + paddingRight, getMinimumWidth());
            int[] iArr2 = this.f2746c;
            iChooseSize2 = x0.chooseSize(i10, iArr2[iArr2.length - 1] + paddingBottom, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void setStackFromEnd(boolean z7) {
        if (z7) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.setStackFromEnd(false);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.x0
    public final boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && !this.f2744a;
    }

    public final int t(int i6) {
        if (this.mOrientation == 0) {
            RecyclerView recyclerView = this.mRecyclerView;
            return y(i6, recyclerView.mRecycler, recyclerView.mState);
        }
        RecyclerView recyclerView2 = this.mRecyclerView;
        return z(i6, recyclerView2.mRecycler, recyclerView2.mState);
    }

    public final int u(int i6) {
        if (this.mOrientation == 1) {
            RecyclerView recyclerView = this.mRecyclerView;
            return y(i6, recyclerView.mRecycler, recyclerView.mState);
        }
        RecyclerView recyclerView2 = this.mRecyclerView;
        return z(i6, recyclerView2.mRecycler, recyclerView2.mState);
    }

    public final HashSet v(int i6) {
        return w(u(i6), i6);
    }

    public final HashSet w(int i6, int i10) {
        HashSet hashSet = new HashSet();
        RecyclerView recyclerView = this.mRecyclerView;
        int iA = A(i10, recyclerView.mRecycler, recyclerView.mState);
        for (int i11 = i6; i11 < i6 + iA; i11++) {
            hashSet.add(Integer.valueOf(i11));
        }
        return hashSet;
    }

    public final int x(int i6, int i10) {
        if (this.mOrientation != 1 || !isLayoutRTL()) {
            int[] iArr = this.f2746c;
            return iArr[i10 + i6] - iArr[i6];
        }
        int[] iArr2 = this.f2746c;
        int i11 = this.f2745b;
        return iArr2[i11 - i6] - iArr2[(i11 - i6) - i10];
    }

    public final int y(int i6, e1 e1Var, l1 l1Var) {
        if (!l1Var.f2890g) {
            return this.f2748g.h(i6, this.f2745b);
        }
        int iB = e1Var.b(i6);
        if (iB != -1) {
            return this.f2748g.h(iB, this.f2745b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i6);
        return 0;
    }

    public final int z(int i6, e1 e1Var, l1 l1Var) {
        if (!l1Var.f2890g) {
            return this.f2748g.i(i6, this.f2745b);
        }
        int i10 = this.f.get(i6, -1);
        if (i10 != -1) {
            return i10;
        }
        int iB = e1Var.b(i6);
        if (iB != -1) {
            return this.f2748g.i(iB, this.f2745b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i6);
        return 0;
    }

    @Override // androidx.recyclerview.widget.x0
    public final RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            LayoutParams layoutParams2 = new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
            layoutParams2.f2753e = -1;
            layoutParams2.f = 0;
            return layoutParams2;
        }
        LayoutParams layoutParams3 = new LayoutParams(layoutParams);
        layoutParams3.f2753e = -1;
        layoutParams3.f = 0;
        return layoutParams3;
    }

    /* compiled from: MyApplication */
    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* renamed from: e, reason: collision with root package name */
        public int f2753e;
        public int f;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2753e = -1;
            this.f = 0;
        }

        public LayoutParams(int i6, int i10) {
            super(i6, i10);
            this.f2753e = -1;
            this.f = 0;
        }
    }

    public GridLayoutManager(int i6) {
        super(1);
        this.f2744a = false;
        this.f2745b = -1;
        this.f2747e = new SparseIntArray();
        this.f = new SparseIntArray();
        this.f2748g = new u();
        this.f2749h = new Rect();
        this.f2750i = -1;
        this.f2751j = -1;
        this.f2752k = -1;
        C(i6);
    }

    public GridLayoutManager() {
        super(1);
        this.f2744a = false;
        this.f2745b = -1;
        this.f2747e = new SparseIntArray();
        this.f = new SparseIntArray();
        this.f2748g = new u();
        this.f2749h = new Rect();
        this.f2750i = -1;
        this.f2751j = -1;
        this.f2752k = -1;
        C(7);
    }
}
