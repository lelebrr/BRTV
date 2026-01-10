package androidx.recyclerview.widget;

import android.os.Build;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import java.util.Arrays;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o1 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public int f2904a;

    /* renamed from: b, reason: collision with root package name */
    public int f2905b;

    /* renamed from: c, reason: collision with root package name */
    public OverScroller f2906c;
    public Interpolator d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2907e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f2908g;

    public o1(RecyclerView recyclerView) {
        this.f2908g = recyclerView;
        Interpolator interpolator = RecyclerView.sQuinticInterpolator;
        this.d = interpolator;
        this.f2907e = false;
        this.f = false;
        this.f2906c = new OverScroller(recyclerView.getContext(), interpolator);
    }

    public final void a(int i6, int i10) {
        RecyclerView recyclerView = this.f2908g;
        recyclerView.setScrollState(2);
        this.f2905b = 0;
        this.f2904a = 0;
        Interpolator interpolator = this.d;
        Interpolator interpolator2 = RecyclerView.sQuinticInterpolator;
        if (interpolator != interpolator2) {
            this.d = interpolator2;
            this.f2906c = new OverScroller(recyclerView.getContext(), interpolator2);
        }
        this.f2906c.fling(0, 0, i6, i10, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        b();
    }

    public final void b() {
        if (this.f2907e) {
            this.f = true;
            return;
        }
        RecyclerView recyclerView = this.f2908g;
        recyclerView.removeCallbacks(this);
        WeakHashMap weakHashMap = n0.s0.f8353a;
        recyclerView.postOnAnimation(this);
    }

    public final void c(int i6, int i10, Interpolator interpolator, int i11) {
        RecyclerView recyclerView = this.f2908g;
        if (i11 == Integer.MIN_VALUE) {
            int iAbs = Math.abs(i6);
            int iAbs2 = Math.abs(i10);
            boolean z7 = iAbs > iAbs2;
            int width = z7 ? recyclerView.getWidth() : recyclerView.getHeight();
            if (!z7) {
                iAbs = iAbs2;
            }
            i11 = Math.min((int) (((iAbs / width) + 1.0f) * 300.0f), 2000);
        }
        int i12 = i11;
        if (interpolator == null) {
            interpolator = RecyclerView.sQuinticInterpolator;
        }
        if (this.d != interpolator) {
            this.d = interpolator;
            this.f2906c = new OverScroller(recyclerView.getContext(), interpolator);
        }
        this.f2905b = 0;
        this.f2904a = 0;
        recyclerView.setScrollState(2);
        this.f2906c.startScroll(0, 0, i6, i10, i12);
        if (Build.VERSION.SDK_INT < 23) {
            this.f2906c.computeScrollOffset();
        }
        b();
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i6;
        int i10;
        int i11;
        int i12;
        RecyclerView recyclerView = this.f2908g;
        if (recyclerView.mLayout == null) {
            recyclerView.removeCallbacks(this);
            this.f2906c.abortAnimation();
            return;
        }
        this.f = false;
        this.f2907e = true;
        recyclerView.consumePendingUpdateOperations();
        OverScroller overScroller = this.f2906c;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i13 = currX - this.f2904a;
            int i14 = currY - this.f2905b;
            this.f2904a = currX;
            this.f2905b = currY;
            int iConsumeFlingInHorizontalStretch = recyclerView.consumeFlingInHorizontalStretch(i13);
            int iConsumeFlingInVerticalStretch = recyclerView.consumeFlingInVerticalStretch(i14);
            int[] iArr = recyclerView.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            if (recyclerView.dispatchNestedPreScroll(iConsumeFlingInHorizontalStretch, iConsumeFlingInVerticalStretch, iArr, null, 1)) {
                int[] iArr2 = recyclerView.mReusableIntPair;
                iConsumeFlingInHorizontalStretch -= iArr2[0];
                iConsumeFlingInVerticalStretch -= iArr2[1];
            }
            if (recyclerView.getOverScrollMode() != 2) {
                recyclerView.considerReleasingGlowsOnScroll(iConsumeFlingInHorizontalStretch, iConsumeFlingInVerticalStretch);
            }
            if (recyclerView.mAdapter != null) {
                int[] iArr3 = recyclerView.mReusableIntPair;
                iArr3[0] = 0;
                iArr3[1] = 0;
                recyclerView.scrollStep(iConsumeFlingInHorizontalStretch, iConsumeFlingInVerticalStretch, iArr3);
                int[] iArr4 = recyclerView.mReusableIntPair;
                int i15 = iArr4[0];
                int i16 = iArr4[1];
                int i17 = iConsumeFlingInHorizontalStretch - i15;
                int i18 = iConsumeFlingInVerticalStretch - i16;
                k1 k1Var = recyclerView.mLayout.mSmoothScroller;
                if (k1Var != null && !k1Var.isPendingInitialRun() && k1Var.isRunning()) {
                    int iB = recyclerView.mState.b();
                    if (iB == 0) {
                        k1Var.stop();
                    } else if (k1Var.getTargetPosition() >= iB) {
                        k1Var.setTargetPosition(iB - 1);
                        k1Var.onAnimation(i15, i16);
                    } else {
                        k1Var.onAnimation(i15, i16);
                    }
                }
                i11 = i16;
                i12 = i15;
                i6 = i17;
                i10 = i18;
            } else {
                i6 = iConsumeFlingInHorizontalStretch;
                i10 = iConsumeFlingInVerticalStretch;
                i11 = 0;
                i12 = 0;
            }
            if (!recyclerView.mItemDecorations.isEmpty()) {
                recyclerView.invalidate();
            }
            int[] iArr5 = recyclerView.mReusableIntPair;
            iArr5[0] = 0;
            iArr5[1] = 0;
            recyclerView.dispatchNestedScroll(i12, i11, i6, i10, null, 1, iArr5);
            int[] iArr6 = recyclerView.mReusableIntPair;
            int i19 = i6 - iArr6[0];
            int i20 = i10 - iArr6[1];
            if (i12 != 0 || i11 != 0) {
                recyclerView.dispatchOnScrolled(i12, i11);
            }
            if (!recyclerView.awakenScrollBars()) {
                recyclerView.invalidate();
            }
            boolean z7 = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i19 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i20 != 0));
            k1 k1Var2 = recyclerView.mLayout.mSmoothScroller;
            if ((k1Var2 == null || !k1Var2.isPendingInitialRun()) && z7) {
                if (recyclerView.getOverScrollMode() != 2) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    int i21 = i19 < 0 ? -currVelocity : i19 > 0 ? currVelocity : 0;
                    if (i20 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i20 <= 0) {
                        currVelocity = 0;
                    }
                    recyclerView.absorbGlows(i21, currVelocity);
                }
                if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                    r rVar = recyclerView.mPrefetchRegistry;
                    int[] iArr7 = rVar.f2936c;
                    if (iArr7 != null) {
                        Arrays.fill(iArr7, -1);
                    }
                    rVar.d = 0;
                }
            } else {
                b();
                t tVar = recyclerView.mGapWorker;
                if (tVar != null) {
                    tVar.a(recyclerView, i12, i11);
                }
            }
            if (Build.VERSION.SDK_INT >= 35) {
                n0.a(recyclerView, Math.abs(overScroller.getCurrVelocity()));
            }
        }
        k1 k1Var3 = recyclerView.mLayout.mSmoothScroller;
        if (k1Var3 != null && k1Var3.isPendingInitialRun()) {
            k1Var3.onAnimation(0, 0);
        }
        this.f2907e = false;
        if (!this.f) {
            recyclerView.setScrollState(0);
            recyclerView.stopNestedScroll(1);
        } else {
            recyclerView.removeCallbacks(this);
            WeakHashMap weakHashMap = n0.s0.f8353a;
            recyclerView.postOnAnimation(this);
        }
    }
}
