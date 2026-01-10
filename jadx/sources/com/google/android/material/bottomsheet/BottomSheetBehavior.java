package com.google.android.material.bottomsheet;

import a.e;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.appcompat.widget.r0;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.view.AbsSavedState;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import c6.b;
import c6.c;
import com.google.android.material.internal.a0;
import com.p2elite.brtv2.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.WeakHashMap;
import n0.g0;
import n0.s0;
import u6.h;
import u6.m;
import v0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    public final int A;
    public int B;
    public int C;
    public final float D;
    public int E;
    public final float F;
    public boolean G;
    public boolean H;
    public final boolean I;
    public int J;
    public d K;
    public boolean L;
    public int M;
    public boolean N;
    public int O;
    public int P;
    public int Q;
    public WeakReference R;
    public WeakReference S;
    public final ArrayList T;
    public VelocityTracker U;
    public int V;
    public int W;
    public boolean X;
    public HashMap Y;
    public int Z;

    /* renamed from: a, reason: collision with root package name */
    public final int f4681a;

    /* renamed from: a0, reason: collision with root package name */
    public final c6.a f4682a0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f4683b;

    /* renamed from: c, reason: collision with root package name */
    public final float f4684c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f4685e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f4686g;

    /* renamed from: h, reason: collision with root package name */
    public final h f4687h;

    /* renamed from: i, reason: collision with root package name */
    public final ColorStateList f4688i;

    /* renamed from: j, reason: collision with root package name */
    public final int f4689j;

    /* renamed from: k, reason: collision with root package name */
    public final int f4690k;

    /* renamed from: l, reason: collision with root package name */
    public int f4691l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f4692m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f4693n;

    /* renamed from: o, reason: collision with root package name */
    public final boolean f4694o;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f4695p;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f4696q;

    /* renamed from: r, reason: collision with root package name */
    public final boolean f4697r;

    /* renamed from: s, reason: collision with root package name */
    public final boolean f4698s;

    /* renamed from: t, reason: collision with root package name */
    public final boolean f4699t;

    /* renamed from: u, reason: collision with root package name */
    public int f4700u;

    /* renamed from: v, reason: collision with root package name */
    public int f4701v;

    /* renamed from: w, reason: collision with root package name */
    public final m f4702w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f4703x;

    /* renamed from: y, reason: collision with root package name */
    public final c f4704y;

    /* renamed from: z, reason: collision with root package name */
    public final ValueAnimator f4705z;

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        int i6;
        super(context, attributeSet);
        this.f4681a = 0;
        this.f4683b = true;
        this.f4689j = -1;
        this.f4690k = -1;
        this.f4704y = new c(this);
        this.D = 0.5f;
        this.F = -1.0f;
        this.I = true;
        this.J = 4;
        this.T = new ArrayList();
        this.Z = -1;
        this.f4682a0 = new c6.a(this);
        this.f4686g = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, x5.a.f11026g);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            this.f4688i = com.bumptech.glide.d.k(context, typedArrayObtainStyledAttributes, 3);
        }
        if (typedArrayObtainStyledAttributes.hasValue(20)) {
            this.f4702w = m.b(context, attributeSet, R.attr.bottomSheetStyle, R.style.Widget_Design_BottomSheet_Modal).a();
        }
        m mVar = this.f4702w;
        if (mVar != null) {
            h hVar = new h(mVar);
            this.f4687h = hVar;
            hVar.k(context);
            ColorStateList colorStateList = this.f4688i;
            if (colorStateList != null) {
                this.f4687h.n(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.f4687h.setTint(typedValue.data);
            }
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f4705z = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.f4705z.addUpdateListener(new a7.c(1, this));
        this.F = typedArrayObtainStyledAttributes.getDimension(2, -1.0f);
        if (typedArrayObtainStyledAttributes.hasValue(0)) {
            this.f4689j = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        }
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            this.f4690k = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, -1);
        }
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(9);
        if (typedValuePeekValue == null || (i6 = typedValuePeekValue.data) != -1) {
            z(typedArrayObtainStyledAttributes.getDimensionPixelSize(9, -1));
        } else {
            z(i6);
        }
        boolean z7 = typedArrayObtainStyledAttributes.getBoolean(8, false);
        if (this.G != z7) {
            this.G = z7;
            if (!z7 && this.J == 5) {
                A(4);
            }
            E();
        }
        this.f4692m = typedArrayObtainStyledAttributes.getBoolean(12, false);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(6, true);
        if (this.f4683b != z10) {
            this.f4683b = z10;
            if (this.R != null) {
                s();
            }
            B((this.f4683b && this.J == 6) ? 3 : this.J);
            E();
        }
        this.H = typedArrayObtainStyledAttributes.getBoolean(11, false);
        this.I = typedArrayObtainStyledAttributes.getBoolean(4, true);
        this.f4681a = typedArrayObtainStyledAttributes.getInt(10, 0);
        float f = typedArrayObtainStyledAttributes.getFloat(7, 0.5f);
        if (f <= 0.0f || f >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.D = f;
        if (this.R != null) {
            this.C = (int) ((1.0f - f) * this.Q);
        }
        TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(5);
        if (typedValuePeekValue2 == null || typedValuePeekValue2.type != 16) {
            int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(5, 0);
            if (dimensionPixelOffset < 0) {
                throw new IllegalArgumentException("offset must be greater than or equal to 0");
            }
            this.A = dimensionPixelOffset;
        } else {
            int i10 = typedValuePeekValue2.data;
            if (i10 < 0) {
                throw new IllegalArgumentException("offset must be greater than or equal to 0");
            }
            this.A = i10;
        }
        this.f4693n = typedArrayObtainStyledAttributes.getBoolean(16, false);
        this.f4694o = typedArrayObtainStyledAttributes.getBoolean(17, false);
        this.f4695p = typedArrayObtainStyledAttributes.getBoolean(18, false);
        this.f4696q = typedArrayObtainStyledAttributes.getBoolean(19, true);
        this.f4697r = typedArrayObtainStyledAttributes.getBoolean(13, false);
        this.f4698s = typedArrayObtainStyledAttributes.getBoolean(14, false);
        this.f4699t = typedArrayObtainStyledAttributes.getBoolean(15, false);
        typedArrayObtainStyledAttributes.recycle();
        this.f4684c = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    public static View v(View view) {
        WeakHashMap weakHashMap = s0.f8353a;
        if (g0.p(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View viewV = v(viewGroup.getChildAt(i6));
            if (viewV != null) {
                return viewV;
            }
        }
        return null;
    }

    public static int w(int i6, int i10, int i11, int i12) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i6, i10, i12);
        if (i11 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i11), 1073741824);
        }
        if (size != 0) {
            i11 = Math.min(size, i11);
        }
        return View.MeasureSpec.makeMeasureSpec(i11, Integer.MIN_VALUE);
    }

    public final void A(int i6) {
        if (i6 == 1 || i6 == 2) {
            throw new IllegalArgumentException(e.t(new StringBuilder("STATE_"), i6 == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
        }
        if (!this.G && i6 == 5) {
            Log.w("BottomSheetBehavior", "Cannot set state: " + i6);
            return;
        }
        int i10 = (i6 == 6 && this.f4683b && y(i6) <= this.B) ? 3 : i6;
        WeakReference weakReference = this.R;
        if (weakReference == null || weakReference.get() == null) {
            B(i6);
            return;
        }
        View view = (View) this.R.get();
        r0 r0Var = new r0(this, view, i10, 2, false);
        ViewParent parent = view.getParent();
        if (parent != null && parent.isLayoutRequested()) {
            WeakHashMap weakHashMap = s0.f8353a;
            if (view.isAttachedToWindow()) {
                view.post(r0Var);
                return;
            }
        }
        r0Var.run();
    }

    public final void B(int i6) {
        if (this.J == i6) {
            return;
        }
        this.J = i6;
        if (i6 != 4 && i6 != 3 && i6 != 6) {
            boolean z7 = this.G;
        }
        WeakReference weakReference = this.R;
        if (weakReference == null || ((View) weakReference.get()) == null) {
            return;
        }
        if (i6 == 3) {
            G(true);
        } else if (i6 == 6 || i6 == 5 || i6 == 4) {
            G(false);
        }
        F(i6);
        ArrayList arrayList = this.T;
        if (arrayList.size() > 0) {
            throw e.k(0, arrayList);
        }
        E();
    }

    public final boolean C(View view, float f) {
        if (this.H) {
            return true;
        }
        if (view.getTop() < this.E) {
            return false;
        }
        return Math.abs(((f * 0.1f) + ((float) view.getTop())) - ((float) this.E)) / ((float) t()) > 0.5f;
    }

    public final void D(View view, int i6, boolean z7) {
        int iY = y(i6);
        d dVar = this.K;
        if (dVar == null || (!z7 ? dVar.s(view, view.getLeft(), iY) : dVar.q(view.getLeft(), iY))) {
            B(i6);
            return;
        }
        B(2);
        F(i6);
        this.f4704y.d(i6);
    }

    public final void E() throws Resources.NotFoundException {
        View view;
        int iA;
        WeakReference weakReference = this.R;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        s0.n(524288, view);
        s0.h(0, view);
        s0.n(262144, view);
        s0.h(0, view);
        s0.n(ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES, view);
        s0.h(0, view);
        int i6 = this.Z;
        if (i6 != -1) {
            s0.n(i6, view);
            s0.h(0, view);
        }
        if (!this.f4683b && this.J != 6) {
            String string = view.getResources().getString(R.string.bottomsheet_action_expand_halfway);
            b bVar = new b(6, this);
            ArrayList arrayListE = s0.e(view);
            int i10 = 0;
            while (true) {
                if (i10 >= arrayListE.size()) {
                    int i11 = -1;
                    for (int i12 = 0; i12 < 32 && i11 == -1; i12++) {
                        int i13 = s0.f8356e[i12];
                        boolean z7 = true;
                        for (int i14 = 0; i14 < arrayListE.size(); i14++) {
                            z7 &= ((o0.c) arrayListE.get(i14)).a() != i13;
                        }
                        if (z7) {
                            i11 = i13;
                        }
                    }
                    iA = i11;
                } else {
                    if (TextUtils.equals(string, ((AccessibilityNodeInfo.AccessibilityAction) ((o0.c) arrayListE.get(i10)).f8536a).getLabel())) {
                        iA = ((o0.c) arrayListE.get(i10)).a();
                        break;
                    }
                    i10++;
                }
            }
            if (iA != -1) {
                o0.c cVar = new o0.c(null, iA, string, bVar, null);
                View.AccessibilityDelegate accessibilityDelegateD = s0.d(view);
                n0.b bVar2 = accessibilityDelegateD == null ? null : accessibilityDelegateD instanceof n0.a ? ((n0.a) accessibilityDelegateD).f8291a : new n0.b(accessibilityDelegateD);
                if (bVar2 == null) {
                    bVar2 = new n0.b();
                }
                s0.q(view, bVar2);
                s0.n(cVar.a(), view);
                s0.e(view).add(cVar);
                s0.h(0, view);
            }
            this.Z = iA;
        }
        if (this.G && this.J != 5) {
            s0.o(view, o0.c.f8528l, new b(5, this));
        }
        int i15 = this.J;
        if (i15 == 3) {
            s0.o(view, o0.c.f8527k, new b(this.f4683b ? 4 : 6, this));
            return;
        }
        if (i15 == 4) {
            s0.o(view, o0.c.f8526j, new b(this.f4683b ? 3 : 6, this));
        } else {
            if (i15 != 6) {
                return;
            }
            s0.o(view, o0.c.f8527k, new b(4, this));
            s0.o(view, o0.c.f8526j, new b(3, this));
        }
    }

    public final void F(int i6) {
        ValueAnimator valueAnimator = this.f4705z;
        if (i6 == 2) {
            return;
        }
        boolean z7 = i6 == 3;
        if (this.f4703x != z7) {
            this.f4703x = z7;
            if (this.f4687h == null || valueAnimator == null) {
                return;
            }
            if (valueAnimator.isRunning()) {
                valueAnimator.reverse();
                return;
            }
            float f = z7 ? 0.0f : 1.0f;
            valueAnimator.setFloatValues(1.0f - f, f);
            valueAnimator.start();
        }
    }

    public final void G(boolean z7) {
        WeakReference weakReference = this.R;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z7) {
                if (this.Y != null) {
                    return;
                } else {
                    this.Y = new HashMap(childCount);
                }
            }
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = coordinatorLayout.getChildAt(i6);
                if (childAt != this.R.get() && z7) {
                    this.Y.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                }
            }
            if (z7) {
                return;
            }
            this.Y = null;
        }
    }

    public final void H() {
        View view;
        if (this.R != null) {
            s();
            if (this.J != 4 || (view = (View) this.R.get()) == null) {
                return;
            }
            view.requestLayout();
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void c(androidx.coordinatorlayout.widget.c cVar) {
        this.R = null;
        this.K = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void f() {
        this.R = null;
        this.K = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        d dVar;
        if (!view.isShown() || !this.I) {
            this.L = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.V = -1;
            VelocityTracker velocityTracker = this.U;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.U = null;
            }
        }
        if (this.U == null) {
            this.U = VelocityTracker.obtain();
        }
        this.U.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x10 = (int) motionEvent.getX();
            this.W = (int) motionEvent.getY();
            if (this.J != 2) {
                WeakReference weakReference = this.S;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && coordinatorLayout.t(view2, x10, this.W)) {
                    this.V = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.X = true;
                }
            }
            this.L = this.V == -1 && !coordinatorLayout.t(view, x10, this.W);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.X = false;
            this.V = -1;
            if (this.L) {
                this.L = false;
                return false;
            }
        }
        if (!this.L && (dVar = this.K) != null && dVar.r(motionEvent)) {
            return true;
        }
        WeakReference weakReference2 = this.S;
        View view3 = weakReference2 != null ? (View) weakReference2.get() : null;
        return (actionMasked != 2 || view3 == null || this.L || this.J == 1 || coordinatorLayout.t(view3, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.K == null || Math.abs(((float) this.W) - motionEvent.getY()) <= ((float) this.K.f10633b)) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i6) throws Resources.NotFoundException {
        int i10 = 2;
        h hVar = this.f4687h;
        WeakHashMap weakHashMap = s0.f8353a;
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        if (this.R == null) {
            this.f = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            boolean z7 = (Build.VERSION.SDK_INT < 29 || this.f4692m || this.f4685e) ? false : true;
            if (this.f4693n || this.f4694o || this.f4695p || this.f4697r || this.f4698s || this.f4699t || z7) {
                a0.d(view, new androidx.appcompat.app.r0(i10, this, z7));
            }
            this.R = new WeakReference(view);
            if (hVar != null) {
                view.setBackground(hVar);
                float fI = this.F;
                if (fI == -1.0f) {
                    fI = g0.i(view);
                }
                hVar.m(fI);
                boolean z10 = this.J == 3;
                this.f4703x = z10;
                hVar.o(z10 ? 0.0f : 1.0f);
            } else {
                ColorStateList colorStateList = this.f4688i;
                if (colorStateList != null) {
                    s0.s(view, colorStateList);
                }
            }
            E();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
        }
        if (this.K == null) {
            this.K = new d(coordinatorLayout.getContext(), coordinatorLayout, this.f4682a0);
        }
        int top = view.getTop();
        coordinatorLayout.v(i6, view);
        this.P = coordinatorLayout.getWidth();
        this.Q = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.O = height;
        int i11 = this.Q;
        int i12 = i11 - height;
        int i13 = this.f4701v;
        if (i12 < i13) {
            if (this.f4696q) {
                this.O = i11;
            } else {
                this.O = i11 - i13;
            }
        }
        this.B = Math.max(0, i11 - this.O);
        this.C = (int) ((1.0f - this.D) * this.Q);
        s();
        int i14 = this.J;
        if (i14 == 3) {
            s0.j(x(), view);
        } else if (i14 == 6) {
            s0.j(this.C, view);
        } else if (this.G && i14 == 5) {
            s0.j(this.Q, view);
        } else if (i14 == 4) {
            s0.j(this.E, view);
        } else if (i14 == 1 || i14 == 2) {
            s0.j(top - view.getTop(), view);
        }
        this.S = new WeakReference(v(view));
        ArrayList arrayList = this.T;
        if (arrayList.size() <= 0) {
            return true;
        }
        throw e.k(0, arrayList);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean i(CoordinatorLayout coordinatorLayout, View view, int i6, int i10, int i11) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(w(i6, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i10, this.f4689j, marginLayoutParams.width), w(i11, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, this.f4690k, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean j(View view) {
        WeakReference weakReference = this.S;
        return (weakReference == null || view != weakReference.get() || this.J == 3) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void k(CoordinatorLayout coordinatorLayout, View view, View view2, int i6, int i10, int[] iArr, int i11) {
        if (i11 == 1) {
            return;
        }
        WeakReference weakReference = this.S;
        if (view2 != (weakReference != null ? (View) weakReference.get() : null)) {
            return;
        }
        int top = view.getTop();
        int i12 = top - i10;
        if (i10 > 0) {
            if (i12 < x()) {
                int iX = top - x();
                iArr[1] = iX;
                s0.j(-iX, view);
                B(3);
            } else {
                if (!this.I) {
                    return;
                }
                iArr[1] = i10;
                s0.j(-i10, view);
                B(1);
            }
        } else if (i10 < 0 && !view2.canScrollVertically(-1)) {
            int i13 = this.E;
            if (i12 > i13 && !this.G) {
                int i14 = top - i13;
                iArr[1] = i14;
                s0.j(-i14, view);
                B(4);
            } else {
                if (!this.I) {
                    return;
                }
                iArr[1] = i10;
                s0.j(-i10, view);
                B(1);
            }
        }
        u(view.getTop());
        this.M = i10;
        this.N = true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void n(View view, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        int i6 = this.f4681a;
        if (i6 != 0) {
            if (i6 == -1 || (i6 & 1) == 1) {
                this.d = savedState.d;
            }
            if (i6 == -1 || (i6 & 2) == 2) {
                this.f4683b = savedState.f4707e;
            }
            if (i6 == -1 || (i6 & 4) == 4) {
                this.G = savedState.f;
            }
            if (i6 == -1 || (i6 & 8) == 8) {
                this.H = savedState.f4708g;
            }
        }
        int i10 = savedState.f4706c;
        if (i10 == 1 || i10 == 2) {
            this.J = 4;
        } else {
            this.J = i10;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final Parcelable o(View view) {
        return new SavedState(View.BaseSavedState.EMPTY_STATE, this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean p(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i6, int i10) {
        this.M = 0;
        this.N = false;
        return (i6 & 2) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ae  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void q(androidx.coordinatorlayout.widget.CoordinatorLayout r3, android.view.View r4, android.view.View r5, int r6) {
        /*
            r2 = this;
            int r3 = r4.getTop()
            int r6 = r2.x()
            r0 = 3
            if (r3 != r6) goto Lf
            r2.B(r0)
            return
        Lf:
            java.lang.ref.WeakReference r3 = r2.S
            if (r3 == 0) goto Lb5
            java.lang.Object r3 = r3.get()
            if (r5 != r3) goto Lb5
            boolean r3 = r2.N
            if (r3 != 0) goto L1f
            goto Lb5
        L1f:
            int r3 = r2.M
            r5 = 6
            if (r3 <= 0) goto L34
            boolean r3 = r2.f4683b
            if (r3 == 0) goto L2a
            goto Laf
        L2a:
            int r3 = r4.getTop()
            int r6 = r2.C
            if (r3 <= r6) goto Laf
            goto Lae
        L34:
            boolean r3 = r2.G
            if (r3 == 0) goto L55
            android.view.VelocityTracker r3 = r2.U
            if (r3 != 0) goto L3e
            r3 = 0
            goto L4d
        L3e:
            r6 = 1000(0x3e8, float:1.401E-42)
            float r1 = r2.f4684c
            r3.computeCurrentVelocity(r6, r1)
            android.view.VelocityTracker r3 = r2.U
            int r6 = r2.V
            float r3 = r3.getYVelocity(r6)
        L4d:
            boolean r3 = r2.C(r4, r3)
            if (r3 == 0) goto L55
            r0 = 5
            goto Laf
        L55:
            int r3 = r2.M
            r6 = 4
            if (r3 != 0) goto L93
            int r3 = r4.getTop()
            boolean r1 = r2.f4683b
            if (r1 == 0) goto L74
            int r5 = r2.B
            int r5 = r3 - r5
            int r5 = java.lang.Math.abs(r5)
            int r1 = r2.E
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r5 >= r3) goto L97
            goto Laf
        L74:
            int r1 = r2.C
            if (r3 >= r1) goto L83
            int r6 = r2.E
            int r6 = r3 - r6
            int r6 = java.lang.Math.abs(r6)
            if (r3 >= r6) goto Lae
            goto Laf
        L83:
            int r0 = r3 - r1
            int r0 = java.lang.Math.abs(r0)
            int r1 = r2.E
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r0 >= r3) goto L97
            goto Lae
        L93:
            boolean r3 = r2.f4683b
            if (r3 == 0) goto L99
        L97:
            r0 = 4
            goto Laf
        L99:
            int r3 = r4.getTop()
            int r0 = r2.C
            int r0 = r3 - r0
            int r0 = java.lang.Math.abs(r0)
            int r1 = r2.E
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r0 >= r3) goto L97
        Lae:
            r0 = 6
        Laf:
            r3 = 0
            r2.D(r4, r0, r3)
            r2.N = r3
        Lb5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.q(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, int):void");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean r(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        int i6 = this.J;
        if (i6 == 1 && actionMasked == 0) {
            return true;
        }
        d dVar = this.K;
        if (dVar != null && (this.I || i6 == 1)) {
            dVar.k(motionEvent);
        }
        if (actionMasked == 0) {
            this.V = -1;
            VelocityTracker velocityTracker = this.U;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.U = null;
            }
        }
        if (this.U == null) {
            this.U = VelocityTracker.obtain();
        }
        this.U.addMovement(motionEvent);
        if (this.K != null && ((this.I || this.J == 1) && actionMasked == 2 && !this.L)) {
            float fAbs = Math.abs(this.W - motionEvent.getY());
            d dVar2 = this.K;
            if (fAbs > dVar2.f10633b) {
                dVar2.b(motionEvent.getPointerId(motionEvent.getActionIndex()), view);
            }
        }
        return !this.L;
    }

    public final void s() {
        int iT = t();
        if (this.f4683b) {
            this.E = Math.max(this.Q - iT, this.B);
        } else {
            this.E = this.Q - iT;
        }
    }

    public final int t() {
        int i6;
        return this.f4685e ? Math.min(Math.max(this.f, this.Q - ((this.P * 9) / 16)), this.O) + this.f4700u : (this.f4692m || this.f4693n || (i6 = this.f4691l) <= 0) ? this.d + this.f4700u : Math.max(this.d, i6 + this.f4686g);
    }

    public final void u(int i6) {
        if (((View) this.R.get()) != null) {
            ArrayList arrayList = this.T;
            if (arrayList.isEmpty()) {
                return;
            }
            int i10 = this.E;
            if (i6 <= i10 && i10 != x()) {
                x();
            }
            if (arrayList.size() > 0) {
                throw e.k(0, arrayList);
            }
        }
    }

    public final int x() {
        if (this.f4683b) {
            return this.B;
        }
        return Math.max(this.A, this.f4696q ? 0 : this.f4701v);
    }

    public final int y(int i6) {
        if (i6 == 3) {
            return x();
        }
        if (i6 == 4) {
            return this.E;
        }
        if (i6 == 5) {
            return this.Q;
        }
        if (i6 == 6) {
            return this.C;
        }
        throw new IllegalArgumentException(e.n(i6, "Invalid state to get top offset: "));
    }

    public final void z(int i6) {
        if (i6 == -1) {
            if (this.f4685e) {
                return;
            } else {
                this.f4685e = true;
            }
        } else {
            if (!this.f4685e && this.d == i6) {
                return;
            }
            this.f4685e = false;
            this.d = Math.max(0, i6);
        }
        H();
    }

    /* compiled from: MyApplication */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: c, reason: collision with root package name */
        public final int f4706c;
        public final int d;

        /* renamed from: e, reason: collision with root package name */
        public final boolean f4707e;
        public final boolean f;

        /* renamed from: g, reason: collision with root package name */
        public final boolean f4708g;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f4706c = parcel.readInt();
            this.d = parcel.readInt();
            this.f4707e = parcel.readInt() == 1;
            this.f = parcel.readInt() == 1;
            this.f4708g = parcel.readInt() == 1;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i6) {
            super.writeToParcel(parcel, i6);
            parcel.writeInt(this.f4706c);
            parcel.writeInt(this.d);
            parcel.writeInt(this.f4707e ? 1 : 0);
            parcel.writeInt(this.f ? 1 : 0);
            parcel.writeInt(this.f4708g ? 1 : 0);
        }

        public SavedState(android.view.AbsSavedState absSavedState, BottomSheetBehavior bottomSheetBehavior) {
            super(absSavedState);
            this.f4706c = bottomSheetBehavior.J;
            this.d = bottomSheetBehavior.d;
            this.f4707e = bottomSheetBehavior.f4683b;
            this.f = bottomSheetBehavior.G;
            this.f4708g = bottomSheetBehavior.H;
        }
    }

    public BottomSheetBehavior() {
        this.f4681a = 0;
        this.f4683b = true;
        this.f4689j = -1;
        this.f4690k = -1;
        this.f4704y = new c(this);
        this.D = 0.5f;
        this.F = -1.0f;
        this.I = true;
        this.J = 4;
        this.T = new ArrayList();
        this.Z = -1;
        this.f4682a0 = new c6.a(this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void l(CoordinatorLayout coordinatorLayout, View view, int i6, int i10, int i11, int[] iArr) {
    }
}
