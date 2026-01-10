package com.google.android.material.appbar;

import android.animation.AnimatorInflater;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.internal.a0;
import com.p2elite.brtv2.R;
import com.youth.banner.config.BannerConfig;
import ea.q;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.WeakHashMap;
import n0.g0;
import n0.n;
import n0.r1;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AppBarLayout extends LinearLayout implements androidx.coordinatorlayout.widget.a {

    /* renamed from: a, reason: collision with root package name */
    public int f4536a;

    /* renamed from: b, reason: collision with root package name */
    public int f4537b;

    /* renamed from: c, reason: collision with root package name */
    public int f4538c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f4539e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public r1 f4540g;

    /* renamed from: h, reason: collision with root package name */
    public ArrayList f4541h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f4542i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f4543j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f4544k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f4545l;

    /* renamed from: m, reason: collision with root package name */
    public int f4546m;

    /* renamed from: n, reason: collision with root package name */
    public WeakReference f4547n;

    /* renamed from: o, reason: collision with root package name */
    public ValueAnimator f4548o;

    /* renamed from: p, reason: collision with root package name */
    public final ArrayList f4549p;

    /* renamed from: q, reason: collision with root package name */
    public int[] f4550q;

    /* renamed from: r, reason: collision with root package name */
    public Drawable f4551r;

    /* renamed from: s, reason: collision with root package name */
    public Behavior f4552s;

    /* compiled from: MyApplication */
    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* compiled from: MyApplication */
    public static class LayoutParams extends LinearLayout.LayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public int f4562a;

        /* renamed from: b, reason: collision with root package name */
        public final a7.f f4563b;

        /* renamed from: c, reason: collision with root package name */
        public final Interpolator f4564c;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f4562a = 1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, x5.a.f11020b);
            this.f4562a = typedArrayObtainStyledAttributes.getInt(1, 0);
            this.f4563b = typedArrayObtainStyledAttributes.getInt(0, 0) != 1 ? null : new a7.f(12);
            if (typedArrayObtainStyledAttributes.hasValue(2)) {
                this.f4564c = AnimationUtils.loadInterpolator(context, typedArrayObtainStyledAttributes.getResourceId(2, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* compiled from: MyApplication */
    public static class ScrollingViewBehavior extends HeaderScrollingViewBehavior {
        public ScrollingViewBehavior() {
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean b(View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) throws Resources.NotFoundException {
            int iG;
            CoordinatorLayout.Behavior behavior = ((androidx.coordinatorlayout.widget.c) view2.getLayoutParams()).f1122a;
            if (behavior instanceof BaseBehavior) {
                int bottom = (view2.getBottom() - view.getTop()) + ((BaseBehavior) behavior).f4553j + this.f4597e;
                if (this.f == 0) {
                    iG = 0;
                } else {
                    float fX = x(view2);
                    int i6 = this.f;
                    iG = l5.a.g((int) (fX * i6), 0, i6);
                }
                s0.j(bottom - iG, view);
            }
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.f4545l) {
                    appBarLayout.e(appBarLayout.f(view));
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void e(CoordinatorLayout coordinatorLayout, View view) {
            if (view instanceof AppBarLayout) {
                s0.m(o0.c.f8524h.a(), coordinatorLayout);
                s0.n(o0.c.f8525i.a(), coordinatorLayout);
                s0.h(0, coordinatorLayout);
                s0.q(coordinatorLayout, null);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean m(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z7) {
            AppBarLayout appBarLayout;
            ArrayList arrayListO = coordinatorLayout.o(view);
            int size = arrayListO.size();
            int i6 = 0;
            while (true) {
                if (i6 >= size) {
                    appBarLayout = null;
                    break;
                }
                View view2 = (View) arrayListO.get(i6);
                if (view2 instanceof AppBarLayout) {
                    appBarLayout = (AppBarLayout) view2;
                    break;
                }
                i6++;
            }
            if (appBarLayout != null) {
                rect.offset(view.getLeft(), view.getTop());
                int width = coordinatorLayout.getWidth();
                int height = coordinatorLayout.getHeight();
                Rect rect2 = this.f4596c;
                rect2.set(0, 0, width, height);
                if (!rect2.contains(rect)) {
                    appBarLayout.d(false, !z7, true);
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        public final AppBarLayout w(ArrayList arrayList) {
            int size = arrayList.size();
            for (int i6 = 0; i6 < size; i6++) {
                View view = (View) arrayList.get(i6);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        public final float x(View view) {
            int i6;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                CoordinatorLayout.Behavior behavior = ((androidx.coordinatorlayout.widget.c) appBarLayout.getLayoutParams()).f1122a;
                int iT = behavior instanceof BaseBehavior ? ((BaseBehavior) behavior).t() : 0;
                if ((downNestedPreScrollRange == 0 || totalScrollRange + iT > downNestedPreScrollRange) && (i6 = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (iT / i6) + 1.0f;
                }
            }
            return 0.0f;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        public final int y(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : view.getMeasuredHeight();
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, x5.a.R);
            this.f = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.appBarLayoutStyle);
    }

    public static LayoutParams a(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            LayoutParams layoutParams2 = new LayoutParams((LinearLayout.LayoutParams) layoutParams);
            layoutParams2.f4562a = 1;
            return layoutParams2;
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            LayoutParams layoutParams3 = new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
            layoutParams3.f4562a = 1;
            return layoutParams3;
        }
        LayoutParams layoutParams4 = new LayoutParams(layoutParams);
        layoutParams4.f4562a = 1;
        return layoutParams4;
    }

    public final void b() {
        Behavior behavior = this.f4552s;
        BaseBehavior.SavedState savedStateF = (behavior == null || this.f4537b == -1 || this.f != 0) ? null : behavior.F(AbsSavedState.f1318b, this);
        this.f4537b = -1;
        this.f4538c = -1;
        this.d = -1;
        if (savedStateF != null) {
            Behavior behavior2 = this.f4552s;
            if (behavior2.f4556m != null) {
                return;
            }
            behavior2.f4556m = savedStateF;
        }
    }

    public final void c(int i6) {
        this.f4536a = i6;
        if (!willNotDraw()) {
            WeakHashMap weakHashMap = s0.f8353a;
            postInvalidateOnAnimation();
        }
        ArrayList arrayList = this.f4541h;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                g gVar = (g) this.f4541h.get(i10);
                if (gVar != null) {
                    CollapsingToolbarLayout collapsingToolbarLayout = ((h) gVar).f4614a;
                    collapsingToolbarLayout.f4585w = i6;
                    r1 r1Var = collapsingToolbarLayout.f4587y;
                    int iD = r1Var != null ? r1Var.d() : 0;
                    int childCount = collapsingToolbarLayout.getChildCount();
                    for (int i11 = 0; i11 < childCount; i11++) {
                        View childAt = collapsingToolbarLayout.getChildAt(i11);
                        CollapsingToolbarLayout.LayoutParams layoutParams = (CollapsingToolbarLayout.LayoutParams) childAt.getLayoutParams();
                        j jVarB = CollapsingToolbarLayout.b(childAt);
                        int i12 = layoutParams.f4589a;
                        if (i12 == 1) {
                            jVarB.b(l5.a.g(-i6, 0, ((collapsingToolbarLayout.getHeight() - CollapsingToolbarLayout.b(childAt).f4619b) - childAt.getHeight()) - ((FrameLayout.LayoutParams) ((CollapsingToolbarLayout.LayoutParams) childAt.getLayoutParams())).bottomMargin));
                        } else if (i12 == 2) {
                            jVarB.b(Math.round((-i6) * layoutParams.f4590b));
                        }
                    }
                    collapsingToolbarLayout.d();
                    if (collapsingToolbarLayout.f4578p != null && iD > 0) {
                        WeakHashMap weakHashMap2 = s0.f8353a;
                        collapsingToolbarLayout.postInvalidateOnAnimation();
                    }
                    int height = collapsingToolbarLayout.getHeight();
                    WeakHashMap weakHashMap3 = s0.f8353a;
                    int minimumHeight = (height - collapsingToolbarLayout.getMinimumHeight()) - iD;
                    float scrimVisibleHeightTrigger = height - collapsingToolbarLayout.getScrimVisibleHeightTrigger();
                    float f = minimumHeight;
                    float fMin = Math.min(1.0f, scrimVisibleHeightTrigger / f);
                    com.google.android.material.internal.d dVar = collapsingToolbarLayout.f4573k;
                    dVar.f4996e = fMin;
                    dVar.f = q.d(1.0f, fMin, 0.5f, fMin);
                    dVar.f4999g = collapsingToolbarLayout.f4585w + minimumHeight;
                    dVar.q(Math.abs(i6) / f);
                }
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public final void d(boolean z7, boolean z10, boolean z11) {
        this.f = (z7 ? 1 : 2) | (z10 ? 4 : 0) | (z11 ? 8 : 0);
        requestLayout();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f4551r == null || getTopInset() <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(0.0f, -this.f4536a);
        this.f4551r.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f4551r;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    public final boolean e(boolean z7) throws Resources.NotFoundException {
        if (this.f4542i || this.f4544k == z7) {
            return false;
        }
        this.f4544k = z7;
        refreshDrawableState();
        if (!this.f4545l || !(getBackground() instanceof u6.h)) {
            return true;
        }
        u6.h hVar = (u6.h) getBackground();
        float dimension = getResources().getDimension(R.dimen.design_appbar_elevation);
        float f = z7 ? 0.0f : dimension;
        if (!z7) {
            dimension = 0.0f;
        }
        ValueAnimator valueAnimator = this.f4548o;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, dimension);
        this.f4548o = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(getResources().getInteger(R.integer.app_bar_elevation_anim_duration));
        this.f4548o.setInterpolator(y5.a.f11406a);
        this.f4548o.addUpdateListener(new a(this, hVar));
        this.f4548o.start();
        return true;
    }

    public final boolean f(View view) {
        int i6;
        if (this.f4547n == null && (i6 = this.f4546m) != -1) {
            View viewFindViewById = view != null ? view.findViewById(i6) : null;
            if (viewFindViewById == null && (getParent() instanceof ViewGroup)) {
                viewFindViewById = ((ViewGroup) getParent()).findViewById(this.f4546m);
            }
            if (viewFindViewById != null) {
                this.f4547n = new WeakReference(viewFindViewById);
            }
        }
        WeakReference weakReference = this.f4547n;
        View view2 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != null) {
            view = view2;
        }
        return view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0);
    }

    public final boolean g() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        if (childAt.getVisibility() == 8) {
            return false;
        }
        WeakHashMap weakHashMap = s0.f8353a;
        return !childAt.getFitsSystemWindows();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-1, -2);
        layoutParams.f4562a = 1;
        return layoutParams;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return a(layoutParams);
    }

    @Override // androidx.coordinatorlayout.widget.a
    public CoordinatorLayout.Behavior<AppBarLayout> getBehavior() {
        Behavior behavior = new Behavior();
        this.f4552s = behavior;
        return behavior;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int getDownNestedPreScrollRange() {
        /*
            r10 = this;
            r0 = 5
            int r1 = r10.f4538c
            r2 = -1
            if (r1 == r2) goto L7
            return r1
        L7:
            int r1 = r10.getChildCount()
            int r1 = r1 + (-1)
            r3 = 0
            r4 = 0
        Lf:
            if (r1 < 0) goto L5f
            android.view.View r5 = r10.getChildAt(r1)
            android.view.ViewGroup$LayoutParams r6 = r5.getLayoutParams()
            com.google.android.material.appbar.AppBarLayout$LayoutParams r6 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r6
            int r7 = r5.getMeasuredHeight()
            int r8 = r6.f4562a
            r9 = r8 & 5
            if (r9 != r0) goto L5a
            int r9 = r6.topMargin
            int r6 = r6.bottomMargin
            int r9 = r9 + r6
            r6 = r8 & 8
            if (r6 == 0) goto L36
            java.util.WeakHashMap r6 = n0.s0.f8353a
            int r6 = r5.getMinimumHeight()
        L34:
            int r6 = r6 + r9
            goto L45
        L36:
            r6 = r8 & 2
            if (r6 == 0) goto L43
            java.util.WeakHashMap r6 = n0.s0.f8353a
            int r6 = r5.getMinimumHeight()
            int r6 = r7 - r6
            goto L34
        L43:
            int r6 = r9 + r7
        L45:
            if (r1 != 0) goto L58
            java.util.WeakHashMap r8 = n0.s0.f8353a
            boolean r5 = r5.getFitsSystemWindows()
            if (r5 == 0) goto L58
            int r5 = r10.getTopInset()
            int r7 = r7 - r5
            int r6 = java.lang.Math.min(r6, r7)
        L58:
            int r4 = r4 + r6
            goto L5d
        L5a:
            if (r4 <= 0) goto L5d
            goto L5f
        L5d:
            int r1 = r1 + r2
            goto Lf
        L5f:
            int r0 = java.lang.Math.max(r3, r4)
            r10.f4538c = r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.getDownNestedPreScrollRange():int");
    }

    public int getDownNestedScrollRange() {
        int i6 = this.d;
        if (i6 != -1) {
            return i6;
        }
        int childCount = getChildCount();
        int i10 = 0;
        int minimumHeight = 0;
        while (true) {
            if (i10 >= childCount) {
                break;
            }
            View childAt = getChildAt(i10);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + childAt.getMeasuredHeight();
            int i11 = layoutParams.f4562a;
            if ((i11 & 1) == 0) {
                break;
            }
            minimumHeight += measuredHeight;
            if ((i11 & 2) != 0) {
                WeakHashMap weakHashMap = s0.f8353a;
                minimumHeight -= childAt.getMinimumHeight();
                break;
            }
            i10++;
        }
        int iMax = Math.max(0, minimumHeight);
        this.d = iMax;
        return iMax;
    }

    public int getLiftOnScrollTargetViewId() {
        return this.f4546m;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        WeakHashMap weakHashMap = s0.f8353a;
        int minimumHeight = getMinimumHeight();
        if (minimumHeight == 0) {
            int childCount = getChildCount();
            minimumHeight = childCount >= 1 ? getChildAt(childCount - 1).getMinimumHeight() : 0;
            if (minimumHeight == 0) {
                return getHeight() / 3;
            }
        }
        return (minimumHeight * 2) + topInset;
    }

    public int getPendingAction() {
        return this.f;
    }

    public Drawable getStatusBarForeground() {
        return this.f4551r;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    public final int getTopInset() {
        r1 r1Var = this.f4540g;
        if (r1Var != null) {
            return r1Var.d();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i6 = this.f4537b;
        if (i6 != -1) {
            return i6;
        }
        int childCount = getChildCount();
        int i10 = 0;
        int minimumHeight = 0;
        while (true) {
            if (i10 >= childCount) {
                break;
            }
            View childAt = getChildAt(i10);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i11 = layoutParams.f4562a;
            if ((i11 & 1) == 0) {
                break;
            }
            int topInset = measuredHeight + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + minimumHeight;
            if (i10 == 0) {
                WeakHashMap weakHashMap = s0.f8353a;
                if (childAt.getFitsSystemWindows()) {
                    topInset -= getTopInset();
                }
            }
            minimumHeight = topInset;
            if ((i11 & 2) != 0) {
                WeakHashMap weakHashMap2 = s0.f8353a;
                minimumHeight -= childAt.getMinimumHeight();
                break;
            }
            i10++;
        }
        int iMax = Math.max(0, minimumHeight);
        this.f4537b = iMax;
        return iMax;
    }

    public int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        o9.d.E(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i6) {
        if (this.f4550q == null) {
            this.f4550q = new int[4];
        }
        int[] iArr = this.f4550q;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i6 + iArr.length);
        boolean z7 = this.f4543j;
        iArr[0] = z7 ? R.attr.state_liftable : -2130969748;
        iArr[1] = (z7 && this.f4544k) ? R.attr.state_lifted : -2130969749;
        iArr[2] = z7 ? R.attr.state_collapsible : -2130969746;
        iArr[3] = (z7 && this.f4544k) ? R.attr.state_collapsed : -2130969745;
        return View.mergeDrawableStates(iArrOnCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        WeakReference weakReference = this.f4547n;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f4547n = null;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        boolean z10 = true;
        super.onLayout(z7, i6, i10, i11, i12);
        WeakHashMap weakHashMap = s0.f8353a;
        if (getFitsSystemWindows() && g()) {
            int topInset = getTopInset();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                s0.j(topInset, getChildAt(childCount));
            }
        }
        b();
        this.f4539e = false;
        int childCount2 = getChildCount();
        int i13 = 0;
        while (true) {
            if (i13 >= childCount2) {
                break;
            }
            if (((LayoutParams) getChildAt(i13).getLayoutParams()).f4564c != null) {
                this.f4539e = true;
                break;
            }
            i13++;
        }
        Drawable drawable = this.f4551r;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (this.f4542i) {
            return;
        }
        if (!this.f4545l) {
            int childCount3 = getChildCount();
            int i14 = 0;
            while (true) {
                if (i14 >= childCount3) {
                    z10 = false;
                    break;
                }
                int i15 = ((LayoutParams) getChildAt(i14).getLayoutParams()).f4562a;
                if ((i15 & 1) == 1 && (i15 & 10) != 0) {
                    break;
                } else {
                    i14++;
                }
            }
        }
        if (this.f4543j != z10) {
            this.f4543j = z10;
            refreshDrawableState();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i6, int i10) {
        super.onMeasure(i6, i10);
        int mode = View.MeasureSpec.getMode(i10);
        if (mode != 1073741824) {
            WeakHashMap weakHashMap = s0.f8353a;
            if (getFitsSystemWindows() && g()) {
                int measuredHeight = getMeasuredHeight();
                if (mode == Integer.MIN_VALUE) {
                    measuredHeight = l5.a.g(getTopInset() + getMeasuredHeight(), 0, View.MeasureSpec.getSize(i10));
                } else if (mode == 0) {
                    measuredHeight += getTopInset();
                }
                setMeasuredDimension(getMeasuredWidth(), measuredHeight);
            }
        }
        b();
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        o9.d.B(this, f);
    }

    public void setExpanded(boolean z7) {
        WeakHashMap weakHashMap = s0.f8353a;
        d(z7, isLaidOut(), true);
    }

    public void setLiftOnScroll(boolean z7) {
        this.f4545l = z7;
    }

    public void setLiftOnScrollTargetViewId(int i6) {
        this.f4546m = i6;
        WeakReference weakReference = this.f4547n;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f4547n = null;
    }

    public void setLiftableOverrideEnabled(boolean z7) {
        this.f4542i = z7;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i6) {
        if (i6 != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i6);
    }

    public void setStatusBarForeground(Drawable drawable) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Drawable drawable2 = this.f4551r;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f4551r = drawableMutate;
            boolean z7 = false;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f4551r.setState(getDrawableState());
                }
                Drawable drawable3 = this.f4551r;
                WeakHashMap weakHashMap = s0.f8353a;
                n5.d.Q(drawable3, getLayoutDirection());
                this.f4551r.setVisible(getVisibility() == 0, false);
                this.f4551r.setCallback(this);
            }
            if (this.f4551r != null && getTopInset() > 0) {
                z7 = true;
            }
            setWillNotDraw(true ^ z7);
            WeakHashMap weakHashMap2 = s0.f8353a;
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarForegroundColor(int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setStatusBarForeground(new ColorDrawable(i6));
    }

    public void setStatusBarForegroundResource(int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setStatusBarForeground(com.bumptech.glide.c.h(getContext(), i6));
    }

    @Deprecated
    public void setTargetElevation(float f) {
        k.a(this, f);
    }

    @Override // android.view.View
    public void setVisibility(int i6) {
        super.setVisibility(i6);
        boolean z7 = i6 == 0;
        Drawable drawable = this.f4551r;
        if (drawable != null) {
            drawable.setVisible(z7, false);
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f4551r;
    }

    /* JADX WARN: Finally extract failed */
    public AppBarLayout(Context context, AttributeSet attributeSet, int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        super(y6.a.a(context, attributeSet, i6, R.style.Widget_Design_AppBarLayout), attributeSet, i6);
        this.f4537b = -1;
        this.f4538c = -1;
        this.d = -1;
        this.f = 0;
        this.f4549p = new ArrayList();
        Context context2 = getContext();
        setOrientation(1);
        int i10 = Build.VERSION.SDK_INT;
        if (getOutlineProvider() == ViewOutlineProvider.BACKGROUND) {
            setOutlineProvider(ViewOutlineProvider.BOUNDS);
        }
        Context context3 = getContext();
        TypedArray typedArrayJ = a0.j(context3, attributeSet, k.f4621a, i6, R.style.Widget_Design_AppBarLayout, new int[0]);
        try {
            if (typedArrayJ.hasValue(0)) {
                setStateListAnimator(AnimatorInflater.loadStateListAnimator(context3, typedArrayJ.getResourceId(0, 0)));
            }
            typedArrayJ.recycle();
            TypedArray typedArrayJ2 = a0.j(context2, attributeSet, x5.a.f11018a, i6, R.style.Widget_Design_AppBarLayout, new int[0]);
            Drawable drawable = typedArrayJ2.getDrawable(0);
            WeakHashMap weakHashMap = s0.f8353a;
            setBackground(drawable);
            if (getBackground() instanceof ColorDrawable) {
                ColorDrawable colorDrawable = (ColorDrawable) getBackground();
                u6.h hVar = new u6.h();
                hVar.n(ColorStateList.valueOf(colorDrawable.getColor()));
                hVar.k(context2);
                setBackground(hVar);
            }
            if (typedArrayJ2.hasValue(4)) {
                d(typedArrayJ2.getBoolean(4, false), false, false);
            }
            if (typedArrayJ2.hasValue(3)) {
                k.a(this, typedArrayJ2.getDimensionPixelSize(3, 0));
            }
            if (i10 >= 26) {
                if (typedArrayJ2.hasValue(2)) {
                    setKeyboardNavigationCluster(typedArrayJ2.getBoolean(2, false));
                }
                if (typedArrayJ2.hasValue(1)) {
                    setTouchscreenBlocksFocus(typedArrayJ2.getBoolean(1, false));
                }
            }
            this.f4545l = typedArrayJ2.getBoolean(5, false);
            this.f4546m = typedArrayJ2.getResourceId(6, -1);
            setStatusBarForeground(typedArrayJ2.getDrawable(7));
            typedArrayJ2.recycle();
            g0.u(this, new a0.b(13, this));
        } catch (Throwable th) {
            typedArrayJ.recycle();
            throw th;
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ LinearLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return a(layoutParams);
    }

    /* compiled from: MyApplication */
    public static class BaseBehavior<T extends AppBarLayout> extends HeaderBehavior<T> {

        /* renamed from: j, reason: collision with root package name */
        public int f4553j;

        /* renamed from: k, reason: collision with root package name */
        public int f4554k;

        /* renamed from: l, reason: collision with root package name */
        public ValueAnimator f4555l;

        /* renamed from: m, reason: collision with root package name */
        public SavedState f4556m;

        /* renamed from: n, reason: collision with root package name */
        public WeakReference f4557n;

        /* renamed from: o, reason: collision with root package name */
        public boolean f4558o;

        /* compiled from: MyApplication */
        public static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new f();

            /* renamed from: c, reason: collision with root package name */
            public boolean f4559c;
            public boolean d;

            /* renamed from: e, reason: collision with root package name */
            public int f4560e;
            public float f;

            /* renamed from: g, reason: collision with root package name */
            public boolean f4561g;

            public SavedState(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f4559c = parcel.readByte() != 0;
                this.d = parcel.readByte() != 0;
                this.f4560e = parcel.readInt();
                this.f = parcel.readFloat();
                this.f4561g = parcel.readByte() != 0;
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i6) {
                super.writeToParcel(parcel, i6);
                parcel.writeByte(this.f4559c ? (byte) 1 : (byte) 0);
                parcel.writeByte(this.d ? (byte) 1 : (byte) 0);
                parcel.writeInt(this.f4560e);
                parcel.writeFloat(this.f);
                parcel.writeByte(this.f4561g ? (byte) 1 : (byte) 0);
            }
        }

        public BaseBehavior() {
            this.f = -1;
            this.f4594h = -1;
        }

        public static View D(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = coordinatorLayout.getChildAt(i6);
                if ((childAt instanceof n) || (childAt instanceof ListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x005c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public static void I(androidx.coordinatorlayout.widget.CoordinatorLayout r7, com.google.android.material.appbar.AppBarLayout r8, int r9, int r10, boolean r11) throws android.content.res.Resources.NotFoundException {
            /*
                r0 = 1
                int r1 = java.lang.Math.abs(r9)
                int r2 = r8.getChildCount()
                r3 = 0
                r4 = 0
            Lb:
                if (r4 >= r2) goto L20
                android.view.View r5 = r8.getChildAt(r4)
                int r6 = r5.getTop()
                if (r1 < r6) goto L1e
                int r6 = r5.getBottom()
                if (r1 > r6) goto L1e
                goto L21
            L1e:
                int r4 = r4 + r0
                goto Lb
            L20:
                r5 = 0
            L21:
                if (r5 == 0) goto L5c
                android.view.ViewGroup$LayoutParams r1 = r5.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$LayoutParams r1 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r1
                int r1 = r1.f4562a
                r2 = r1 & 1
                if (r2 == 0) goto L5c
                java.util.WeakHashMap r2 = n0.s0.f8353a
                int r2 = r5.getMinimumHeight()
                if (r10 <= 0) goto L4a
                r10 = r1 & 12
                if (r10 == 0) goto L4a
                int r9 = -r9
                int r10 = r5.getBottom()
                int r10 = r10 - r2
                int r1 = r8.getTopInset()
                int r10 = r10 - r1
                if (r9 < r10) goto L5c
            L48:
                r9 = 1
                goto L5d
            L4a:
                r10 = r1 & 2
                if (r10 == 0) goto L5c
                int r9 = -r9
                int r10 = r5.getBottom()
                int r10 = r10 - r2
                int r1 = r8.getTopInset()
                int r10 = r10 - r1
                if (r9 < r10) goto L5c
                goto L48
            L5c:
                r9 = 0
            L5d:
                boolean r10 = r8.f4545l
                if (r10 == 0) goto L69
                android.view.View r9 = D(r7)
                boolean r9 = r8.f(r9)
            L69:
                boolean r9 = r8.e(r9)
                if (r11 != 0) goto La8
                if (r9 == 0) goto Lab
                a0.f r9 = r7.f1105b
                java.lang.Object r9 = r9.f39c
                p.l r9 = (p.l) r9
                java.lang.Object r9 = r9.get(r8)
                java.util.List r9 = (java.util.List) r9
                java.util.ArrayList r7 = r7.d
                r7.clear()
                if (r9 == 0) goto L87
                r7.addAll(r9)
            L87:
                int r9 = r7.size()
            L8b:
                if (r3 >= r9) goto Lab
                java.lang.Object r10 = r7.get(r3)
                android.view.View r10 = (android.view.View) r10
                android.view.ViewGroup$LayoutParams r10 = r10.getLayoutParams()
                androidx.coordinatorlayout.widget.c r10 = (androidx.coordinatorlayout.widget.c) r10
                androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior r10 = r10.f1122a
                boolean r11 = r10 instanceof com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior
                if (r11 == 0) goto La6
                com.google.android.material.appbar.AppBarLayout$ScrollingViewBehavior r10 = (com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior) r10
                int r7 = r10.f
                if (r7 == 0) goto Lab
                goto La8
            La6:
                int r3 = r3 + r0
                goto L8b
            La8:
                r8.jumpDrawablesToCurrentState()
            Lab:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.I(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, int, int, boolean):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x00a0  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0143  */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final int A(androidx.coordinatorlayout.widget.CoordinatorLayout r19, android.view.View r20, int r21, int r22, int r23) throws android.content.res.Resources.NotFoundException {
            /*
                Method dump skipped, instructions count: 335
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.A(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, int, int, int):int");
        }

        public final void C(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i6) {
            int iAbs = Math.abs(t() - i6);
            float fAbs = Math.abs(0.0f);
            int iRound = fAbs > 0.0f ? Math.round((iAbs / fAbs) * 1000.0f) * 3 : (int) (((iAbs / appBarLayout.getHeight()) + 1.0f) * 150.0f);
            int iT = t();
            if (iT == i6) {
                ValueAnimator valueAnimator = this.f4555l;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.f4555l.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.f4555l;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.f4555l = valueAnimator3;
                valueAnimator3.setInterpolator(y5.a.f11409e);
                this.f4555l.addUpdateListener(new b(this, coordinatorLayout, appBarLayout));
            } else {
                valueAnimator2.cancel();
            }
            this.f4555l.setDuration(Math.min(iRound, BannerConfig.SCROLL_TIME));
            this.f4555l.setIntValues(iT, i6);
            this.f4555l.start();
        }

        public final void E(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i6, int[] iArr) throws Resources.NotFoundException {
            int i10;
            int downNestedPreScrollRange;
            if (i6 != 0) {
                if (i6 < 0) {
                    int i11 = -appBarLayout.getTotalScrollRange();
                    i10 = i11;
                    downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange() + i11;
                } else {
                    i10 = -appBarLayout.getUpNestedPreScrollRange();
                    downNestedPreScrollRange = 0;
                }
                if (i10 != downNestedPreScrollRange) {
                    iArr[1] = A(coordinatorLayout, appBarLayout, t() - i6, i10, downNestedPreScrollRange);
                }
            }
            if (appBarLayout.f4545l) {
                appBarLayout.e(appBarLayout.f(view));
            }
        }

        public final SavedState F(Parcelable parcelable, AppBarLayout appBarLayout) {
            int iS = s();
            int childCount = appBarLayout.getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = appBarLayout.getChildAt(i6);
                int bottom = childAt.getBottom() + iS;
                if (childAt.getTop() + iS <= 0 && bottom >= 0) {
                    if (parcelable == null) {
                        parcelable = AbsSavedState.f1318b;
                    }
                    SavedState savedState = new SavedState(parcelable);
                    boolean z7 = iS == 0;
                    savedState.d = z7;
                    savedState.f4559c = !z7 && (-iS) >= appBarLayout.getTotalScrollRange();
                    savedState.f4560e = i6;
                    WeakHashMap weakHashMap = s0.f8353a;
                    savedState.f4561g = bottom == appBarLayout.getTopInset() + childAt.getMinimumHeight();
                    savedState.f = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return null;
        }

        public final void G(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            int paddingTop = appBarLayout.getPaddingTop() + appBarLayout.getTopInset();
            int iT = t() - paddingTop;
            int childCount = appBarLayout.getChildCount();
            int i6 = 0;
            while (true) {
                if (i6 >= childCount) {
                    i6 = -1;
                    break;
                }
                View childAt = appBarLayout.getChildAt(i6);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if ((layoutParams.f4562a & 32) == 32) {
                    top -= ((LinearLayout.LayoutParams) layoutParams).topMargin;
                    bottom += ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                }
                int i10 = -iT;
                if (top <= i10 && bottom >= i10) {
                    break;
                } else {
                    i6++;
                }
            }
            if (i6 >= 0) {
                View childAt2 = appBarLayout.getChildAt(i6);
                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                int i11 = layoutParams2.f4562a;
                if ((i11 & 17) == 17) {
                    int topInset = -childAt2.getTop();
                    int minimumHeight = -childAt2.getBottom();
                    if (i6 == 0) {
                        WeakHashMap weakHashMap = s0.f8353a;
                        if (appBarLayout.getFitsSystemWindows() && childAt2.getFitsSystemWindows()) {
                            topInset -= appBarLayout.getTopInset();
                        }
                    }
                    if ((i11 & 2) == 2) {
                        WeakHashMap weakHashMap2 = s0.f8353a;
                        minimumHeight += childAt2.getMinimumHeight();
                    } else if ((i11 & 5) == 5) {
                        WeakHashMap weakHashMap3 = s0.f8353a;
                        int minimumHeight2 = childAt2.getMinimumHeight() + minimumHeight;
                        if (iT < minimumHeight2) {
                            topInset = minimumHeight2;
                        } else {
                            minimumHeight = minimumHeight2;
                        }
                    }
                    if ((i11 & 32) == 32) {
                        topInset += ((LinearLayout.LayoutParams) layoutParams2).topMargin;
                        minimumHeight -= ((LinearLayout.LayoutParams) layoutParams2).bottomMargin;
                    }
                    if (iT < (minimumHeight + topInset) / 2) {
                        topInset = minimumHeight;
                    }
                    C(coordinatorLayout, appBarLayout, l5.a.g(topInset + paddingTop, -appBarLayout.getTotalScrollRange(), 0));
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x00a7  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void H(androidx.coordinatorlayout.widget.CoordinatorLayout r11, com.google.android.material.appbar.AppBarLayout r12) {
            /*
                r10 = this;
                o0.c r0 = o0.c.f8524h
                int r0 = r0.a()
                n0.s0.m(r0, r11)
                o0.c r0 = o0.c.f8525i
                int r0 = r0.a()
                n0.s0.n(r0, r11)
                r0 = 0
                n0.s0.h(r0, r11)
                int r1 = r12.getTotalScrollRange()
                if (r1 != 0) goto L1d
                return
            L1d:
                int r1 = r11.getChildCount()
                r2 = 0
            L22:
                if (r2 >= r1) goto L39
                android.view.View r3 = r11.getChildAt(r2)
                android.view.ViewGroup$LayoutParams r4 = r3.getLayoutParams()
                androidx.coordinatorlayout.widget.c r4 = (androidx.coordinatorlayout.widget.c) r4
                androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior r4 = r4.f1122a
                boolean r4 = r4 instanceof com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior
                if (r4 == 0) goto L36
            L34:
                r8 = r3
                goto L3b
            L36:
                int r2 = r2 + 1
                goto L22
            L39:
                r3 = 0
                goto L34
            L3b:
                if (r8 != 0) goto L3e
                return
            L3e:
                int r1 = r12.getChildCount()
                r2 = 0
            L43:
                if (r2 >= r1) goto Lae
                android.view.View r3 = r12.getChildAt(r2)
                android.view.ViewGroup$LayoutParams r3 = r3.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$LayoutParams r3 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r3
                int r3 = r3.f4562a
                if (r3 == 0) goto Lab
                android.view.View$AccessibilityDelegate r1 = n0.s0.d(r11)
                if (r1 == 0) goto L5a
                goto L62
            L5a:
                com.google.android.material.appbar.c r1 = new com.google.android.material.appbar.c
                r1.<init>(r10)
                n0.s0.q(r11, r1)
            L62:
                int r1 = r10.t()
                int r2 = r12.getTotalScrollRange()
                int r2 = -r2
                r3 = 1
                if (r1 == r2) goto L79
                o0.c r1 = o0.c.f8524h
                com.google.android.material.appbar.e r2 = new com.google.android.material.appbar.e
                r2.<init>(r12, r0)
                n0.s0.o(r11, r1, r2)
                r0 = 1
            L79:
                int r1 = r10.t()
                if (r1 == 0) goto La7
                r1 = -1
                boolean r1 = r8.canScrollVertically(r1)
                if (r1 == 0) goto L9c
                int r1 = r12.getDownNestedPreScrollRange()
                int r9 = -r1
                if (r9 == 0) goto La7
                o0.c r0 = o0.c.f8525i
                com.google.android.material.appbar.d r1 = new com.google.android.material.appbar.d
                r4 = r1
                r5 = r10
                r6 = r11
                r7 = r12
                r4.<init>(r5, r6, r7, r8, r9)
                n0.s0.o(r11, r0, r1)
                goto La8
            L9c:
                o0.c r0 = o0.c.f8525i
                com.google.android.material.appbar.e r1 = new com.google.android.material.appbar.e
                r1.<init>(r12, r3)
                n0.s0.o(r11, r0, r1)
                goto La8
            La7:
                r3 = r0
            La8:
                r10.f4558o = r3
                return
            Lab:
                int r2 = r2 + 1
                goto L43
            Lae:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.H(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout):void");
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i6) throws Resources.NotFoundException {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            super.h(coordinatorLayout, appBarLayout, i6);
            int pendingAction = appBarLayout.getPendingAction();
            SavedState savedState = this.f4556m;
            if (savedState == null || (pendingAction & 8) != 0) {
                if (pendingAction != 0) {
                    boolean z7 = (pendingAction & 4) != 0;
                    if ((pendingAction & 2) != 0) {
                        int i10 = -appBarLayout.getUpNestedPreScrollRange();
                        if (z7) {
                            C(coordinatorLayout, appBarLayout, i10);
                        } else {
                            B(coordinatorLayout, appBarLayout, i10);
                        }
                    } else if ((pendingAction & 1) != 0) {
                        if (z7) {
                            C(coordinatorLayout, appBarLayout, 0);
                        } else {
                            B(coordinatorLayout, appBarLayout, 0);
                        }
                    }
                }
            } else if (savedState.f4559c) {
                B(coordinatorLayout, appBarLayout, -appBarLayout.getTotalScrollRange());
            } else if (savedState.d) {
                B(coordinatorLayout, appBarLayout, 0);
            } else {
                View childAt = appBarLayout.getChildAt(savedState.f4560e);
                int i11 = -childAt.getBottom();
                B(coordinatorLayout, appBarLayout, this.f4556m.f4561g ? appBarLayout.getTopInset() + childAt.getMinimumHeight() + i11 : Math.round(childAt.getHeight() * this.f4556m.f) + i11);
            }
            appBarLayout.f = 0;
            this.f4556m = null;
            v(l5.a.g(s(), -appBarLayout.getTotalScrollRange(), 0));
            I(coordinatorLayout, appBarLayout, s(), 0, true);
            appBarLayout.c(s());
            H(coordinatorLayout, appBarLayout);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean i(CoordinatorLayout coordinatorLayout, View view, int i6, int i10, int i11) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (((ViewGroup.MarginLayoutParams) ((androidx.coordinatorlayout.widget.c) appBarLayout.getLayoutParams())).height != -2) {
                return false;
            }
            coordinatorLayout.w(i6, i10, View.MeasureSpec.makeMeasureSpec(0, 0), appBarLayout);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final /* bridge */ /* synthetic */ void k(CoordinatorLayout coordinatorLayout, View view, View view2, int i6, int i10, int[] iArr, int i11) throws Resources.NotFoundException {
            E(coordinatorLayout, (AppBarLayout) view, view2, i10, iArr);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void l(CoordinatorLayout coordinatorLayout, View view, int i6, int i10, int i11, int[] iArr) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (i11 < 0) {
                iArr[1] = A(coordinatorLayout, appBarLayout, t() - i11, -appBarLayout.getDownNestedScrollRange(), 0);
            }
            if (i11 == 0) {
                H(coordinatorLayout, appBarLayout);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void n(View view, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                this.f4556m = (SavedState) parcelable;
            } else {
                this.f4556m = null;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final Parcelable o(View view) {
            android.view.AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
            SavedState savedStateF = F(absSavedState, (AppBarLayout) view);
            return savedStateF == null ? absSavedState : savedStateF;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean p(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i6, int i10) {
            ValueAnimator valueAnimator;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            boolean z7 = (i6 & 2) != 0 && (appBarLayout.f4545l || (appBarLayout.getTotalScrollRange() != 0 && coordinatorLayout.getHeight() - view2.getHeight() <= appBarLayout.getHeight()));
            if (z7 && (valueAnimator = this.f4555l) != null) {
                valueAnimator.cancel();
            }
            this.f4557n = null;
            this.f4554k = i10;
            return z7;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void q(CoordinatorLayout coordinatorLayout, View view, View view2, int i6) throws Resources.NotFoundException {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (this.f4554k == 0 || i6 == 1) {
                G(coordinatorLayout, appBarLayout);
                if (appBarLayout.f4545l) {
                    appBarLayout.e(appBarLayout.f(view2));
                }
            }
            this.f4557n = new WeakReference(view2);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public final int t() {
            return s() + this.f4553j;
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        public final boolean w(View view) {
            WeakReference weakReference = this.f4557n;
            if (weakReference == null) {
                return true;
            }
            View view2 = (View) weakReference.get();
            return (view2 == null || !view2.isShown() || view2.canScrollVertically(-1)) ? false : true;
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        public final int x(View view) {
            return -((AppBarLayout) view).getDownNestedScrollRange();
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        public final int y(View view) {
            return ((AppBarLayout) view).getTotalScrollRange();
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        public final void z(CoordinatorLayout coordinatorLayout, View view) throws Resources.NotFoundException {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            G(coordinatorLayout, appBarLayout);
            if (appBarLayout.f4545l) {
                appBarLayout.e(appBarLayout.f(D(coordinatorLayout)));
            }
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout.LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-1, -2);
        layoutParams.f4562a = 1;
        return layoutParams;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }
}
