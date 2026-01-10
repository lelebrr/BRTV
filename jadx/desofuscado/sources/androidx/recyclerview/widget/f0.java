package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.graphics.PointF;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class f0 extends t1 {
    private static final int MAX_SCROLL_ON_FLING_DURATION = 100;
    private d0 mHorizontalHelper;
    private d0 mVerticalHelper;

    public static int a(View view, d0 d0Var) {
        return ((d0Var.c(view) / 2) + d0Var.e(view)) - ((d0Var.l() / 2) + d0Var.k());
    }

    public static View b(x0 x0Var, d0 d0Var) {
        int childCount = x0Var.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int iL = (d0Var.l() / 2) + d0Var.k();
        int i6 = Integer.MAX_VALUE;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = x0Var.getChildAt(i10);
            int iAbs = Math.abs(((d0Var.c(childAt) / 2) + d0Var.e(childAt)) - iL);
            if (iAbs < i6) {
                view = childAt;
                i6 = iAbs;
            }
        }
        return view;
    }

    public final d0 c(x0 x0Var) {
        d0 d0Var = this.mHorizontalHelper;
        if (d0Var == null || d0Var.f2820a != x0Var) {
            this.mHorizontalHelper = new b0(x0Var);
        }
        return this.mHorizontalHelper;
    }

    @Override // androidx.recyclerview.widget.t1
    public int[] calculateDistanceToFinalSnap(x0 x0Var, View view) {
        int[] iArr = new int[2];
        if (x0Var.canScrollHorizontally()) {
            iArr[0] = a(view, c(x0Var));
        } else {
            iArr[0] = 0;
        }
        if (x0Var.canScrollVertically()) {
            iArr[1] = a(view, d(x0Var));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.t1
    public k1 createScroller(x0 x0Var) {
        if (x0Var instanceof j1) {
            return new e0(this, this.mRecyclerView.getContext(), 0);
        }
        return null;
    }

    public final d0 d(x0 x0Var) {
        d0 d0Var = this.mVerticalHelper;
        if (d0Var == null || d0Var.f2820a != x0Var) {
            this.mVerticalHelper = new c0(x0Var);
        }
        return this.mVerticalHelper;
    }

    @Override // androidx.recyclerview.widget.t1
    public View findSnapView(x0 x0Var) {
        if (x0Var.canScrollVertically()) {
            return b(x0Var, d(x0Var));
        }
        if (x0Var.canScrollHorizontally()) {
            return b(x0Var, c(x0Var));
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.t1
    @SuppressLint({"UnknownNullness"})
    public int findTargetSnapPosition(x0 x0Var, int i6, int i10) {
        PointF pointFComputeScrollVectorForPosition;
        int itemCount = x0Var.getItemCount();
        if (itemCount == 0) {
            return -1;
        }
        View view = null;
        d0 d0VarD = x0Var.canScrollVertically() ? d(x0Var) : x0Var.canScrollHorizontally() ? c(x0Var) : null;
        if (d0VarD == null) {
            return -1;
        }
        int childCount = x0Var.getChildCount();
        boolean z7 = false;
        View view2 = null;
        int i11 = Integer.MIN_VALUE;
        int i12 = Integer.MAX_VALUE;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = x0Var.getChildAt(i13);
            if (childAt != null) {
                int iA = a(childAt, d0VarD);
                if (iA <= 0 && iA > i11) {
                    view2 = childAt;
                    i11 = iA;
                }
                if (iA >= 0 && iA < i12) {
                    view = childAt;
                    i12 = iA;
                }
            }
        }
        boolean z10 = !x0Var.canScrollHorizontally() ? i10 <= 0 : i6 <= 0;
        if (z10 && view != null) {
            return x0Var.getPosition(view);
        }
        if (!z10 && view2 != null) {
            return x0Var.getPosition(view2);
        }
        if (z10) {
            view = view2;
        }
        if (view == null) {
            return -1;
        }
        int position = x0Var.getPosition(view);
        int itemCount2 = x0Var.getItemCount();
        if ((x0Var instanceof j1) && (pointFComputeScrollVectorForPosition = ((j1) x0Var).computeScrollVectorForPosition(itemCount2 - 1)) != null && (pointFComputeScrollVectorForPosition.x < 0.0f || pointFComputeScrollVectorForPosition.y < 0.0f)) {
            z7 = true;
        }
        int i14 = position + (z7 == z10 ? -1 : 1);
        if (i14 < 0 || i14 >= itemCount) {
            return -1;
        }
        return i14;
    }
}
