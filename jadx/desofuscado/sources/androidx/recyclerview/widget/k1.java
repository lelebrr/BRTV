package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.util.Log;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class k1 {
    private x0 mLayoutManager;
    private boolean mPendingInitialRun;
    private RecyclerView mRecyclerView;
    private final i1 mRecyclingAction;
    private boolean mRunning;
    private boolean mStarted;
    private int mTargetPosition = -1;
    private View mTargetView;

    public k1() {
        i1 i1Var = new i1();
        i1Var.d = -1;
        i1Var.f = false;
        i1Var.f2863g = 0;
        i1Var.f2859a = 0;
        i1Var.f2860b = 0;
        i1Var.f2861c = Integer.MIN_VALUE;
        i1Var.f2862e = null;
        this.mRecyclingAction = i1Var;
    }

    public PointF computeScrollVectorForPosition(int i6) {
        Object layoutManager = getLayoutManager();
        if (layoutManager instanceof j1) {
            return ((j1) layoutManager).computeScrollVectorForPosition(i6);
        }
        Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + j1.class.getCanonicalName());
        return null;
    }

    public View findViewByPosition(int i6) {
        return this.mRecyclerView.mLayout.findViewByPosition(i6);
    }

    public int getChildCount() {
        return this.mRecyclerView.mLayout.getChildCount();
    }

    public int getChildPosition(View view) {
        return this.mRecyclerView.getChildLayoutPosition(view);
    }

    public x0 getLayoutManager() {
        return this.mLayoutManager;
    }

    public int getTargetPosition() {
        return this.mTargetPosition;
    }

    @Deprecated
    public void instantScrollToPosition(int i6) {
        this.mRecyclerView.scrollToPosition(i6);
    }

    public boolean isPendingInitialRun() {
        return this.mPendingInitialRun;
    }

    public boolean isRunning() {
        return this.mRunning;
    }

    public void normalize(PointF pointF) {
        float f = pointF.x;
        float f3 = pointF.y;
        float fSqrt = (float) Math.sqrt((f3 * f3) + (f * f));
        pointF.x /= fSqrt;
        pointF.y /= fSqrt;
    }

    public void onAnimation(int i6, int i10) {
        PointF pointFComputeScrollVectorForPosition;
        RecyclerView recyclerView = this.mRecyclerView;
        if (this.mTargetPosition == -1 || recyclerView == null) {
            stop();
        }
        if (this.mPendingInitialRun && this.mTargetView == null && this.mLayoutManager != null && (pointFComputeScrollVectorForPosition = computeScrollVectorForPosition(this.mTargetPosition)) != null) {
            float f = pointFComputeScrollVectorForPosition.x;
            if (f != 0.0f || pointFComputeScrollVectorForPosition.y != 0.0f) {
                recyclerView.scrollStep((int) Math.signum(f), (int) Math.signum(pointFComputeScrollVectorForPosition.y), null);
            }
        }
        this.mPendingInitialRun = false;
        View view = this.mTargetView;
        if (view != null) {
            if (getChildPosition(view) == this.mTargetPosition) {
                onTargetFound(this.mTargetView, recyclerView.mState, this.mRecyclingAction);
                this.mRecyclingAction.a(recyclerView);
                stop();
            } else {
                Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                this.mTargetView = null;
            }
        }
        if (this.mRunning) {
            onSeekTargetStep(i6, i10, recyclerView.mState, this.mRecyclingAction);
            i1 i1Var = this.mRecyclingAction;
            boolean z7 = i1Var.d >= 0;
            i1Var.a(recyclerView);
            if (z7 && this.mRunning) {
                this.mPendingInitialRun = true;
                recyclerView.mViewFlinger.b();
            }
        }
    }

    public void onChildAttachedToWindow(View view) {
        if (getChildPosition(view) == getTargetPosition()) {
            this.mTargetView = view;
            if (RecyclerView.sVerboseLoggingEnabled) {
                Log.d("RecyclerView", "smooth scroll target view has been attached");
            }
        }
    }

    public abstract void onSeekTargetStep(int i6, int i10, l1 l1Var, i1 i1Var);

    public abstract void onStart();

    public abstract void onStop();

    public abstract void onTargetFound(View view, l1 l1Var, i1 i1Var);

    public void setTargetPosition(int i6) {
        this.mTargetPosition = i6;
    }

    public void start(RecyclerView recyclerView, x0 x0Var) {
        o1 o1Var = recyclerView.mViewFlinger;
        o1Var.f2908g.removeCallbacks(o1Var);
        o1Var.f2906c.abortAnimation();
        if (this.mStarted) {
            Log.w("RecyclerView", "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
        }
        this.mRecyclerView = recyclerView;
        this.mLayoutManager = x0Var;
        int i6 = this.mTargetPosition;
        if (i6 == -1) {
            throw new IllegalArgumentException("Invalid target position");
        }
        recyclerView.mState.f2886a = i6;
        this.mRunning = true;
        this.mPendingInitialRun = true;
        this.mTargetView = findViewByPosition(getTargetPosition());
        onStart();
        this.mRecyclerView.mViewFlinger.b();
        this.mStarted = true;
    }

    public final void stop() {
        if (this.mRunning) {
            this.mRunning = false;
            onStop();
            this.mRecyclerView.mState.f2886a = -1;
            this.mTargetView = null;
            this.mTargetPosition = -1;
            this.mPendingInitialRun = false;
            this.mLayoutManager.onSmoothScrollerStopped(this);
            this.mLayoutManager = null;
            this.mRecyclerView = null;
        }
    }
}
