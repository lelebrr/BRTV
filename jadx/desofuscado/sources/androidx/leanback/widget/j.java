package androidx.leanback.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;
import androidx.media3.common.C;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class j extends RecyclerView {

    /* renamed from: a, reason: collision with root package name */
    public GridLayoutManager f1841a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1842b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1843c;
    public androidx.recyclerview.widget.s0 d;

    /* renamed from: e, reason: collision with root package name */
    public int f1844e;
    public int f;

    public j(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1842b = true;
        this.f1843c = true;
        this.f1844e = 4;
        GridLayoutManager gridLayoutManager = new GridLayoutManager(this);
        this.f1841a = gridLayoutManager;
        setLayoutManager(gridLayoutManager);
        setPreserveFocusAfterLayout(false);
        setDescendantFocusability(262144);
        setHasFixedSize(true);
        setChildrenDrawingOrderEnabled(true);
        setWillNotDraw(true);
        setOverScrollMode(2);
        ((androidx.recyclerview.widget.k) getItemAnimator()).f2871g = false;
        super.addRecyclerListener(new d(this));
    }

    public final void b(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, m0.f1860a);
        boolean z7 = typedArrayObtainStyledAttributes.getBoolean(4, false);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(3, false);
        GridLayoutManager gridLayoutManager = this.f1841a;
        gridLayoutManager.f1637n = (z7 ? 2048 : 0) | (gridLayoutManager.f1637n & (-6145)) | (z10 ? 4096 : 0);
        boolean z11 = typedArrayObtainStyledAttributes.getBoolean(6, true);
        boolean z12 = typedArrayObtainStyledAttributes.getBoolean(5, true);
        GridLayoutManager gridLayoutManager2 = this.f1841a;
        gridLayoutManager2.f1637n = (z11 ? 8192 : 0) | (gridLayoutManager2.f1637n & (-24577)) | (z12 ? 16384 : 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0));
        if (gridLayoutManager2.d == 1) {
            gridLayoutManager2.A = dimensionPixelSize;
            gridLayoutManager2.B = dimensionPixelSize;
        } else {
            gridLayoutManager2.A = dimensionPixelSize;
            gridLayoutManager2.C = dimensionPixelSize;
        }
        GridLayoutManager gridLayoutManager3 = this.f1841a;
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, typedArrayObtainStyledAttributes.getDimensionPixelSize(7, 0));
        if (gridLayoutManager3.d == 0) {
            gridLayoutManager3.f1649z = dimensionPixelSize2;
            gridLayoutManager3.B = dimensionPixelSize2;
        } else {
            gridLayoutManager3.f1649z = dimensionPixelSize2;
            gridLayoutManager3.C = dimensionPixelSize2;
        }
        if (typedArrayObtainStyledAttributes.hasValue(0)) {
            setGravity(typedArrayObtainStyledAttributes.getInt(0, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchGenericFocusedEvent(MotionEvent motionEvent) {
        return super.dispatchGenericFocusedEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public final View focusSearch(int i6) {
        if (isFocused()) {
            GridLayoutManager gridLayoutManager = this.f1841a;
            View viewFindViewByPosition = gridLayoutManager.findViewByPosition(gridLayoutManager.f1639p);
            if (viewFindViewByPosition != null) {
                return focusSearch(viewFindViewByPosition, i6);
            }
        }
        return super.focusSearch(i6);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public final int getChildDrawingOrder(int i6, int i10) {
        int iIndexOfChild;
        GridLayoutManager gridLayoutManager = this.f1841a;
        View viewFindViewByPosition = gridLayoutManager.findViewByPosition(gridLayoutManager.f1639p);
        return (viewFindViewByPosition != null && i10 >= (iIndexOfChild = indexOfChild(viewFindViewByPosition))) ? i10 < i6 + (-1) ? a.e.g(iIndexOfChild, i6, 1, i10) : iIndexOfChild : i10;
    }

    public int getExtraLayoutSpace() {
        return this.f1841a.L;
    }

    public int getFocusScrollStrategy() {
        return this.f1841a.H;
    }

    @Deprecated
    public int getHorizontalMargin() {
        return this.f1841a.f1649z;
    }

    public int getHorizontalSpacing() {
        return this.f1841a.f1649z;
    }

    public int getInitialPrefetchItemCount() {
        return this.f1844e;
    }

    public int getItemAlignmentOffset() {
        return ((z) this.f1841a.J.d).f1935b;
    }

    public float getItemAlignmentOffsetPercent() {
        return ((z) this.f1841a.J.d).f1936c;
    }

    public int getItemAlignmentViewId() {
        return ((z) this.f1841a.J.d).f1934a;
    }

    public h getOnUnhandledKeyListener() {
        return null;
    }

    public final int getSaveChildrenLimitNumber() {
        return this.f1841a.N.f1846b;
    }

    public final int getSaveChildrenPolicy() {
        return this.f1841a.N.f1845a;
    }

    public int getSelectedPosition() {
        return this.f1841a.f1639p;
    }

    public int getSelectedSubPosition() {
        this.f1841a.getClass();
        return 0;
    }

    public i getSmoothScrollByBehavior() {
        return null;
    }

    public final int getSmoothScrollMaxPendingMoves() {
        return this.f1841a.f1627b;
    }

    public final float getSmoothScrollSpeedFactor() {
        return this.f1841a.f1626a;
    }

    @Deprecated
    public int getVerticalMargin() {
        return this.f1841a.A;
    }

    public int getVerticalSpacing() {
        return this.f1841a.A;
    }

    public int getWindowAlignment() {
        return ((k1) this.f1841a.I.d).f;
    }

    public int getWindowAlignmentOffset() {
        return ((k1) this.f1841a.I.d).f1852g;
    }

    public float getWindowAlignmentOffsetPercent() {
        return ((k1) this.f1841a.I.d).f1853h;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return this.f1843c;
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z7, int i6, Rect rect) {
        super.onFocusChanged(z7, i6, rect);
        GridLayoutManager gridLayoutManager = this.f1841a;
        if (!z7) {
            gridLayoutManager.getClass();
            return;
        }
        int i10 = gridLayoutManager.f1639p;
        while (true) {
            View viewFindViewByPosition = gridLayoutManager.findViewByPosition(i10);
            if (viewFindViewByPosition == null) {
                return;
            }
            if (viewFindViewByPosition.getVisibility() == 0 && viewFindViewByPosition.hasFocusable()) {
                viewFindViewByPosition.requestFocus();
                return;
            }
            i10++;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i6, Rect rect) {
        int i10;
        int i11;
        int i12;
        boolean z7 = true;
        if ((this.f & 1) == 1) {
            return false;
        }
        GridLayoutManager gridLayoutManager = this.f1841a;
        int i13 = gridLayoutManager.H;
        if (i13 != 1 && i13 != 2) {
            View viewFindViewByPosition = gridLayoutManager.findViewByPosition(gridLayoutManager.f1639p);
            if (viewFindViewByPosition != null) {
                return viewFindViewByPosition.requestFocus(i6, rect);
            }
            return false;
        }
        int childCount = gridLayoutManager.getChildCount();
        if ((i6 & 2) != 0) {
            i11 = childCount;
            i10 = 0;
            i12 = 1;
        } else {
            i10 = childCount - 1;
            i11 = -1;
            i12 = -1;
        }
        k1 k1Var = (k1) gridLayoutManager.I.d;
        int i14 = k1Var.f1855j;
        int i15 = ((k1Var.f1854i - i14) - k1Var.f1856k) + i14;
        while (true) {
            if (i10 == i11) {
                z7 = false;
                break;
            }
            View childAt = gridLayoutManager.getChildAt(i10);
            if (childAt.getVisibility() == 0 && gridLayoutManager.f1629e.e(childAt) >= i14 && gridLayoutManager.f1629e.b(childAt) <= i15 && childAt.requestFocus(i6, rect)) {
                break;
            }
            i10 += i12;
        }
        return z7;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x000f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onRtlPropertiesChanged(int r7) {
        /*
            r6 = this;
            androidx.leanback.widget.GridLayoutManager r0 = r6.f1841a
            if (r0 == 0) goto L31
            int r1 = r0.d
            r2 = 0
            r3 = 1
            if (r1 != 0) goto L11
            if (r7 != r3) goto Lf
            r1 = 262144(0x40000, float:3.67342E-40)
            goto L15
        Lf:
            r1 = 0
            goto L15
        L11:
            if (r7 != r3) goto Lf
            r1 = 524288(0x80000, float:7.34684E-40)
        L15:
            int r4 = r0.f1637n
            r5 = 786432(0xc0000, float:1.102026E-39)
            r5 = r5 & r4
            if (r5 != r1) goto L1d
            goto L31
        L1d:
            r5 = -786433(0xfffffffffff3ffff, float:NaN)
            r4 = r4 & r5
            r1 = r1 | r4
            r1 = r1 | 256(0x100, float:3.59E-43)
            r0.f1637n = r1
            a0.f r0 = r0.I
            java.lang.Object r0 = r0.f39c
            androidx.leanback.widget.k1 r0 = (androidx.leanback.widget.k1) r0
            if (r7 != r3) goto L2f
            r2 = 1
        L2f:
            r0.f1857l = r2
        L31:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.j.onRtlPropertiesChanged(int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        boolean z7 = view.hasFocus() && isFocusable();
        if (z7) {
            this.f = 1 | this.f;
            requestFocus();
        }
        super.removeView(view);
        if (z7) {
            this.f ^= -2;
        }
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i6) {
        boolean zHasFocus = getChildAt(i6).hasFocus();
        if (zHasFocus) {
            this.f |= 1;
            requestFocus();
        }
        super.removeViewAt(i6);
        if (zHasFocus) {
            this.f ^= -2;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void scrollToPosition(int i6) {
        GridLayoutManager gridLayoutManager = this.f1841a;
        if ((gridLayoutManager.f1637n & 64) != 0) {
            gridLayoutManager.J(i6, false);
        } else {
            super.scrollToPosition(i6);
        }
    }

    public void setAnimateChildLayout(boolean z7) {
        if (this.f1842b != z7) {
            this.f1842b = z7;
            if (z7) {
                super.setItemAnimator(this.d);
            } else {
                this.d = getItemAnimator();
                super.setItemAnimator(null);
            }
        }
    }

    public void setChildrenVisibility(int i6) {
        GridLayoutManager gridLayoutManager = this.f1841a;
        gridLayoutManager.f1643t = i6;
        if (i6 != -1) {
            int childCount = gridLayoutManager.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                gridLayoutManager.getChildAt(i10).setVisibility(gridLayoutManager.f1643t);
            }
        }
    }

    public void setExtraLayoutSpace(int i6) {
        GridLayoutManager gridLayoutManager = this.f1841a;
        int i10 = gridLayoutManager.L;
        if (i10 == i6) {
            return;
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("ExtraLayoutSpace must >= 0");
        }
        gridLayoutManager.L = i6;
        gridLayoutManager.requestLayout();
    }

    public void setFocusDrawingOrderEnabled(boolean z7) {
        super.setChildrenDrawingOrderEnabled(z7);
    }

    public void setFocusScrollStrategy(int i6) {
        if (i6 != 0 && i6 != 1 && i6 != 2) {
            throw new IllegalArgumentException("Invalid scrollStrategy");
        }
        this.f1841a.H = i6;
        requestLayout();
    }

    public final void setFocusSearchDisabled(boolean z7) {
        setDescendantFocusability(z7 ? 393216 : 262144);
        GridLayoutManager gridLayoutManager = this.f1841a;
        gridLayoutManager.f1637n = (z7 ? 32768 : 0) | (gridLayoutManager.f1637n & (-32769));
    }

    public void setGravity(int i6) {
        this.f1841a.D = i6;
        requestLayout();
    }

    public void setHasOverlappingRendering(boolean z7) {
        this.f1843c = z7;
    }

    @Deprecated
    public void setHorizontalMargin(int i6) {
        setHorizontalSpacing(i6);
    }

    public void setHorizontalSpacing(int i6) {
        GridLayoutManager gridLayoutManager = this.f1841a;
        if (gridLayoutManager.d == 0) {
            gridLayoutManager.f1649z = i6;
            gridLayoutManager.B = i6;
        } else {
            gridLayoutManager.f1649z = i6;
            gridLayoutManager.C = i6;
        }
        requestLayout();
    }

    public void setInitialPrefetchItemCount(int i6) {
        this.f1844e = i6;
    }

    public void setItemAlignmentOffset(int i6) {
        GridLayoutManager gridLayoutManager = this.f1841a;
        ((z) gridLayoutManager.J.d).f1935b = i6;
        gridLayoutManager.K();
        requestLayout();
    }

    public void setItemAlignmentOffsetPercent(float f) {
        GridLayoutManager gridLayoutManager = this.f1841a;
        z zVar = (z) gridLayoutManager.J.d;
        zVar.getClass();
        if ((f < 0.0f || f > 100.0f) && f != -1.0f) {
            throw new IllegalArgumentException();
        }
        zVar.f1936c = f;
        gridLayoutManager.K();
        requestLayout();
    }

    public void setItemAlignmentOffsetWithPadding(boolean z7) {
        GridLayoutManager gridLayoutManager = this.f1841a;
        ((z) gridLayoutManager.J.d).d = z7;
        gridLayoutManager.K();
        requestLayout();
    }

    public void setItemAlignmentViewId(int i6) {
        GridLayoutManager gridLayoutManager = this.f1841a;
        ((z) gridLayoutManager.J.d).f1934a = i6;
        gridLayoutManager.K();
    }

    @Deprecated
    public void setItemMargin(int i6) {
        setItemSpacing(i6);
    }

    public void setItemSpacing(int i6) {
        GridLayoutManager gridLayoutManager = this.f1841a;
        gridLayoutManager.f1649z = i6;
        gridLayoutManager.A = i6;
        gridLayoutManager.C = i6;
        gridLayoutManager.B = i6;
        requestLayout();
    }

    public void setLayoutEnabled(boolean z7) {
        GridLayoutManager gridLayoutManager = this.f1841a;
        int i6 = gridLayoutManager.f1637n;
        if (((i6 & 512) != 0) != z7) {
            gridLayoutManager.f1637n = (i6 & (-513)) | (z7 ? 512 : 0);
            gridLayoutManager.requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setLayoutManager(androidx.recyclerview.widget.x0 x0Var) {
        if (x0Var != null) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) x0Var;
            this.f1841a = gridLayoutManager;
            gridLayoutManager.f1628c = this;
            gridLayoutManager.G = null;
            super.setLayoutManager(x0Var);
            return;
        }
        super.setLayoutManager(null);
        GridLayoutManager gridLayoutManager2 = this.f1841a;
        if (gridLayoutManager2 != null) {
            gridLayoutManager2.f1628c = null;
            gridLayoutManager2.G = null;
        }
        this.f1841a = null;
    }

    public void setOnChildLaidOutListener(f0 f0Var) {
        this.f1841a.getClass();
    }

    @SuppressLint({"ReferencesDeprecated"})
    public void setOnChildSelectedListener(g0 g0Var) {
        this.f1841a.getClass();
    }

    public void setOnChildViewHolderSelectedListener(h0 h0Var) {
        GridLayoutManager gridLayoutManager = this.f1841a;
        if (h0Var == null) {
            gridLayoutManager.f1638o = null;
            return;
        }
        ArrayList arrayList = gridLayoutManager.f1638o;
        if (arrayList == null) {
            gridLayoutManager.f1638o = new ArrayList();
        } else {
            arrayList.clear();
        }
        gridLayoutManager.f1638o.add(h0Var);
    }

    public void setPruneChild(boolean z7) {
        GridLayoutManager gridLayoutManager = this.f1841a;
        int i6 = gridLayoutManager.f1637n;
        int i10 = C.DEFAULT_BUFFER_SEGMENT_SIZE;
        if (((i6 & C.DEFAULT_BUFFER_SEGMENT_SIZE) != 0) != z7) {
            int i11 = i6 & (-65537);
            if (!z7) {
                i10 = 0;
            }
            gridLayoutManager.f1637n = i11 | i10;
            if (z7) {
                gridLayoutManager.requestLayout();
            }
        }
    }

    public final void setSaveChildrenLimitNumber(int i6) {
        j1 j1Var = this.f1841a.N;
        j1Var.f1846b = i6;
        j1Var.a();
    }

    public final void setSaveChildrenPolicy(int i6) {
        j1 j1Var = this.f1841a.N;
        j1Var.f1845a = i6;
        j1Var.a();
    }

    public void setScrollEnabled(boolean z7) {
        int i6;
        GridLayoutManager gridLayoutManager = this.f1841a;
        int i10 = gridLayoutManager.f1637n;
        if (((i10 & 131072) != 0) != z7) {
            int i11 = (i10 & (-131073)) | (z7 ? 131072 : 0);
            gridLayoutManager.f1637n = i11;
            if ((i11 & 131072) == 0 || gridLayoutManager.H != 0 || (i6 = gridLayoutManager.f1639p) == -1) {
                return;
            }
            gridLayoutManager.F(i6, true);
        }
    }

    public void setSelectedPosition(int i6) {
        this.f1841a.J(i6, false);
    }

    public void setSelectedPositionSmooth(int i6) {
        this.f1841a.J(i6, true);
    }

    public final void setSmoothScrollMaxPendingMoves(int i6) {
        this.f1841a.f1627b = i6;
    }

    public final void setSmoothScrollSpeedFactor(float f) {
        this.f1841a.f1626a = f;
    }

    @Deprecated
    public void setVerticalMargin(int i6) {
        setVerticalSpacing(i6);
    }

    public void setVerticalSpacing(int i6) {
        GridLayoutManager gridLayoutManager = this.f1841a;
        if (gridLayoutManager.d == 1) {
            gridLayoutManager.A = i6;
            gridLayoutManager.B = i6;
        } else {
            gridLayoutManager.A = i6;
            gridLayoutManager.C = i6;
        }
        requestLayout();
    }

    public void setWindowAlignment(int i6) {
        ((k1) this.f1841a.I.d).f = i6;
        requestLayout();
    }

    public void setWindowAlignmentOffset(int i6) {
        ((k1) this.f1841a.I.d).f1852g = i6;
        requestLayout();
    }

    public void setWindowAlignmentOffsetPercent(float f) {
        k1 k1Var = (k1) this.f1841a.I.d;
        k1Var.getClass();
        if ((f < 0.0f || f > 100.0f) && f != -1.0f) {
            throw new IllegalArgumentException();
        }
        k1Var.f1853h = f;
        requestLayout();
    }

    public void setWindowAlignmentPreferKeyLineOverHighEdge(boolean z7) {
        k1 k1Var = (k1) this.f1841a.I.d;
        k1Var.f1851e = z7 ? k1Var.f1851e | 2 : k1Var.f1851e & (-3);
        requestLayout();
    }

    public void setWindowAlignmentPreferKeyLineOverLowEdge(boolean z7) {
        k1 k1Var = (k1) this.f1841a.I.d;
        k1Var.f1851e = z7 ? k1Var.f1851e | 1 : k1Var.f1851e & (-2);
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void smoothScrollBy(int i6, int i10) {
        smoothScrollBy(i6, i10, null, Integer.MIN_VALUE);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void smoothScrollToPosition(int i6) {
        GridLayoutManager gridLayoutManager = this.f1841a;
        if ((gridLayoutManager.f1637n & 64) != 0) {
            gridLayoutManager.J(i6, false);
        } else {
            super.smoothScrollToPosition(i6);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void smoothScrollBy(int i6, int i10, Interpolator interpolator) {
        smoothScrollBy(i6, i10, interpolator, Integer.MIN_VALUE);
    }

    public void setOnKeyInterceptListener(e eVar) {
    }

    public void setOnMotionInterceptListener(f fVar) {
    }

    public void setOnTouchInterceptListener(g gVar) {
    }

    public void setOnUnhandledKeyListener(h hVar) {
    }

    public final void setSmoothScrollByBehavior(i iVar) {
    }
}
