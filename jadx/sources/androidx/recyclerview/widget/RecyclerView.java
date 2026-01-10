package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.customview.view.AbsSavedState;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements n0.n {
    static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC;
    static final boolean ALLOW_THREAD_GAP_WORK;
    static final int DEFAULT_ORIENTATION = 1;
    static final boolean DISPATCH_TEMP_DETACH = false;
    private static final float FLING_DESTRETCH_FACTOR = 4.0f;
    static final boolean FORCE_INVALIDATE_DISPLAY_LIST;
    static final long FOREVER_NS = Long.MAX_VALUE;
    public static final int HORIZONTAL = 0;
    private static final float INFLEXION = 0.35f;
    private static final int INVALID_POINTER = -1;
    public static final int INVALID_TYPE = -1;
    private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
    static final String LOW_RES_ROTARY_ENCODER_FEATURE = "android.hardware.rotaryencoder.lowres";
    static final int MAX_SCROLL_DURATION = 2000;
    public static final long NO_ID = -1;
    public static final int NO_POSITION = -1;
    private static final float SCROLL_FRICTION = 0.015f;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    static final String TAG = "RecyclerView";
    public static final int TOUCH_SLOP_DEFAULT = 0;
    public static final int TOUCH_SLOP_PAGING = 1;
    static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
    private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
    private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
    private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
    static final String TRACE_PREFETCH_TAG = "RV Prefetch";
    static final String TRACE_SCROLL_TAG = "RV Scroll";
    public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
    static final boolean VERBOSE_TRACING = false;
    public static final int VERTICAL = 1;
    static boolean sDebugAssertionsEnabled;
    static final m1 sDefaultEdgeEffectFactory;
    static final Interpolator sQuinticInterpolator;
    static boolean sVerboseLoggingEnabled;
    r1 mAccessibilityDelegate;
    private final AccessibilityManager mAccessibilityManager;
    k0 mAdapter;
    b mAdapterHelper;
    boolean mAdapterUpdateDuringMeasure;
    private EdgeEffect mBottomGlow;
    private o0 mChildDrawingOrderCallback;
    d mChildHelper;
    boolean mClipToPadding;
    boolean mDataSetHasChangedAfterLayout;
    n0.h mDifferentialMotionFlingController;
    private final n0.i mDifferentialMotionFlingTarget;
    boolean mDispatchItemsChangedEvent;
    private int mDispatchScrollCounter;
    private int mEatenAccessibilityChangeFlags;
    private p0 mEdgeEffectFactory;
    boolean mEnableFastScroller;
    boolean mFirstLayoutComplete;
    t mGapWorker;
    boolean mHasFixedSize;
    private boolean mIgnoreMotionEventTillDown;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private int mInterceptRequestLayoutDepth;
    private a1 mInterceptingOnItemTouchListener;
    boolean mIsAttached;
    s0 mItemAnimator;
    private q0 mItemAnimatorListener;
    private Runnable mItemAnimatorRunner;
    final ArrayList<t0> mItemDecorations;
    boolean mItemsAddedOrRemoved;
    boolean mItemsChanged;
    private int mLastAutoMeasureNonExactMeasuredHeight;
    private int mLastAutoMeasureNonExactMeasuredWidth;
    private boolean mLastAutoMeasureSkippedDueToExact;
    private int mLastTouchX;
    private int mLastTouchY;
    x0 mLayout;
    private int mLayoutOrScrollCounter;
    boolean mLayoutSuppressed;
    boolean mLayoutWasDefered;
    private EdgeEffect mLeftGlow;
    boolean mLowResRotaryEncoderFeature;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private final int[] mMinMaxLayoutPositions;
    private final int[] mNestedOffsets;
    private final g1 mObserver;
    private List<y0> mOnChildAttachStateListeners;
    private z0 mOnFlingListener;
    private final ArrayList<a1> mOnItemTouchListeners;
    final List<p1> mPendingAccessibilityImportanceChange;
    SavedState mPendingSavedState;
    private final float mPhysicalCoef;
    boolean mPostedAnimatorRunner;
    r mPrefetchRegistry;
    private boolean mPreserveFocusAfterLayout;
    final e1 mRecycler;
    f1 mRecyclerListener;
    final List<f1> mRecyclerListeners;
    final int[] mReusableIntPair;
    private EdgeEffect mRightGlow;
    float mScaledHorizontalScrollFactor;
    float mScaledVerticalScrollFactor;
    private b1 mScrollListener;
    private List<b1> mScrollListeners;
    private final int[] mScrollOffset;
    private int mScrollPointerId;
    private int mScrollState;
    private n0.o mScrollingChildHelper;
    final l1 mState;
    final Rect mTempRect;
    private final Rect mTempRect2;
    final RectF mTempRectF;
    private EdgeEffect mTopGlow;
    private int mTouchSlop;
    final Runnable mUpdateChildViewsRunnable;
    private VelocityTracker mVelocityTracker;
    final o1 mViewFlinger;
    private final d2 mViewInfoProcessCallback;
    final e2 mViewInfoStore;
    private static final int[] NESTED_SCROLLING_ATTRS = {R.attr.nestedScrollingEnabled};
    private static final float DECELERATION_RATE = (float) (Math.log(0.78d) / Math.log(0.9d));

    /* compiled from: MyApplication */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new h1();

        /* renamed from: c, reason: collision with root package name */
        public Parcelable f2763c;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2763c = parcel.readParcelable(classLoader == null ? x0.class.getClassLoader() : classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i6) {
            super.writeToParcel(parcel, i6);
            parcel.writeParcelable(this.f2763c, 0);
        }
    }

    static {
        int i6 = Build.VERSION.SDK_INT;
        FORCE_INVALIDATE_DISPLAY_LIST = false;
        ALLOW_SIZE_IN_UNSPECIFIED_SPEC = i6 >= 23;
        ALLOW_THREAD_GAP_WORK = true;
        Class<?> cls = Integer.TYPE;
        LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[]{Context.class, AttributeSet.class, cls, cls};
        sQuinticInterpolator = new h0();
        sDefaultEdgeEffectFactory = new m1();
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    private void addAnimatingView(p1 p1Var) {
        View view = p1Var.itemView;
        boolean z7 = view.getParent() == this;
        this.mRecycler.m(getChildViewHolder(view));
        if (p1Var.isTmpDetached()) {
            this.mChildHelper.b(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z7) {
            this.mChildHelper.a(view, -1, true);
            return;
        }
        d dVar = this.mChildHelper;
        int iIndexOfChild = ((RecyclerView) dVar.f2816a.f2858a).indexOfChild(view);
        if (iIndexOfChild >= 0) {
            dVar.f2817b.i(iIndexOfChild);
            dVar.i(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    private void animateChange(p1 p1Var, p1 p1Var2, r0 r0Var, r0 r0Var2, boolean z7, boolean z10) {
        p1Var.setIsRecyclable(false);
        if (z7) {
            addAnimatingView(p1Var);
        }
        if (p1Var != p1Var2) {
            if (z10) {
                addAnimatingView(p1Var2);
            }
            p1Var.mShadowedHolder = p1Var2;
            addAnimatingView(p1Var);
            this.mRecycler.m(p1Var);
            p1Var2.setIsRecyclable(false);
            p1Var2.mShadowingHolder = p1Var;
        }
        if (this.mItemAnimator.a(p1Var, p1Var2, r0Var, r0Var2)) {
            postAnimationRunner();
        }
    }

    private void cancelScroll() {
        resetScroll();
        setScrollState(0);
    }

    public static void clearNestedRecyclerViewIfNotNested(p1 p1Var) {
        WeakReference<RecyclerView> weakReference = p1Var.mNestedRecyclerView;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView == p1Var.itemView) {
                    return;
                }
                Object parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            p1Var.mNestedRecyclerView = null;
        }
    }

    private int consumeFlingInStretch(int i6, EdgeEffect edgeEffect, EdgeEffect edgeEffect2, int i10) {
        if (i6 > 0 && edgeEffect != null && com.bumptech.glide.d.m(edgeEffect) != 0.0f) {
            int iRound = Math.round(com.bumptech.glide.d.z(edgeEffect, ((-i6) * FLING_DESTRETCH_FACTOR) / i10, 0.5f) * ((-i10) / FLING_DESTRETCH_FACTOR));
            if (iRound != i6) {
                edgeEffect.finish();
            }
            return i6 - iRound;
        }
        if (i6 >= 0 || edgeEffect2 == null || com.bumptech.glide.d.m(edgeEffect2) == 0.0f) {
            return i6;
        }
        float f = i10;
        int iRound2 = Math.round(com.bumptech.glide.d.z(edgeEffect2, (i6 * FLING_DESTRETCH_FACTOR) / f, 0.5f) * (f / FLING_DESTRETCH_FACTOR));
        if (iRound2 != i6) {
            edgeEffect2.finish();
        }
        return i6 - iRound2;
    }

    private void createLayoutManager(Context context, String str, AttributeSet attributeSet, int i6, int i10) throws NoSuchMethodException, SecurityException {
        Object[] objArr;
        Constructor constructor;
        if (str != null) {
            String strTrim = str.trim();
            if (strTrim.isEmpty()) {
                return;
            }
            String fullClassName = getFullClassName(context, strTrim);
            try {
                Class<? extends U> clsAsSubclass = Class.forName(fullClassName, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(x0.class);
                try {
                    constructor = clsAsSubclass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
                    objArr = new Object[]{context, attributeSet, Integer.valueOf(i6), Integer.valueOf(i10)};
                } catch (NoSuchMethodException e5) {
                    objArr = null;
                    try {
                        constructor = clsAsSubclass.getConstructor(null);
                    } catch (NoSuchMethodException e10) {
                        e10.initCause(e5);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + fullClassName, e10);
                    }
                }
                constructor.setAccessible(true);
                setLayoutManager((x0) constructor.newInstance(objArr));
            } catch (ClassCastException e11) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + fullClassName, e11);
            } catch (ClassNotFoundException e12) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + fullClassName, e12);
            } catch (IllegalAccessException e13) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + fullClassName, e13);
            } catch (InstantiationException e14) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + fullClassName, e14);
            } catch (InvocationTargetException e15) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + fullClassName, e15);
            }
        }
    }

    private boolean didChildRangeChange(int i6, int i10) {
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        int[] iArr = this.mMinMaxLayoutPositions;
        return (iArr[0] == i6 && iArr[1] == i10) ? false : true;
    }

    private void dispatchContentChangedIfNecessary() {
        int i6 = this.mEatenAccessibilityChangeFlags;
        this.mEatenAccessibilityChangeFlags = 0;
        if (i6 == 0 || !isAccessibilityEnabled()) {
            return;
        }
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
        accessibilityEventObtain.setEventType(2048);
        accessibilityEventObtain.setContentChangeTypes(i6);
        sendAccessibilityEventUnchecked(accessibilityEventObtain);
    }

    private void dispatchLayoutStep1() {
        c2 c2Var;
        this.mState.a(1);
        fillRemainingScrollValues(this.mState);
        this.mState.f2892i = false;
        startInterceptRequestLayout();
        e2 e2Var = this.mViewInfoStore;
        e2Var.f2837a.clear();
        e2Var.f2838b.b();
        onEnterLayoutOrScroll();
        processAdapterUpdatesAndSetAnimationFlags();
        saveFocusInfo();
        l1 l1Var = this.mState;
        l1Var.f2891h = l1Var.f2893j && this.mItemsChanged;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        l1Var.f2890g = l1Var.f2894k;
        l1Var.f2889e = this.mAdapter.getItemCount();
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        if (this.mState.f2893j) {
            int iE = this.mChildHelper.e();
            for (int i6 = 0; i6 < iE; i6++) {
                p1 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i6));
                if (!childViewHolderInt.shouldIgnore() && (!childViewHolderInt.isInvalid() || this.mAdapter.hasStableIds())) {
                    s0 s0Var = this.mItemAnimator;
                    s0.b(childViewHolderInt);
                    childViewHolderInt.getUnmodifiedPayloads();
                    s0Var.getClass();
                    r0 r0Var = new r0();
                    r0Var.a(childViewHolderInt);
                    p.l lVar = this.mViewInfoStore.f2837a;
                    c2 c2VarA = (c2) lVar.get(childViewHolderInt);
                    if (c2VarA == null) {
                        c2VarA = c2.a();
                        lVar.put(childViewHolderInt, c2VarA);
                    }
                    c2VarA.f2814b = r0Var;
                    c2VarA.f2813a |= 4;
                    if (this.mState.f2891h && childViewHolderInt.isUpdated() && !childViewHolderInt.isRemoved() && !childViewHolderInt.shouldIgnore() && !childViewHolderInt.isInvalid()) {
                        this.mViewInfoStore.f2838b.h(getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                    }
                }
            }
        }
        if (this.mState.f2894k) {
            saveOldPositions();
            l1 l1Var2 = this.mState;
            boolean z7 = l1Var2.f;
            l1Var2.f = false;
            this.mLayout.onLayoutChildren(this.mRecycler, l1Var2);
            this.mState.f = z7;
            for (int i10 = 0; i10 < this.mChildHelper.e(); i10++) {
                p1 childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.d(i10));
                if (!childViewHolderInt2.shouldIgnore() && ((c2Var = (c2) this.mViewInfoStore.f2837a.get(childViewHolderInt2)) == null || (c2Var.f2813a & 4) == 0)) {
                    s0.b(childViewHolderInt2);
                    boolean zHasAnyOfTheFlags = childViewHolderInt2.hasAnyOfTheFlags(8192);
                    s0 s0Var2 = this.mItemAnimator;
                    childViewHolderInt2.getUnmodifiedPayloads();
                    s0Var2.getClass();
                    r0 r0Var2 = new r0();
                    r0Var2.a(childViewHolderInt2);
                    if (zHasAnyOfTheFlags) {
                        recordAnimationInfoIfBouncedHiddenView(childViewHolderInt2, r0Var2);
                    } else {
                        p.l lVar2 = this.mViewInfoStore.f2837a;
                        c2 c2VarA2 = (c2) lVar2.get(childViewHolderInt2);
                        if (c2VarA2 == null) {
                            c2VarA2 = c2.a();
                            lVar2.put(childViewHolderInt2, c2VarA2);
                        }
                        c2VarA2.f2813a |= 2;
                        c2VarA2.f2814b = r0Var2;
                    }
                }
            }
            clearOldPositions();
        } else {
            clearOldPositions();
        }
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mState.d = 2;
    }

    private void dispatchLayoutStep2() {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.a(6);
        this.mAdapterHelper.c();
        this.mState.f2889e = this.mAdapter.getItemCount();
        this.mState.f2888c = 0;
        if (this.mPendingSavedState != null && this.mAdapter.canRestoreState()) {
            Parcelable parcelable = this.mPendingSavedState.f2763c;
            if (parcelable != null) {
                this.mLayout.onRestoreInstanceState(parcelable);
            }
            this.mPendingSavedState = null;
        }
        l1 l1Var = this.mState;
        l1Var.f2890g = false;
        this.mLayout.onLayoutChildren(this.mRecycler, l1Var);
        l1 l1Var2 = this.mState;
        l1Var2.f = false;
        l1Var2.f2893j = l1Var2.f2893j && this.mItemAnimator != null;
        l1Var2.d = 4;
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
    }

    private void dispatchLayoutStep3() {
        boolean zG;
        this.mState.a(4);
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        l1 l1Var = this.mState;
        l1Var.d = 1;
        if (l1Var.f2893j) {
            for (int iE = this.mChildHelper.e() - 1; iE >= 0; iE--) {
                p1 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(iE));
                if (!childViewHolderInt.shouldIgnore()) {
                    long changedHolderKey = getChangedHolderKey(childViewHolderInt);
                    this.mItemAnimator.getClass();
                    r0 r0Var = new r0();
                    r0Var.a(childViewHolderInt);
                    p1 p1Var = (p1) this.mViewInfoStore.f2838b.d(changedHolderKey);
                    if (p1Var == null || p1Var.shouldIgnore()) {
                        this.mViewInfoStore.a(childViewHolderInt, r0Var);
                    } else {
                        c2 c2Var = (c2) this.mViewInfoStore.f2837a.get(p1Var);
                        boolean z7 = (c2Var == null || (c2Var.f2813a & 1) == 0) ? false : true;
                        c2 c2Var2 = (c2) this.mViewInfoStore.f2837a.get(childViewHolderInt);
                        boolean z10 = (c2Var2 == null || (c2Var2.f2813a & 1) == 0) ? false : true;
                        if (z7 && p1Var == childViewHolderInt) {
                            this.mViewInfoStore.a(childViewHolderInt, r0Var);
                        } else {
                            r0 r0VarB = this.mViewInfoStore.b(p1Var, 4);
                            this.mViewInfoStore.a(childViewHolderInt, r0Var);
                            r0 r0VarB2 = this.mViewInfoStore.b(childViewHolderInt, 8);
                            if (r0VarB == null) {
                                handleMissingPreInfoForChangeError(changedHolderKey, childViewHolderInt, p1Var);
                            } else {
                                animateChange(p1Var, childViewHolderInt, r0VarB, r0VarB2, z7, z10);
                            }
                        }
                    }
                }
            }
            e2 e2Var = this.mViewInfoStore;
            d2 d2Var = this.mViewInfoProcessCallback;
            p.l lVar = e2Var.f2837a;
            for (int i6 = lVar.f8858c - 1; i6 >= 0; i6--) {
                p1 p1Var2 = (p1) lVar.f(i6);
                c2 c2Var3 = (c2) lVar.h(i6);
                int i10 = c2Var3.f2813a;
                if ((i10 & 3) == 3) {
                    RecyclerView recyclerView = (RecyclerView) ((i0) d2Var).f2858a;
                    recyclerView.mLayout.removeAndRecycleView(p1Var2.itemView, recyclerView.mRecycler);
                } else if ((i10 & 1) != 0) {
                    r0 r0Var2 = c2Var3.f2814b;
                    if (r0Var2 == null) {
                        RecyclerView recyclerView2 = (RecyclerView) ((i0) d2Var).f2858a;
                        recyclerView2.mLayout.removeAndRecycleView(p1Var2.itemView, recyclerView2.mRecycler);
                    } else {
                        r0 r0Var3 = c2Var3.f2815c;
                        RecyclerView recyclerView3 = (RecyclerView) ((i0) d2Var).f2858a;
                        recyclerView3.mRecycler.m(p1Var2);
                        recyclerView3.animateDisappearance(p1Var2, r0Var2, r0Var3);
                    }
                } else if ((i10 & 14) == 14) {
                    ((RecyclerView) ((i0) d2Var).f2858a).animateAppearance(p1Var2, c2Var3.f2814b, c2Var3.f2815c);
                } else if ((i10 & 12) == 12) {
                    r0 r0Var4 = c2Var3.f2814b;
                    r0 r0Var5 = c2Var3.f2815c;
                    i0 i0Var = (i0) d2Var;
                    i0Var.getClass();
                    p1Var2.setIsRecyclable(false);
                    RecyclerView recyclerView4 = (RecyclerView) i0Var.f2858a;
                    if (!recyclerView4.mDataSetHasChangedAfterLayout) {
                        k kVar = (k) recyclerView4.mItemAnimator;
                        kVar.getClass();
                        int i11 = r0Var4.f2937a;
                        int i12 = r0Var5.f2937a;
                        if (i11 == i12 && r0Var4.f2938b == r0Var5.f2938b) {
                            kVar.c(p1Var2);
                            zG = false;
                        } else {
                            zG = kVar.g(p1Var2, i11, r0Var4.f2938b, i12, r0Var5.f2938b);
                        }
                        if (zG) {
                            recyclerView4.postAnimationRunner();
                        }
                    } else if (recyclerView4.mItemAnimator.a(p1Var2, p1Var2, r0Var4, r0Var5)) {
                        recyclerView4.postAnimationRunner();
                    }
                } else if ((i10 & 4) != 0) {
                    r0 r0Var6 = c2Var3.f2814b;
                    RecyclerView recyclerView5 = (RecyclerView) ((i0) d2Var).f2858a;
                    recyclerView5.mRecycler.m(p1Var2);
                    recyclerView5.animateDisappearance(p1Var2, r0Var6, null);
                } else if ((i10 & 8) != 0) {
                    ((RecyclerView) ((i0) d2Var).f2858a).animateAppearance(p1Var2, c2Var3.f2814b, c2Var3.f2815c);
                }
                c2Var3.f2813a = 0;
                c2Var3.f2814b = null;
                c2Var3.f2815c = null;
                c2.d.c(c2Var3);
            }
        }
        this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        l1 l1Var2 = this.mState;
        l1Var2.f2887b = l1Var2.f2889e;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        l1Var2.f2893j = false;
        l1Var2.f2894k = false;
        this.mLayout.mRequestedSimpleAnimations = false;
        ArrayList arrayList = this.mRecycler.f2832b;
        if (arrayList != null) {
            arrayList.clear();
        }
        x0 x0Var = this.mLayout;
        if (x0Var.mPrefetchMaxObservedInInitialPrefetch) {
            x0Var.mPrefetchMaxCountObserved = 0;
            x0Var.mPrefetchMaxObservedInInitialPrefetch = false;
            this.mRecycler.n();
        }
        this.mLayout.onLayoutCompleted(this.mState);
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        e2 e2Var2 = this.mViewInfoStore;
        e2Var2.f2837a.clear();
        e2Var2.f2838b.b();
        int[] iArr = this.mMinMaxLayoutPositions;
        if (didChildRangeChange(iArr[0], iArr[1])) {
            dispatchOnScrolled(0, 0);
        }
        recoverFocusFromState();
        resetFocusInfo();
    }

    private boolean dispatchToOnItemTouchListeners(MotionEvent motionEvent) {
        a1 a1Var = this.mInterceptingOnItemTouchListener;
        if (a1Var == null) {
            if (motionEvent.getAction() == 0) {
                return false;
            }
            return findInterceptingOnItemTouchListener(motionEvent);
        }
        p pVar = (p) a1Var;
        if (pVar.f2928v != 0) {
            if (motionEvent.getAction() == 0) {
                boolean zB = pVar.b(motionEvent.getX(), motionEvent.getY());
                boolean zA = pVar.a(motionEvent.getX(), motionEvent.getY());
                if (zB || zA) {
                    if (zA) {
                        pVar.f2929w = 1;
                        pVar.f2922p = (int) motionEvent.getX();
                    } else if (zB) {
                        pVar.f2929w = 2;
                        pVar.f2919m = (int) motionEvent.getY();
                    }
                    pVar.d(2);
                }
            } else if (motionEvent.getAction() == 1 && pVar.f2928v == 2) {
                pVar.f2919m = 0.0f;
                pVar.f2922p = 0.0f;
                pVar.d(1);
                pVar.f2929w = 0;
            } else if (motionEvent.getAction() == 2 && pVar.f2928v == 2) {
                pVar.e();
                int i6 = pVar.f2929w;
                int i10 = pVar.f2910b;
                if (i6 == 1) {
                    float x10 = motionEvent.getX();
                    int[] iArr = pVar.f2931y;
                    iArr[0] = i10;
                    int i11 = pVar.f2923q - i10;
                    iArr[1] = i11;
                    float fMax = Math.max(i10, Math.min(i11, x10));
                    if (Math.abs(pVar.f2921o - fMax) >= 2.0f) {
                        int iC = p.c(pVar.f2922p, fMax, iArr, pVar.f2925s.computeHorizontalScrollRange(), pVar.f2925s.computeHorizontalScrollOffset(), pVar.f2923q);
                        if (iC != 0) {
                            pVar.f2925s.scrollBy(iC, 0);
                        }
                        pVar.f2922p = fMax;
                    }
                }
                if (pVar.f2929w == 2) {
                    float y7 = motionEvent.getY();
                    int[] iArr2 = pVar.f2930x;
                    iArr2[0] = i10;
                    int i12 = pVar.f2924r - i10;
                    iArr2[1] = i12;
                    float fMax2 = Math.max(i10, Math.min(i12, y7));
                    if (Math.abs(pVar.f2918l - fMax2) >= 2.0f) {
                        int iC2 = p.c(pVar.f2919m, fMax2, iArr2, pVar.f2925s.computeVerticalScrollRange(), pVar.f2925s.computeVerticalScrollOffset(), pVar.f2924r);
                        if (iC2 != 0) {
                            pVar.f2925s.scrollBy(0, iC2);
                        }
                        pVar.f2919m = fMax2;
                    }
                }
            }
        }
        int action = motionEvent.getAction();
        if (action == 3 || action == 1) {
            this.mInterceptingOnItemTouchListener = null;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0063 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0066 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean findInterceptingOnItemTouchListener(android.view.MotionEvent r12) {
        /*
            r11 = this;
            int r0 = r12.getAction()
            java.util.ArrayList<androidx.recyclerview.widget.a1> r1 = r11.mOnItemTouchListeners
            int r1 = r1.size()
            r2 = 0
            r3 = 0
        Lc:
            if (r3 >= r1) goto L69
            java.util.ArrayList<androidx.recyclerview.widget.a1> r4 = r11.mOnItemTouchListeners
            java.lang.Object r4 = r4.get(r3)
            androidx.recyclerview.widget.a1 r4 = (androidx.recyclerview.widget.a1) r4
            r5 = r4
            androidx.recyclerview.widget.p r5 = (androidx.recyclerview.widget.p) r5
            int r6 = r5.f2928v
            r7 = 1
            r8 = 2
            if (r6 != r7) goto L5e
            float r6 = r12.getX()
            float r9 = r12.getY()
            boolean r6 = r5.b(r6, r9)
            float r9 = r12.getX()
            float r10 = r12.getY()
            boolean r9 = r5.a(r9, r10)
            int r10 = r12.getAction()
            if (r10 != 0) goto L66
            if (r6 != 0) goto L41
            if (r9 == 0) goto L66
        L41:
            if (r9 == 0) goto L4e
            r5.f2929w = r7
            float r6 = r12.getX()
            int r6 = (int) r6
            float r6 = (float) r6
            r5.f2922p = r6
            goto L5a
        L4e:
            if (r6 == 0) goto L5a
            r5.f2929w = r8
            float r6 = r12.getY()
            int r6 = (int) r6
            float r6 = (float) r6
            r5.f2919m = r6
        L5a:
            r5.d(r8)
            goto L60
        L5e:
            if (r6 != r8) goto L66
        L60:
            r5 = 3
            if (r0 == r5) goto L66
            r11.mInterceptingOnItemTouchListener = r4
            return r7
        L66:
            int r3 = r3 + 1
            goto Lc
        L69:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.findInterceptingOnItemTouchListener(android.view.MotionEvent):boolean");
    }

    private void findMinMaxChildLayoutPositions(int[] iArr) {
        int iE = this.mChildHelper.e();
        if (iE == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i6 = Integer.MAX_VALUE;
        int i10 = Integer.MIN_VALUE;
        for (int i11 = 0; i11 < iE; i11++) {
            p1 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i11));
            if (!childViewHolderInt.shouldIgnore()) {
                int layoutPosition = childViewHolderInt.getLayoutPosition();
                if (layoutPosition < i6) {
                    i6 = layoutPosition;
                }
                if (layoutPosition > i10) {
                    i10 = layoutPosition;
                }
            }
        }
        iArr[0] = i6;
        iArr[1] = i10;
    }

    public static RecyclerView findNestedRecyclerView(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            RecyclerView recyclerViewFindNestedRecyclerView = findNestedRecyclerView(viewGroup.getChildAt(i6));
            if (recyclerViewFindNestedRecyclerView != null) {
                return recyclerViewFindNestedRecyclerView;
            }
        }
        return null;
    }

    private View findNextViewToFocus() {
        p1 p1VarFindViewHolderForAdapterPosition;
        l1 l1Var = this.mState;
        int i6 = l1Var.f2895l;
        if (i6 == -1) {
            i6 = 0;
        }
        int iB = l1Var.b();
        for (int i10 = i6; i10 < iB; i10++) {
            p1 p1VarFindViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i10);
            if (p1VarFindViewHolderForAdapterPosition2 == null) {
                break;
            }
            if (p1VarFindViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                return p1VarFindViewHolderForAdapterPosition2.itemView;
            }
        }
        int iMin = Math.min(iB, i6);
        do {
            iMin--;
            if (iMin < 0 || (p1VarFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(iMin)) == null) {
                return null;
            }
        } while (!p1VarFindViewHolderForAdapterPosition.itemView.hasFocusable());
        return p1VarFindViewHolderForAdapterPosition.itemView;
    }

    public static p1 getChildViewHolderInt(View view) {
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).f2760a;
    }

    public static void getDecoratedBoundsWithMarginsInt(View view, Rect rect) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect2 = layoutParams.f2761b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
    }

    private int getDeepestFocusedViewWithId(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id = view.getId();
            }
        }
        return id;
    }

    private String getFullClassName(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        }
        if (str.contains(".")) {
            return str;
        }
        return RecyclerView.class.getPackage().getName() + '.' + str;
    }

    private n0.o getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new n0.o(this);
        }
        return this.mScrollingChildHelper;
    }

    private float getSplineFlingDistance(int i6) {
        double dLog = Math.log((Math.abs(i6) * INFLEXION) / (this.mPhysicalCoef * SCROLL_FRICTION));
        float f = DECELERATION_RATE;
        return (float) (Math.exp((f / (f - 1.0d)) * dLog) * this.mPhysicalCoef * SCROLL_FRICTION);
    }

    private void handleMissingPreInfoForChangeError(long j10, p1 p1Var, p1 p1Var2) {
        int iE = this.mChildHelper.e();
        for (int i6 = 0; i6 < iE; i6++) {
            p1 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i6));
            if (childViewHolderInt != p1Var && getChangedHolderKey(childViewHolderInt) == j10) {
                k0 k0Var = this.mAdapter;
                if (k0Var == null || !k0Var.hasStableIds()) {
                    StringBuilder sb = new StringBuilder("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:");
                    sb.append(childViewHolderInt);
                    sb.append(" \n View Holder 2:");
                    sb.append(p1Var);
                    throw new IllegalStateException(a.e.p(this, sb));
                }
                StringBuilder sb2 = new StringBuilder("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:");
                sb2.append(childViewHolderInt);
                sb2.append(" \n View Holder 2:");
                sb2.append(p1Var);
                throw new IllegalStateException(a.e.p(this, sb2));
            }
        }
        Log.e(TAG, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + p1Var2 + " cannot be found but it is necessary for " + p1Var + exceptionLabel());
    }

    private boolean hasUpdatedView() {
        int iE = this.mChildHelper.e();
        for (int i6 = 0; i6 < iE; i6++) {
            p1 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i6));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.isUpdated()) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"InlinedApi"})
    private void initAutofill() {
        WeakHashMap weakHashMap = n0.s0.f8353a;
        int i6 = Build.VERSION.SDK_INT;
        if ((i6 >= 26 ? n0.j0.c(this) : 0) != 0 || i6 < 26) {
            return;
        }
        n0.j0.m(this, 8);
    }

    private void initChildrenHelper() {
        this.mChildHelper = new d(new i0(this));
    }

    private boolean isPreferredNextFocus(View view, View view2, int i6) {
        int i10;
        if (view2 == null || view2 == this || view2 == view || findContainingItemView(view2) == null) {
            return false;
        }
        if (view == null || findContainingItemView(view) == null) {
            return true;
        }
        this.mTempRect.set(0, 0, view.getWidth(), view.getHeight());
        this.mTempRect2.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        offsetDescendantRectToMyCoords(view2, this.mTempRect2);
        char c5 = 65535;
        int i11 = this.mLayout.getLayoutDirection() == 1 ? -1 : 1;
        Rect rect = this.mTempRect;
        int i12 = rect.left;
        Rect rect2 = this.mTempRect2;
        int i13 = rect2.left;
        if ((i12 < i13 || rect.right <= i13) && rect.right < rect2.right) {
            i10 = 1;
        } else {
            int i14 = rect.right;
            int i15 = rect2.right;
            i10 = ((i14 > i15 || i12 >= i15) && i12 > i13) ? -1 : 0;
        }
        int i16 = rect.top;
        int i17 = rect2.top;
        if ((i16 < i17 || rect.bottom <= i17) && rect.bottom < rect2.bottom) {
            c5 = 1;
        } else {
            int i18 = rect.bottom;
            int i19 = rect2.bottom;
            if ((i18 <= i19 && i16 < i19) || i16 <= i17) {
                c5 = 0;
            }
        }
        if (i6 == 1) {
            return c5 < 0 || (c5 == 0 && i10 * i11 < 0);
        }
        if (i6 == 2) {
            return c5 > 0 || (c5 == 0 && i10 * i11 > 0);
        }
        if (i6 == 17) {
            return i10 < 0;
        }
        if (i6 == 33) {
            return c5 < 0;
        }
        if (i6 == 66) {
            return i10 > 0;
        }
        if (i6 == 130) {
            return c5 > 0;
        }
        StringBuilder sb = new StringBuilder("Invalid direction: ");
        sb.append(i6);
        throw new IllegalArgumentException(a.e.p(this, sb));
    }

    private void nestedScrollByInternal(int i6, int i10, MotionEvent motionEvent, int i11) {
        x0 x0Var = this.mLayout;
        if (x0Var == null) {
            Log.e(TAG, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        boolean zCanScrollHorizontally = x0Var.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        int i12 = zCanScrollVertically ? (zCanScrollHorizontally ? 1 : 0) | 2 : zCanScrollHorizontally ? 1 : 0;
        float height = motionEvent == null ? getHeight() / 2.0f : motionEvent.getY();
        float width = motionEvent == null ? getWidth() / 2.0f : motionEvent.getX();
        int iReleaseHorizontalGlow = i6 - releaseHorizontalGlow(i6, height);
        int iReleaseVerticalGlow = i10 - releaseVerticalGlow(i10, width);
        startNestedScroll(i12, i11);
        if (dispatchNestedPreScroll(zCanScrollHorizontally ? iReleaseHorizontalGlow : 0, zCanScrollVertically ? iReleaseVerticalGlow : 0, this.mReusableIntPair, this.mScrollOffset, i11)) {
            int[] iArr2 = this.mReusableIntPair;
            iReleaseHorizontalGlow -= iArr2[0];
            iReleaseVerticalGlow -= iArr2[1];
        }
        scrollByInternal(zCanScrollHorizontally ? iReleaseHorizontalGlow : 0, zCanScrollVertically ? iReleaseVerticalGlow : 0, motionEvent, i11);
        t tVar = this.mGapWorker;
        if (tVar != null && (iReleaseHorizontalGlow != 0 || iReleaseVerticalGlow != 0)) {
            tVar.a(this, iReleaseHorizontalGlow, iReleaseVerticalGlow);
        }
        stopNestedScroll(i11);
    }

    private void onPointerUp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mScrollPointerId) {
            int i6 = actionIndex == 0 ? 1 : 0;
            this.mScrollPointerId = motionEvent.getPointerId(i6);
            int x10 = (int) (motionEvent.getX(i6) + 0.5f);
            this.mLastTouchX = x10;
            this.mInitialTouchX = x10;
            int y7 = (int) (motionEvent.getY(i6) + 0.5f);
            this.mLastTouchY = y7;
            this.mInitialTouchY = y7;
        }
    }

    private boolean predictiveItemAnimationsEnabled() {
        return this.mItemAnimator != null && this.mLayout.supportsPredictiveItemAnimations();
    }

    private void processAdapterUpdatesAndSetAnimationFlags() {
        boolean z7;
        boolean z10 = false;
        if (this.mDataSetHasChangedAfterLayout) {
            b bVar = this.mAdapterHelper;
            bVar.k(bVar.f2802b);
            bVar.k(bVar.f2803c);
            bVar.f = 0;
            if (this.mDispatchItemsChangedEvent) {
                this.mLayout.onItemsChanged(this);
            }
        }
        if (predictiveItemAnimationsEnabled()) {
            this.mAdapterHelper.j();
        } else {
            this.mAdapterHelper.c();
        }
        boolean z11 = this.mItemsAddedOrRemoved || this.mItemsChanged;
        this.mState.f2893j = this.mFirstLayoutComplete && this.mItemAnimator != null && ((z7 = this.mDataSetHasChangedAfterLayout) || z11 || this.mLayout.mRequestedSimpleAnimations) && (!z7 || this.mAdapter.hasStableIds());
        l1 l1Var = this.mState;
        if (l1Var.f2893j && z11 && !this.mDataSetHasChangedAfterLayout && predictiveItemAnimationsEnabled()) {
            z10 = true;
        }
        l1Var.f2894k = z10;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void pullGlows(float r7, float r8, float r9, float r10) {
        /*
            r6 = this;
            r0 = 1065353216(0x3f800000, float:1.0)
            r1 = 1
            r2 = 0
            int r3 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r3 >= 0) goto L21
            r6.ensureLeftGlow()
            android.widget.EdgeEffect r3 = r6.mLeftGlow
            float r4 = -r8
            int r5 = r6.getWidth()
            float r5 = (float) r5
            float r4 = r4 / r5
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            float r9 = r0 - r9
            com.bumptech.glide.d.z(r3, r4, r9)
        L1f:
            r9 = 1
            goto L3c
        L21:
            int r3 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r3 <= 0) goto L3b
            r6.ensureRightGlow()
            android.widget.EdgeEffect r3 = r6.mRightGlow
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r4 = r8 / r4
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            com.bumptech.glide.d.z(r3, r4, r9)
            goto L1f
        L3b:
            r9 = 0
        L3c:
            int r3 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r3 >= 0) goto L56
            r6.ensureTopGlow()
            android.widget.EdgeEffect r9 = r6.mTopGlow
            float r0 = -r10
            int r3 = r6.getHeight()
            float r3 = (float) r3
            float r0 = r0 / r3
            int r3 = r6.getWidth()
            float r3 = (float) r3
            float r7 = r7 / r3
            com.bumptech.glide.d.z(r9, r0, r7)
            goto L72
        L56:
            int r3 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r3 <= 0) goto L71
            r6.ensureBottomGlow()
            android.widget.EdgeEffect r9 = r6.mBottomGlow
            int r3 = r6.getHeight()
            float r3 = (float) r3
            float r3 = r10 / r3
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r7 = r7 / r4
            float r0 = r0 - r7
            com.bumptech.glide.d.z(r9, r3, r0)
            goto L72
        L71:
            r1 = r9
        L72:
            if (r1 != 0) goto L7c
            int r7 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r7 != 0) goto L7c
            int r7 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r7 == 0) goto L7f
        L7c:
            r6.postInvalidateOnAnimation()
        L7f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.pullGlows(float, float, float, float):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void recoverFocusFromState() {
        /*
            r7 = this;
            boolean r0 = r7.mPreserveFocusAfterLayout
            if (r0 == 0) goto L99
            androidx.recyclerview.widget.k0 r0 = r7.mAdapter
            if (r0 == 0) goto L99
            boolean r0 = r7.hasFocus()
            if (r0 == 0) goto L99
            int r0 = r7.getDescendantFocusability()
            r1 = 393216(0x60000, float:5.51013E-40)
            if (r0 == r1) goto L99
            int r0 = r7.getDescendantFocusability()
            r1 = 131072(0x20000, float:1.83671E-40)
            if (r0 != r1) goto L26
            boolean r0 = r7.isFocused()
            if (r0 == 0) goto L26
            goto L99
        L26:
            boolean r0 = r7.isFocused()
            if (r0 != 0) goto L3b
            android.view.View r0 = r7.getFocusedChild()
            androidx.recyclerview.widget.d r1 = r7.mChildHelper
            java.util.ArrayList r1 = r1.f2818c
            boolean r0 = r1.contains(r0)
            if (r0 != 0) goto L3b
            return
        L3b:
            androidx.recyclerview.widget.l1 r0 = r7.mState
            long r0 = r0.f2896m
            r2 = -1
            r4 = 0
            int r5 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r5 == 0) goto L57
            androidx.recyclerview.widget.k0 r0 = r7.mAdapter
            boolean r0 = r0.hasStableIds()
            if (r0 == 0) goto L57
            androidx.recyclerview.widget.l1 r0 = r7.mState
            long r0 = r0.f2896m
            androidx.recyclerview.widget.p1 r0 = r7.findViewHolderForItemId(r0)
            goto L58
        L57:
            r0 = r4
        L58:
            if (r0 == 0) goto L72
            androidx.recyclerview.widget.d r1 = r7.mChildHelper
            android.view.View r5 = r0.itemView
            java.util.ArrayList r1 = r1.f2818c
            boolean r1 = r1.contains(r5)
            if (r1 != 0) goto L72
            android.view.View r1 = r0.itemView
            boolean r1 = r1.hasFocusable()
            if (r1 != 0) goto L6f
            goto L72
        L6f:
            android.view.View r4 = r0.itemView
            goto L7e
        L72:
            androidx.recyclerview.widget.d r0 = r7.mChildHelper
            int r0 = r0.e()
            if (r0 <= 0) goto L7e
            android.view.View r4 = r7.findNextViewToFocus()
        L7e:
            if (r4 == 0) goto L99
            androidx.recyclerview.widget.l1 r0 = r7.mState
            int r0 = r0.f2897n
            long r5 = (long) r0
            int r1 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r1 == 0) goto L96
            android.view.View r0 = r4.findViewById(r0)
            if (r0 == 0) goto L96
            boolean r1 = r0.isFocusable()
            if (r1 == 0) goto L96
            r4 = r0
        L96:
            r4.requestFocus()
        L99:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.recoverFocusFromState():void");
    }

    private void releaseGlows() {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.mLeftGlow.isFinished();
        } else {
            zIsFinished = false;
        }
        EdgeEffect edgeEffect2 = this.mTopGlow;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mRightGlow;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.mBottomGlow.isFinished();
        }
        if (zIsFinished) {
            postInvalidateOnAnimation();
        }
    }

    private int releaseHorizontalGlow(int i6, float f) {
        float height = f / getHeight();
        float width = i6 / getWidth();
        EdgeEffect edgeEffect = this.mLeftGlow;
        float f3 = 0.0f;
        if (edgeEffect == null || com.bumptech.glide.d.m(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.mRightGlow;
            if (edgeEffect2 != null && com.bumptech.glide.d.m(edgeEffect2) != 0.0f) {
                if (canScrollHorizontally(1)) {
                    this.mRightGlow.onRelease();
                } else {
                    float fZ = com.bumptech.glide.d.z(this.mRightGlow, width, height);
                    if (com.bumptech.glide.d.m(this.mRightGlow) == 0.0f) {
                        this.mRightGlow.onRelease();
                    }
                    f3 = fZ;
                }
                invalidate();
            }
        } else {
            if (canScrollHorizontally(-1)) {
                this.mLeftGlow.onRelease();
            } else {
                float f4 = -com.bumptech.glide.d.z(this.mLeftGlow, -width, 1.0f - height);
                if (com.bumptech.glide.d.m(this.mLeftGlow) == 0.0f) {
                    this.mLeftGlow.onRelease();
                }
                f3 = f4;
            }
            invalidate();
        }
        return Math.round(f3 * getWidth());
    }

    private int releaseVerticalGlow(int i6, float f) {
        float width = f / getWidth();
        float height = i6 / getHeight();
        EdgeEffect edgeEffect = this.mTopGlow;
        float f3 = 0.0f;
        if (edgeEffect == null || com.bumptech.glide.d.m(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.mBottomGlow;
            if (edgeEffect2 != null && com.bumptech.glide.d.m(edgeEffect2) != 0.0f) {
                if (canScrollVertically(1)) {
                    this.mBottomGlow.onRelease();
                } else {
                    float fZ = com.bumptech.glide.d.z(this.mBottomGlow, height, 1.0f - width);
                    if (com.bumptech.glide.d.m(this.mBottomGlow) == 0.0f) {
                        this.mBottomGlow.onRelease();
                    }
                    f3 = fZ;
                }
                invalidate();
            }
        } else {
            if (canScrollVertically(-1)) {
                this.mTopGlow.onRelease();
            } else {
                float f4 = -com.bumptech.glide.d.z(this.mTopGlow, -height, width);
                if (com.bumptech.glide.d.m(this.mTopGlow) == 0.0f) {
                    this.mTopGlow.onRelease();
                }
                f3 = f4;
            }
            invalidate();
        }
        return Math.round(f3 * getHeight());
    }

    private void requestChildOnScreen(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.mTempRect.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            if (!layoutParams2.f2762c) {
                Rect rect = this.mTempRect;
                int i6 = rect.left;
                Rect rect2 = layoutParams2.f2761b;
                rect.left = i6 - rect2.left;
                rect.right += rect2.right;
                rect.top -= rect2.top;
                rect.bottom += rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.mTempRect);
            offsetRectIntoDescendantCoords(view, this.mTempRect);
        }
        this.mLayout.requestChildRectangleOnScreen(this, view, this.mTempRect, !this.mFirstLayoutComplete, view2 == null);
    }

    private void resetFocusInfo() {
        l1 l1Var = this.mState;
        l1Var.f2896m = -1L;
        l1Var.f2895l = -1;
        l1Var.f2897n = -1;
    }

    private void resetScroll() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        stopNestedScroll(0);
        releaseGlows();
    }

    private void saveFocusInfo() {
        View focusedChild = (this.mPreserveFocusAfterLayout && hasFocus() && this.mAdapter != null) ? getFocusedChild() : null;
        p1 p1VarFindContainingViewHolder = focusedChild != null ? findContainingViewHolder(focusedChild) : null;
        if (p1VarFindContainingViewHolder == null) {
            resetFocusInfo();
            return;
        }
        this.mState.f2896m = this.mAdapter.hasStableIds() ? p1VarFindContainingViewHolder.getItemId() : -1L;
        this.mState.f2895l = this.mDataSetHasChangedAfterLayout ? -1 : p1VarFindContainingViewHolder.isRemoved() ? p1VarFindContainingViewHolder.mOldPosition : p1VarFindContainingViewHolder.getAbsoluteAdapterPosition();
        this.mState.f2897n = getDeepestFocusedViewWithId(p1VarFindContainingViewHolder.itemView);
    }

    private void setAdapterInternal(k0 k0Var, boolean z7, boolean z10) {
        k0 k0Var2 = this.mAdapter;
        if (k0Var2 != null) {
            k0Var2.unregisterAdapterDataObserver(this.mObserver);
            this.mAdapter.onDetachedFromRecyclerView(this);
        }
        if (!z7 || z10) {
            removeAndRecycleViews();
        }
        b bVar = this.mAdapterHelper;
        bVar.k(bVar.f2802b);
        bVar.k(bVar.f2803c);
        int i6 = 0;
        bVar.f = 0;
        k0 k0Var3 = this.mAdapter;
        this.mAdapter = k0Var;
        if (k0Var != null) {
            k0Var.registerAdapterDataObserver(this.mObserver);
            k0Var.onAttachedToRecyclerView(this);
        }
        x0 x0Var = this.mLayout;
        if (x0Var != null) {
            x0Var.onAdapterChanged(k0Var3, this.mAdapter);
        }
        e1 e1Var = this.mRecycler;
        k0 k0Var4 = this.mAdapter;
        e1Var.f2831a.clear();
        e1Var.g();
        e1Var.f(k0Var3, true);
        d1 d1VarC = e1Var.c();
        if (k0Var3 != null) {
            d1VarC.f2824b--;
        }
        if (!z7 && d1VarC.f2824b == 0) {
            while (true) {
                SparseArray sparseArray = d1VarC.f2823a;
                if (i6 >= sparseArray.size()) {
                    break;
                }
                c1 c1Var = (c1) sparseArray.valueAt(i6);
                Iterator it = c1Var.f2810a.iterator();
                while (it.hasNext()) {
                    l5.a.e(((p1) it.next()).itemView);
                }
                c1Var.f2810a.clear();
                i6++;
            }
        }
        if (k0Var4 != null) {
            d1VarC.f2824b++;
        } else {
            d1VarC.getClass();
        }
        e1Var.e();
        this.mState.f = true;
    }

    public static void setDebugAssertionsEnabled(boolean z7) {
        sDebugAssertionsEnabled = z7;
    }

    public static void setVerboseLoggingEnabled(boolean z7) {
        sVerboseLoggingEnabled = z7;
    }

    private boolean shouldAbsorb(EdgeEffect edgeEffect, int i6, int i10) {
        if (i6 > 0) {
            return true;
        }
        return getSplineFlingDistance(-i6) < com.bumptech.glide.d.m(edgeEffect) * ((float) i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void startNestedScrollForType(int i6) {
        boolean zCanScrollHorizontally = this.mLayout.canScrollHorizontally();
        int i10 = zCanScrollHorizontally;
        if (this.mLayout.canScrollVertically()) {
            i10 = (zCanScrollHorizontally ? 1 : 0) | 2;
        }
        startNestedScroll(i10, i6);
    }

    private boolean stopGlowAnimations(MotionEvent motionEvent) {
        boolean z7;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || com.bumptech.glide.d.m(edgeEffect) == 0.0f || canScrollHorizontally(-1)) {
            z7 = false;
        } else {
            com.bumptech.glide.d.z(this.mLeftGlow, 0.0f, 1.0f - (motionEvent.getY() / getHeight()));
            z7 = true;
        }
        EdgeEffect edgeEffect2 = this.mRightGlow;
        if (edgeEffect2 != null && com.bumptech.glide.d.m(edgeEffect2) != 0.0f && !canScrollHorizontally(1)) {
            com.bumptech.glide.d.z(this.mRightGlow, 0.0f, motionEvent.getY() / getHeight());
            z7 = true;
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && com.bumptech.glide.d.m(edgeEffect3) != 0.0f && !canScrollVertically(-1)) {
            com.bumptech.glide.d.z(this.mTopGlow, 0.0f, motionEvent.getX() / getWidth());
            z7 = true;
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 == null || com.bumptech.glide.d.m(edgeEffect4) == 0.0f || canScrollVertically(1)) {
            return z7;
        }
        com.bumptech.glide.d.z(this.mBottomGlow, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
        return true;
    }

    private void stopScrollersInternal() {
        o1 o1Var = this.mViewFlinger;
        o1Var.f2908g.removeCallbacks(o1Var);
        o1Var.f2906c.abortAnimation();
        x0 x0Var = this.mLayout;
        if (x0Var != null) {
            x0Var.stopSmoothScroller();
        }
    }

    public boolean a() {
        return isChildrenDrawingOrderEnabled();
    }

    public void absorbGlows(int i6, int i10) {
        if (i6 < 0) {
            ensureLeftGlow();
            if (this.mLeftGlow.isFinished()) {
                this.mLeftGlow.onAbsorb(-i6);
            }
        } else if (i6 > 0) {
            ensureRightGlow();
            if (this.mRightGlow.isFinished()) {
                this.mRightGlow.onAbsorb(i6);
            }
        }
        if (i10 < 0) {
            ensureTopGlow();
            if (this.mTopGlow.isFinished()) {
                this.mTopGlow.onAbsorb(-i10);
            }
        } else if (i10 > 0) {
            ensureBottomGlow();
            if (this.mBottomGlow.isFinished()) {
                this.mBottomGlow.onAbsorb(i10);
            }
        }
        if (i6 == 0 && i10 == 0) {
            return;
        }
        postInvalidateOnAnimation();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i6, int i10) {
        x0 x0Var = this.mLayout;
        if (x0Var == null || !x0Var.onAddFocusables(this, arrayList, i6, i10)) {
            super.addFocusables(arrayList, i6, i10);
        }
    }

    public void addItemDecoration(t0 t0Var, int i6) {
        x0 x0Var = this.mLayout;
        if (x0Var != null) {
            x0Var.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i6 < 0) {
            this.mItemDecorations.add(t0Var);
        } else {
            this.mItemDecorations.add(i6, t0Var);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void addOnChildAttachStateChangeListener(y0 y0Var) {
        if (this.mOnChildAttachStateListeners == null) {
            this.mOnChildAttachStateListeners = new ArrayList();
        }
        this.mOnChildAttachStateListeners.add(y0Var);
    }

    public void addOnItemTouchListener(a1 a1Var) {
        this.mOnItemTouchListeners.add(a1Var);
    }

    public void addOnScrollListener(b1 b1Var) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList();
        }
        this.mScrollListeners.add(b1Var);
    }

    public void addRecyclerListener(f1 f1Var) {
        a2.a.n("'listener' arg cannot be null.", f1Var != null);
        this.mRecyclerListeners.add(f1Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void animateAppearance(androidx.recyclerview.widget.p1 r8, androidx.recyclerview.widget.r0 r9, androidx.recyclerview.widget.r0 r10) {
        /*
            r7 = this;
            r0 = 0
            r8.setIsRecyclable(r0)
            androidx.recyclerview.widget.s0 r0 = r7.mItemAnimator
            r1 = r0
            androidx.recyclerview.widget.k r1 = (androidx.recyclerview.widget.k) r1
            if (r9 == 0) goto L24
            r1.getClass()
            int r3 = r9.f2937a
            int r5 = r10.f2937a
            if (r3 != r5) goto L1a
            int r0 = r9.f2938b
            int r2 = r10.f2938b
            if (r0 == r2) goto L24
        L1a:
            int r4 = r9.f2938b
            int r6 = r10.f2938b
            r2 = r8
            boolean r8 = r1.g(r2, r3, r4, r5, r6)
            goto L33
        L24:
            r1.l(r8)
            android.view.View r9 = r8.itemView
            r10 = 0
            r9.setAlpha(r10)
            java.util.ArrayList r9 = r1.f2873i
            r9.add(r8)
            r8 = 1
        L33:
            if (r8 == 0) goto L38
            r7.postAnimationRunner()
        L38:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.animateAppearance(androidx.recyclerview.widget.p1, androidx.recyclerview.widget.r0, androidx.recyclerview.widget.r0):void");
    }

    public void animateDisappearance(p1 p1Var, r0 r0Var, r0 r0Var2) {
        boolean zG;
        addAnimatingView(p1Var);
        p1Var.setIsRecyclable(false);
        k kVar = (k) this.mItemAnimator;
        kVar.getClass();
        int i6 = r0Var.f2937a;
        int i10 = r0Var.f2938b;
        View view = p1Var.itemView;
        int left = r0Var2 == null ? view.getLeft() : r0Var2.f2937a;
        int top = r0Var2 == null ? view.getTop() : r0Var2.f2938b;
        if (p1Var.isRemoved() || (i6 == left && i10 == top)) {
            kVar.l(p1Var);
            kVar.f2872h.add(p1Var);
            zG = true;
        } else {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            zG = kVar.g(p1Var, i6, i10, left, top);
        }
        if (zG) {
            postAnimationRunner();
        }
    }

    public void assertInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            return;
        }
        if (str != null) {
            throw new IllegalStateException(a.e.p(this, ea.q.m(str)));
        }
        throw new IllegalStateException(a.e.p(this, new StringBuilder("Cannot call this method unless RecyclerView is computing a layout or scrolling")));
    }

    public void assertNotInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException(a.e.p(this, new StringBuilder("Cannot call this method while RecyclerView is computing a layout or scrolling")));
        }
        if (this.mDispatchScrollCounter > 0) {
            Log.w(TAG, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(a.e.p(this, new StringBuilder(""))));
        }
    }

    public boolean canReuseUpdatedViewHolder(p1 p1Var) {
        s0 s0Var = this.mItemAnimator;
        if (s0Var != null) {
            k kVar = (k) s0Var;
            if (p1Var.getUnmodifiedPayloads().isEmpty() && kVar.f2871g && !p1Var.isInvalid()) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && this.mLayout.checkLayoutParams((LayoutParams) layoutParams);
    }

    public void clearOldPositions() {
        int iH = this.mChildHelper.h();
        for (int i6 = 0; i6 < iH; i6++) {
            p1 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i6));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.clearOldPosition();
            }
        }
        e1 e1Var = this.mRecycler;
        ArrayList arrayList = e1Var.f2833c;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((p1) arrayList.get(i10)).clearOldPosition();
        }
        ArrayList arrayList2 = e1Var.f2831a;
        int size2 = arrayList2.size();
        for (int i11 = 0; i11 < size2; i11++) {
            ((p1) arrayList2.get(i11)).clearOldPosition();
        }
        ArrayList arrayList3 = e1Var.f2832b;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i12 = 0; i12 < size3; i12++) {
                ((p1) e1Var.f2832b.get(i12)).clearOldPosition();
            }
        }
    }

    public void clearOnChildAttachStateChangeListeners() {
        List<y0> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            list.clear();
        }
    }

    public void clearOnScrollListeners() {
        List<b1> list = this.mScrollListeners;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        x0 x0Var = this.mLayout;
        if (x0Var != null && x0Var.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        x0 x0Var = this.mLayout;
        if (x0Var != null && x0Var.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        x0 x0Var = this.mLayout;
        if (x0Var != null && x0Var.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollRange(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        x0 x0Var = this.mLayout;
        if (x0Var != null && x0Var.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        x0 x0Var = this.mLayout;
        if (x0Var != null && x0Var.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        x0 x0Var = this.mLayout;
        if (x0Var != null && x0Var.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollRange(this.mState);
        }
        return 0;
    }

    public void considerReleasingGlowsOnScroll(int i6, int i10) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished() || i6 <= 0) {
            zIsFinished = false;
        } else {
            this.mLeftGlow.onRelease();
            zIsFinished = this.mLeftGlow.isFinished();
        }
        EdgeEffect edgeEffect2 = this.mRightGlow;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i6 < 0) {
            this.mRightGlow.onRelease();
            zIsFinished |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i10 > 0) {
            this.mTopGlow.onRelease();
            zIsFinished |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i10 < 0) {
            this.mBottomGlow.onRelease();
            zIsFinished |= this.mBottomGlow.isFinished();
        }
        if (zIsFinished) {
            postInvalidateOnAnimation();
        }
    }

    public int consumeFlingInHorizontalStretch(int i6) {
        return consumeFlingInStretch(i6, this.mLeftGlow, this.mRightGlow, getWidth());
    }

    public int consumeFlingInVerticalStretch(int i6) {
        return consumeFlingInStretch(i6, this.mTopGlow, this.mBottomGlow, getHeight());
    }

    public void consumePendingUpdateOperations() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            Trace.beginSection(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
            dispatchLayout();
            Trace.endSection();
            return;
        }
        if (this.mAdapterHelper.g()) {
            b bVar = this.mAdapterHelper;
            int i6 = bVar.f;
            if ((i6 & 4) == 0 || (i6 & 11) != 0) {
                if (bVar.g()) {
                    Trace.beginSection(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
                    dispatchLayout();
                    Trace.endSection();
                    return;
                }
                return;
            }
            Trace.beginSection(TRACE_HANDLE_ADAPTER_UPDATES_TAG);
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            this.mAdapterHelper.j();
            if (!this.mLayoutWasDefered) {
                if (hasUpdatedView()) {
                    dispatchLayout();
                } else {
                    this.mAdapterHelper.b();
                }
            }
            stopInterceptRequestLayout(true);
            onExitLayoutOrScroll();
            Trace.endSection();
        }
    }

    public void defaultOnMeasure(int i6, int i10) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        WeakHashMap weakHashMap = n0.s0.f8353a;
        setMeasuredDimension(x0.chooseSize(i6, paddingRight, getMinimumWidth()), x0.chooseSize(i10, getPaddingBottom() + getPaddingTop(), getMinimumHeight()));
    }

    public void dispatchChildAttached(View view) {
        p1 childViewHolderInt = getChildViewHolderInt(view);
        onChildAttachedToWindow(view);
        k0 k0Var = this.mAdapter;
        if (k0Var != null && childViewHolderInt != null) {
            k0Var.onViewAttachedToWindow(childViewHolderInt);
        }
        List<y0> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).onChildViewAttachedToWindow(view);
            }
        }
    }

    public void dispatchChildDetached(View view) {
        p1 childViewHolderInt = getChildViewHolderInt(view);
        onChildDetachedFromWindow(view);
        k0 k0Var = this.mAdapter;
        if (k0Var != null && childViewHolderInt != null) {
            k0Var.onViewDetachedFromWindow(childViewHolderInt);
        }
        List<y0> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).onChildViewDetachedFromWindow(view);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        x0 layoutManager = getLayoutManager();
        int itemCount = 0;
        if (layoutManager == null) {
            return false;
        }
        if (layoutManager.canScrollVertically()) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 92 || keyCode == 93) {
                int measuredHeight = getMeasuredHeight();
                if (keyCode == 93) {
                    smoothScrollBy(0, measuredHeight, null, Integer.MIN_VALUE);
                } else {
                    smoothScrollBy(0, -measuredHeight, null, Integer.MIN_VALUE);
                }
                return true;
            }
            if (keyCode == 122 || keyCode == 123) {
                boolean zIsLayoutReversed = layoutManager.isLayoutReversed();
                if (keyCode == 122) {
                    if (zIsLayoutReversed) {
                        itemCount = getAdapter().getItemCount();
                    }
                } else if (!zIsLayoutReversed) {
                    itemCount = getAdapter().getItemCount();
                }
                smoothScrollToPosition(itemCount);
                return true;
            }
        } else if (layoutManager.canScrollHorizontally()) {
            int keyCode2 = keyEvent.getKeyCode();
            if (keyCode2 == 92 || keyCode2 == 93) {
                int measuredWidth = getMeasuredWidth();
                if (keyCode2 == 93) {
                    smoothScrollBy(measuredWidth, 0, null, Integer.MIN_VALUE);
                } else {
                    smoothScrollBy(-measuredWidth, 0, null, Integer.MIN_VALUE);
                }
                return true;
            }
            if (keyCode2 == 122 || keyCode2 == 123) {
                boolean zIsLayoutReversed2 = layoutManager.isLayoutReversed();
                if (keyCode2 == 122) {
                    if (zIsLayoutReversed2) {
                        itemCount = getAdapter().getItemCount();
                    }
                } else if (!zIsLayoutReversed2) {
                    itemCount = getAdapter().getItemCount();
                }
                smoothScrollToPosition(itemCount);
                return true;
            }
        }
        return false;
    }

    public void dispatchLayout() {
        if (this.mAdapter == null) {
            Log.w(TAG, "No adapter attached; skipping layout");
            return;
        }
        if (this.mLayout == null) {
            Log.e(TAG, "No layout manager attached; skipping layout");
            return;
        }
        this.mState.f2892i = false;
        boolean z7 = this.mLastAutoMeasureSkippedDueToExact && !(this.mLastAutoMeasureNonExactMeasuredWidth == getWidth() && this.mLastAutoMeasureNonExactMeasuredHeight == getHeight());
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mLastAutoMeasureSkippedDueToExact = false;
        if (this.mState.d == 1) {
            dispatchLayoutStep1();
            this.mLayout.setExactMeasureSpecsFrom(this);
            dispatchLayoutStep2();
        } else {
            b bVar = this.mAdapterHelper;
            if ((bVar.f2803c.isEmpty() || bVar.f2802b.isEmpty()) && !z7 && this.mLayout.getWidth() == getWidth() && this.mLayout.getHeight() == getHeight()) {
                this.mLayout.setExactMeasureSpecsFrom(this);
            } else {
                this.mLayout.setExactMeasureSpecsFrom(this);
                dispatchLayoutStep2();
            }
        }
        dispatchLayoutStep3();
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f3, boolean z7) {
        return getScrollingChildHelper().a(f, f3, z7);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f3) {
        return getScrollingChildHelper().b(f, f3);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i6, int i10, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i6, i10, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i6, int i10, int i11, int i12, int[] iArr) {
        return getScrollingChildHelper().d(i6, i10, i11, i12, iArr, 0, null);
    }

    public void dispatchOnScrollStateChanged(int i6) {
        x0 x0Var = this.mLayout;
        if (x0Var != null) {
            x0Var.onScrollStateChanged(i6);
        }
        onScrollStateChanged(i6);
        b1 b1Var = this.mScrollListener;
        if (b1Var != null) {
            b1Var.onScrollStateChanged(this, i6);
        }
        List<b1> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).onScrollStateChanged(this, i6);
            }
        }
    }

    public void dispatchOnScrolled(int i6, int i10) {
        this.mDispatchScrollCounter++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i6, scrollY - i10);
        onScrolled(i6, i10);
        b1 b1Var = this.mScrollListener;
        if (b1Var != null) {
            b1Var.onScrolled(this, i6, i10);
        }
        List<b1> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).onScrolled(this, i6, i10);
            }
        }
        this.mDispatchScrollCounter--;
    }

    public void dispatchPendingImportantForAccessibilityChanges() {
        int i6;
        for (int size = this.mPendingAccessibilityImportanceChange.size() - 1; size >= 0; size--) {
            p1 p1Var = this.mPendingAccessibilityImportanceChange.get(size);
            if (p1Var.itemView.getParent() == this && !p1Var.shouldIgnore() && (i6 = p1Var.mPendingAccessibilityState) != -1) {
                p1Var.itemView.setImportantForAccessibility(i6);
                p1Var.mPendingAccessibilityState = -1;
            }
        }
        this.mPendingAccessibilityImportanceChange.clear();
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z7;
        super.draw(canvas);
        int size = this.mItemDecorations.size();
        boolean z10 = false;
        for (int i6 = 0; i6 < size; i6++) {
            this.mItemDecorations.get(i6).onDrawOver(canvas, this, this.mState);
        }
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z7 = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom = this.mClipToPadding ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.mLeftGlow;
            z7 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.mClipToPadding) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.mTopGlow;
            z7 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.mRightGlow;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.mClipToPadding ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.mRightGlow;
            z7 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.mBottomGlow;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.mClipToPadding) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.mBottomGlow;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z10 = true;
            }
            z7 |= z10;
            canvas.restoreToCount(iSave4);
        }
        if ((z7 || this.mItemAnimator == null || this.mItemDecorations.size() <= 0 || !this.mItemAnimator.f()) ? z7 : true) {
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j10) {
        return super.drawChild(canvas, view, j10);
    }

    public void ensureBottomGlow() {
        if (this.mBottomGlow != null) {
            return;
        }
        ((m1) this.mEdgeEffectFactory).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mBottomGlow = edgeEffect;
        if (this.mClipToPadding) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void ensureLeftGlow() {
        if (this.mLeftGlow != null) {
            return;
        }
        ((m1) this.mEdgeEffectFactory).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mLeftGlow = edgeEffect;
        if (this.mClipToPadding) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public void ensureRightGlow() {
        if (this.mRightGlow != null) {
            return;
        }
        ((m1) this.mEdgeEffectFactory).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mRightGlow = edgeEffect;
        if (this.mClipToPadding) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public void ensureTopGlow() {
        if (this.mTopGlow != null) {
            return;
        }
        ((m1) this.mEdgeEffectFactory).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mTopGlow = edgeEffect;
        if (this.mClipToPadding) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public String exceptionLabel() {
        return " " + super.toString() + ", adapter:" + this.mAdapter + ", layout:" + this.mLayout + ", context:" + getContext();
    }

    public final void fillRemainingScrollValues(l1 l1Var) {
        if (getScrollState() != 2) {
            l1Var.f2898o = 0;
            l1Var.f2899p = 0;
        } else {
            OverScroller overScroller = this.mViewFlinger.f2906c;
            l1Var.f2898o = overScroller.getFinalX() - overScroller.getCurrX();
            l1Var.f2899p = overScroller.getFinalY() - overScroller.getCurrY();
        }
    }

    public View findChildViewUnder(float f, float f3) {
        for (int iE = this.mChildHelper.e() - 1; iE >= 0; iE--) {
            View viewD = this.mChildHelper.d(iE);
            float translationX = viewD.getTranslationX();
            float translationY = viewD.getTranslationY();
            if (f >= viewD.getLeft() + translationX && f <= viewD.getRight() + translationX && f3 >= viewD.getTop() + translationY && f3 <= viewD.getBottom() + translationY) {
                return viewD;
            }
        }
        return null;
    }

    public View findContainingItemView(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    public p1 findContainingViewHolder(View view) {
        View viewFindContainingItemView = findContainingItemView(view);
        if (viewFindContainingItemView == null) {
            return null;
        }
        return getChildViewHolder(viewFindContainingItemView);
    }

    public p1 findViewHolderForAdapterPosition(int i6) {
        p1 p1Var = null;
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        int iH = this.mChildHelper.h();
        for (int i10 = 0; i10 < iH; i10++) {
            p1 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i10));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && getAdapterPositionInRecyclerView(childViewHolderInt) == i6) {
                d dVar = this.mChildHelper;
                if (!dVar.f2818c.contains(childViewHolderInt.itemView)) {
                    return childViewHolderInt;
                }
                p1Var = childViewHolderInt;
            }
        }
        return p1Var;
    }

    public p1 findViewHolderForItemId(long j10) {
        k0 k0Var = this.mAdapter;
        p1 p1Var = null;
        if (k0Var != null && k0Var.hasStableIds()) {
            int iH = this.mChildHelper.h();
            for (int i6 = 0; i6 < iH; i6++) {
                p1 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i6));
                if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && childViewHolderInt.getItemId() == j10) {
                    d dVar = this.mChildHelper;
                    if (!dVar.f2818c.contains(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    }
                    p1Var = childViewHolderInt;
                }
            }
        }
        return p1Var;
    }

    public p1 findViewHolderForLayoutPosition(int i6) {
        return findViewHolderForPosition(i6, false);
    }

    @Deprecated
    public p1 findViewHolderForPosition(int i6) {
        return findViewHolderForPosition(i6, false);
    }

    public boolean fling(int i6, int i10) {
        return fling(i6, i10, this.mMinFlingVelocity, this.mMaxFlingVelocity);
    }

    public boolean flingNoThresholdCheck(int i6, int i10) {
        return fling(i6, i10, 0, Integer.MAX_VALUE);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0071  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.view.View focusSearch(android.view.View r8, int r9) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.focusSearch(android.view.View, int):android.view.View");
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        x0 x0Var = this.mLayout;
        if (x0Var != null) {
            return x0Var.generateDefaultLayoutParams();
        }
        throw new IllegalStateException(a.e.p(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        x0 x0Var = this.mLayout;
        if (x0Var != null) {
            return x0Var.generateLayoutParams(getContext(), attributeSet);
        }
        throw new IllegalStateException(a.e.p(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public k0 getAdapter() {
        return this.mAdapter;
    }

    public int getAdapterPositionInRecyclerView(p1 p1Var) {
        if (p1Var.hasAnyOfTheFlags(524) || !p1Var.isBound()) {
            return -1;
        }
        b bVar = this.mAdapterHelper;
        int i6 = p1Var.mPosition;
        ArrayList arrayList = bVar.f2802b;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            a aVar = (a) arrayList.get(i10);
            int i11 = aVar.f2798a;
            if (i11 != 1) {
                if (i11 == 2) {
                    int i12 = aVar.f2799b;
                    if (i12 <= i6) {
                        int i13 = aVar.d;
                        if (i12 + i13 > i6) {
                            return -1;
                        }
                        i6 -= i13;
                    } else {
                        continue;
                    }
                } else if (i11 == 8) {
                    int i14 = aVar.f2799b;
                    if (i14 == i6) {
                        i6 = aVar.d;
                    } else {
                        if (i14 < i6) {
                            i6--;
                        }
                        if (aVar.d <= i6) {
                            i6++;
                        }
                    }
                }
            } else if (aVar.f2799b <= i6) {
                i6 += aVar.d;
            }
        }
        return i6;
    }

    @Override // android.view.View
    public int getBaseline() {
        x0 x0Var = this.mLayout;
        return x0Var != null ? x0Var.getBaseline() : super.getBaseline();
    }

    public long getChangedHolderKey(p1 p1Var) {
        return this.mAdapter.hasStableIds() ? p1Var.getItemId() : p1Var.mPosition;
    }

    public int getChildAdapterPosition(View view) {
        p1 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getAbsoluteAdapterPosition();
        }
        return -1;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i6, int i10) {
        return super.getChildDrawingOrder(i6, i10);
    }

    public long getChildItemId(View view) {
        p1 childViewHolderInt;
        k0 k0Var = this.mAdapter;
        if (k0Var == null || !k0Var.hasStableIds() || (childViewHolderInt = getChildViewHolderInt(view)) == null) {
            return -1L;
        }
        return childViewHolderInt.getItemId();
    }

    public int getChildLayoutPosition(View view) {
        p1 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getLayoutPosition();
        }
        return -1;
    }

    @Deprecated
    public int getChildPosition(View view) {
        return getChildAdapterPosition(view);
    }

    public p1 getChildViewHolder(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return getChildViewHolderInt(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.mClipToPadding;
    }

    public r1 getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        getDecoratedBoundsWithMarginsInt(view, rect);
    }

    public p0 getEdgeEffectFactory() {
        return this.mEdgeEffectFactory;
    }

    public s0 getItemAnimator() {
        return this.mItemAnimator;
    }

    public Rect getItemDecorInsetsForChild(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        boolean z7 = layoutParams.f2762c;
        Rect rect = layoutParams.f2761b;
        if (!z7) {
            return rect;
        }
        if (this.mState.f2890g && (layoutParams.f2760a.isUpdated() || layoutParams.f2760a.isInvalid())) {
            return rect;
        }
        rect.set(0, 0, 0, 0);
        int size = this.mItemDecorations.size();
        for (int i6 = 0; i6 < size; i6++) {
            this.mTempRect.set(0, 0, 0, 0);
            this.mItemDecorations.get(i6).getItemOffsets(this.mTempRect, view, this, this.mState);
            int i10 = rect.left;
            Rect rect2 = this.mTempRect;
            rect.left = i10 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        layoutParams.f2762c = false;
        return rect;
    }

    public t0 getItemDecorationAt(int i6) {
        int itemDecorationCount = getItemDecorationCount();
        if (i6 >= 0 && i6 < itemDecorationCount) {
            return this.mItemDecorations.get(i6);
        }
        throw new IndexOutOfBoundsException(i6 + " is an invalid index for size " + itemDecorationCount);
    }

    public int getItemDecorationCount() {
        return this.mItemDecorations.size();
    }

    public x0 getLayoutManager() {
        return this.mLayout;
    }

    public int getMaxFlingVelocity() {
        return this.mMaxFlingVelocity;
    }

    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }

    public long getNanoTime() {
        if (ALLOW_THREAD_GAP_WORK) {
            return System.nanoTime();
        }
        return 0L;
    }

    public z0 getOnFlingListener() {
        return this.mOnFlingListener;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }

    public d1 getRecycledViewPool() {
        return this.mRecycler.c();
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    public boolean hasFixedSize() {
        return this.mHasFixedSize;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().f(0);
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.g();
    }

    public void initAdapterManager() {
        this.mAdapterHelper = new b(new i0(this));
    }

    public void initFastScroller(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
            throw new IllegalArgumentException(a.e.p(this, new StringBuilder("Trying to set fast scroller without both required drawables.")));
        }
        Resources resources = getContext().getResources();
        new p(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(com.p2elite.brtv2.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(com.p2elite.brtv2.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(com.p2elite.brtv2.R.dimen.fastscroll_margin));
    }

    public void invalidateGlows() {
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    public void invalidateItemDecorations() {
        if (this.mItemDecorations.size() == 0) {
            return;
        }
        x0 x0Var = this.mLayout;
        if (x0Var != null) {
            x0Var.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public boolean isAccessibilityEnabled() {
        AccessibilityManager accessibilityManager = this.mAccessibilityManager;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    public boolean isAnimating() {
        s0 s0Var = this.mItemAnimator;
        return s0Var != null && s0Var.f();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    public boolean isComputingLayout() {
        return this.mLayoutOrScrollCounter > 0;
    }

    @Deprecated
    public boolean isLayoutFrozen() {
        return isLayoutSuppressed();
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.mLayoutSuppressed;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().d;
    }

    public void jumpToPositionForSmoothScroller(int i6) {
        if (this.mLayout == null) {
            return;
        }
        setScrollState(2);
        this.mLayout.scrollToPosition(i6);
        awakenScrollBars();
    }

    public void markItemDecorInsetsDirty() {
        int iH = this.mChildHelper.h();
        for (int i6 = 0; i6 < iH; i6++) {
            ((LayoutParams) this.mChildHelper.g(i6).getLayoutParams()).f2762c = true;
        }
        ArrayList arrayList = this.mRecycler.f2833c;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            LayoutParams layoutParams = (LayoutParams) ((p1) arrayList.get(i10)).itemView.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.f2762c = true;
            }
        }
    }

    public void markKnownViewsInvalid() {
        int iH = this.mChildHelper.h();
        for (int i6 = 0; i6 < iH; i6++) {
            p1 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i6));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.addFlags(6);
            }
        }
        markItemDecorInsetsDirty();
        e1 e1Var = this.mRecycler;
        ArrayList arrayList = e1Var.f2833c;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            p1 p1Var = (p1) arrayList.get(i10);
            if (p1Var != null) {
                p1Var.addFlags(6);
                p1Var.addChangePayload(null);
            }
        }
        k0 k0Var = e1Var.f2836h.mAdapter;
        if (k0Var == null || !k0Var.hasStableIds()) {
            e1Var.g();
        }
    }

    public void nestedScrollBy(int i6, int i10) {
        nestedScrollByInternal(i6, i10, null, 1);
    }

    public void offsetChildrenHorizontal(int i6) {
        int iE = this.mChildHelper.e();
        for (int i10 = 0; i10 < iE; i10++) {
            this.mChildHelper.d(i10).offsetLeftAndRight(i6);
        }
    }

    public void offsetChildrenVertical(int i6) {
        int iE = this.mChildHelper.e();
        for (int i10 = 0; i10 < iE; i10++) {
            this.mChildHelper.d(i10).offsetTopAndBottom(i6);
        }
    }

    public void offsetPositionRecordsForInsert(int i6, int i10) {
        int iH = this.mChildHelper.h();
        for (int i11 = 0; i11 < iH; i11++) {
            p1 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i11));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= i6) {
                if (sVerboseLoggingEnabled) {
                    Log.d(TAG, "offsetPositionRecordsForInsert attached child " + i11 + " holder " + childViewHolderInt + " now at position " + (childViewHolderInt.mPosition + i10));
                }
                childViewHolderInt.offsetPosition(i10, false);
                this.mState.f = true;
            }
        }
        ArrayList arrayList = this.mRecycler.f2833c;
        int size = arrayList.size();
        for (int i12 = 0; i12 < size; i12++) {
            p1 p1Var = (p1) arrayList.get(i12);
            if (p1Var != null && p1Var.mPosition >= i6) {
                if (sVerboseLoggingEnabled) {
                    Log.d(TAG, "offsetPositionRecordsForInsert cached " + i12 + " holder " + p1Var + " now at position " + (p1Var.mPosition + i10));
                }
                p1Var.offsetPosition(i10, false);
            }
        }
        requestLayout();
    }

    public void offsetPositionRecordsForMove(int i6, int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int iH = this.mChildHelper.h();
        int i18 = -1;
        if (i6 < i10) {
            i12 = i6;
            i11 = i10;
            i13 = -1;
        } else {
            i11 = i6;
            i12 = i10;
            i13 = 1;
        }
        for (int i19 = 0; i19 < iH; i19++) {
            p1 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i19));
            if (childViewHolderInt != null && (i17 = childViewHolderInt.mPosition) >= i12 && i17 <= i11) {
                if (sVerboseLoggingEnabled) {
                    Log.d(TAG, "offsetPositionRecordsForMove attached child " + i19 + " holder " + childViewHolderInt);
                }
                if (childViewHolderInt.mPosition == i6) {
                    childViewHolderInt.offsetPosition(i10 - i6, false);
                } else {
                    childViewHolderInt.offsetPosition(i13, false);
                }
                this.mState.f = true;
            }
        }
        e1 e1Var = this.mRecycler;
        e1Var.getClass();
        if (i6 < i10) {
            i15 = i6;
            i14 = i10;
        } else {
            i14 = i6;
            i15 = i10;
            i18 = 1;
        }
        ArrayList arrayList = e1Var.f2833c;
        int size = arrayList.size();
        for (int i20 = 0; i20 < size; i20++) {
            p1 p1Var = (p1) arrayList.get(i20);
            if (p1Var != null && (i16 = p1Var.mPosition) >= i15 && i16 <= i14) {
                if (i16 == i6) {
                    p1Var.offsetPosition(i10 - i6, false);
                } else {
                    p1Var.offsetPosition(i18, false);
                }
                if (sVerboseLoggingEnabled) {
                    Log.d(TAG, "offsetPositionRecordsForMove cached child " + i20 + " holder " + p1Var);
                }
            }
        }
        requestLayout();
    }

    public void offsetPositionRecordsForRemove(int i6, int i10, boolean z7) {
        int i11 = i6 + i10;
        int iH = this.mChildHelper.h();
        for (int i12 = 0; i12 < iH; i12++) {
            p1 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i12));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                int i13 = childViewHolderInt.mPosition;
                if (i13 >= i11) {
                    if (sVerboseLoggingEnabled) {
                        Log.d(TAG, "offsetPositionRecordsForRemove attached child " + i12 + " holder " + childViewHolderInt + " now at position " + (childViewHolderInt.mPosition - i10));
                    }
                    childViewHolderInt.offsetPosition(-i10, z7);
                    this.mState.f = true;
                } else if (i13 >= i6) {
                    if (sVerboseLoggingEnabled) {
                        Log.d(TAG, "offsetPositionRecordsForRemove attached child " + i12 + " holder " + childViewHolderInt + " now REMOVED");
                    }
                    childViewHolderInt.flagRemovedAndOffsetPosition(i6 - 1, -i10, z7);
                    this.mState.f = true;
                }
            }
        }
        e1 e1Var = this.mRecycler;
        ArrayList arrayList = e1Var.f2833c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            p1 p1Var = (p1) arrayList.get(size);
            if (p1Var != null) {
                int i14 = p1Var.mPosition;
                if (i14 >= i11) {
                    if (sVerboseLoggingEnabled) {
                        Log.d(TAG, "offsetPositionRecordsForRemove cached " + size + " holder " + p1Var + " now at position " + (p1Var.mPosition - i10));
                    }
                    p1Var.offsetPosition(-i10, z7);
                } else if (i14 >= i6) {
                    p1Var.addFlags(8);
                    e1Var.h(size);
                }
            }
        }
        requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0055  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onAttachedToWindow() {
        /*
            r5 = this;
            super.onAttachedToWindow()
            r0 = 0
            r5.mLayoutOrScrollCounter = r0
            r1 = 1
            r5.mIsAttached = r1
            boolean r2 = r5.mFirstLayoutComplete
            if (r2 == 0) goto L14
            boolean r2 = r5.isLayoutRequested()
            if (r2 != 0) goto L14
            goto L15
        L14:
            r1 = 0
        L15:
            r5.mFirstLayoutComplete = r1
            androidx.recyclerview.widget.e1 r1 = r5.mRecycler
            r1.e()
            androidx.recyclerview.widget.x0 r1 = r5.mLayout
            if (r1 == 0) goto L23
            r1.dispatchAttachedToWindow(r5)
        L23:
            r5.mPostedAnimatorRunner = r0
            boolean r0 = androidx.recyclerview.widget.RecyclerView.ALLOW_THREAD_GAP_WORK
            if (r0 == 0) goto L80
            java.lang.ThreadLocal r0 = androidx.recyclerview.widget.t.f2950e
            java.lang.Object r1 = r0.get()
            androidx.recyclerview.widget.t r1 = (androidx.recyclerview.widget.t) r1
            r5.mGapWorker = r1
            if (r1 != 0) goto L63
            androidx.recyclerview.widget.t r1 = new androidx.recyclerview.widget.t
            r1.<init>()
            r5.mGapWorker = r1
            java.util.WeakHashMap r1 = n0.s0.f8353a
            android.view.Display r1 = r5.getDisplay()
            boolean r2 = r5.isInEditMode()
            if (r2 != 0) goto L55
            if (r1 == 0) goto L55
            float r1 = r1.getRefreshRate()
            r2 = 1106247680(0x41f00000, float:30.0)
            int r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r2 < 0) goto L55
            goto L57
        L55:
            r1 = 1114636288(0x42700000, float:60.0)
        L57:
            androidx.recyclerview.widget.t r2 = r5.mGapWorker
            r3 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r3 = r3 / r1
            long r3 = (long) r3
            r2.f2953c = r3
            r0.set(r2)
        L63:
            androidx.recyclerview.widget.t r0 = r5.mGapWorker
            r0.getClass()
            boolean r1 = androidx.recyclerview.widget.RecyclerView.sDebugAssertionsEnabled
            java.util.ArrayList r0 = r0.f2951a
            if (r1 == 0) goto L7d
            boolean r1 = r0.contains(r5)
            if (r1 != 0) goto L75
            goto L7d
        L75:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "RecyclerView already present in worker list!"
            r0.<init>(r1)
            throw r0
        L7d:
            r0.add(r5)
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onAttachedToWindow():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        t tVar;
        super.onDetachedFromWindow();
        s0 s0Var = this.mItemAnimator;
        if (s0Var != null) {
            s0Var.e();
        }
        stopScroll();
        int i6 = 0;
        this.mIsAttached = false;
        x0 x0Var = this.mLayout;
        if (x0Var != null) {
            x0Var.dispatchDetachedFromWindow(this, this.mRecycler);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        removeCallbacks(this.mItemAnimatorRunner);
        this.mViewInfoStore.getClass();
        while (c2.d.a() != null) {
        }
        e1 e1Var = this.mRecycler;
        int i10 = 0;
        while (true) {
            ArrayList arrayList = e1Var.f2833c;
            if (i10 >= arrayList.size()) {
                break;
            }
            l5.a.e(((p1) arrayList.get(i10)).itemView);
            i10++;
        }
        e1Var.f(e1Var.f2836h.mAdapter, false);
        while (i6 < getChildCount()) {
            int i11 = i6 + 1;
            View childAt = getChildAt(i6);
            if (childAt == null) {
                throw new IndexOutOfBoundsException();
            }
            u0.a aVar = (u0.a) childAt.getTag(com.p2elite.brtv2.R.id.pooling_container_listener_holder_tag);
            if (aVar == null) {
                aVar = new u0.a();
                childAt.setTag(com.p2elite.brtv2.R.id.pooling_container_listener_holder_tag, aVar);
            }
            ArrayList arrayList2 = aVar.f10321a;
            int iO = x8.k.O(arrayList2);
            if (-1 < iO) {
                throw a.e.k(iO, arrayList2);
            }
            i6 = i11;
        }
        if (!ALLOW_THREAD_GAP_WORK || (tVar = this.mGapWorker) == null) {
            return;
        }
        boolean zRemove = tVar.f2951a.remove(this);
        if (sDebugAssertionsEnabled && !zRemove) {
            throw new IllegalStateException("RecyclerView removal failed!");
        }
        this.mGapWorker = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.mItemDecorations.size();
        for (int i6 = 0; i6 < size; i6++) {
            this.mItemDecorations.get(i6).onDraw(canvas, this, this.mState);
        }
    }

    public void onEnterLayoutOrScroll() {
        this.mLayoutOrScrollCounter++;
    }

    public void onExitLayoutOrScroll() {
        onExitLayoutOrScroll(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009f A[ADDED_TO_REGION] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onGenericMotionEvent(android.view.MotionEvent r14) {
        /*
            r13 = this;
            androidx.recyclerview.widget.x0 r0 = r13.mLayout
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            boolean r0 = r13.mLayoutSuppressed
            if (r0 == 0) goto Lb
            return r1
        Lb:
            int r0 = r14.getAction()
            r2 = 8
            if (r0 != r2) goto La6
            int r0 = r14.getSource()
            r0 = r0 & 2
            r2 = 0
            if (r0 == 0) goto L45
            androidx.recyclerview.widget.x0 r0 = r13.mLayout
            boolean r0 = r0.canScrollVertically()
            if (r0 == 0) goto L2c
            r0 = 9
            float r0 = r14.getAxisValue(r0)
            float r0 = -r0
            goto L2d
        L2c:
            r0 = 0
        L2d:
            androidx.recyclerview.widget.x0 r3 = r13.mLayout
            boolean r3 = r3.canScrollHorizontally()
            if (r3 == 0) goto L40
            r2 = 10
            float r2 = r14.getAxisValue(r2)
            r3 = r2
            r4 = 0
            r2 = r0
            r0 = 0
            goto L6a
        L40:
            r2 = r0
        L41:
            r0 = 0
            r3 = 0
            r4 = 0
            goto L6a
        L45:
            int r0 = r14.getSource()
            r3 = 4194304(0x400000, float:5.877472E-39)
            r0 = r0 & r3
            if (r0 == 0) goto L41
            r0 = 26
            float r3 = r14.getAxisValue(r0)
            androidx.recyclerview.widget.x0 r4 = r13.mLayout
            boolean r4 = r4.canScrollVertically()
            if (r4 == 0) goto L60
            float r3 = -r3
            r2 = r3
        L5e:
            r3 = 0
            goto L68
        L60:
            androidx.recyclerview.widget.x0 r4 = r13.mLayout
            boolean r4 = r4.canScrollHorizontally()
            if (r4 == 0) goto L5e
        L68:
            boolean r4 = r13.mLowResRotaryEncoderFeature
        L6a:
            float r5 = r13.mScaledVerticalScrollFactor
            float r2 = r2 * r5
            int r2 = (int) r2
            float r5 = r13.mScaledHorizontalScrollFactor
            float r3 = r3 * r5
            int r3 = (int) r3
            if (r4 == 0) goto L99
            androidx.recyclerview.widget.o1 r5 = r13.mViewFlinger
            android.widget.OverScroller r5 = r5.f2906c
            int r6 = r5.getFinalY()
            int r7 = r5.getCurrY()
            int r6 = r6 - r7
            int r9 = r6 + r2
            int r2 = r5.getFinalX()
            int r5 = r5.getCurrX()
            int r2 = r2 - r5
            int r8 = r2 + r3
            r11 = -2147483648(0xffffffff80000000, float:-0.0)
            r12 = 1
            r10 = 0
            r7 = r13
            r7.smoothScrollBy(r8, r9, r10, r11, r12)
            goto L9d
        L99:
            r5 = 1
            r13.nestedScrollByInternal(r3, r2, r14, r5)
        L9d:
            if (r0 == 0) goto La6
            if (r4 != 0) goto La6
            n0.h r2 = r13.mDifferentialMotionFlingController
            r2.a(r14, r0)
        La6:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z7;
        if (this.mLayoutSuppressed) {
            return false;
        }
        this.mInterceptingOnItemTouchListener = null;
        if (findInterceptingOnItemTouchListener(motionEvent)) {
            cancelScroll();
            return true;
        }
        x0 x0Var = this.mLayout;
        if (x0Var == null) {
            return false;
        }
        boolean zCanScrollHorizontally = x0Var.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.mIgnoreMotionEventTillDown) {
                this.mIgnoreMotionEventTillDown = false;
            }
            this.mScrollPointerId = motionEvent.getPointerId(0);
            int x10 = (int) (motionEvent.getX() + 0.5f);
            this.mLastTouchX = x10;
            this.mInitialTouchX = x10;
            int y7 = (int) (motionEvent.getY() + 0.5f);
            this.mLastTouchY = y7;
            this.mInitialTouchY = y7;
            if (stopGlowAnimations(motionEvent) || this.mScrollState == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                stopNestedScroll(1);
            }
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
            startNestedScrollForType(0);
        } else if (actionMasked == 1) {
            this.mVelocityTracker.clear();
            stopNestedScroll(0);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
            if (iFindPointerIndex < 0) {
                Log.e(TAG, "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x11 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y9 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            if (this.mScrollState != 1) {
                int i6 = x11 - this.mInitialTouchX;
                int i10 = y9 - this.mInitialTouchY;
                if (!zCanScrollHorizontally || Math.abs(i6) <= this.mTouchSlop) {
                    z7 = false;
                } else {
                    this.mLastTouchX = x11;
                    z7 = true;
                }
                if (zCanScrollVertically && Math.abs(i10) > this.mTouchSlop) {
                    this.mLastTouchY = y9;
                    z7 = true;
                }
                if (z7) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            cancelScroll();
        } else if (actionMasked == 5) {
            this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
            int x12 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.mLastTouchX = x12;
            this.mInitialTouchX = x12;
            int y10 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.mLastTouchY = y10;
            this.mInitialTouchY = y10;
        } else if (actionMasked == 6) {
            onPointerUp(motionEvent);
        }
        return this.mScrollState == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        Trace.beginSection(TRACE_ON_LAYOUT_TAG);
        dispatchLayout();
        Trace.endSection();
        this.mFirstLayoutComplete = true;
    }

    @Override // android.view.View
    public void onMeasure(int i6, int i10) {
        x0 x0Var = this.mLayout;
        if (x0Var == null) {
            defaultOnMeasure(i6, i10);
            return;
        }
        boolean z7 = false;
        if (x0Var.isAutoMeasureEnabled()) {
            int mode = View.MeasureSpec.getMode(i6);
            int mode2 = View.MeasureSpec.getMode(i10);
            this.mLayout.onMeasure(this.mRecycler, this.mState, i6, i10);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z7 = true;
            }
            this.mLastAutoMeasureSkippedDueToExact = z7;
            if (z7 || this.mAdapter == null) {
                return;
            }
            if (this.mState.d == 1) {
                dispatchLayoutStep1();
            }
            this.mLayout.setMeasureSpecs(i6, i10);
            this.mState.f2892i = true;
            dispatchLayoutStep2();
            this.mLayout.setMeasuredDimensionFromChildren(i6, i10);
            if (this.mLayout.shouldMeasureTwice()) {
                this.mLayout.setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.mState.f2892i = true;
                dispatchLayoutStep2();
                this.mLayout.setMeasuredDimensionFromChildren(i6, i10);
            }
            this.mLastAutoMeasureNonExactMeasuredWidth = getMeasuredWidth();
            this.mLastAutoMeasureNonExactMeasuredHeight = getMeasuredHeight();
            return;
        }
        if (this.mHasFixedSize) {
            this.mLayout.onMeasure(this.mRecycler, this.mState, i6, i10);
            return;
        }
        if (this.mAdapterUpdateDuringMeasure) {
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            processAdapterUpdatesAndSetAnimationFlags();
            onExitLayoutOrScroll();
            l1 l1Var = this.mState;
            if (l1Var.f2894k) {
                l1Var.f2890g = true;
            } else {
                this.mAdapterHelper.c();
                this.mState.f2890g = false;
            }
            this.mAdapterUpdateDuringMeasure = false;
            stopInterceptRequestLayout(false);
        } else if (this.mState.f2894k) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        k0 k0Var = this.mAdapter;
        if (k0Var != null) {
            this.mState.f2889e = k0Var.getItemCount();
        } else {
            this.mState.f2889e = 0;
        }
        startInterceptRequestLayout();
        this.mLayout.onMeasure(this.mRecycler, this.mState, i6, i10);
        stopInterceptRequestLayout(false);
        this.mState.f2890g = false;
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i6, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i6, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.mPendingSavedState = savedState;
        super.onRestoreInstanceState(savedState.f1319a);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.mPendingSavedState;
        if (savedState2 != null) {
            savedState.f2763c = savedState2.f2763c;
        } else {
            x0 x0Var = this.mLayout;
            if (x0Var != null) {
                savedState.f2763c = x0Var.onSaveInstanceState();
            } else {
                savedState.f2763c = null;
            }
        }
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i6, int i10, int i11, int i12) {
        super.onSizeChanged(i6, i10, i11, i12);
        if (i6 == i11 && i10 == i12) {
            return;
        }
        invalidateGlows();
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00dc A[PHI: r0
  0x00dc: PHI (r0v37 int) = (r0v26 int), (r0v41 int) binds: [B:41:0x00c5, B:45:0x00d8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f5  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            Method dump skipped, instructions count: 489
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void postAnimationRunner() {
        if (this.mPostedAnimatorRunner || !this.mIsAttached) {
            return;
        }
        Runnable runnable = this.mItemAnimatorRunner;
        WeakHashMap weakHashMap = n0.s0.f8353a;
        postOnAnimation(runnable);
        this.mPostedAnimatorRunner = true;
    }

    public void processDataSetCompletelyChanged(boolean z7) {
        this.mDispatchItemsChangedEvent = z7 | this.mDispatchItemsChangedEvent;
        this.mDataSetHasChangedAfterLayout = true;
        markKnownViewsInvalid();
    }

    public void recordAnimationInfoIfBouncedHiddenView(p1 p1Var, r0 r0Var) {
        p1Var.setFlags(0, 8192);
        if (this.mState.f2891h && p1Var.isUpdated() && !p1Var.isRemoved() && !p1Var.shouldIgnore()) {
            this.mViewInfoStore.f2838b.h(getChangedHolderKey(p1Var), p1Var);
        }
        p.l lVar = this.mViewInfoStore.f2837a;
        c2 c2VarA = (c2) lVar.get(p1Var);
        if (c2VarA == null) {
            c2VarA = c2.a();
            lVar.put(p1Var, c2VarA);
        }
        c2VarA.f2814b = r0Var;
        c2VarA.f2813a |= 4;
    }

    public void removeAndRecycleViews() {
        s0 s0Var = this.mItemAnimator;
        if (s0Var != null) {
            s0Var.e();
        }
        x0 x0Var = this.mLayout;
        if (x0Var != null) {
            x0Var.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        }
        e1 e1Var = this.mRecycler;
        e1Var.f2831a.clear();
        e1Var.g();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean removeAnimatingView(android.view.View r8) {
        /*
            r7 = this;
            r7.startInterceptRequestLayout()
            androidx.recyclerview.widget.d r0 = r7.mChildHelper
            androidx.recyclerview.widget.c r1 = r0.f2817b
            androidx.recyclerview.widget.i0 r2 = r0.f2816a
            int r3 = r0.d
            r4 = 1
            r5 = 0
            if (r3 != r4) goto L1d
            android.view.View r0 = r0.f2819e
            if (r0 != r8) goto L15
        L13:
            r4 = 0
            goto L48
        L15:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "Cannot call removeViewIfHidden within removeView(At) for a different view"
            r8.<init>(r0)
            throw r8
        L1d:
            r6 = 2
            if (r3 == r6) goto L80
            r0.d = r6     // Catch: java.lang.Throwable -> L33
            java.lang.Object r3 = r2.f2858a     // Catch: java.lang.Throwable -> L33
            androidx.recyclerview.widget.RecyclerView r3 = (androidx.recyclerview.widget.RecyclerView) r3     // Catch: java.lang.Throwable -> L33
            int r3 = r3.indexOfChild(r8)     // Catch: java.lang.Throwable -> L33
            r6 = -1
            if (r3 != r6) goto L35
            r0.l(r8)     // Catch: java.lang.Throwable -> L33
        L30:
            r0.d = r5
            goto L48
        L33:
            r8 = move-exception
            goto L7d
        L35:
            boolean r6 = r1.e(r3)     // Catch: java.lang.Throwable -> L33
            if (r6 == 0) goto L45
            r1.g(r3)     // Catch: java.lang.Throwable -> L33
            r0.l(r8)     // Catch: java.lang.Throwable -> L33
            r2.c(r3)     // Catch: java.lang.Throwable -> L33
            goto L30
        L45:
            r0.d = r5
            goto L13
        L48:
            if (r4 == 0) goto L77
            androidx.recyclerview.widget.p1 r0 = getChildViewHolderInt(r8)
            androidx.recyclerview.widget.e1 r1 = r7.mRecycler
            r1.m(r0)
            androidx.recyclerview.widget.e1 r1 = r7.mRecycler
            r1.j(r0)
            boolean r0 = androidx.recyclerview.widget.RecyclerView.sVerboseLoggingEnabled
            if (r0 == 0) goto L77
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "after removing animated view: "
            r0.<init>(r1)
            r0.append(r8)
            java.lang.String r8 = ", "
            r0.append(r8)
            r0.append(r7)
            java.lang.String r8 = r0.toString()
            java.lang.String r0 = "RecyclerView"
            android.util.Log.d(r0, r8)
        L77:
            r8 = r4 ^ 1
            r7.stopInterceptRequestLayout(r8)
            return r4
        L7d:
            r0.d = r5
            throw r8
        L80:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "Cannot call removeViewIfHidden within removeViewIfHidden"
            r8.<init>(r0)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.removeAnimatingView(android.view.View):boolean");
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z7) {
        p1 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.isTmpDetached()) {
                childViewHolderInt.clearTmpDetachFlag();
            } else if (!childViewHolderInt.shouldIgnore()) {
                StringBuilder sb = new StringBuilder("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(childViewHolderInt);
                throw new IllegalArgumentException(a.e.p(this, sb));
            }
        } else if (sDebugAssertionsEnabled) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            throw new IllegalArgumentException(a.e.p(this, sb2));
        }
        view.clearAnimation();
        dispatchChildDetached(view);
        super.removeDetachedView(view, z7);
    }

    public void removeItemDecoration(t0 t0Var) {
        x0 x0Var = this.mLayout;
        if (x0Var != null) {
            x0Var.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(t0Var);
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void removeItemDecorationAt(int i6) {
        int itemDecorationCount = getItemDecorationCount();
        if (i6 >= 0 && i6 < itemDecorationCount) {
            removeItemDecoration(getItemDecorationAt(i6));
            return;
        }
        throw new IndexOutOfBoundsException(i6 + " is an invalid index for size " + itemDecorationCount);
    }

    public void removeOnChildAttachStateChangeListener(y0 y0Var) {
        List<y0> list = this.mOnChildAttachStateListeners;
        if (list == null) {
            return;
        }
        list.remove(y0Var);
    }

    public void removeOnItemTouchListener(a1 a1Var) {
        this.mOnItemTouchListeners.remove(a1Var);
        if (this.mInterceptingOnItemTouchListener == a1Var) {
            this.mInterceptingOnItemTouchListener = null;
        }
    }

    public void removeOnScrollListener(b1 b1Var) {
        List<b1> list = this.mScrollListeners;
        if (list != null) {
            list.remove(b1Var);
        }
    }

    public void removeRecyclerListener(f1 f1Var) {
        this.mRecyclerListeners.remove(f1Var);
    }

    public void repositionShadowingViews() {
        p1 p1Var;
        int iE = this.mChildHelper.e();
        for (int i6 = 0; i6 < iE; i6++) {
            View viewD = this.mChildHelper.d(i6);
            p1 childViewHolder = getChildViewHolder(viewD);
            if (childViewHolder != null && (p1Var = childViewHolder.mShadowingHolder) != null) {
                View view = p1Var.itemView;
                int left = viewD.getLeft();
                int top = viewD.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.mLayout.onRequestChildFocus(this, this.mState, view, view2) && view2 != null) {
            requestChildOnScreen(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z7) {
        return this.mLayout.requestChildRectangleOnScreen(this, view, rect, z7);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z7) {
        int size = this.mOnItemTouchListeners.size();
        for (int i6 = 0; i6 < size; i6++) {
            this.mOnItemTouchListeners.get(i6).getClass();
        }
        super.requestDisallowInterceptTouchEvent(z7);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mInterceptRequestLayoutDepth != 0 || this.mLayoutSuppressed) {
            this.mLayoutWasDefered = true;
        } else {
            super.requestLayout();
        }
    }

    public void saveOldPositions() {
        int iH = this.mChildHelper.h();
        for (int i6 = 0; i6 < iH; i6++) {
            p1 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i6));
            if (sDebugAssertionsEnabled && childViewHolderInt.mPosition == -1 && !childViewHolderInt.isRemoved()) {
                throw new IllegalStateException(a.e.p(this, new StringBuilder("view holder cannot have position -1 unless it is removed")));
            }
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.saveOldPosition();
            }
        }
    }

    @Override // android.view.View
    public void scrollBy(int i6, int i10) {
        x0 x0Var = this.mLayout;
        if (x0Var == null) {
            Log.e(TAG, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        boolean zCanScrollHorizontally = x0Var.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (zCanScrollHorizontally || zCanScrollVertically) {
            if (!zCanScrollHorizontally) {
                i6 = 0;
            }
            if (!zCanScrollVertically) {
                i10 = 0;
            }
            scrollByInternal(i6, i10, null, 0);
        }
    }

    public boolean scrollByInternal(int i6, int i10, MotionEvent motionEvent, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        consumePendingUpdateOperations();
        if (this.mAdapter != null) {
            int[] iArr = this.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            scrollStep(i6, i10, iArr);
            int[] iArr2 = this.mReusableIntPair;
            int i16 = iArr2[0];
            int i17 = iArr2[1];
            i12 = i17;
            i13 = i16;
            i14 = i6 - i16;
            i15 = i10 - i17;
        } else {
            i12 = 0;
            i13 = 0;
            i14 = 0;
            i15 = 0;
        }
        if (!this.mItemDecorations.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.mReusableIntPair;
        iArr3[0] = 0;
        iArr3[1] = 0;
        dispatchNestedScroll(i13, i12, i14, i15, this.mScrollOffset, i11, iArr3);
        int[] iArr4 = this.mReusableIntPair;
        int i18 = iArr4[0];
        int i19 = i14 - i18;
        int i20 = iArr4[1];
        int i21 = i15 - i20;
        boolean z7 = (i18 == 0 && i20 == 0) ? false : true;
        int i22 = this.mLastTouchX;
        int[] iArr5 = this.mScrollOffset;
        int i23 = iArr5[0];
        this.mLastTouchX = i22 - i23;
        int i24 = this.mLastTouchY;
        int i25 = iArr5[1];
        this.mLastTouchY = i24 - i25;
        int[] iArr6 = this.mNestedOffsets;
        iArr6[0] = iArr6[0] + i23;
        iArr6[1] = iArr6[1] + i25;
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !n5.d.z(motionEvent, 8194)) {
                pullGlows(motionEvent.getX(), i19, motionEvent.getY(), i21);
                if (Build.VERSION.SDK_INT >= 31 && n5.d.z(motionEvent, 4194304)) {
                    releaseGlows();
                }
            }
            considerReleasingGlowsOnScroll(i6, i10);
        }
        if (i13 != 0 || i12 != 0) {
            dispatchOnScrolled(i13, i12);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z7 && i13 == 0 && i12 == 0) ? false : true;
    }

    public void scrollStep(int i6, int i10, int[] iArr) {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        Trace.beginSection(TRACE_SCROLL_TAG);
        fillRemainingScrollValues(this.mState);
        int iScrollHorizontallyBy = i6 != 0 ? this.mLayout.scrollHorizontallyBy(i6, this.mRecycler, this.mState) : 0;
        int iScrollVerticallyBy = i10 != 0 ? this.mLayout.scrollVerticallyBy(i10, this.mRecycler, this.mState) : 0;
        Trace.endSection();
        repositionShadowingViews();
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        if (iArr != null) {
            iArr[0] = iScrollHorizontallyBy;
            iArr[1] = iScrollVerticallyBy;
        }
    }

    @Override // android.view.View
    public void scrollTo(int i6, int i10) {
        Log.w(TAG, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    public void scrollToPosition(int i6) {
        if (this.mLayoutSuppressed) {
            return;
        }
        stopScroll();
        x0 x0Var = this.mLayout;
        if (x0Var == null) {
            Log.e(TAG, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            x0Var.scrollToPosition(i6);
            awakenScrollBars();
        }
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (shouldDeferAccessibilityEvent(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(r1 r1Var) {
        this.mAccessibilityDelegate = r1Var;
        n0.s0.q(this, r1Var);
    }

    public void setAdapter(k0 k0Var) {
        setLayoutFrozen(false);
        setAdapterInternal(k0Var, false, true);
        processDataSetCompletelyChanged(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(o0 o0Var) {
        if (o0Var == null) {
            return;
        }
        setChildrenDrawingOrderEnabled(false);
    }

    public boolean setChildImportantForAccessibilityInternal(p1 p1Var, int i6) {
        if (!isComputingLayout()) {
            p1Var.itemView.setImportantForAccessibility(i6);
            return true;
        }
        p1Var.mPendingAccessibilityState = i6;
        this.mPendingAccessibilityImportanceChange.add(p1Var);
        return false;
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z7) {
        if (z7 != this.mClipToPadding) {
            invalidateGlows();
        }
        this.mClipToPadding = z7;
        super.setClipToPadding(z7);
        if (this.mFirstLayoutComplete) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(p0 p0Var) {
        p0Var.getClass();
        this.mEdgeEffectFactory = p0Var;
        invalidateGlows();
    }

    public void setHasFixedSize(boolean z7) {
        this.mHasFixedSize = z7;
    }

    public void setItemAnimator(s0 s0Var) {
        s0 s0Var2 = this.mItemAnimator;
        if (s0Var2 != null) {
            s0Var2.e();
            this.mItemAnimator.f2944a = null;
        }
        this.mItemAnimator = s0Var;
        if (s0Var != null) {
            s0Var.f2944a = this.mItemAnimatorListener;
        }
    }

    public void setItemViewCacheSize(int i6) {
        e1 e1Var = this.mRecycler;
        e1Var.f2834e = i6;
        e1Var.n();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z7) {
        suppressLayout(z7);
    }

    public void setLayoutManager(x0 x0Var) {
        RecyclerView recyclerView;
        if (x0Var == this.mLayout) {
            return;
        }
        stopScroll();
        if (this.mLayout != null) {
            s0 s0Var = this.mItemAnimator;
            if (s0Var != null) {
                s0Var.e();
            }
            this.mLayout.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
            e1 e1Var = this.mRecycler;
            e1Var.f2831a.clear();
            e1Var.g();
            if (this.mIsAttached) {
                this.mLayout.dispatchDetachedFromWindow(this, this.mRecycler);
            }
            this.mLayout.setRecyclerView(null);
            this.mLayout = null;
        } else {
            e1 e1Var2 = this.mRecycler;
            e1Var2.f2831a.clear();
            e1Var2.g();
        }
        d dVar = this.mChildHelper;
        dVar.f2817b.h();
        ArrayList arrayList = dVar.f2818c;
        int size = arrayList.size();
        while (true) {
            size--;
            recyclerView = (RecyclerView) dVar.f2816a.f2858a;
            if (size < 0) {
                break;
            }
            p1 childViewHolderInt = getChildViewHolderInt((View) arrayList.get(size));
            if (childViewHolderInt != null) {
                childViewHolderInt.onLeftHiddenState(recyclerView);
            }
            arrayList.remove(size);
        }
        int childCount = recyclerView.getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = recyclerView.getChildAt(i6);
            recyclerView.dispatchChildDetached(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeAllViews();
        this.mLayout = x0Var;
        if (x0Var != null) {
            if (x0Var.mRecyclerView != null) {
                StringBuilder sb = new StringBuilder("LayoutManager ");
                sb.append(x0Var);
                sb.append(" is already attached to a RecyclerView:");
                throw new IllegalArgumentException(a.e.p(x0Var.mRecyclerView, sb));
            }
            x0Var.setRecyclerView(this);
            if (this.mIsAttached) {
                this.mLayout.dispatchAttachedToWindow(this);
            }
        }
        this.mRecycler.n();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z7) {
        n0.o scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.d) {
            WeakHashMap weakHashMap = n0.s0.f8353a;
            n0.g0.z(scrollingChildHelper.f8341c);
        }
        scrollingChildHelper.d = z7;
    }

    public void setOnFlingListener(z0 z0Var) {
        this.mOnFlingListener = z0Var;
    }

    @Deprecated
    public void setOnScrollListener(b1 b1Var) {
        this.mScrollListener = b1Var;
    }

    public void setPreserveFocusAfterLayout(boolean z7) {
        this.mPreserveFocusAfterLayout = z7;
    }

    public void setRecycledViewPool(d1 d1Var) {
        e1 e1Var = this.mRecycler;
        RecyclerView recyclerView = e1Var.f2836h;
        e1Var.f(recyclerView.mAdapter, false);
        if (e1Var.f2835g != null) {
            r2.f2824b--;
        }
        e1Var.f2835g = d1Var;
        if (d1Var != null && recyclerView.getAdapter() != null) {
            e1Var.f2835g.f2824b++;
        }
        e1Var.e();
    }

    @Deprecated
    public void setRecyclerListener(f1 f1Var) {
        this.mRecyclerListener = f1Var;
    }

    public void setScrollState(int i6) {
        if (i6 == this.mScrollState) {
            return;
        }
        if (sVerboseLoggingEnabled) {
            StringBuilder sbU = a.e.u(i6, "setting scroll state to ", " from ");
            sbU.append(this.mScrollState);
            Log.d(TAG, sbU.toString(), new Exception());
        }
        this.mScrollState = i6;
        if (i6 != 2) {
            stopScrollersInternal();
        }
        dispatchOnScrollStateChanged(i6);
    }

    public void setScrollingTouchSlop(int i6) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i6 != 0) {
            if (i6 == 1) {
                this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w(TAG, "setScrollingTouchSlop(): bad argument constant " + i6 + "; using default value");
        }
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(n1 n1Var) {
        this.mRecycler.getClass();
    }

    public boolean shouldDeferAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (!isComputingLayout()) {
            return false;
        }
        int contentChangeTypes = accessibilityEvent != null ? accessibilityEvent.getContentChangeTypes() : 0;
        this.mEatenAccessibilityChangeFlags |= contentChangeTypes != 0 ? contentChangeTypes : 0;
        return true;
    }

    public void smoothScrollBy(int i6, int i10) {
        smoothScrollBy(i6, i10, null);
    }

    public void smoothScrollToPosition(int i6) {
        if (this.mLayoutSuppressed) {
            return;
        }
        x0 x0Var = this.mLayout;
        if (x0Var == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            x0Var.smoothScrollToPosition(this, this.mState, i6);
        }
    }

    public void startInterceptRequestLayout() {
        int i6 = this.mInterceptRequestLayoutDepth + 1;
        this.mInterceptRequestLayoutDepth = i6;
        if (i6 != 1 || this.mLayoutSuppressed) {
            return;
        }
        this.mLayoutWasDefered = false;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i6) {
        return getScrollingChildHelper().g(i6, 0);
    }

    public void stopInterceptRequestLayout(boolean z7) {
        if (this.mInterceptRequestLayoutDepth < 1) {
            if (sDebugAssertionsEnabled) {
                throw new IllegalStateException(a.e.p(this, new StringBuilder("stopInterceptRequestLayout was called more times than startInterceptRequestLayout.")));
            }
            this.mInterceptRequestLayoutDepth = 1;
        }
        if (!z7 && !this.mLayoutSuppressed) {
            this.mLayoutWasDefered = false;
        }
        if (this.mInterceptRequestLayoutDepth == 1) {
            if (z7 && this.mLayoutWasDefered && !this.mLayoutSuppressed && this.mLayout != null && this.mAdapter != null) {
                dispatchLayout();
            }
            if (!this.mLayoutSuppressed) {
                this.mLayoutWasDefered = false;
            }
        }
        this.mInterceptRequestLayoutDepth--;
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        getScrollingChildHelper().h(0);
    }

    public void stopScroll() {
        setScrollState(0);
        stopScrollersInternal();
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z7) {
        if (z7 != this.mLayoutSuppressed) {
            assertNotInLayoutOrScroll("Do not suppressLayout in layout or scroll");
            if (z7) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
                this.mLayoutSuppressed = true;
                this.mIgnoreMotionEventTillDown = true;
                stopScroll();
                return;
            }
            this.mLayoutSuppressed = false;
            if (this.mLayoutWasDefered && this.mLayout != null && this.mAdapter != null) {
                requestLayout();
            }
            this.mLayoutWasDefered = false;
        }
    }

    public void swapAdapter(k0 k0Var, boolean z7) {
        setLayoutFrozen(false);
        setAdapterInternal(k0Var, true, z7);
        processDataSetCompletelyChanged(true);
        requestLayout();
    }

    public void viewRangeUpdate(int i6, int i10, Object obj) {
        int i11;
        int i12;
        int iH = this.mChildHelper.h();
        int i13 = i10 + i6;
        for (int i14 = 0; i14 < iH; i14++) {
            View viewG = this.mChildHelper.g(i14);
            p1 childViewHolderInt = getChildViewHolderInt(viewG);
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && (i12 = childViewHolderInt.mPosition) >= i6 && i12 < i13) {
                childViewHolderInt.addFlags(2);
                childViewHolderInt.addChangePayload(obj);
                ((LayoutParams) viewG.getLayoutParams()).f2762c = true;
            }
        }
        e1 e1Var = this.mRecycler;
        ArrayList arrayList = e1Var.f2833c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            p1 p1Var = (p1) arrayList.get(size);
            if (p1Var != null && (i11 = p1Var.mPosition) >= i6 && i11 < i13) {
                p1Var.addFlags(2);
                e1Var.h(size);
            }
        }
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.p2elite.brtv2.R.attr.recyclerViewStyle);
    }

    private boolean fling(int i6, int i10, int i11, int i12) {
        int iMax;
        int i13;
        x0 x0Var = this.mLayout;
        if (x0Var == null) {
            Log.e(TAG, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        }
        if (this.mLayoutSuppressed) {
            return false;
        }
        boolean zCanScrollHorizontally = x0Var.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (!zCanScrollHorizontally || Math.abs(i6) < i11) {
            i6 = 0;
        }
        if (!zCanScrollVertically || Math.abs(i10) < i11) {
            i10 = 0;
        }
        if (i6 == 0 && i10 == 0) {
            return false;
        }
        if (i6 == 0) {
            iMax = 0;
        } else {
            EdgeEffect edgeEffect = this.mLeftGlow;
            if (edgeEffect == null || com.bumptech.glide.d.m(edgeEffect) == 0.0f) {
                EdgeEffect edgeEffect2 = this.mRightGlow;
                if (edgeEffect2 != null && com.bumptech.glide.d.m(edgeEffect2) != 0.0f) {
                    if (shouldAbsorb(this.mRightGlow, i6, getWidth())) {
                        this.mRightGlow.onAbsorb(i6);
                        i6 = 0;
                    }
                    iMax = i6;
                    i6 = 0;
                }
                iMax = 0;
            } else {
                int i14 = -i6;
                if (shouldAbsorb(this.mLeftGlow, i14, getWidth())) {
                    this.mLeftGlow.onAbsorb(i14);
                    i6 = 0;
                }
                iMax = i6;
                i6 = 0;
            }
        }
        if (i10 == 0) {
            i13 = i10;
            i10 = 0;
        } else {
            EdgeEffect edgeEffect3 = this.mTopGlow;
            if (edgeEffect3 == null || com.bumptech.glide.d.m(edgeEffect3) == 0.0f) {
                EdgeEffect edgeEffect4 = this.mBottomGlow;
                if (edgeEffect4 != null && com.bumptech.glide.d.m(edgeEffect4) != 0.0f) {
                    if (shouldAbsorb(this.mBottomGlow, i10, getHeight())) {
                        this.mBottomGlow.onAbsorb(i10);
                        i10 = 0;
                    }
                    i13 = 0;
                }
                i13 = i10;
                i10 = 0;
            } else {
                int i15 = -i10;
                if (shouldAbsorb(this.mTopGlow, i15, getHeight())) {
                    this.mTopGlow.onAbsorb(i15);
                    i10 = 0;
                }
                i13 = 0;
            }
        }
        if (iMax != 0 || i10 != 0) {
            int i16 = -i12;
            iMax = Math.max(i16, Math.min(iMax, i12));
            i10 = Math.max(i16, Math.min(i10, i12));
            startNestedScrollForType(1);
            this.mViewFlinger.a(iMax, i10);
        }
        if (i6 == 0 && i13 == 0) {
            return (iMax == 0 && i10 == 0) ? false : true;
        }
        float f = i6;
        float f3 = i13;
        if (!dispatchNestedPreFling(f, f3)) {
            boolean z7 = zCanScrollHorizontally || zCanScrollVertically;
            dispatchNestedFling(f, f3, z7);
            z0 z0Var = this.mOnFlingListener;
            if (z0Var != null && z0Var.onFling(i6, i13)) {
                return true;
            }
            if (z7) {
                startNestedScrollForType(1);
                int i17 = -i12;
                this.mViewFlinger.a(Math.max(i17, Math.min(i6, i12)), Math.max(i17, Math.min(i13, i12)));
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public androidx.recyclerview.widget.p1 findViewHolderForPosition(int r6, boolean r7) {
        /*
            r5 = this;
            androidx.recyclerview.widget.d r0 = r5.mChildHelper
            int r0 = r0.h()
            r1 = 0
            r2 = 0
        L8:
            if (r2 >= r0) goto L3c
            androidx.recyclerview.widget.d r3 = r5.mChildHelper
            android.view.View r3 = r3.g(r2)
            androidx.recyclerview.widget.p1 r3 = getChildViewHolderInt(r3)
            if (r3 == 0) goto L39
            boolean r4 = r3.isRemoved()
            if (r4 != 0) goto L39
            if (r7 == 0) goto L23
            int r4 = r3.mPosition
            if (r4 == r6) goto L2a
            goto L39
        L23:
            int r4 = r3.getLayoutPosition()
            if (r4 == r6) goto L2a
            goto L39
        L2a:
            androidx.recyclerview.widget.d r1 = r5.mChildHelper
            android.view.View r4 = r3.itemView
            java.util.ArrayList r1 = r1.f2818c
            boolean r1 = r1.contains(r4)
            if (r1 == 0) goto L38
            r1 = r3
            goto L39
        L38:
            return r3
        L39:
            int r2 = r2 + 1
            goto L8
        L3c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.findViewHolderForPosition(int, boolean):androidx.recyclerview.widget.p1");
    }

    public void onExitLayoutOrScroll(boolean z7) {
        int i6 = this.mLayoutOrScrollCounter - 1;
        this.mLayoutOrScrollCounter = i6;
        if (i6 < 1) {
            if (sDebugAssertionsEnabled && i6 < 0) {
                throw new IllegalStateException(a.e.p(this, new StringBuilder("layout or scroll counter cannot go below zero.Some calls are not matching")));
            }
            this.mLayoutOrScrollCounter = 0;
            if (z7) {
                dispatchContentChangedIfNecessary();
                dispatchPendingImportantForAccessibilityChanges();
            }
        }
    }

    public void smoothScrollBy(int i6, int i10, Interpolator interpolator) {
        smoothScrollBy(i6, i10, interpolator, Integer.MIN_VALUE);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecyclerView(Context context, AttributeSet attributeSet, int i6) throws NoSuchMethodException, SecurityException {
        float fA;
        float fA2;
        super(context, attributeSet, i6);
        int i10 = 1;
        this.mObserver = new g1(this);
        this.mRecycler = new e1(this);
        this.mViewInfoStore = new e2();
        this.mUpdateChildViewsRunnable = new g0(this, 0);
        this.mTempRect = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRectF = new RectF();
        this.mRecyclerListeners = new ArrayList();
        this.mItemDecorations = new ArrayList<>();
        this.mOnItemTouchListeners = new ArrayList<>();
        this.mInterceptRequestLayoutDepth = 0;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        this.mLayoutOrScrollCounter = 0;
        this.mDispatchScrollCounter = 0;
        this.mEdgeEffectFactory = sDefaultEdgeEffectFactory;
        k kVar = new k();
        kVar.f2944a = null;
        kVar.f2945b = new ArrayList();
        kVar.f2946c = 120L;
        kVar.d = 120L;
        kVar.f2947e = 250L;
        kVar.f = 250L;
        kVar.f2871g = true;
        kVar.f2872h = new ArrayList();
        kVar.f2873i = new ArrayList();
        kVar.f2874j = new ArrayList();
        kVar.f2875k = new ArrayList();
        kVar.f2876l = new ArrayList();
        kVar.f2877m = new ArrayList();
        kVar.f2878n = new ArrayList();
        kVar.f2879o = new ArrayList();
        kVar.f2880p = new ArrayList();
        kVar.f2881q = new ArrayList();
        kVar.f2882r = new ArrayList();
        this.mItemAnimator = kVar;
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScaledHorizontalScrollFactor = Float.MIN_VALUE;
        this.mScaledVerticalScrollFactor = Float.MIN_VALUE;
        this.mPreserveFocusAfterLayout = true;
        this.mViewFlinger = new o1(this);
        this.mPrefetchRegistry = ALLOW_THREAD_GAP_WORK ? new r() : null;
        l1 l1Var = new l1();
        l1Var.f2886a = -1;
        l1Var.f2887b = 0;
        l1Var.f2888c = 0;
        l1Var.d = 1;
        l1Var.f2889e = 0;
        l1Var.f = false;
        l1Var.f2890g = false;
        l1Var.f2891h = false;
        l1Var.f2892i = false;
        l1Var.f2893j = false;
        l1Var.f2894k = false;
        this.mState = l1Var;
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        this.mItemAnimatorListener = new i0(this);
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[2];
        this.mScrollOffset = new int[2];
        this.mNestedOffsets = new int[2];
        this.mReusableIntPair = new int[2];
        this.mPendingAccessibilityImportanceChange = new ArrayList();
        this.mItemAnimatorRunner = new g0(this, i10);
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mViewInfoProcessCallback = new i0(this);
        i0 i0Var = new i0(this);
        this.mDifferentialMotionFlingTarget = i0Var;
        this.mDifferentialMotionFlingController = new n0.h(getContext(), i0Var);
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 26) {
            Method method = n0.w0.f8362a;
            fA = n0.t0.a(viewConfiguration);
        } else {
            fA = n0.w0.a(viewConfiguration, context);
        }
        this.mScaledHorizontalScrollFactor = fA;
        if (i11 >= 26) {
            fA2 = n0.t0.b(viewConfiguration);
        } else {
            fA2 = n0.w0.a(viewConfiguration, context);
        }
        this.mScaledVerticalScrollFactor = fA2;
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mPhysicalCoef = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        setWillNotDraw(getOverScrollMode() == 2);
        this.mItemAnimator.f2944a = this.mItemAnimatorListener;
        initAdapterManager();
        initChildrenHelper();
        initAutofill();
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new r1(this));
        int[] iArr = u1.a.f10322a;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i6, 0);
        n0.s0.p(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i6, 0);
        String string = typedArrayObtainStyledAttributes.getString(8);
        if (typedArrayObtainStyledAttributes.getInt(2, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.mClipToPadding = typedArrayObtainStyledAttributes.getBoolean(1, true);
        boolean z7 = typedArrayObtainStyledAttributes.getBoolean(3, false);
        this.mEnableFastScroller = z7;
        if (z7) {
            initFastScroller((StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(6), typedArrayObtainStyledAttributes.getDrawable(7), (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(4), typedArrayObtainStyledAttributes.getDrawable(5));
        }
        typedArrayObtainStyledAttributes.recycle();
        this.mLowResRotaryEncoderFeature = context.getPackageManager().hasSystemFeature(LOW_RES_ROTARY_ENCODER_FEATURE);
        createLayoutManager(context, string, attributeSet, i6, 0);
        int[] iArr2 = NESTED_SCROLLING_ATTRS;
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i6, 0);
        n0.s0.p(this, context, iArr2, attributeSet, typedArrayObtainStyledAttributes2, i6, 0);
        boolean z10 = typedArrayObtainStyledAttributes2.getBoolean(0, true);
        typedArrayObtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z10);
        setTag(com.p2elite.brtv2.R.id.is_pooling_container_tag, Boolean.TRUE);
    }

    public boolean dispatchNestedPreScroll(int i6, int i10, int[] iArr, int[] iArr2, int i11) {
        return getScrollingChildHelper().c(i6, i10, iArr, iArr2, i11);
    }

    public boolean dispatchNestedScroll(int i6, int i10, int i11, int i12, int[] iArr, int i13) {
        return getScrollingChildHelper().d(i6, i10, i11, i12, iArr, i13, null);
    }

    public boolean hasNestedScrollingParent(int i6) {
        return getScrollingChildHelper().f(i6);
    }

    public void smoothScrollBy(int i6, int i10, Interpolator interpolator, int i11) {
        smoothScrollBy(i6, i10, interpolator, i11, false);
    }

    public boolean startNestedScroll(int i6, int i10) {
        return getScrollingChildHelper().g(i6, i10);
    }

    public void stopNestedScroll(int i6) {
        getScrollingChildHelper().h(i6);
    }

    /* compiled from: MyApplication */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public p1 f2760a;

        /* renamed from: b, reason: collision with root package name */
        public final Rect f2761b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f2762c;
        public boolean d;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2761b = new Rect();
            this.f2762c = true;
            this.d = false;
        }

        public LayoutParams(int i6, int i10) {
            super(i6, i10);
            this.f2761b = new Rect();
            this.f2762c = true;
            this.d = false;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2761b = new Rect();
            this.f2762c = true;
            this.d = false;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2761b = new Rect();
            this.f2762c = true;
            this.d = false;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
            this.f2761b = new Rect();
            this.f2762c = true;
            this.d = false;
        }
    }

    public void smoothScrollBy(int i6, int i10, Interpolator interpolator, int i11, boolean z7) {
        x0 x0Var = this.mLayout;
        if (x0Var == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        if (!x0Var.canScrollHorizontally()) {
            i6 = 0;
        }
        if (!this.mLayout.canScrollVertically()) {
            i10 = 0;
        }
        if (i6 == 0 && i10 == 0) {
            return;
        }
        if (i11 != Integer.MIN_VALUE && i11 <= 0) {
            scrollBy(i6, i10);
            return;
        }
        if (z7) {
            int i12 = i6 != 0 ? 1 : 0;
            if (i10 != 0) {
                i12 |= 2;
            }
            startNestedScroll(i12, 1);
        }
        this.mViewFlinger.c(i6, i10, interpolator, i11);
    }

    public final void dispatchNestedScroll(int i6, int i10, int i11, int i12, int[] iArr, int i13, int[] iArr2) {
        getScrollingChildHelper().d(i6, i10, i11, i12, iArr, i13, iArr2);
    }

    public void addItemDecoration(t0 t0Var) {
        addItemDecoration(t0Var, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        x0 x0Var = this.mLayout;
        if (x0Var != null) {
            return x0Var.generateLayoutParams(layoutParams);
        }
        throw new IllegalStateException(a.e.p(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    public void onChildAttachedToWindow(View view) {
    }

    public void onChildDetachedFromWindow(View view) {
    }

    public void onScrollStateChanged(int i6) {
    }

    public void onScrolled(int i6, int i10) {
    }
}
