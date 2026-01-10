package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class t1 extends z0 {
    static final float MILLISECONDS_PER_INCH = 100.0f;
    private Scroller mGravityScroller;
    RecyclerView mRecyclerView;
    private final b1 mScrollListener = new s1(this);

    public void attachToRecyclerView(RecyclerView recyclerView) throws IllegalStateException {
        RecyclerView recyclerView2 = this.mRecyclerView;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            recyclerView2.removeOnScrollListener(this.mScrollListener);
            this.mRecyclerView.setOnFlingListener(null);
        }
        this.mRecyclerView = recyclerView;
        if (recyclerView != null) {
            if (recyclerView.getOnFlingListener() != null) {
                throw new IllegalStateException("An instance of OnFlingListener already set.");
            }
            this.mRecyclerView.addOnScrollListener(this.mScrollListener);
            this.mRecyclerView.setOnFlingListener(this);
            this.mGravityScroller = new Scroller(this.mRecyclerView.getContext(), new DecelerateInterpolator());
            snapToTargetExistingView();
        }
    }

    public abstract int[] calculateDistanceToFinalSnap(x0 x0Var, View view);

    @SuppressLint({"UnknownNullness"})
    public int[] calculateScrollDistance(int i6, int i10) {
        this.mGravityScroller.fling(0, 0, i6, i10, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return new int[]{this.mGravityScroller.getFinalX(), this.mGravityScroller.getFinalY()};
    }

    public abstract k1 createScroller(x0 x0Var);

    @Deprecated
    public a0 createSnapScroller(x0 x0Var) {
        if (x0Var instanceof j1) {
            return new e0(this, this.mRecyclerView.getContext(), 1);
        }
        return null;
    }

    public abstract View findSnapView(x0 x0Var);

    public abstract int findTargetSnapPosition(x0 x0Var, int i6, int i10);

    @Override // androidx.recyclerview.widget.z0
    public boolean onFling(int i6, int i10) {
        k1 k1VarCreateScroller;
        int iFindTargetSnapPosition;
        x0 layoutManager = this.mRecyclerView.getLayoutManager();
        if (layoutManager == null || this.mRecyclerView.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.mRecyclerView.getMinFlingVelocity();
        if ((Math.abs(i10) <= minFlingVelocity && Math.abs(i6) <= minFlingVelocity) || !(layoutManager instanceof j1) || (k1VarCreateScroller = createScroller(layoutManager)) == null || (iFindTargetSnapPosition = findTargetSnapPosition(layoutManager, i6, i10)) == -1) {
            return false;
        }
        k1VarCreateScroller.setTargetPosition(iFindTargetSnapPosition);
        layoutManager.startSmoothScroll(k1VarCreateScroller);
        return true;
    }

    public void snapToTargetExistingView() {
        x0 layoutManager;
        View viewFindSnapView;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (viewFindSnapView = findSnapView(layoutManager)) == null) {
            return;
        }
        int[] iArrCalculateDistanceToFinalSnap = calculateDistanceToFinalSnap(layoutManager, viewFindSnapView);
        int i6 = iArrCalculateDistanceToFinalSnap[0];
        if (i6 == 0 && iArrCalculateDistanceToFinalSnap[1] == 0) {
            return;
        }
        this.mRecyclerView.smoothScrollBy(i6, iArrCalculateDistanceToFinalSnap[1]);
    }
}
