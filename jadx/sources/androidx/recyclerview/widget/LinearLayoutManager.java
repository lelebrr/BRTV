package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class LinearLayoutManager extends x0 implements j1 {
    static final boolean DEBUG = false;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "LinearLayoutManager";
    public static final int VERTICAL = 1;
    final w mAnchorInfo;
    private int mInitialPrefetchItemCount;
    private boolean mLastStackFromEnd;
    private final x mLayoutChunkResult;
    private y mLayoutState;
    int mOrientation;
    d0 mOrientationHelper;
    SavedState mPendingSavedState;
    int mPendingScrollPosition;
    int mPendingScrollPositionOffset;
    private boolean mRecycleChildrenOnDetach;
    private int[] mReusableIntPair;
    private boolean mReverseLayout;
    boolean mShouldReverseLayout;
    private boolean mSmoothScrollbarEnabled;
    private boolean mStackFromEnd;

    /* compiled from: MyApplication */
    @SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new z();

        /* renamed from: a, reason: collision with root package name */
        public int f2754a;

        /* renamed from: b, reason: collision with root package name */
        public int f2755b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f2756c;

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i6) {
            parcel.writeInt(this.f2754a);
            parcel.writeInt(this.f2755b);
            parcel.writeInt(this.f2756c ? 1 : 0);
        }
    }

    public LinearLayoutManager(int i6) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new w();
        this.mLayoutChunkResult = new x();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        setOrientation(i6);
        setReverseLayout(false);
    }

    @Override // androidx.recyclerview.widget.x0
    @SuppressLint({"UnknownNullness"})
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    public void calculateExtraLayoutSpace(l1 l1Var, int[] iArr) {
        int i6;
        int extraLayoutSpace = getExtraLayoutSpace(l1Var);
        if (this.mLayoutState.f == -1) {
            i6 = 0;
        } else {
            i6 = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        iArr[0] = extraLayoutSpace;
        iArr[1] = i6;
    }

    @Override // androidx.recyclerview.widget.x0
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // androidx.recyclerview.widget.x0
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    @Override // androidx.recyclerview.widget.x0
    @SuppressLint({"UnknownNullness"})
    public void collectAdjacentPrefetchPositions(int i6, int i10, l1 l1Var, w0 w0Var) {
        if (this.mOrientation != 0) {
            i6 = i10;
        }
        if (getChildCount() == 0 || i6 == 0) {
            return;
        }
        ensureLayoutState();
        o(i6 > 0 ? 1 : -1, Math.abs(i6), true, l1Var);
        collectPrefetchPositionsForLayoutState(l1Var, this.mLayoutState, w0Var);
    }

    @Override // androidx.recyclerview.widget.x0
    @SuppressLint({"UnknownNullness"})
    public void collectInitialPrefetchPositions(int i6, w0 w0Var) {
        boolean z7;
        int i10;
        SavedState savedState = this.mPendingSavedState;
        if (savedState == null || (i10 = savedState.f2754a) < 0) {
            n();
            z7 = this.mShouldReverseLayout;
            i10 = this.mPendingScrollPosition;
            if (i10 == -1) {
                i10 = z7 ? i6 - 1 : 0;
            }
        } else {
            z7 = savedState.f2756c;
        }
        int i11 = z7 ? -1 : 1;
        for (int i12 = 0; i12 < this.mInitialPrefetchItemCount && i10 >= 0 && i10 < i6; i12++) {
            ((r) w0Var).a(i10, 0);
            i10 += i11;
        }
    }

    public void collectPrefetchPositionsForLayoutState(l1 l1Var, y yVar, w0 w0Var) {
        int i6 = yVar.d;
        if (i6 < 0 || i6 >= l1Var.b()) {
            return;
        }
        ((r) w0Var).a(i6, Math.max(0, yVar.f2981g));
    }

    @Override // androidx.recyclerview.widget.x0
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollExtent(l1 l1Var) {
        return d(l1Var);
    }

    @Override // androidx.recyclerview.widget.x0
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollOffset(l1 l1Var) {
        return e(l1Var);
    }

    @Override // androidx.recyclerview.widget.x0
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollRange(l1 l1Var) {
        return f(l1Var);
    }

    @Override // androidx.recyclerview.widget.j1
    @SuppressLint({"UnknownNullness"})
    public PointF computeScrollVectorForPosition(int i6) {
        if (getChildCount() == 0) {
            return null;
        }
        int i10 = (i6 < getPosition(getChildAt(0))) != this.mShouldReverseLayout ? -1 : 1;
        return this.mOrientation == 0 ? new PointF(i10, 0.0f) : new PointF(0.0f, i10);
    }

    @Override // androidx.recyclerview.widget.x0
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollExtent(l1 l1Var) {
        return d(l1Var);
    }

    @Override // androidx.recyclerview.widget.x0
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollOffset(l1 l1Var) {
        return e(l1Var);
    }

    @Override // androidx.recyclerview.widget.x0
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollRange(l1 l1Var) {
        return f(l1Var);
    }

    public int convertFocusDirectionToLayoutDirection(int i6) {
        return i6 != 1 ? i6 != 2 ? i6 != 17 ? i6 != 33 ? i6 != 66 ? (i6 == 130 && this.mOrientation == 1) ? 1 : Integer.MIN_VALUE : this.mOrientation == 0 ? 1 : Integer.MIN_VALUE : this.mOrientation == 1 ? -1 : Integer.MIN_VALUE : this.mOrientation == 0 ? -1 : Integer.MIN_VALUE : (this.mOrientation != 1 && isLayoutRTL()) ? -1 : 1 : (this.mOrientation != 1 && isLayoutRTL()) ? 1 : -1;
    }

    public y createLayoutState() {
        y yVar = new y();
        yVar.f2977a = true;
        yVar.f2982h = 0;
        yVar.f2983i = 0;
        yVar.f2985k = null;
        return yVar;
    }

    public final int d(l1 l1Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return r4.b.f(l1Var, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    public final int e(l1 l1Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return r4.b.g(l1Var, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    public void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = createLayoutState();
        }
    }

    public final int f(l1 l1Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return r4.b.h(l1Var, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    public int fill(e1 e1Var, y yVar, l1 l1Var, boolean z7) {
        int i6;
        int i10 = yVar.f2979c;
        int i11 = yVar.f2981g;
        if (i11 != Integer.MIN_VALUE) {
            if (i10 < 0) {
                yVar.f2981g = i11 + i10;
            }
            l(e1Var, yVar);
        }
        int i12 = yVar.f2979c + yVar.f2982h;
        x xVar = this.mLayoutChunkResult;
        while (true) {
            if ((!yVar.f2986l && i12 <= 0) || (i6 = yVar.d) < 0 || i6 >= l1Var.b()) {
                break;
            }
            xVar.f2974a = 0;
            xVar.f2975b = false;
            xVar.f2976c = false;
            xVar.d = false;
            layoutChunk(e1Var, l1Var, yVar, xVar);
            if (!xVar.f2975b) {
                int i13 = yVar.f2978b;
                int i14 = xVar.f2974a;
                yVar.f2978b = (yVar.f * i14) + i13;
                if (!xVar.f2976c || yVar.f2985k != null || !l1Var.f2890g) {
                    yVar.f2979c -= i14;
                    i12 -= i14;
                }
                int i15 = yVar.f2981g;
                if (i15 != Integer.MIN_VALUE) {
                    int i16 = i15 + i14;
                    yVar.f2981g = i16;
                    int i17 = yVar.f2979c;
                    if (i17 < 0) {
                        yVar.f2981g = i16 + i17;
                    }
                    l(e1Var, yVar);
                }
                if (z7 && xVar.d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i10 - yVar.f2979c;
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(0, getChildCount(), true, false);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public View findFirstVisibleChildClosestToEnd(boolean z7, boolean z10) {
        return this.mShouldReverseLayout ? findOneVisibleChild(0, getChildCount(), z7, z10) : findOneVisibleChild(getChildCount() - 1, -1, z7, z10);
    }

    public View findFirstVisibleChildClosestToStart(boolean z7, boolean z10) {
        return this.mShouldReverseLayout ? findOneVisibleChild(getChildCount() - 1, -1, z7, z10) : findOneVisibleChild(0, getChildCount(), z7, z10);
    }

    public int findFirstVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(0, getChildCount(), false, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findLastCompletelyVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, true, false);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findLastVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, false, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public View findOnePartiallyOrCompletelyInvisibleChild(int i6, int i10) {
        int i11;
        int i12;
        ensureLayoutState();
        if (i10 <= i6 && i10 >= i6) {
            return getChildAt(i6);
        }
        if (this.mOrientationHelper.e(getChildAt(i6)) < this.mOrientationHelper.k()) {
            i11 = 16644;
            i12 = 16388;
        } else {
            i11 = 4161;
            i12 = 4097;
        }
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.a(i6, i10, i11, i12) : this.mVerticalBoundCheck.a(i6, i10, i11, i12);
    }

    public View findOneVisibleChild(int i6, int i10, boolean z7, boolean z10) {
        ensureLayoutState();
        int i11 = z7 ? 24579 : 320;
        int i12 = z10 ? 320 : 0;
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.a(i6, i10, i11, i12) : this.mVerticalBoundCheck.a(i6, i10, i11, i12);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.view.View findReferenceChild(androidx.recyclerview.widget.e1 r17, androidx.recyclerview.widget.l1 r18, boolean r19, boolean r20) {
        /*
            r16 = this;
            r0 = r16
            r16.ensureLayoutState()
            int r1 = r16.getChildCount()
            r2 = 0
            r3 = 1
            if (r20 == 0) goto L15
            int r1 = r16.getChildCount()
            int r1 = r1 - r3
            r4 = -1
            r5 = -1
            goto L18
        L15:
            r4 = r1
            r1 = 0
            r5 = 1
        L18:
            int r6 = r18.b()
            androidx.recyclerview.widget.d0 r7 = r0.mOrientationHelper
            int r7 = r7.k()
            androidx.recyclerview.widget.d0 r8 = r0.mOrientationHelper
            int r8 = r8.g()
            r9 = 0
            r10 = r9
            r11 = r10
        L2b:
            if (r1 == r4) goto L7c
            android.view.View r12 = r0.getChildAt(r1)
            int r13 = r0.getPosition(r12)
            androidx.recyclerview.widget.d0 r14 = r0.mOrientationHelper
            int r14 = r14.e(r12)
            androidx.recyclerview.widget.d0 r15 = r0.mOrientationHelper
            int r15 = r15.b(r12)
            if (r13 < 0) goto L7a
            if (r13 >= r6) goto L7a
            android.view.ViewGroup$LayoutParams r13 = r12.getLayoutParams()
            androidx.recyclerview.widget.RecyclerView$LayoutParams r13 = (androidx.recyclerview.widget.RecyclerView.LayoutParams) r13
            androidx.recyclerview.widget.p1 r13 = r13.f2760a
            boolean r13 = r13.isRemoved()
            if (r13 == 0) goto L57
            if (r11 != 0) goto L7a
            r11 = r12
            goto L7a
        L57:
            if (r15 > r7) goto L5d
            if (r14 >= r7) goto L5d
            r13 = 1
            goto L5e
        L5d:
            r13 = 0
        L5e:
            if (r14 < r8) goto L64
            if (r15 <= r8) goto L64
            r14 = 1
            goto L65
        L64:
            r14 = 0
        L65:
            if (r13 != 0) goto L6b
            if (r14 == 0) goto L6a
            goto L6b
        L6a:
            return r12
        L6b:
            if (r19 == 0) goto L73
            if (r14 == 0) goto L70
            goto L75
        L70:
            if (r9 != 0) goto L7a
            goto L79
        L73:
            if (r13 == 0) goto L77
        L75:
            r10 = r12
            goto L7a
        L77:
            if (r9 != 0) goto L7a
        L79:
            r9 = r12
        L7a:
            int r1 = r1 + r5
            goto L2b
        L7c:
            if (r9 == 0) goto L7f
            goto L84
        L7f:
            if (r10 == 0) goto L83
            r9 = r10
            goto L84
        L83:
            r9 = r11
        L84:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.findReferenceChild(androidx.recyclerview.widget.e1, androidx.recyclerview.widget.l1, boolean, boolean):android.view.View");
    }

    @Override // androidx.recyclerview.widget.x0
    @SuppressLint({"UnknownNullness"})
    public View findViewByPosition(int i6) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i6 - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i6) {
                return childAt;
            }
        }
        return super.findViewByPosition(i6);
    }

    public final int g(int i6, e1 e1Var, l1 l1Var, boolean z7) {
        int iG;
        int iG2 = this.mOrientationHelper.g() - i6;
        if (iG2 <= 0) {
            return 0;
        }
        int i10 = -scrollBy(-iG2, e1Var, l1Var);
        int i11 = i6 + i10;
        if (!z7 || (iG = this.mOrientationHelper.g() - i11) <= 0) {
            return i10;
        }
        this.mOrientationHelper.p(iG);
        return iG + i10;
    }

    @Override // androidx.recyclerview.widget.x0
    @SuppressLint({"UnknownNullness"})
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Deprecated
    public int getExtraLayoutSpace(l1 l1Var) {
        if (l1Var.f2886a != -1) {
            return this.mOrientationHelper.l();
        }
        return 0;
    }

    public int getInitialPrefetchItemCount() {
        return this.mInitialPrefetchItemCount;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.mRecycleChildrenOnDetach;
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    public boolean getStackFromEnd() {
        return this.mStackFromEnd;
    }

    public final int h(int i6, e1 e1Var, l1 l1Var, boolean z7) {
        int iK;
        int iK2 = i6 - this.mOrientationHelper.k();
        if (iK2 <= 0) {
            return 0;
        }
        int i10 = -scrollBy(iK2, e1Var, l1Var);
        int i11 = i6 + i10;
        if (!z7 || (iK = i11 - this.mOrientationHelper.k()) <= 0) {
            return i10;
        }
        this.mOrientationHelper.p(-iK);
        return i10 - iK;
    }

    public final View i() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    @Override // androidx.recyclerview.widget.x0
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    public boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    @Override // androidx.recyclerview.widget.x0
    public boolean isLayoutReversed() {
        return this.mReverseLayout;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.mSmoothScrollbarEnabled;
    }

    public final View j() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    public final void k() {
        Log.d(TAG, "internal representation of views on the screen");
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            View childAt = getChildAt(i6);
            Log.d(TAG, "item " + getPosition(childAt) + ", coord:" + this.mOrientationHelper.e(childAt));
        }
        Log.d(TAG, "==============");
    }

    public final void l(e1 e1Var, y yVar) {
        if (!yVar.f2977a || yVar.f2986l) {
            return;
        }
        int i6 = yVar.f2981g;
        int i10 = yVar.f2983i;
        if (yVar.f == -1) {
            int childCount = getChildCount();
            if (i6 < 0) {
                return;
            }
            int iF = (this.mOrientationHelper.f() - i6) + i10;
            if (this.mShouldReverseLayout) {
                for (int i11 = 0; i11 < childCount; i11++) {
                    View childAt = getChildAt(i11);
                    if (this.mOrientationHelper.e(childAt) < iF || this.mOrientationHelper.o(childAt) < iF) {
                        m(e1Var, 0, i11);
                        return;
                    }
                }
                return;
            }
            int i12 = childCount - 1;
            for (int i13 = i12; i13 >= 0; i13--) {
                View childAt2 = getChildAt(i13);
                if (this.mOrientationHelper.e(childAt2) < iF || this.mOrientationHelper.o(childAt2) < iF) {
                    m(e1Var, i12, i13);
                    return;
                }
            }
            return;
        }
        if (i6 < 0) {
            return;
        }
        int i14 = i6 - i10;
        int childCount2 = getChildCount();
        if (!this.mShouldReverseLayout) {
            for (int i15 = 0; i15 < childCount2; i15++) {
                View childAt3 = getChildAt(i15);
                if (this.mOrientationHelper.b(childAt3) > i14 || this.mOrientationHelper.n(childAt3) > i14) {
                    m(e1Var, 0, i15);
                    return;
                }
            }
            return;
        }
        int i16 = childCount2 - 1;
        for (int i17 = i16; i17 >= 0; i17--) {
            View childAt4 = getChildAt(i17);
            if (this.mOrientationHelper.b(childAt4) > i14 || this.mOrientationHelper.n(childAt4) > i14) {
                m(e1Var, i16, i17);
                return;
            }
        }
    }

    public void layoutChunk(e1 e1Var, l1 l1Var, y yVar, x xVar) {
        int i6;
        int i10;
        int i11;
        int paddingLeft;
        int iD;
        View viewB = yVar.b(e1Var);
        if (viewB == null) {
            xVar.f2975b = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) viewB.getLayoutParams();
        if (yVar.f2985k == null) {
            if (this.mShouldReverseLayout == (yVar.f == -1)) {
                addView(viewB);
            } else {
                addView(viewB, 0);
            }
        } else {
            if (this.mShouldReverseLayout == (yVar.f == -1)) {
                addDisappearingView(viewB);
            } else {
                addDisappearingView(viewB, 0);
            }
        }
        measureChildWithMargins(viewB, 0, 0);
        xVar.f2974a = this.mOrientationHelper.c(viewB);
        if (this.mOrientation == 1) {
            if (isLayoutRTL()) {
                iD = getWidth() - getPaddingRight();
                paddingLeft = iD - this.mOrientationHelper.d(viewB);
            } else {
                paddingLeft = getPaddingLeft();
                iD = this.mOrientationHelper.d(viewB) + paddingLeft;
            }
            if (yVar.f == -1) {
                int i12 = yVar.f2978b;
                i11 = i12;
                i10 = iD;
                i6 = i12 - xVar.f2974a;
            } else {
                int i13 = yVar.f2978b;
                i6 = i13;
                i10 = iD;
                i11 = xVar.f2974a + i13;
            }
        } else {
            int paddingTop = getPaddingTop();
            int iD2 = this.mOrientationHelper.d(viewB) + paddingTop;
            if (yVar.f == -1) {
                int i14 = yVar.f2978b;
                i10 = i14;
                i6 = paddingTop;
                i11 = iD2;
                paddingLeft = i14 - xVar.f2974a;
            } else {
                int i15 = yVar.f2978b;
                i6 = paddingTop;
                i10 = xVar.f2974a + i15;
                i11 = iD2;
                paddingLeft = i15;
            }
        }
        layoutDecoratedWithMargins(viewB, paddingLeft, i6, i10, i11);
        if (layoutParams.f2760a.isRemoved() || layoutParams.f2760a.isUpdated()) {
            xVar.f2976c = true;
        }
        xVar.d = viewB.hasFocusable();
    }

    public final void m(e1 e1Var, int i6, int i10) {
        if (i6 == i10) {
            return;
        }
        if (i10 <= i6) {
            while (i6 > i10) {
                removeAndRecycleViewAt(i6, e1Var);
                i6--;
            }
        } else {
            for (int i11 = i10 - 1; i11 >= i6; i11--) {
                removeAndRecycleViewAt(i11, e1Var);
            }
        }
    }

    public final void n() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = !this.mReverseLayout;
        }
    }

    public final void o(int i6, int i10, boolean z7, l1 l1Var) {
        int iK;
        this.mLayoutState.f2986l = resolveIsInfinite();
        this.mLayoutState.f = i6;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(l1Var, iArr);
        int iMax = Math.max(0, this.mReusableIntPair[0]);
        int iMax2 = Math.max(0, this.mReusableIntPair[1]);
        boolean z10 = i6 == 1;
        y yVar = this.mLayoutState;
        int i11 = z10 ? iMax2 : iMax;
        yVar.f2982h = i11;
        if (!z10) {
            iMax = iMax2;
        }
        yVar.f2983i = iMax;
        if (z10) {
            yVar.f2982h = this.mOrientationHelper.h() + i11;
            View viewI = i();
            y yVar2 = this.mLayoutState;
            yVar2.f2980e = this.mShouldReverseLayout ? -1 : 1;
            int position = getPosition(viewI);
            y yVar3 = this.mLayoutState;
            yVar2.d = position + yVar3.f2980e;
            yVar3.f2978b = this.mOrientationHelper.b(viewI);
            iK = this.mOrientationHelper.b(viewI) - this.mOrientationHelper.g();
        } else {
            View viewJ = j();
            y yVar4 = this.mLayoutState;
            yVar4.f2982h = this.mOrientationHelper.k() + yVar4.f2982h;
            y yVar5 = this.mLayoutState;
            yVar5.f2980e = this.mShouldReverseLayout ? 1 : -1;
            int position2 = getPosition(viewJ);
            y yVar6 = this.mLayoutState;
            yVar5.d = position2 + yVar6.f2980e;
            yVar6.f2978b = this.mOrientationHelper.e(viewJ);
            iK = (-this.mOrientationHelper.e(viewJ)) + this.mOrientationHelper.k();
        }
        y yVar7 = this.mLayoutState;
        yVar7.f2979c = i10;
        if (z7) {
            yVar7.f2979c = i10 - iK;
        }
        yVar7.f2981g = iK;
    }

    @Override // androidx.recyclerview.widget.x0
    @SuppressLint({"UnknownNullness"})
    public void onDetachedFromWindow(RecyclerView recyclerView, e1 e1Var) {
        onDetachedFromWindow(recyclerView);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(e1Var);
            e1Var.f2831a.clear();
            e1Var.g();
        }
    }

    @Override // androidx.recyclerview.widget.x0
    @SuppressLint({"UnknownNullness"})
    public View onFocusSearchFailed(View view, int i6, e1 e1Var, l1 l1Var) {
        int iConvertFocusDirectionToLayoutDirection;
        n();
        if (getChildCount() == 0 || (iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i6)) == Integer.MIN_VALUE) {
            return null;
        }
        ensureLayoutState();
        o(iConvertFocusDirectionToLayoutDirection, (int) (this.mOrientationHelper.l() * MAX_SCROLL_FACTOR), false, l1Var);
        y yVar = this.mLayoutState;
        yVar.f2981g = Integer.MIN_VALUE;
        yVar.f2977a = false;
        fill(e1Var, yVar, l1Var, true);
        View viewFindOnePartiallyOrCompletelyInvisibleChild = iConvertFocusDirectionToLayoutDirection == -1 ? this.mShouldReverseLayout ? findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1) : findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount()) : this.mShouldReverseLayout ? findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount()) : findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
        View viewJ = iConvertFocusDirectionToLayoutDirection == -1 ? j() : i();
        if (!viewJ.hasFocusable()) {
            return viewFindOnePartiallyOrCompletelyInvisibleChild;
        }
        if (viewFindOnePartiallyOrCompletelyInvisibleChild == null) {
            return null;
        }
        return viewJ;
    }

    @Override // androidx.recyclerview.widget.x0
    @SuppressLint({"UnknownNullness"})
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
            accessibilityEvent.setToIndex(findLastVisibleItemPosition());
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public void onInitializeAccessibilityNodeInfo(e1 e1Var, l1 l1Var, o0.h hVar) {
        super.onInitializeAccessibilityNodeInfo(e1Var, l1Var, hVar);
        k0 k0Var = this.mRecyclerView.mAdapter;
        if (k0Var == null || k0Var.getItemCount() <= 0 || Build.VERSION.SDK_INT < 23) {
            return;
        }
        hVar.b(o0.c.f8529m);
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01a5  */
    @Override // androidx.recyclerview.widget.x0
    @android.annotation.SuppressLint({"UnknownNullness"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onLayoutChildren(androidx.recyclerview.widget.e1 r14, androidx.recyclerview.widget.l1 r15) {
        /*
            Method dump skipped, instructions count: 1032
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.onLayoutChildren(androidx.recyclerview.widget.e1, androidx.recyclerview.widget.l1):void");
    }

    @Override // androidx.recyclerview.widget.x0
    @SuppressLint({"UnknownNullness"})
    public void onLayoutCompleted(l1 l1Var) {
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mAnchorInfo.d();
    }

    @Override // androidx.recyclerview.widget.x0
    @SuppressLint({"UnknownNullness"})
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.mPendingSavedState = savedState;
            if (this.mPendingScrollPosition != -1) {
                savedState.f2754a = -1;
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.x0
    @SuppressLint({"UnknownNullness"})
    public Parcelable onSaveInstanceState() {
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            SavedState savedState2 = new SavedState();
            savedState2.f2754a = savedState.f2754a;
            savedState2.f2755b = savedState.f2755b;
            savedState2.f2756c = savedState.f2756c;
            return savedState2;
        }
        SavedState savedState3 = new SavedState();
        if (getChildCount() > 0) {
            ensureLayoutState();
            boolean z7 = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
            savedState3.f2756c = z7;
            if (z7) {
                View viewI = i();
                savedState3.f2755b = this.mOrientationHelper.g() - this.mOrientationHelper.b(viewI);
                savedState3.f2754a = getPosition(viewI);
            } else {
                View viewJ = j();
                savedState3.f2754a = getPosition(viewJ);
                savedState3.f2755b = this.mOrientationHelper.e(viewJ) - this.mOrientationHelper.k();
            }
        } else {
            savedState3.f2754a = -1;
        }
        return savedState3;
    }

    public final void p(int i6, int i10) {
        this.mLayoutState.f2979c = this.mOrientationHelper.g() - i10;
        y yVar = this.mLayoutState;
        yVar.f2980e = this.mShouldReverseLayout ? -1 : 1;
        yVar.d = i6;
        yVar.f = 1;
        yVar.f2978b = i10;
        yVar.f2981g = Integer.MIN_VALUE;
    }

    @Override // androidx.recyclerview.widget.x0
    public boolean performAccessibilityAction(int i6, Bundle bundle) {
        int iMin;
        if (super.performAccessibilityAction(i6, bundle)) {
            return true;
        }
        if (i6 == 16908343 && bundle != null) {
            if (this.mOrientation == 1) {
                int i10 = bundle.getInt("android.view.accessibility.action.ARGUMENT_ROW_INT", -1);
                if (i10 < 0) {
                    return false;
                }
                RecyclerView recyclerView = this.mRecyclerView;
                iMin = Math.min(i10, getRowCountForAccessibility(recyclerView.mRecycler, recyclerView.mState) - 1);
            } else {
                int i11 = bundle.getInt("android.view.accessibility.action.ARGUMENT_COLUMN_INT", -1);
                if (i11 < 0) {
                    return false;
                }
                RecyclerView recyclerView2 = this.mRecyclerView;
                iMin = Math.min(i11, getColumnCountForAccessibility(recyclerView2.mRecycler, recyclerView2.mState) - 1);
            }
            if (iMin >= 0) {
                scrollToPositionWithOffset(iMin, 0);
                return true;
            }
        }
        return false;
    }

    public void prepareForDrop(View view, View view2, int i6, int i10) {
        assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
        ensureLayoutState();
        n();
        int position = getPosition(view);
        int position2 = getPosition(view2);
        char c5 = position < position2 ? (char) 1 : (char) 65535;
        if (this.mShouldReverseLayout) {
            if (c5 == 1) {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.g() - (this.mOrientationHelper.c(view) + this.mOrientationHelper.e(view2)));
                return;
            } else {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.g() - this.mOrientationHelper.b(view2));
                return;
            }
        }
        if (c5 == 65535) {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.e(view2));
        } else {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.b(view2) - this.mOrientationHelper.c(view));
        }
    }

    public final void q(int i6, int i10) {
        this.mLayoutState.f2979c = i10 - this.mOrientationHelper.k();
        y yVar = this.mLayoutState;
        yVar.d = i6;
        yVar.f2980e = this.mShouldReverseLayout ? 1 : -1;
        yVar.f = -1;
        yVar.f2978b = i10;
        yVar.f2981g = Integer.MIN_VALUE;
    }

    public boolean resolveIsInfinite() {
        return this.mOrientationHelper.i() == 0 && this.mOrientationHelper.f() == 0;
    }

    public int scrollBy(int i6, e1 e1Var, l1 l1Var) {
        if (getChildCount() == 0 || i6 == 0) {
            return 0;
        }
        ensureLayoutState();
        this.mLayoutState.f2977a = true;
        int i10 = i6 > 0 ? 1 : -1;
        int iAbs = Math.abs(i6);
        o(i10, iAbs, true, l1Var);
        y yVar = this.mLayoutState;
        int iFill = fill(e1Var, yVar, l1Var, false) + yVar.f2981g;
        if (iFill < 0) {
            return 0;
        }
        if (iAbs > iFill) {
            i6 = i10 * iFill;
        }
        this.mOrientationHelper.p(-i6);
        this.mLayoutState.f2984j = i6;
        return i6;
    }

    @Override // androidx.recyclerview.widget.x0
    @SuppressLint({"UnknownNullness"})
    public int scrollHorizontallyBy(int i6, e1 e1Var, l1 l1Var) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i6, e1Var, l1Var);
    }

    @Override // androidx.recyclerview.widget.x0
    public void scrollToPosition(int i6) {
        this.mPendingScrollPosition = i6;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.f2754a = -1;
        }
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i6, int i10) {
        this.mPendingScrollPosition = i6;
        this.mPendingScrollPositionOffset = i10;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.f2754a = -1;
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.x0
    @SuppressLint({"UnknownNullness"})
    public int scrollVerticallyBy(int i6, e1 e1Var, l1 l1Var) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i6, e1Var, l1Var);
    }

    public void setInitialPrefetchItemCount(int i6) {
        this.mInitialPrefetchItemCount = i6;
    }

    public void setOrientation(int i6) {
        if (i6 != 0 && i6 != 1) {
            throw new IllegalArgumentException(a.e.n(i6, "invalid orientation:"));
        }
        assertNotInLayoutOrScroll(null);
        if (i6 != this.mOrientation || this.mOrientationHelper == null) {
            d0 d0VarA = d0.a(this, i6);
            this.mOrientationHelper = d0VarA;
            this.mAnchorInfo.f2968a = d0VarA;
            this.mOrientation = i6;
            requestLayout();
        }
    }

    public void setRecycleChildrenOnDetach(boolean z7) {
        this.mRecycleChildrenOnDetach = z7;
    }

    public void setReverseLayout(boolean z7) {
        assertNotInLayoutOrScroll(null);
        if (z7 == this.mReverseLayout) {
            return;
        }
        this.mReverseLayout = z7;
        requestLayout();
    }

    public void setSmoothScrollbarEnabled(boolean z7) {
        this.mSmoothScrollbarEnabled = z7;
    }

    public void setStackFromEnd(boolean z7) {
        assertNotInLayoutOrScroll(null);
        if (this.mStackFromEnd == z7) {
            return;
        }
        this.mStackFromEnd = z7;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.x0
    public boolean shouldMeasureTwice() {
        return (getHeightMode() == 1073741824 || getWidthMode() == 1073741824 || !hasFlexibleChildInBothOrientations()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.x0
    @SuppressLint({"UnknownNullness"})
    public void smoothScrollToPosition(RecyclerView recyclerView, l1 l1Var, int i6) {
        a0 a0Var = new a0(recyclerView.getContext());
        a0Var.setTargetPosition(i6);
        startSmoothScroll(a0Var);
    }

    @Override // androidx.recyclerview.widget.x0
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }

    public void validateChildOrder() {
        Log.d(TAG, "validating child count " + getChildCount());
        if (getChildCount() < 1) {
            return;
        }
        int position = getPosition(getChildAt(0));
        int iE = this.mOrientationHelper.e(getChildAt(0));
        if (this.mShouldReverseLayout) {
            for (int i6 = 1; i6 < getChildCount(); i6++) {
                View childAt = getChildAt(i6);
                int position2 = getPosition(childAt);
                int iE2 = this.mOrientationHelper.e(childAt);
                if (position2 < position) {
                    k();
                    StringBuilder sb = new StringBuilder("detected invalid position. loc invalid? ");
                    sb.append(iE2 < iE);
                    throw new RuntimeException(sb.toString());
                }
                if (iE2 > iE) {
                    k();
                    throw new RuntimeException("detected invalid location");
                }
            }
            return;
        }
        for (int i10 = 1; i10 < getChildCount(); i10++) {
            View childAt2 = getChildAt(i10);
            int position3 = getPosition(childAt2);
            int iE3 = this.mOrientationHelper.e(childAt2);
            if (position3 < position) {
                k();
                StringBuilder sb2 = new StringBuilder("detected invalid position. loc invalid? ");
                sb2.append(iE3 < iE);
                throw new RuntimeException(sb2.toString());
            }
            if (iE3 < iE) {
                k();
                throw new RuntimeException("detected invalid location");
            }
        }
    }

    @SuppressLint({"UnknownNullness"})
    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i6, int i10) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new w();
        this.mLayoutChunkResult = new x();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        RecyclerView$LayoutManager$Properties properties = x0.getProperties(context, attributeSet, i6, i10);
        setOrientation(properties.f2757a);
        setReverseLayout(properties.f2759c);
        setStackFromEnd(properties.d);
    }

    public void onAnchorReady(e1 e1Var, l1 l1Var, w wVar, int i6) {
    }
}
