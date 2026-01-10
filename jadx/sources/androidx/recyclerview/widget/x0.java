package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import androidx.media3.common.C;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class x0 {
    boolean mAutoMeasure;
    d mChildHelper;
    private int mHeight;
    private int mHeightMode;
    b2 mHorizontalBoundCheck;
    private final a2 mHorizontalBoundCheckCallback;
    boolean mIsAttachedToWindow;
    private boolean mItemPrefetchEnabled;
    private boolean mMeasurementCacheEnabled;
    int mPrefetchMaxCountObserved;
    boolean mPrefetchMaxObservedInInitialPrefetch;
    RecyclerView mRecyclerView;
    boolean mRequestedSimpleAnimations;
    k1 mSmoothScroller;
    b2 mVerticalBoundCheck;
    private final a2 mVerticalBoundCheckCallback;
    private int mWidth;
    private int mWidthMode;

    public x0() {
        u0 u0Var = new u0(this);
        this.mHorizontalBoundCheckCallback = u0Var;
        v0 v0Var = new v0(this);
        this.mVerticalBoundCheckCallback = v0Var;
        this.mHorizontalBoundCheck = new b2(u0Var);
        this.mVerticalBoundCheck = new b2(v0Var);
        this.mRequestedSimpleAnimations = false;
        this.mIsAttachedToWindow = false;
        this.mAutoMeasure = false;
        this.mMeasurementCacheEnabled = true;
        this.mItemPrefetchEnabled = true;
    }

    public static boolean b(int i6, int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (i11 > 0 && i6 != i11) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i6;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i6;
        }
        return true;
    }

    public static int chooseSize(int i6, int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i6);
        int size = View.MeasureSpec.getSize(i6);
        return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i10, i11) : size : Math.min(size, Math.max(i10, i11));
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x000c  */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int getChildMeasureSpec(int r1, int r2, int r3, boolean r4) {
        /*
            int r1 = r1 - r2
            r2 = 0
            int r1 = java.lang.Math.max(r2, r1)
            r0 = 1073741824(0x40000000, float:2.0)
            if (r4 == 0) goto L11
            if (r3 < 0) goto Lf
        Lc:
            r2 = 1073741824(0x40000000, float:2.0)
            goto L21
        Lf:
            r3 = 0
            goto L21
        L11:
            if (r3 < 0) goto L14
            goto Lc
        L14:
            r4 = -1
            if (r3 != r4) goto L1b
            r2 = 1073741824(0x40000000, float:2.0)
        L19:
            r3 = r1
            goto L21
        L1b:
            r4 = -2
            if (r3 != r4) goto Lf
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            goto L19
        L21:
            int r1 = android.view.View.MeasureSpec.makeMeasureSpec(r3, r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.x0.getChildMeasureSpec(int, int, int, boolean):int");
    }

    public static RecyclerView$LayoutManager$Properties getProperties(Context context, AttributeSet attributeSet, int i6, int i10) {
        RecyclerView$LayoutManager$Properties recyclerView$LayoutManager$Properties = new RecyclerView$LayoutManager$Properties();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, u1.a.f10322a, i6, i10);
        recyclerView$LayoutManager$Properties.f2757a = typedArrayObtainStyledAttributes.getInt(0, 1);
        recyclerView$LayoutManager$Properties.f2758b = typedArrayObtainStyledAttributes.getInt(10, 1);
        recyclerView$LayoutManager$Properties.f2759c = typedArrayObtainStyledAttributes.getBoolean(9, false);
        recyclerView$LayoutManager$Properties.d = typedArrayObtainStyledAttributes.getBoolean(11, false);
        typedArrayObtainStyledAttributes.recycle();
        return recyclerView$LayoutManager$Properties;
    }

    public final void a(View view, int i6, boolean z7) {
        p1 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (z7 || childViewHolderInt.isRemoved()) {
            p.l lVar = this.mRecyclerView.mViewInfoStore.f2837a;
            c2 c2VarA = (c2) lVar.get(childViewHolderInt);
            if (c2VarA == null) {
                c2VarA = c2.a();
                lVar.put(childViewHolderInt, c2VarA);
            }
            c2VarA.f2813a |= 1;
        } else {
            this.mRecyclerView.mViewInfoStore.c(childViewHolderInt);
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (childViewHolderInt.wasReturnedFromScrap() || childViewHolderInt.isScrap()) {
            if (childViewHolderInt.isScrap()) {
                childViewHolderInt.unScrap();
            } else {
                childViewHolderInt.clearReturnedFromScrapFlag();
            }
            this.mChildHelper.b(view, i6, view.getLayoutParams(), false);
        } else if (view.getParent() == this.mRecyclerView) {
            int iJ = this.mChildHelper.j(view);
            if (i6 == -1) {
                i6 = this.mChildHelper.e();
            }
            if (iJ == -1) {
                StringBuilder sb = new StringBuilder("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:");
                sb.append(this.mRecyclerView.indexOfChild(view));
                throw new IllegalStateException(a.e.p(this.mRecyclerView, sb));
            }
            if (iJ != i6) {
                this.mRecyclerView.mLayout.moveView(iJ, i6);
            }
        } else {
            this.mChildHelper.a(view, i6, false);
            layoutParams.f2762c = true;
            k1 k1Var = this.mSmoothScroller;
            if (k1Var != null && k1Var.isRunning()) {
                this.mSmoothScroller.onChildAttachedToWindow(view);
            }
        }
        if (layoutParams.d) {
            if (RecyclerView.sVerboseLoggingEnabled) {
                Log.d("RecyclerView", "consuming pending invalidate on child " + layoutParams.f2760a);
            }
            childViewHolderInt.itemView.invalidate();
            layoutParams.d = false;
        }
    }

    @SuppressLint({"UnknownNullness"})
    public void addDisappearingView(View view) {
        addDisappearingView(view, -1);
    }

    @SuppressLint({"UnknownNullness"})
    public void addView(View view) {
        addView(view, -1);
    }

    public void assertInLayoutOrScroll(String str) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.assertInLayoutOrScroll(str);
        }
    }

    public void assertNotInLayoutOrScroll(String str) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.assertNotInLayoutOrScroll(str);
        }
    }

    public void attachView(View view, int i6, RecyclerView.LayoutParams layoutParams) {
        p1 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt.isRemoved()) {
            p.l lVar = this.mRecyclerView.mViewInfoStore.f2837a;
            c2 c2VarA = (c2) lVar.get(childViewHolderInt);
            if (c2VarA == null) {
                c2VarA = c2.a();
                lVar.put(childViewHolderInt, c2VarA);
            }
            c2VarA.f2813a |= 1;
        } else {
            this.mRecyclerView.mViewInfoStore.c(childViewHolderInt);
        }
        this.mChildHelper.b(view, i6, layoutParams, childViewHolderInt.isRemoved());
    }

    public final void c(e1 e1Var, int i6, View view) {
        p1 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt.shouldIgnore()) {
            if (RecyclerView.sVerboseLoggingEnabled) {
                Log.d("RecyclerView", "ignoring view " + childViewHolderInt);
                return;
            }
            return;
        }
        if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !this.mRecyclerView.mAdapter.hasStableIds()) {
            removeViewAt(i6);
            e1Var.j(childViewHolderInt);
        } else {
            detachViewAt(i6);
            e1Var.k(view);
            this.mRecyclerView.mViewInfoStore.c(childViewHolderInt);
        }
    }

    public void calculateItemDecorationsForChild(View view, Rect rect) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.getItemDecorInsetsForChild(view));
        }
    }

    public abstract boolean canScrollHorizontally();

    public abstract boolean canScrollVertically();

    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams != null;
    }

    public abstract void collectAdjacentPrefetchPositions(int i6, int i10, l1 l1Var, w0 w0Var);

    public int computeHorizontalScrollExtent(l1 l1Var) {
        return 0;
    }

    public int computeHorizontalScrollOffset(l1 l1Var) {
        return 0;
    }

    public int computeHorizontalScrollRange(l1 l1Var) {
        return 0;
    }

    public int computeVerticalScrollExtent(l1 l1Var) {
        return 0;
    }

    public int computeVerticalScrollOffset(l1 l1Var) {
        return 0;
    }

    public int computeVerticalScrollRange(l1 l1Var) {
        return 0;
    }

    public void detachAndScrapAttachedViews(e1 e1Var) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            c(e1Var, childCount, getChildAt(childCount));
        }
    }

    public void detachAndScrapView(View view, e1 e1Var) {
        c(e1Var, this.mChildHelper.j(view), view);
    }

    public void detachAndScrapViewAt(int i6, e1 e1Var) {
        c(e1Var, i6, getChildAt(i6));
    }

    public void detachView(View view) {
        int iJ = this.mChildHelper.j(view);
        if (iJ >= 0) {
            this.mChildHelper.c(iJ);
        }
    }

    public void detachViewAt(int i6) {
        getChildAt(i6);
        this.mChildHelper.c(i6);
    }

    public void dispatchAttachedToWindow(RecyclerView recyclerView) {
        this.mIsAttachedToWindow = true;
        onAttachedToWindow(recyclerView);
    }

    public void dispatchDetachedFromWindow(RecyclerView recyclerView, e1 e1Var) {
        this.mIsAttachedToWindow = false;
        onDetachedFromWindow(recyclerView, e1Var);
    }

    @SuppressLint({"UnknownNullness"})
    public void endAnimation(View view) {
        s0 s0Var = this.mRecyclerView.mItemAnimator;
        if (s0Var != null) {
            s0Var.d(RecyclerView.getChildViewHolderInt(view));
        }
    }

    public View findContainingItemView(View view) {
        View viewFindContainingItemView;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || (viewFindContainingItemView = recyclerView.findContainingItemView(view)) == null || this.mChildHelper.f2818c.contains(viewFindContainingItemView)) {
            return null;
        }
        return viewFindContainingItemView;
    }

    public View findViewByPosition(int i6) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            p1 childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
            if (childViewHolderInt != null && childViewHolderInt.getLayoutPosition() == i6 && !childViewHolderInt.shouldIgnore() && (this.mRecyclerView.mState.f2890g || !childViewHolderInt.isRemoved())) {
                return childAt;
            }
        }
        return null;
    }

    public abstract RecyclerView.LayoutParams generateDefaultLayoutParams();

    @SuppressLint({"UnknownNullness"})
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof RecyclerView.LayoutParams ? new RecyclerView.LayoutParams((RecyclerView.LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new RecyclerView.LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new RecyclerView.LayoutParams(layoutParams);
    }

    public int getBaseline() {
        return -1;
    }

    public int getBottomDecorationHeight(View view) {
        return ((RecyclerView.LayoutParams) view.getLayoutParams()).f2761b.bottom;
    }

    public View getChildAt(int i6) {
        d dVar = this.mChildHelper;
        if (dVar != null) {
            return dVar.d(i6);
        }
        return null;
    }

    public int getChildCount() {
        d dVar = this.mChildHelper;
        if (dVar != null) {
            return dVar.e();
        }
        return 0;
    }

    public boolean getClipToPadding() {
        RecyclerView recyclerView = this.mRecyclerView;
        return recyclerView != null && recyclerView.mClipToPadding;
    }

    public int getColumnCountForAccessibility(e1 e1Var, l1 l1Var) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || recyclerView.mAdapter == null || !canScrollHorizontally()) {
            return 1;
        }
        return this.mRecyclerView.mAdapter.getItemCount();
    }

    public int getDecoratedBottom(View view) {
        return getBottomDecorationHeight(view) + view.getBottom();
    }

    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
    }

    public int getDecoratedLeft(View view) {
        return view.getLeft() - getLeftDecorationWidth(view);
    }

    public int getDecoratedMeasuredHeight(View view) {
        Rect rect = ((RecyclerView.LayoutParams) view.getLayoutParams()).f2761b;
        return view.getMeasuredHeight() + rect.top + rect.bottom;
    }

    public int getDecoratedMeasuredWidth(View view) {
        Rect rect = ((RecyclerView.LayoutParams) view.getLayoutParams()).f2761b;
        return view.getMeasuredWidth() + rect.left + rect.right;
    }

    public int getDecoratedRight(View view) {
        return getRightDecorationWidth(view) + view.getRight();
    }

    public int getDecoratedTop(View view) {
        return view.getTop() - getTopDecorationHeight(view);
    }

    public View getFocusedChild() {
        View focusedChild;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.mChildHelper.f2818c.contains(focusedChild)) {
            return null;
        }
        return focusedChild;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getHeightMode() {
        return this.mHeightMode;
    }

    public int getItemCount() {
        RecyclerView recyclerView = this.mRecyclerView;
        k0 adapter = recyclerView != null ? recyclerView.getAdapter() : null;
        if (adapter != null) {
            return adapter.getItemCount();
        }
        return 0;
    }

    public int getItemViewType(View view) {
        return RecyclerView.getChildViewHolderInt(view).getItemViewType();
    }

    public int getLayoutDirection() {
        return this.mRecyclerView.getLayoutDirection();
    }

    public int getLeftDecorationWidth(View view) {
        return ((RecyclerView.LayoutParams) view.getLayoutParams()).f2761b.left;
    }

    public int getMinimumHeight() {
        RecyclerView recyclerView = this.mRecyclerView;
        WeakHashMap weakHashMap = n0.s0.f8353a;
        return recyclerView.getMinimumHeight();
    }

    public int getMinimumWidth() {
        RecyclerView recyclerView = this.mRecyclerView;
        WeakHashMap weakHashMap = n0.s0.f8353a;
        return recyclerView.getMinimumWidth();
    }

    public int getPaddingBottom() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.getPaddingBottom();
        }
        return 0;
    }

    public int getPaddingEnd() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null) {
            return 0;
        }
        WeakHashMap weakHashMap = n0.s0.f8353a;
        return recyclerView.getPaddingEnd();
    }

    public int getPaddingLeft() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.getPaddingLeft();
        }
        return 0;
    }

    public int getPaddingRight() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.getPaddingRight();
        }
        return 0;
    }

    public int getPaddingStart() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null) {
            return 0;
        }
        WeakHashMap weakHashMap = n0.s0.f8353a;
        return recyclerView.getPaddingStart();
    }

    public int getPaddingTop() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.getPaddingTop();
        }
        return 0;
    }

    public int getPosition(View view) {
        return ((RecyclerView.LayoutParams) view.getLayoutParams()).f2760a.getLayoutPosition();
    }

    public int getRightDecorationWidth(View view) {
        return ((RecyclerView.LayoutParams) view.getLayoutParams()).f2761b.right;
    }

    public int getRowCountForAccessibility(e1 e1Var, l1 l1Var) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || recyclerView.mAdapter == null || !canScrollVertically()) {
            return 1;
        }
        return this.mRecyclerView.mAdapter.getItemCount();
    }

    public int getSelectionModeForAccessibility(e1 e1Var, l1 l1Var) {
        return 0;
    }

    public int getTopDecorationHeight(View view) {
        return ((RecyclerView.LayoutParams) view.getLayoutParams()).f2761b.top;
    }

    public void getTransformedBoundingBox(View view, boolean z7, Rect rect) {
        Matrix matrix;
        if (z7) {
            Rect rect2 = ((RecyclerView.LayoutParams) view.getLayoutParams()).f2761b;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        } else {
            rect.set(0, 0, view.getWidth(), view.getHeight());
        }
        if (this.mRecyclerView != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.mRecyclerView.mTempRectF;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getWidthMode() {
        return this.mWidthMode;
    }

    public boolean hasFlexibleChildInBothOrientations() {
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            ViewGroup.LayoutParams layoutParams = getChildAt(i6).getLayoutParams();
            if (layoutParams.width < 0 && layoutParams.height < 0) {
                return true;
            }
        }
        return false;
    }

    public boolean hasFocus() {
        RecyclerView recyclerView = this.mRecyclerView;
        return recyclerView != null && recyclerView.hasFocus();
    }

    public void ignoreView(View view) {
        ViewParent parent = view.getParent();
        RecyclerView recyclerView = this.mRecyclerView;
        if (parent != recyclerView || recyclerView.indexOfChild(view) == -1) {
            throw new IllegalArgumentException(a.e.p(this.mRecyclerView, new StringBuilder("View should be fully attached to be ignored")));
        }
        p1 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        childViewHolderInt.addFlags(128);
        this.mRecyclerView.mViewInfoStore.d(childViewHolderInt);
    }

    public boolean isAttachedToWindow() {
        return this.mIsAttachedToWindow;
    }

    public boolean isAutoMeasureEnabled() {
        return this.mAutoMeasure;
    }

    public boolean isFocused() {
        RecyclerView recyclerView = this.mRecyclerView;
        return recyclerView != null && recyclerView.isFocused();
    }

    public final boolean isItemPrefetchEnabled() {
        return this.mItemPrefetchEnabled;
    }

    public boolean isLayoutHierarchical(e1 e1Var, l1 l1Var) {
        return false;
    }

    public boolean isLayoutReversed() {
        return false;
    }

    public boolean isMeasurementCacheEnabled() {
        return this.mMeasurementCacheEnabled;
    }

    public boolean isSmoothScrolling() {
        k1 k1Var = this.mSmoothScroller;
        return k1Var != null && k1Var.isRunning();
    }

    public boolean isViewPartiallyVisible(View view, boolean z7, boolean z10) {
        boolean z11 = this.mHorizontalBoundCheck.b(view) && this.mVerticalBoundCheck.b(view);
        return z7 ? z11 : !z11;
    }

    public void layoutDecorated(View view, int i6, int i10, int i11, int i12) {
        Rect rect = ((RecyclerView.LayoutParams) view.getLayoutParams()).f2761b;
        view.layout(i6 + rect.left, i10 + rect.top, i11 - rect.right, i12 - rect.bottom);
    }

    public void layoutDecoratedWithMargins(View view, int i6, int i10, int i11, int i12) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.f2761b;
        view.layout(i6 + rect.left + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i10 + rect.top + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (i11 - rect.right) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, (i12 - rect.bottom) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
    }

    public void measureChild(View view, int i6, int i10) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
        int i11 = itemDecorInsetsForChild.left + itemDecorInsetsForChild.right + i6;
        int i12 = itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom + i10;
        int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingRight() + getPaddingLeft() + i11, ((ViewGroup.MarginLayoutParams) layoutParams).width, canScrollHorizontally());
        int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingBottom() + getPaddingTop() + i12, ((ViewGroup.MarginLayoutParams) layoutParams).height, canScrollVertically());
        if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, layoutParams)) {
            view.measure(childMeasureSpec, childMeasureSpec2);
        }
    }

    public void measureChildWithMargins(View view, int i6, int i10) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
        int i11 = itemDecorInsetsForChild.left + itemDecorInsetsForChild.right + i6;
        int i12 = itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom + i10;
        int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingRight() + getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + i11, ((ViewGroup.MarginLayoutParams) layoutParams).width, canScrollHorizontally());
        int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingBottom() + getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + i12, ((ViewGroup.MarginLayoutParams) layoutParams).height, canScrollVertically());
        if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, layoutParams)) {
            view.measure(childMeasureSpec, childMeasureSpec2);
        }
    }

    public void moveView(int i6, int i10) {
        View childAt = getChildAt(i6);
        if (childAt != null) {
            detachViewAt(i6);
            attachView(childAt, i10);
        } else {
            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i6 + this.mRecyclerView.toString());
        }
    }

    public void offsetChildrenHorizontal(int i6) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.offsetChildrenHorizontal(i6);
        }
    }

    public void offsetChildrenVertical(int i6) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.offsetChildrenVertical(i6);
        }
    }

    public boolean onAddFocusables(RecyclerView recyclerView, ArrayList<View> arrayList, int i6, int i10) {
        return false;
    }

    @Deprecated
    public void onDetachedFromWindow(RecyclerView recyclerView) {
    }

    public View onFocusSearchFailed(View view, int i6, e1 e1Var, l1 l1Var) {
        return null;
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.mRecyclerView;
        onInitializeAccessibilityEvent(recyclerView.mRecycler, recyclerView.mState, accessibilityEvent);
    }

    public void onInitializeAccessibilityNodeInfo(o0.h hVar) {
        RecyclerView recyclerView = this.mRecyclerView;
        onInitializeAccessibilityNodeInfo(recyclerView.mRecycler, recyclerView.mState, hVar);
    }

    public void onInitializeAccessibilityNodeInfoForItem(View view, o0.h hVar) {
        p1 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt == null || childViewHolderInt.isRemoved()) {
            return;
        }
        d dVar = this.mChildHelper;
        if (dVar.f2818c.contains(childViewHolderInt.itemView)) {
            return;
        }
        RecyclerView recyclerView = this.mRecyclerView;
        onInitializeAccessibilityNodeInfoForItem(recyclerView.mRecycler, recyclerView.mState, view, hVar);
    }

    public View onInterceptFocusSearch(View view, int i6) {
        return null;
    }

    public void onItemsUpdated(RecyclerView recyclerView, int i6, int i10) {
    }

    public abstract void onLayoutChildren(e1 e1Var, l1 l1Var);

    public abstract void onLayoutCompleted(l1 l1Var);

    public void onMeasure(e1 e1Var, l1 l1Var, int i6, int i10) {
        this.mRecyclerView.defaultOnMeasure(i6, i10);
    }

    @Deprecated
    public boolean onRequestChildFocus(RecyclerView recyclerView, View view, View view2) {
        return isSmoothScrolling() || recyclerView.isComputingLayout();
    }

    public abstract void onRestoreInstanceState(Parcelable parcelable);

    public abstract Parcelable onSaveInstanceState();

    public void onSmoothScrollerStopped(k1 k1Var) {
        if (this.mSmoothScroller == k1Var) {
            this.mSmoothScroller = null;
        }
    }

    public boolean performAccessibilityAction(int i6, Bundle bundle) {
        RecyclerView recyclerView = this.mRecyclerView;
        return performAccessibilityAction(recyclerView.mRecycler, recyclerView.mState, i6, bundle);
    }

    public boolean performAccessibilityActionForItem(e1 e1Var, l1 l1Var, View view, int i6, Bundle bundle) {
        return false;
    }

    public void postOnAnimation(Runnable runnable) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            WeakHashMap weakHashMap = n0.s0.f8353a;
            recyclerView.postOnAnimation(runnable);
        }
    }

    public void removeAllViews() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            this.mChildHelper.k(childCount);
        }
    }

    public void removeAndRecycleAllViews(e1 e1Var) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (!RecyclerView.getChildViewHolderInt(getChildAt(childCount)).shouldIgnore()) {
                removeAndRecycleViewAt(childCount, e1Var);
            }
        }
    }

    public void removeAndRecycleScrapInt(e1 e1Var) {
        ArrayList arrayList;
        int size = e1Var.f2831a.size();
        int i6 = size - 1;
        while (true) {
            arrayList = e1Var.f2831a;
            if (i6 < 0) {
                break;
            }
            View view = ((p1) arrayList.get(i6)).itemView;
            p1 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.setIsRecyclable(false);
                if (childViewHolderInt.isTmpDetached()) {
                    this.mRecyclerView.removeDetachedView(view, false);
                }
                s0 s0Var = this.mRecyclerView.mItemAnimator;
                if (s0Var != null) {
                    s0Var.d(childViewHolderInt);
                }
                childViewHolderInt.setIsRecyclable(true);
                p1 childViewHolderInt2 = RecyclerView.getChildViewHolderInt(view);
                childViewHolderInt2.mScrapContainer = null;
                childViewHolderInt2.mInChangeScrap = false;
                childViewHolderInt2.clearReturnedFromScrapFlag();
                e1Var.j(childViewHolderInt2);
            }
            i6--;
        }
        arrayList.clear();
        ArrayList arrayList2 = e1Var.f2832b;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        if (size > 0) {
            this.mRecyclerView.invalidate();
        }
    }

    public void removeAndRecycleView(View view, e1 e1Var) {
        removeView(view);
        e1Var.i(view);
    }

    public void removeAndRecycleViewAt(int i6, e1 e1Var) {
        View childAt = getChildAt(i6);
        removeViewAt(i6);
        e1Var.i(childAt);
    }

    public boolean removeCallbacks(Runnable runnable) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.removeCallbacks(runnable);
        }
        return false;
    }

    public void removeDetachedView(View view) {
        this.mRecyclerView.removeDetachedView(view, false);
    }

    @SuppressLint({"UnknownNullness"})
    public void removeView(View view) {
        d dVar = this.mChildHelper;
        i0 i0Var = dVar.f2816a;
        int i6 = dVar.d;
        if (i6 == 1) {
            throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
        }
        if (i6 == 2) {
            throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
        }
        try {
            dVar.d = 1;
            dVar.f2819e = view;
            int iIndexOfChild = ((RecyclerView) i0Var.f2858a).indexOfChild(view);
            if (iIndexOfChild >= 0) {
                if (dVar.f2817b.g(iIndexOfChild)) {
                    dVar.l(view);
                }
                i0Var.c(iIndexOfChild);
            }
            dVar.d = 0;
            dVar.f2819e = null;
        } catch (Throwable th) {
            dVar.d = 0;
            dVar.f2819e = null;
            throw th;
        }
    }

    public void removeViewAt(int i6) {
        if (getChildAt(i6) != null) {
            this.mChildHelper.k(i6);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean requestChildRectangleOnScreen(androidx.recyclerview.widget.RecyclerView r9, android.view.View r10, android.graphics.Rect r11, boolean r12, boolean r13) {
        /*
            r8 = this;
            int r0 = r8.getPaddingLeft()
            int r1 = r8.getPaddingTop()
            int r2 = r8.getWidth()
            int r3 = r8.getPaddingRight()
            int r2 = r2 - r3
            int r3 = r8.getHeight()
            int r4 = r8.getPaddingBottom()
            int r3 = r3 - r4
            int r4 = r10.getLeft()
            int r5 = r11.left
            int r4 = r4 + r5
            int r5 = r10.getScrollX()
            int r4 = r4 - r5
            int r5 = r10.getTop()
            int r6 = r11.top
            int r5 = r5 + r6
            int r10 = r10.getScrollY()
            int r5 = r5 - r10
            int r10 = r11.width()
            int r10 = r10 + r4
            int r11 = r11.height()
            int r11 = r11 + r5
            int r4 = r4 - r0
            r0 = 0
            int r6 = java.lang.Math.min(r0, r4)
            int r5 = r5 - r1
            int r1 = java.lang.Math.min(r0, r5)
            int r10 = r10 - r2
            int r2 = java.lang.Math.max(r0, r10)
            int r11 = r11 - r3
            int r11 = java.lang.Math.max(r0, r11)
            int r3 = r8.getLayoutDirection()
            r7 = 1
            if (r3 != r7) goto L60
            if (r2 == 0) goto L5b
            goto L68
        L5b:
            int r2 = java.lang.Math.max(r6, r10)
            goto L68
        L60:
            if (r6 == 0) goto L63
            goto L67
        L63:
            int r6 = java.lang.Math.min(r4, r2)
        L67:
            r2 = r6
        L68:
            if (r1 == 0) goto L6b
            goto L6f
        L6b:
            int r1 = java.lang.Math.min(r5, r11)
        L6f:
            int[] r10 = new int[]{r2, r1}
            r11 = r10[r0]
            r10 = r10[r7]
            if (r13 == 0) goto Lb6
            android.view.View r13 = r9.getFocusedChild()
            if (r13 != 0) goto L80
            goto Lbb
        L80:
            int r1 = r8.getPaddingLeft()
            int r2 = r8.getPaddingTop()
            int r3 = r8.getWidth()
            int r4 = r8.getPaddingRight()
            int r3 = r3 - r4
            int r4 = r8.getHeight()
            int r5 = r8.getPaddingBottom()
            int r4 = r4 - r5
            androidx.recyclerview.widget.RecyclerView r5 = r8.mRecyclerView
            android.graphics.Rect r5 = r5.mTempRect
            r8.getDecoratedBoundsWithMargins(r13, r5)
            int r13 = r5.left
            int r13 = r13 - r11
            if (r13 >= r3) goto Lbb
            int r13 = r5.right
            int r13 = r13 - r11
            if (r13 <= r1) goto Lbb
            int r13 = r5.top
            int r13 = r13 - r10
            if (r13 >= r4) goto Lbb
            int r13 = r5.bottom
            int r13 = r13 - r10
            if (r13 > r2) goto Lb6
            goto Lbb
        Lb6:
            if (r11 != 0) goto Lbc
            if (r10 == 0) goto Lbb
            goto Lbc
        Lbb:
            return r0
        Lbc:
            if (r12 == 0) goto Lc2
            r9.scrollBy(r11, r10)
            goto Lc5
        Lc2:
            r9.smoothScrollBy(r11, r10)
        Lc5:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.x0.requestChildRectangleOnScreen(androidx.recyclerview.widget.RecyclerView, android.view.View, android.graphics.Rect, boolean, boolean):boolean");
    }

    public void requestLayout() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.requestLayout();
        }
    }

    public void requestSimpleAnimationsInNextLayout() {
        this.mRequestedSimpleAnimations = true;
    }

    public abstract int scrollHorizontallyBy(int i6, e1 e1Var, l1 l1Var);

    public abstract void scrollToPosition(int i6);

    public abstract int scrollVerticallyBy(int i6, e1 e1Var, l1 l1Var);

    @Deprecated
    public void setAutoMeasureEnabled(boolean z7) {
        this.mAutoMeasure = z7;
    }

    public void setExactMeasureSpecsFrom(RecyclerView recyclerView) {
        setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
    }

    public final void setItemPrefetchEnabled(boolean z7) {
        if (z7 != this.mItemPrefetchEnabled) {
            this.mItemPrefetchEnabled = z7;
            this.mPrefetchMaxCountObserved = 0;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.mRecycler.n();
            }
        }
    }

    public void setMeasureSpecs(int i6, int i10) {
        this.mWidth = View.MeasureSpec.getSize(i6);
        int mode = View.MeasureSpec.getMode(i6);
        this.mWidthMode = mode;
        if (mode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
            this.mWidth = 0;
        }
        this.mHeight = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i10);
        this.mHeightMode = mode2;
        if (mode2 != 0 || RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
            return;
        }
        this.mHeight = 0;
    }

    public void setMeasuredDimension(Rect rect, int i6, int i10) {
        setMeasuredDimension(chooseSize(i6, getPaddingRight() + getPaddingLeft() + rect.width(), getMinimumWidth()), chooseSize(i10, getPaddingBottom() + getPaddingTop() + rect.height(), getMinimumHeight()));
    }

    public void setMeasuredDimensionFromChildren(int i6, int i10) {
        int childCount = getChildCount();
        if (childCount == 0) {
            this.mRecyclerView.defaultOnMeasure(i6, i10);
            return;
        }
        int i11 = Integer.MIN_VALUE;
        int i12 = Integer.MIN_VALUE;
        int i13 = Integer.MAX_VALUE;
        int i14 = Integer.MAX_VALUE;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            Rect rect = this.mRecyclerView.mTempRect;
            getDecoratedBoundsWithMargins(childAt, rect);
            int i16 = rect.left;
            if (i16 < i13) {
                i13 = i16;
            }
            int i17 = rect.right;
            if (i17 > i11) {
                i11 = i17;
            }
            int i18 = rect.top;
            if (i18 < i14) {
                i14 = i18;
            }
            int i19 = rect.bottom;
            if (i19 > i12) {
                i12 = i19;
            }
        }
        this.mRecyclerView.mTempRect.set(i13, i14, i11, i12);
        setMeasuredDimension(this.mRecyclerView.mTempRect, i6, i10);
    }

    public void setMeasurementCacheEnabled(boolean z7) {
        this.mMeasurementCacheEnabled = z7;
    }

    public void setRecyclerView(RecyclerView recyclerView) {
        if (recyclerView == null) {
            this.mRecyclerView = null;
            this.mChildHelper = null;
            this.mWidth = 0;
            this.mHeight = 0;
        } else {
            this.mRecyclerView = recyclerView;
            this.mChildHelper = recyclerView.mChildHelper;
            this.mWidth = recyclerView.getWidth();
            this.mHeight = recyclerView.getHeight();
        }
        this.mWidthMode = 1073741824;
        this.mHeightMode = 1073741824;
    }

    public boolean shouldMeasureChild(View view, int i6, int i10, RecyclerView.LayoutParams layoutParams) {
        return (!view.isLayoutRequested() && this.mMeasurementCacheEnabled && b(view.getWidth(), i6, ((ViewGroup.MarginLayoutParams) layoutParams).width) && b(view.getHeight(), i10, ((ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
    }

    public boolean shouldMeasureTwice() {
        return false;
    }

    public boolean shouldReMeasureChild(View view, int i6, int i10, RecyclerView.LayoutParams layoutParams) {
        return (this.mMeasurementCacheEnabled && b(view.getMeasuredWidth(), i6, ((ViewGroup.MarginLayoutParams) layoutParams).width) && b(view.getMeasuredHeight(), i10, ((ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
    }

    public abstract void smoothScrollToPosition(RecyclerView recyclerView, l1 l1Var, int i6);

    @SuppressLint({"UnknownNullness"})
    public void startSmoothScroll(k1 k1Var) {
        k1 k1Var2 = this.mSmoothScroller;
        if (k1Var2 != null && k1Var != k1Var2 && k1Var2.isRunning()) {
            this.mSmoothScroller.stop();
        }
        this.mSmoothScroller = k1Var;
        k1Var.start(this.mRecyclerView, this);
    }

    public void stopIgnoringView(View view) {
        p1 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        childViewHolderInt.stopIgnoring();
        childViewHolderInt.resetInternal();
        childViewHolderInt.addFlags(4);
    }

    public void stopSmoothScroller() {
        k1 k1Var = this.mSmoothScroller;
        if (k1Var != null) {
            k1Var.stop();
        }
    }

    public abstract boolean supportsPredictiveItemAnimations();

    @SuppressLint({"UnknownNullness"})
    public void addDisappearingView(View view, int i6) {
        a(view, i6, true);
    }

    @SuppressLint({"UnknownNullness"})
    public void addView(View view, int i6) {
        a(view, i6, false);
    }

    public void onDetachedFromWindow(RecyclerView recyclerView, e1 e1Var) {
        onDetachedFromWindow(recyclerView);
    }

    public void onInitializeAccessibilityEvent(e1 e1Var, l1 l1Var, AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || accessibilityEvent == null) {
            return;
        }
        boolean z7 = true;
        if (!recyclerView.canScrollVertically(1) && !this.mRecyclerView.canScrollVertically(-1) && !this.mRecyclerView.canScrollHorizontally(-1) && !this.mRecyclerView.canScrollHorizontally(1)) {
            z7 = false;
        }
        accessibilityEvent.setScrollable(z7);
        k0 k0Var = this.mRecyclerView.mAdapter;
        if (k0Var != null) {
            accessibilityEvent.setItemCount(k0Var.getItemCount());
        }
    }

    public void onInitializeAccessibilityNodeInfo(e1 e1Var, l1 l1Var, o0.h hVar) {
        if (this.mRecyclerView.canScrollVertically(-1) || this.mRecyclerView.canScrollHorizontally(-1)) {
            hVar.a(8192);
            hVar.n(true);
            hVar.h(C.BUFFER_FLAG_NOT_DEPENDED_ON, true);
        }
        if (this.mRecyclerView.canScrollVertically(1) || this.mRecyclerView.canScrollHorizontally(1)) {
            hVar.a(4096);
            hVar.n(true);
            hVar.h(C.BUFFER_FLAG_NOT_DEPENDED_ON, true);
        }
        hVar.j(j7.c.z(getRowCountForAccessibility(e1Var, l1Var), getColumnCountForAccessibility(e1Var, l1Var), getSelectionModeForAccessibility(e1Var, l1Var), isLayoutHierarchical(e1Var, l1Var)));
    }

    public void onItemsUpdated(RecyclerView recyclerView, int i6, int i10, Object obj) {
        onItemsUpdated(recyclerView, i6, i10);
    }

    public boolean onRequestChildFocus(RecyclerView recyclerView, l1 l1Var, View view, View view2) {
        return onRequestChildFocus(recyclerView, view, view2);
    }

    public boolean performAccessibilityAction(e1 e1Var, l1 l1Var, int i6, Bundle bundle) {
        int paddingTop;
        int paddingLeft;
        float f;
        if (this.mRecyclerView == null) {
            return false;
        }
        int height = getHeight();
        int width = getWidth();
        Rect rect = new Rect();
        if (this.mRecyclerView.getMatrix().isIdentity() && this.mRecyclerView.getGlobalVisibleRect(rect)) {
            height = rect.height();
            width = rect.width();
        }
        if (i6 != 4096) {
            if (i6 != 8192) {
                paddingTop = 0;
            } else {
                paddingTop = this.mRecyclerView.canScrollVertically(-1) ? -((height - getPaddingTop()) - getPaddingBottom()) : 0;
                if (this.mRecyclerView.canScrollHorizontally(-1)) {
                    paddingLeft = -((width - getPaddingLeft()) - getPaddingRight());
                }
            }
        } else {
            paddingTop = this.mRecyclerView.canScrollVertically(1) ? (height - getPaddingTop()) - getPaddingBottom() : 0;
            paddingLeft = this.mRecyclerView.canScrollHorizontally(1) ? (width - getPaddingLeft()) - getPaddingRight() : 0;
        }
        if (paddingTop == 0 && paddingLeft == 0) {
            return false;
        }
        if (bundle != null) {
            f = bundle.getFloat("androidx.core.view.accessibility.action.ARGUMENT_SCROLL_AMOUNT_FLOAT", 1.0f);
            if (f < 0.0f) {
                if (!RecyclerView.sDebugAssertionsEnabled) {
                    return false;
                }
                throw new IllegalArgumentException("attempting to use ACTION_ARGUMENT_SCROLL_AMOUNT_FLOAT with a negative value (" + f + ")");
            }
        } else {
            f = 1.0f;
        }
        if (Float.compare(f, Float.POSITIVE_INFINITY) != 0) {
            if (Float.compare(1.0f, f) != 0 && Float.compare(0.0f, f) != 0) {
                paddingLeft = (int) (paddingLeft * f);
                paddingTop = (int) (paddingTop * f);
            }
            this.mRecyclerView.smoothScrollBy(paddingLeft, paddingTop, null, Integer.MIN_VALUE, true);
            return true;
        }
        RecyclerView recyclerView = this.mRecyclerView;
        k0 k0Var = recyclerView.mAdapter;
        if (k0Var == null) {
            return false;
        }
        if (i6 == 4096) {
            recyclerView.smoothScrollToPosition(k0Var.getItemCount() - 1);
        } else if (i6 == 8192) {
            recyclerView.smoothScrollToPosition(0);
        }
        return true;
    }

    public boolean performAccessibilityActionForItem(View view, int i6, Bundle bundle) {
        RecyclerView recyclerView = this.mRecyclerView;
        return performAccessibilityActionForItem(recyclerView.mRecycler, recyclerView.mState, view, i6, bundle);
    }

    public static int getChildMeasureSpec(int i6, int i10, int i11, int i12, boolean z7) {
        int iMax = Math.max(0, i6 - i11);
        if (z7) {
            if (i12 < 0) {
                if (i12 != -1 || (i10 != Integer.MIN_VALUE && (i10 == 0 || i10 != 1073741824))) {
                    i10 = 0;
                    i12 = 0;
                } else {
                    i12 = iMax;
                }
            }
            i10 = 1073741824;
        } else {
            if (i12 < 0) {
                if (i12 != -1) {
                    if (i12 == -2) {
                        i10 = (i10 == Integer.MIN_VALUE || i10 == 1073741824) ? Integer.MIN_VALUE : 0;
                    }
                    i10 = 0;
                    i12 = 0;
                }
                i12 = iMax;
            }
            i10 = 1073741824;
        }
        return View.MeasureSpec.makeMeasureSpec(i12, i10);
    }

    @SuppressLint({"UnknownNullness"})
    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new RecyclerView.LayoutParams(context, attributeSet);
    }

    public void onInitializeAccessibilityNodeInfoForItem(e1 e1Var, l1 l1Var, View view, o0.h hVar) {
        hVar.k(o0.g.a(canScrollVertically() ? getPosition(view) : 0, 1, canScrollHorizontally() ? getPosition(view) : 0, 1, false));
    }

    public void setMeasuredDimension(int i6, int i10) {
        this.mRecyclerView.setMeasuredDimension(i6, i10);
    }

    public void attachView(View view, int i6) {
        attachView(view, i6, (RecyclerView.LayoutParams) view.getLayoutParams());
    }

    public void attachView(View view) {
        attachView(view, -1);
    }

    public void onAttachedToWindow(RecyclerView recyclerView) {
    }

    public void onItemsChanged(RecyclerView recyclerView) {
    }

    public void onScrollStateChanged(int i6) {
    }

    public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z7) {
        return requestChildRectangleOnScreen(recyclerView, view, rect, z7, false);
    }

    public void collectInitialPrefetchPositions(int i6, w0 w0Var) {
    }

    public void onAdapterChanged(k0 k0Var, k0 k0Var2) {
    }

    public void onItemsAdded(RecyclerView recyclerView, int i6, int i10) {
    }

    public void onItemsRemoved(RecyclerView recyclerView, int i6, int i10) {
    }

    public void onItemsMoved(RecyclerView recyclerView, int i6, int i10, int i11) {
    }
}
