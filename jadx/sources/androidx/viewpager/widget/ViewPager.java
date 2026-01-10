package androidx.viewpager.widget;

import a.f;
import a0.e;
import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.appcompat.widget.a2;
import androidx.customview.view.AbsSavedState;
import androidx.fragment.app.j0;
import androidx.fragment.app.n0;
import androidx.fragment.app.r0;
import androidx.fragment.app.s;
import b2.g;
import b2.h;
import b2.i;
import b2.j;
import com.youth.banner.config.BannerConfig;
import ea.q;
import java.util.ArrayList;
import java.util.Collections;
import java.util.WeakHashMap;
import n0.g0;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ViewPager extends ViewGroup {
    public static final int[] W = {R.attr.layout_gravity};

    /* renamed from: b0, reason: collision with root package name */
    public static final e f3062b0 = new e(1);

    /* renamed from: c0, reason: collision with root package name */
    public static final b2.e f3063c0 = new b2.e(0);
    public final int A;
    public float B;
    public float C;
    public float D;
    public float E;
    public int F;
    public VelocityTracker G;
    public final int H;
    public final int I;
    public final int J;
    public final int K;
    public final EdgeEffect L;
    public final EdgeEffect M;
    public boolean N;
    public boolean O;
    public int P;
    public ArrayList Q;
    public j R;
    public j S;
    public ArrayList T;
    public final f U;
    public int V;

    /* renamed from: a, reason: collision with root package name */
    public int f3064a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f3065b;

    /* renamed from: c, reason: collision with root package name */
    public final g f3066c;
    public final Rect d;

    /* renamed from: e, reason: collision with root package name */
    public b2.a f3067e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f3068g;

    /* renamed from: h, reason: collision with root package name */
    public Parcelable f3069h;

    /* renamed from: i, reason: collision with root package name */
    public final Scroller f3070i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f3071j;

    /* renamed from: k, reason: collision with root package name */
    public a2 f3072k;

    /* renamed from: l, reason: collision with root package name */
    public int f3073l;

    /* renamed from: m, reason: collision with root package name */
    public Drawable f3074m;

    /* renamed from: n, reason: collision with root package name */
    public int f3075n;

    /* renamed from: o, reason: collision with root package name */
    public int f3076o;

    /* renamed from: p, reason: collision with root package name */
    public float f3077p;

    /* renamed from: q, reason: collision with root package name */
    public float f3078q;

    /* renamed from: r, reason: collision with root package name */
    public int f3079r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f3080s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f3081t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f3082u;

    /* renamed from: v, reason: collision with root package name */
    public int f3083v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f3084w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f3085x;

    /* renamed from: y, reason: collision with root package name */
    public final int f3086y;

    /* renamed from: z, reason: collision with root package name */
    public int f3087z;

    /* compiled from: MyApplication */
    public static class LayoutParams extends ViewGroup.LayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public boolean f3088a;

        /* renamed from: b, reason: collision with root package name */
        public final int f3089b;

        /* renamed from: c, reason: collision with root package name */
        public float f3090c;
        public boolean d;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3090c = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.W);
            this.f3089b = typedArrayObtainStyledAttributes.getInteger(0, 48);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* compiled from: MyApplication */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: c, reason: collision with root package name */
        public int f3091c;
        public Parcelable d;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.f3091c = parcel.readInt();
            this.d = parcel.readParcelable(classLoader);
        }

        public final String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f3091c + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i6) {
            super.writeToParcel(parcel, i6);
            parcel.writeInt(this.f3091c);
            parcel.writeParcelable(this.d, i6);
        }
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3065b = new ArrayList();
        this.f3066c = new g();
        this.d = new Rect();
        this.f3068g = -1;
        this.f3077p = -3.4028235E38f;
        this.f3078q = Float.MAX_VALUE;
        this.f3083v = 1;
        this.F = -1;
        this.N = true;
        this.U = new f(6, this);
        this.V = 0;
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context2 = getContext();
        this.f3070i = new Scroller(context2, f3063c0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context2);
        float f = context2.getResources().getDisplayMetrics().density;
        this.A = viewConfiguration.getScaledPagingTouchSlop();
        this.H = (int) (400.0f * f);
        this.I = viewConfiguration.getScaledMaximumFlingVelocity();
        this.L = new EdgeEffect(context2);
        this.M = new EdgeEffect(context2);
        this.J = (int) (25.0f * f);
        this.K = (int) (2.0f * f);
        this.f3086y = (int) (f * 16.0f);
        s0.q(this, new h(0, this));
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        g0.u(this, new a7.f(this));
    }

    public static boolean c(int i6, int i10, int i11, View view, boolean z7) {
        int i12;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i13 = i10 + scrollX;
                if (i13 >= childAt.getLeft() && i13 < childAt.getRight() && (i12 = i11 + scrollY) >= childAt.getTop() && i12 < childAt.getBottom() && c(i6, i13 - childAt.getLeft(), i12 - childAt.getTop(), childAt, true)) {
                    return true;
                }
            }
        }
        return z7 && view.canScrollHorizontally(-i6);
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z7) {
        if (this.f3081t != z7) {
            this.f3081t = z7;
        }
    }

    public final g a(int i6, int i10) {
        g gVar = new g();
        gVar.f3154b = i6;
        n0 n0Var = (n0) this.f3067e;
        androidx.fragment.app.a aVar = n0Var.d;
        j0 j0Var = n0Var.f1496c;
        if (aVar == null) {
            j0Var.getClass();
            n0Var.d = new androidx.fragment.app.a(j0Var);
        }
        long j10 = i6;
        s sVarZ = j0Var.z("android:switcher:" + getId() + ":" + j10);
        if (sVarZ != null) {
            androidx.fragment.app.a aVar2 = n0Var.d;
            aVar2.getClass();
            aVar2.b(new r0(7, sVarZ));
        } else {
            sVarZ = n0Var.h(i6);
            n0Var.d.f(getId(), sVarZ, "android:switcher:" + getId() + ":" + j10, 1);
        }
        if (sVarZ != n0Var.f1497e) {
            if (sVarZ.C) {
                sVarZ.C = false;
            }
            sVarZ.P(false);
        }
        gVar.f3153a = sVarZ;
        this.f3067e.getClass();
        gVar.d = 1.0f;
        ArrayList arrayList = this.f3065b;
        if (i10 < 0 || i10 >= arrayList.size()) {
            arrayList.add(gVar);
        } else {
            arrayList.add(i10, gVar);
        }
        return gVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i6, int i10) {
        g gVarH;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i11 = 0; i11 < getChildCount(); i11++) {
                View childAt = getChildAt(i11);
                if (childAt.getVisibility() == 0 && (gVarH = h(childAt)) != null && gVarH.f3154b == this.f) {
                    childAt.addFocusables(arrayList, i6, i10);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i10 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addTouchables(ArrayList arrayList) {
        g gVarH;
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() == 0 && (gVarH = h(childAt)) != null && gVarH.f3154b == this.f) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i6, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateDefaultLayoutParams();
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        boolean z7 = layoutParams2.f3088a | (view.getClass().getAnnotation(b2.f.class) != null);
        layoutParams2.f3088a = z7;
        if (!this.f3080s) {
            super.addView(view, i6, layoutParams);
        } else {
            if (z7) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            layoutParams2.d = true;
            addViewInLayout(view, i6, layoutParams);
        }
    }

    public final boolean b(int i6) {
        boolean zRequestFocus;
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        } else if (viewFindFocus != null) {
            for (ViewParent parent = viewFindFocus.getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
                if (parent == this) {
                    break;
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append(viewFindFocus.getClass().getSimpleName());
            for (ViewParent parent2 = viewFindFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                sb.append(" => ");
                sb.append(parent2.getClass().getSimpleName());
            }
            Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + sb.toString());
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i6);
        boolean zM = false;
        if (viewFindNextFocus != null && viewFindNextFocus != viewFindFocus) {
            Rect rect = this.d;
            if (i6 == 17) {
                int i10 = g(viewFindNextFocus, rect).left;
                int i11 = g(viewFindFocus, rect).left;
                if (viewFindFocus == null || i10 < i11) {
                    zRequestFocus = viewFindNextFocus.requestFocus();
                    zM = zRequestFocus;
                } else {
                    int i12 = this.f;
                    if (i12 > 0) {
                        u(i12 - 1, true);
                        zM = true;
                    }
                }
            } else if (i6 == 66) {
                zRequestFocus = (viewFindFocus == null || g(viewFindNextFocus, rect).left > g(viewFindFocus, rect).left) ? viewFindNextFocus.requestFocus() : m();
                zM = zRequestFocus;
            }
        } else if (i6 == 17 || i6 == 1) {
            int i13 = this.f;
            if (i13 > 0) {
                u(i13 - 1, true);
                zM = true;
            }
        } else if (i6 == 66 || i6 == 2) {
            zM = m();
        }
        if (zM) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i6));
        }
        return zM;
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i6) {
        if (this.f3067e == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        return i6 < 0 ? scrollX > ((int) (((float) clientWidth) * this.f3077p)) : i6 > 0 && scrollX < ((int) (((float) clientWidth) * this.f3078q));
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final void computeScroll() {
        this.f3071j = true;
        Scroller scroller = this.f3070i;
        if (scroller.isFinished() || !scroller.computeScrollOffset()) {
            d(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = scroller.getCurrX();
        int currY = scroller.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!n(currX)) {
                scroller.abortAnimation();
                scrollTo(0, currY);
            }
        }
        WeakHashMap weakHashMap = s0.f8353a;
        postInvalidateOnAnimation();
    }

    public final void d(boolean z7) {
        Scroller scroller = this.f3070i;
        boolean z10 = this.V == 2;
        if (z10) {
            setScrollingCacheEnabled(false);
            if (!scroller.isFinished()) {
                scroller.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = scroller.getCurrX();
                int currY = scroller.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        n(currX);
                    }
                }
            }
        }
        this.f3082u = false;
        int i6 = 0;
        while (true) {
            ArrayList arrayList = this.f3065b;
            if (i6 >= arrayList.size()) {
                break;
            }
            g gVar = (g) arrayList.get(i6);
            if (gVar.f3155c) {
                gVar.f3155c = false;
                z10 = true;
            }
            i6++;
        }
        if (z10) {
            f fVar = this.U;
            if (!z7) {
                fVar.run();
            } else {
                WeakHashMap weakHashMap = s0.f8353a;
                postOnAnimation(fVar);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x005f  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean dispatchKeyEvent(android.view.KeyEvent r6) {
        /*
            r5 = this;
            boolean r0 = super.dispatchKeyEvent(r6)
            r1 = 1
            if (r0 != 0) goto L64
            int r0 = r6.getAction()
            r2 = 0
            if (r0 != 0) goto L5f
            int r0 = r6.getKeyCode()
            r3 = 21
            r4 = 2
            if (r0 == r3) goto L48
            r3 = 22
            if (r0 == r3) goto L36
            r3 = 61
            if (r0 == r3) goto L20
            goto L5f
        L20:
            boolean r0 = r6.hasNoModifiers()
            if (r0 == 0) goto L2b
            boolean r6 = r5.b(r4)
            goto L60
        L2b:
            boolean r6 = r6.hasModifiers(r1)
            if (r6 == 0) goto L5f
            boolean r6 = r5.b(r1)
            goto L60
        L36:
            boolean r6 = r6.hasModifiers(r4)
            if (r6 == 0) goto L41
            boolean r6 = r5.m()
            goto L60
        L41:
            r6 = 66
            boolean r6 = r5.b(r6)
            goto L60
        L48:
            boolean r6 = r6.hasModifiers(r4)
            if (r6 == 0) goto L58
            int r6 = r5.f
            if (r6 <= 0) goto L5f
            int r6 = r6 - r1
            r5.u(r6, r1)
            r6 = 1
            goto L60
        L58:
            r6 = 17
            boolean r6 = r5.b(r6)
            goto L60
        L5f:
            r6 = 0
        L60:
            if (r6 == 0) goto L63
            goto L64
        L63:
            r1 = 0
        L64:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        g gVarH;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() == 0 && (gVarH = h(childAt)) != null && gVarH.f3154b == this.f && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        b2.a aVar;
        EdgeEffect edgeEffect = this.M;
        EdgeEffect edgeEffect2 = this.L;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (aVar = this.f3067e) != null && aVar.c() > 1)) {
            if (!edgeEffect2.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate(getPaddingTop() + (-height), this.f3077p * width);
                edgeEffect2.setSize(height, width);
                zDraw = edgeEffect2.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!edgeEffect.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f3078q + 1.0f)) * width2);
                edgeEffect.setSize(height2, width2);
                zDraw |= edgeEffect.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            edgeEffect2.finish();
            edgeEffect.finish();
        }
        if (zDraw) {
            WeakHashMap weakHashMap = s0.f8353a;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f3074m;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    public final void e() {
        int iC = this.f3067e.c();
        this.f3064a = iC;
        ArrayList arrayList = this.f3065b;
        boolean z7 = arrayList.size() < (this.f3083v * 2) + 1 && arrayList.size() < iC;
        int i6 = this.f;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            g gVar = (g) arrayList.get(i10);
            b2.a aVar = this.f3067e;
            s sVar = gVar.f3153a;
            aVar.getClass();
        }
        Collections.sort(arrayList, f3062b0);
        if (z7) {
            int childCount = getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i11).getLayoutParams();
                if (!layoutParams.f3088a) {
                    layoutParams.f3090c = 0.0f;
                }
            }
            v(i6, 0, false, true);
            requestLayout();
        }
    }

    public final void f(int i6) {
        j jVar = this.R;
        if (jVar != null) {
            jVar.onPageSelected(i6);
        }
        ArrayList arrayList = this.Q;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                j jVar2 = (j) this.Q.get(i10);
                if (jVar2 != null) {
                    jVar2.onPageSelected(i6);
                }
            }
        }
        j jVar3 = this.S;
        if (jVar3 != null) {
            jVar3.onPageSelected(i6);
        }
    }

    public final Rect g(View view, Rect rect) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left = viewGroup.getLeft() + rect.left;
            rect.right = viewGroup.getRight() + rect.right;
            rect.top = viewGroup.getTop() + rect.top;
            rect.bottom = viewGroup.getBottom() + rect.bottom;
            parent = viewGroup.getParent();
        }
        return rect;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-1, -1);
        layoutParams.f3090c = 0.0f;
        return layoutParams;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public b2.a getAdapter() {
        return this.f3067e;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i6, int i10) {
        throw null;
    }

    public int getCurrentItem() {
        return this.f;
    }

    public int getOffscreenPageLimit() {
        return this.f3083v;
    }

    public int getPageMargin() {
        return this.f3073l;
    }

    public final g h(View view) {
        int i6 = 0;
        while (true) {
            ArrayList arrayList = this.f3065b;
            if (i6 >= arrayList.size()) {
                return null;
            }
            g gVar = (g) arrayList.get(i6);
            b2.a aVar = this.f3067e;
            s sVar = gVar.f3153a;
            ((n0) aVar).getClass();
            if (sVar.F == view) {
                return gVar;
            }
            i6++;
        }
    }

    public final g i() {
        g gVar;
        int i6;
        int clientWidth = getClientWidth();
        float f = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f3 = clientWidth > 0 ? this.f3073l / clientWidth : 0.0f;
        g gVar2 = null;
        float f4 = 0.0f;
        int i10 = -1;
        int i11 = 0;
        boolean z7 = true;
        while (true) {
            ArrayList arrayList = this.f3065b;
            if (i11 >= arrayList.size()) {
                return gVar2;
            }
            g gVar3 = (g) arrayList.get(i11);
            if (z7 || gVar3.f3154b == (i6 = i10 + 1)) {
                gVar = gVar3;
            } else {
                float f5 = f + f4 + f3;
                g gVar4 = this.f3066c;
                gVar4.f3156e = f5;
                gVar4.f3154b = i6;
                this.f3067e.getClass();
                gVar4.d = 1.0f;
                i11--;
                gVar = gVar4;
            }
            f = gVar.f3156e;
            float f10 = gVar.d + f + f3;
            if (!z7 && scrollX < f) {
                return gVar2;
            }
            if (scrollX < f10 || i11 == arrayList.size() - 1) {
                break;
            }
            int i12 = gVar.f3154b;
            float f11 = gVar.d;
            i11++;
            z7 = false;
            g gVar5 = gVar;
            i10 = i12;
            f4 = f11;
            gVar2 = gVar5;
        }
        return gVar;
    }

    public final g j(int i6) {
        int i10 = 0;
        while (true) {
            ArrayList arrayList = this.f3065b;
            if (i10 >= arrayList.size()) {
                return null;
            }
            g gVar = (g) arrayList.get(i10);
            if (gVar.f3154b == i6) {
                return gVar;
            }
            i10++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void k(int r12, float r13, int r14) {
        /*
            r11 = this;
            int r14 = r11.P
            r0 = 0
            r1 = 1
            if (r14 <= 0) goto L6c
            int r14 = r11.getScrollX()
            int r2 = r11.getPaddingLeft()
            int r3 = r11.getPaddingRight()
            int r4 = r11.getWidth()
            int r5 = r11.getChildCount()
            r6 = 0
        L1b:
            if (r6 >= r5) goto L6c
            android.view.View r7 = r11.getChildAt(r6)
            android.view.ViewGroup$LayoutParams r8 = r7.getLayoutParams()
            androidx.viewpager.widget.ViewPager$LayoutParams r8 = (androidx.viewpager.widget.ViewPager.LayoutParams) r8
            boolean r9 = r8.f3088a
            if (r9 != 0) goto L2c
            goto L69
        L2c:
            int r8 = r8.f3089b
            r8 = r8 & 7
            if (r8 == r1) goto L50
            r9 = 3
            if (r8 == r9) goto L4a
            r9 = 5
            if (r8 == r9) goto L3a
            r8 = r2
            goto L5d
        L3a:
            int r8 = r4 - r3
            int r9 = r7.getMeasuredWidth()
            int r8 = r8 - r9
            int r9 = r7.getMeasuredWidth()
            int r3 = r3 + r9
        L46:
            r10 = r8
            r8 = r2
            r2 = r10
            goto L5d
        L4a:
            int r8 = r7.getWidth()
            int r8 = r8 + r2
            goto L5d
        L50:
            int r8 = r7.getMeasuredWidth()
            int r8 = r4 - r8
            int r8 = r8 / 2
            int r8 = java.lang.Math.max(r8, r2)
            goto L46
        L5d:
            int r2 = r2 + r14
            int r9 = r7.getLeft()
            int r2 = r2 - r9
            if (r2 == 0) goto L68
            r7.offsetLeftAndRight(r2)
        L68:
            r2 = r8
        L69:
            int r6 = r6 + 1
            goto L1b
        L6c:
            b2.j r14 = r11.R
            if (r14 == 0) goto L73
            r14.a(r12, r13)
        L73:
            java.util.ArrayList r14 = r11.Q
            if (r14 == 0) goto L8d
            int r14 = r14.size()
        L7b:
            if (r0 >= r14) goto L8d
            java.util.ArrayList r2 = r11.Q
            java.lang.Object r2 = r2.get(r0)
            b2.j r2 = (b2.j) r2
            if (r2 == 0) goto L8a
            r2.a(r12, r13)
        L8a:
            int r0 = r0 + 1
            goto L7b
        L8d:
            b2.j r14 = r11.S
            if (r14 == 0) goto L94
            r14.a(r12, r13)
        L94:
            r11.O = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.k(int, float, int):void");
    }

    public final void l(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.F) {
            int i6 = actionIndex == 0 ? 1 : 0;
            this.B = motionEvent.getX(i6);
            this.F = motionEvent.getPointerId(i6);
            VelocityTracker velocityTracker = this.G;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public final boolean m() {
        b2.a aVar = this.f3067e;
        if (aVar == null || this.f >= aVar.c() - 1) {
            return false;
        }
        u(this.f + 1, true);
        return true;
    }

    public final boolean n(int i6) {
        if (this.f3065b.size() == 0) {
            if (this.N) {
                return false;
            }
            this.O = false;
            k(0, 0.0f, 0);
            if (this.O) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        g gVarI = i();
        int clientWidth = getClientWidth();
        int i10 = this.f3073l;
        int i11 = clientWidth + i10;
        float f = clientWidth;
        int i12 = gVarI.f3154b;
        float f3 = ((i6 / f) - gVarI.f3156e) / (gVarI.d + (i10 / f));
        this.O = false;
        k(i12, f3, (int) (i11 * f3));
        if (this.O) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    public final boolean o(float f) {
        boolean z7;
        boolean z10;
        float f3 = this.B - f;
        this.B = f;
        float scrollX = getScrollX() + f3;
        float clientWidth = getClientWidth();
        float f4 = this.f3077p * clientWidth;
        float f5 = this.f3078q * clientWidth;
        ArrayList arrayList = this.f3065b;
        boolean z11 = false;
        g gVar = (g) arrayList.get(0);
        g gVar2 = (g) q.e(1, arrayList);
        if (gVar.f3154b != 0) {
            f4 = gVar.f3156e * clientWidth;
            z7 = false;
        } else {
            z7 = true;
        }
        if (gVar2.f3154b != this.f3067e.c() - 1) {
            f5 = gVar2.f3156e * clientWidth;
            z10 = false;
        } else {
            z10 = true;
        }
        if (scrollX < f4) {
            if (z7) {
                this.L.onPull(Math.abs(f4 - scrollX) / clientWidth);
                z11 = true;
            }
            scrollX = f4;
        } else if (scrollX > f5) {
            if (z10) {
                this.M.onPull(Math.abs(scrollX - f5) / clientWidth);
                z11 = true;
            }
            scrollX = f5;
        }
        int i6 = (int) scrollX;
        this.B = (scrollX - i6) + this.B;
        scrollTo(i6, getScrollY());
        n(i6);
        return z11;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.N = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.U);
        Scroller scroller = this.f3070i;
        if (scroller != null && !scroller.isFinished()) {
            this.f3070i.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i6;
        float f;
        ArrayList arrayList;
        float f3;
        super.onDraw(canvas);
        if (this.f3073l <= 0 || this.f3074m == null) {
            return;
        }
        ArrayList arrayList2 = this.f3065b;
        if (arrayList2.size() <= 0 || this.f3067e == null) {
            return;
        }
        int scrollX = getScrollX();
        float width = getWidth();
        float f4 = this.f3073l / width;
        int i10 = 0;
        g gVar = (g) arrayList2.get(0);
        float f5 = gVar.f3156e;
        int size = arrayList2.size();
        int i11 = gVar.f3154b;
        int i12 = ((g) arrayList2.get(size - 1)).f3154b;
        while (i11 < i12) {
            while (true) {
                i6 = gVar.f3154b;
                if (i11 <= i6 || i10 >= size) {
                    break;
                }
                i10++;
                gVar = (g) arrayList2.get(i10);
            }
            if (i11 == i6) {
                float f10 = gVar.f3156e;
                float f11 = gVar.d;
                f = (f10 + f11) * width;
                f5 = f10 + f11 + f4;
            } else {
                this.f3067e.getClass();
                f = (f5 + 1.0f) * width;
                f5 = 1.0f + f4 + f5;
            }
            if (this.f3073l + f > scrollX) {
                arrayList = arrayList2;
                f3 = f4;
                this.f3074m.setBounds(Math.round(f), this.f3075n, Math.round(this.f3073l + f), this.f3076o);
                this.f3074m.draw(canvas);
            } else {
                arrayList = arrayList2;
                f3 = f4;
            }
            if (f > scrollX + r3) {
                return;
            }
            i11++;
            arrayList2 = arrayList;
            f4 = f3;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int i6 = this.A;
        Scroller scroller = this.f3070i;
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            s();
            return false;
        }
        if (action != 0) {
            if (this.f3084w) {
                return true;
            }
            if (this.f3085x) {
                return false;
            }
        }
        if (action == 0) {
            float x10 = motionEvent.getX();
            this.D = x10;
            this.B = x10;
            float y7 = motionEvent.getY();
            this.E = y7;
            this.C = y7;
            this.F = motionEvent.getPointerId(0);
            this.f3085x = false;
            this.f3071j = true;
            scroller.computeScrollOffset();
            if (this.V != 2 || Math.abs(scroller.getFinalX() - scroller.getCurrX()) <= this.K) {
                d(false);
                this.f3084w = false;
            } else {
                scroller.abortAnimation();
                this.f3082u = false;
                p();
                this.f3084w = true;
                ViewParent parent = getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                setScrollState(1);
            }
        } else if (action == 2) {
            int i10 = this.F;
            if (i10 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i10);
                float x11 = motionEvent.getX(iFindPointerIndex);
                float f = x11 - this.B;
                float fAbs = Math.abs(f);
                float y9 = motionEvent.getY(iFindPointerIndex);
                float fAbs2 = Math.abs(y9 - this.E);
                if (f != 0.0f) {
                    float f3 = this.B;
                    if ((f3 >= this.f3087z || f <= 0.0f) && ((f3 <= getWidth() - this.f3087z || f >= 0.0f) && c((int) f, (int) x11, (int) y9, this, false))) {
                        this.B = x11;
                        this.C = y9;
                        this.f3085x = true;
                        return false;
                    }
                }
                float f4 = i6;
                if (fAbs > f4 && fAbs * 0.5f > fAbs2) {
                    this.f3084w = true;
                    ViewParent parent2 = getParent();
                    if (parent2 != null) {
                        parent2.requestDisallowInterceptTouchEvent(true);
                    }
                    setScrollState(1);
                    float f5 = this.D;
                    float f10 = i6;
                    this.B = f > 0.0f ? f5 + f10 : f5 - f10;
                    this.C = y9;
                    setScrollingCacheEnabled(true);
                } else if (fAbs2 > f4) {
                    this.f3085x = true;
                }
                if (this.f3084w && o(x11)) {
                    WeakHashMap weakHashMap = s0.f8353a;
                    postInvalidateOnAnimation();
                }
            }
        } else if (action == 6) {
            l(motionEvent);
        }
        if (this.G == null) {
            this.G = VelocityTracker.obtain();
        }
        this.G.addMovement(motionEvent);
        return this.f3084w;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0094  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a7  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i6, Rect rect) {
        int i10;
        int i11;
        int i12;
        g gVarH;
        int childCount = getChildCount();
        if ((i6 & 2) != 0) {
            i11 = childCount;
            i10 = 0;
            i12 = 1;
        } else {
            i10 = childCount - 1;
            i11 = -1;
            i12 = -1;
        }
        while (i10 != i11) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 0 && (gVarH = h(childAt)) != null && gVarH.f3154b == this.f && childAt.requestFocus(i6, rect)) {
                return true;
            }
            i10 += i12;
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) throws Resources.NotFoundException {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f1319a);
        if (this.f3067e != null) {
            v(savedState.f3091c, 0, false, true);
        } else {
            this.f3068g = savedState.f3091c;
            this.f3069h = savedState.d;
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f3091c = this.f;
        b2.a aVar = this.f3067e;
        if (aVar != null) {
            aVar.getClass();
            savedState.d = null;
        }
        return savedState;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i6, int i10, int i11, int i12) {
        super.onSizeChanged(i6, i10, i11, i12);
        if (i6 != i11) {
            int i13 = this.f3073l;
            r(i6, i11, i13, i13);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00d8  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r9) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 413
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void p() {
        q(this.f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x005e, code lost:
    
        r9 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00bc A[PHI: r7 r11 r15
  0x00bc: PHI (r7v15 int) = (r7v14 int), (r7v4 int), (r7v18 int) binds: [B:61:0x00de, B:58:0x00ca, B:50:0x00b3] A[DONT_GENERATE, DONT_INLINE]
  0x00bc: PHI (r11v32 int) = (r11v1 int), (r11v31 int), (r11v35 int) binds: [B:61:0x00de, B:58:0x00ca, B:50:0x00b3] A[DONT_GENERATE, DONT_INLINE]
  0x00bc: PHI (r15v6 float) = (r15v4 float), (r15v5 float), (r15v3 float) binds: [B:61:0x00de, B:58:0x00ca, B:50:0x00b3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x013b A[PHI: r3 r12
  0x013b: PHI (r3v21 float) = (r3v19 float), (r3v20 float), (r3v18 float) binds: [B:95:0x0162, B:92:0x014c, B:85:0x0132] A[DONT_GENERATE, DONT_INLINE]
  0x013b: PHI (r12v25 int) = (r12v23 int), (r12v24 int), (r12v22 int) binds: [B:95:0x0162, B:92:0x014c, B:85:0x0132] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void q(int r18) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 873
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.q(int):void");
    }

    public final void r(int i6, int i10, int i11, int i12) {
        if (i10 > 0 && !this.f3065b.isEmpty()) {
            if (!this.f3070i.isFinished()) {
                this.f3070i.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i10 - getPaddingLeft()) - getPaddingRight()) + i12)) * (((i6 - getPaddingLeft()) - getPaddingRight()) + i11)), getScrollY());
                return;
            }
        }
        g gVarJ = j(this.f);
        int iMin = (int) ((gVarJ != null ? Math.min(gVarJ.f3156e, this.f3078q) : 0.0f) * ((i6 - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            d(false);
            scrollTo(iMin, getScrollY());
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.f3080s) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public final boolean s() {
        this.F = -1;
        this.f3084w = false;
        this.f3085x = false;
        VelocityTracker velocityTracker = this.G;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.G = null;
        }
        this.L.onRelease();
        this.M.onRelease();
        return this.L.isFinished() || this.M.isFinished();
    }

    public void setAdapter(b2.a aVar) throws Resources.NotFoundException {
        ArrayList arrayList;
        b2.a aVar2 = this.f3067e;
        if (aVar2 != null) {
            synchronized (aVar2) {
                aVar2.f3146b = null;
            }
            this.f3067e.g(this);
            int i6 = 0;
            while (true) {
                arrayList = this.f3065b;
                if (i6 >= arrayList.size()) {
                    break;
                }
                g gVar = (g) arrayList.get(i6);
                b2.a aVar3 = this.f3067e;
                int i10 = gVar.f3154b;
                aVar3.a(gVar.f3153a);
                i6++;
            }
            this.f3067e.b();
            arrayList.clear();
            int i11 = 0;
            while (i11 < getChildCount()) {
                if (!((LayoutParams) getChildAt(i11).getLayoutParams()).f3088a) {
                    removeViewAt(i11);
                    i11--;
                }
                i11++;
            }
            this.f = 0;
            scrollTo(0, 0);
        }
        b2.a aVar4 = this.f3067e;
        this.f3067e = aVar;
        this.f3064a = 0;
        if (aVar != null) {
            if (this.f3072k == null) {
                this.f3072k = new a2(1, this);
            }
            this.f3067e.f(this.f3072k);
            this.f3082u = false;
            boolean z7 = this.N;
            this.N = true;
            this.f3064a = this.f3067e.c();
            if (this.f3068g >= 0) {
                this.f3067e.getClass();
                v(this.f3068g, 0, false, true);
                this.f3068g = -1;
            } else if (z7) {
                requestLayout();
            } else {
                p();
            }
        }
        ArrayList arrayList2 = this.T;
        if (arrayList2 == null || arrayList2.isEmpty()) {
            return;
        }
        int size = this.T.size();
        for (int i12 = 0; i12 < size; i12++) {
            ((i) this.T.get(i12)).b(this, aVar4, aVar);
        }
    }

    public void setCurrentItem(int i6) {
        this.f3082u = false;
        v(i6, 0, !this.N, false);
    }

    public void setOffscreenPageLimit(int i6) {
        if (i6 < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i6 + " too small; defaulting to 1");
            i6 = 1;
        }
        if (i6 != this.f3083v) {
            this.f3083v = i6;
            p();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(j jVar) {
        this.R = jVar;
    }

    public void setPageMargin(int i6) {
        int i10 = this.f3073l;
        this.f3073l = i6;
        int width = getWidth();
        r(width, width, i6, i10);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.f3074m = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollState(int i6) {
        if (this.V == i6) {
            return;
        }
        this.V = i6;
        j jVar = this.R;
        if (jVar != null) {
            jVar.onPageScrollStateChanged(i6);
        }
        ArrayList arrayList = this.Q;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                j jVar2 = (j) this.Q.get(i10);
                if (jVar2 != null) {
                    jVar2.onPageScrollStateChanged(i6);
                }
            }
        }
        j jVar3 = this.S;
        if (jVar3 != null) {
            jVar3.onPageScrollStateChanged(i6);
        }
    }

    public final void t(int i6, int i10, boolean z7, boolean z10) {
        int scrollX;
        int iAbs;
        Scroller scroller = this.f3070i;
        g gVarJ = j(i6);
        int iMax = gVarJ != null ? (int) (Math.max(this.f3077p, Math.min(gVarJ.f3156e, this.f3078q)) * getClientWidth()) : 0;
        if (!z7) {
            if (z10) {
                f(i6);
            }
            d(false);
            scrollTo(iMax, 0);
            n(iMax);
            return;
        }
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
        } else {
            if (scroller == null || scroller.isFinished()) {
                scrollX = getScrollX();
            } else {
                scrollX = this.f3071j ? scroller.getCurrX() : scroller.getStartX();
                scroller.abortAnimation();
                setScrollingCacheEnabled(false);
            }
            int i11 = scrollX;
            int scrollY = getScrollY();
            int i12 = iMax - i11;
            int i13 = 0 - scrollY;
            if (i12 == 0 && i13 == 0) {
                d(false);
                p();
                setScrollState(0);
            } else {
                setScrollingCacheEnabled(true);
                setScrollState(2);
                int clientWidth = getClientWidth();
                int i14 = clientWidth / 2;
                float f = clientWidth;
                float f3 = i14;
                float fSin = (((float) Math.sin((Math.min(1.0f, (Math.abs(i12) * 1.0f) / f) - 0.5f) * 0.47123894f)) * f3) + f3;
                int iAbs2 = Math.abs(i10);
                if (iAbs2 > 0) {
                    iAbs = Math.round(Math.abs(fSin / iAbs2) * 1000.0f) * 4;
                } else {
                    this.f3067e.getClass();
                    iAbs = (int) (((Math.abs(i12) / ((f * 1.0f) + this.f3073l)) + 1.0f) * 100.0f);
                }
                int iMin = Math.min(iAbs, BannerConfig.SCROLL_TIME);
                this.f3071j = false;
                this.f3070i.startScroll(i11, scrollY, i12, i13, iMin);
                WeakHashMap weakHashMap = s0.f8353a;
                postInvalidateOnAnimation();
            }
        }
        if (z10) {
            f(i6);
        }
    }

    public final void u(int i6, boolean z7) {
        this.f3082u = false;
        v(i6, 0, z7, false);
    }

    public final void v(int i6, int i10, boolean z7, boolean z10) throws Resources.NotFoundException {
        b2.a aVar = this.f3067e;
        if (aVar == null || aVar.c() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        ArrayList arrayList = this.f3065b;
        if (!z10 && this.f == i6 && arrayList.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i6 < 0) {
            i6 = 0;
        } else if (i6 >= this.f3067e.c()) {
            i6 = this.f3067e.c() - 1;
        }
        int i11 = this.f3083v;
        int i12 = this.f;
        if (i6 > i12 + i11 || i6 < i12 - i11) {
            for (int i13 = 0; i13 < arrayList.size(); i13++) {
                ((g) arrayList.get(i13)).f3155c = true;
            }
        }
        boolean z11 = this.f != i6;
        if (!this.N) {
            q(i6);
            t(i6, i10, z7, z11);
        } else {
            this.f = i6;
            if (z11) {
                f(i6);
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f3074m;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public void setPageMarginDrawable(int i6) {
        setPageMarginDrawable(d0.a.b(getContext(), i6));
    }
}
