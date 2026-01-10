package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import com.p2elite.brtv2.R;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
@SuppressLint({"UnknownNullness"})
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements i1, n0.p, n0.q {
    public static final int[] B = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};
    public final n0.r A;

    /* renamed from: a, reason: collision with root package name */
    public int f442a;

    /* renamed from: b, reason: collision with root package name */
    public int f443b;

    /* renamed from: c, reason: collision with root package name */
    public ContentFrameLayout f444c;
    public ActionBarContainer d;

    /* renamed from: e, reason: collision with root package name */
    public j1 f445e;
    public Drawable f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f446g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f447h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f448i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f449j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f450k;

    /* renamed from: l, reason: collision with root package name */
    public int f451l;

    /* renamed from: m, reason: collision with root package name */
    public int f452m;

    /* renamed from: n, reason: collision with root package name */
    public final Rect f453n;

    /* renamed from: o, reason: collision with root package name */
    public final Rect f454o;

    /* renamed from: p, reason: collision with root package name */
    public final Rect f455p;

    /* renamed from: q, reason: collision with root package name */
    public n0.r1 f456q;

    /* renamed from: r, reason: collision with root package name */
    public n0.r1 f457r;

    /* renamed from: s, reason: collision with root package name */
    public n0.r1 f458s;

    /* renamed from: t, reason: collision with root package name */
    public n0.r1 f459t;

    /* renamed from: u, reason: collision with root package name */
    public d f460u;

    /* renamed from: v, reason: collision with root package name */
    public OverScroller f461v;

    /* renamed from: w, reason: collision with root package name */
    public ViewPropertyAnimator f462w;

    /* renamed from: x, reason: collision with root package name */
    public final a6.a f463x;

    /* renamed from: y, reason: collision with root package name */
    public final c f464y;

    /* renamed from: z, reason: collision with root package name */
    public final c f465z;

    /* compiled from: MyApplication */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f443b = 0;
        this.f453n = new Rect();
        this.f454o = new Rect();
        this.f455p = new Rect();
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        n0.r1 r1Var = n0.r1.f8351b;
        this.f456q = r1Var;
        this.f457r = r1Var;
        this.f458s = r1Var;
        this.f459t = r1Var;
        this.f463x = new a6.a(2, this);
        this.f464y = new c(this, 0);
        this.f465z = new c(this, 1);
        e(context);
        this.A = new n0.r();
    }

    public static boolean c(View view, Rect rect, boolean z7) {
        boolean z10;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i6 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        int i10 = rect.left;
        if (i6 != i10) {
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = i10;
            z10 = true;
        } else {
            z10 = false;
        }
        int i11 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        int i12 = rect.top;
        if (i11 != i12) {
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = i12;
            z10 = true;
        }
        int i13 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        int i14 = rect.right;
        if (i13 != i14) {
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = i14;
            z10 = true;
        }
        if (z7) {
            int i15 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            int i16 = rect.bottom;
            if (i15 != i16) {
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = i16;
                return true;
            }
        }
        return z10;
    }

    @Override // n0.p
    public final void a(View view, View view2, int i6, int i10) {
        if (i10 == 0) {
            onNestedScrollAccepted(view, view2, i6);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public final void d() {
        removeCallbacks(this.f464y);
        removeCallbacks(this.f465z);
        ViewPropertyAnimator viewPropertyAnimator = this.f462w;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int translationY;
        super.draw(canvas);
        if (this.f == null || this.f446g) {
            return;
        }
        if (this.d.getVisibility() == 0) {
            translationY = (int) (this.d.getTranslationY() + this.d.getBottom() + 0.5f);
        } else {
            translationY = 0;
        }
        this.f.setBounds(0, translationY, getWidth(), this.f.getIntrinsicHeight() + translationY);
        this.f.draw(canvas);
    }

    public final void e(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(B);
        this.f442a = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.f = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.f446g = context.getApplicationInfo().targetSdkVersion < 19;
        this.f461v = new OverScroller(context);
    }

    @Override // n0.p
    public final void f(int i6, View view) {
        if (i6 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // n0.q
    public final void g(View view, int i6, int i10, int i11, int i12, int i13, int[] iArr) {
        i(view, i6, i10, i11, i12, i13);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.d;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        n0.r rVar = this.A;
        return rVar.f8347b | rVar.f8346a;
    }

    public CharSequence getTitle() {
        k();
        return ((v3) this.f445e).f862a.getTitle();
    }

    public final void h(int i6) {
        k();
        if (i6 == 2) {
            ((v3) this.f445e).getClass();
            Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
        } else if (i6 == 5) {
            ((v3) this.f445e).getClass();
            Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
        } else {
            if (i6 != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    @Override // n0.p
    public final void i(View view, int i6, int i10, int i11, int i12, int i13) {
        if (i13 == 0) {
            onNestedScroll(view, i6, i10, i11, i12);
        }
    }

    @Override // n0.p
    public final boolean j(View view, View view2, int i6, int i10) {
        return i10 == 0 && onStartNestedScroll(view, view2, i6);
    }

    public final void k() {
        j1 wrapper;
        if (this.f444c == null) {
            this.f444c = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.d = (ActionBarContainer) findViewById(R.id.action_bar_container);
            KeyEvent.Callback callbackFindViewById = findViewById(R.id.action_bar);
            if (callbackFindViewById instanceof j1) {
                wrapper = (j1) callbackFindViewById;
            } else {
                if (!(callbackFindViewById instanceof Toolbar)) {
                    throw new IllegalStateException("Can't make a decor toolbar out of ".concat(callbackFindViewById.getClass().getSimpleName()));
                }
                wrapper = ((Toolbar) callbackFindViewById).getWrapper();
            }
            this.f445e = wrapper;
        }
    }

    public final void l(k.l lVar, k.x xVar) {
        k();
        v3 v3Var = (v3) this.f445e;
        k kVar = v3Var.f872m;
        Toolbar toolbar = v3Var.f862a;
        if (kVar == null) {
            k kVar2 = new k(toolbar.getContext());
            v3Var.f872m = kVar2;
            kVar2.f7549i = R.id.action_menu_presenter;
        }
        k kVar3 = v3Var.f872m;
        kVar3.f7546e = xVar;
        if (lVar == null && toolbar.f630a == null) {
            return;
        }
        toolbar.f();
        k.l lVar2 = toolbar.f630a.f467p;
        if (lVar2 == lVar) {
            return;
        }
        if (lVar2 != null) {
            lVar2.r(toolbar.L);
            lVar2.r(toolbar.M);
        }
        if (toolbar.M == null) {
            toolbar.M = new q3(toolbar);
        }
        kVar3.f755r = true;
        if (lVar != null) {
            lVar.b(kVar3, toolbar.f637j);
            lVar.b(toolbar.M, toolbar.f637j);
        } else {
            kVar3.k(toolbar.f637j, null);
            toolbar.M.k(toolbar.f637j, null);
            kVar3.j(true);
            toolbar.M.j(true);
        }
        toolbar.f630a.setPopupTheme(toolbar.f638k);
        toolbar.f630a.setPresenter(kVar3);
        toolbar.L = kVar3;
        toolbar.w();
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        k();
        n0.r1 r1VarH = n0.r1.h(windowInsets, this);
        boolean zC = c(this.d, new Rect(r1VarH.b(), r1VarH.d(), r1VarH.c(), r1VarH.a()), false);
        WeakHashMap weakHashMap = n0.s0.f8353a;
        Rect rect = this.f453n;
        n0.g0.b(this, r1VarH, rect);
        int i6 = rect.left;
        int i10 = rect.top;
        int i11 = rect.right;
        int i12 = rect.bottom;
        n0.o1 o1Var = r1VarH.f8352a;
        n0.r1 r1VarM = o1Var.m(i6, i10, i11, i12);
        this.f456q = r1VarM;
        boolean z7 = true;
        if (!this.f457r.equals(r1VarM)) {
            this.f457r = this.f456q;
            zC = true;
        }
        Rect rect2 = this.f454o;
        if (rect2.equals(rect)) {
            z7 = zC;
        } else {
            rect2.set(rect);
        }
        if (z7) {
            requestLayout();
        }
        return o1Var.a().f8352a.c().f8352a.b().g();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        e(getContext());
        WeakHashMap weakHashMap = n0.s0.f8353a;
        n0.e0.c(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i14 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + paddingLeft;
                int i15 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + paddingTop;
                childAt.layout(i14, i15, measuredWidth + i14, measuredHeight + i15);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i6, int i10) {
        int measuredHeight;
        k();
        measureChildWithMargins(this.d, i6, 0, i10, 0);
        LayoutParams layoutParams = (LayoutParams) this.d.getLayoutParams();
        int iMax = Math.max(0, this.d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
        int iMax2 = Math.max(0, this.d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        int iCombineMeasuredStates = View.combineMeasuredStates(0, this.d.getMeasuredState());
        WeakHashMap weakHashMap = n0.s0.f8353a;
        boolean z7 = (getWindowSystemUiVisibility() & 256) != 0;
        if (z7) {
            measuredHeight = this.f442a;
            if (this.f448i && this.d.getTabContainer() != null) {
                measuredHeight += this.f442a;
            }
        } else {
            measuredHeight = this.d.getVisibility() != 8 ? this.d.getMeasuredHeight() : 0;
        }
        Rect rect = this.f453n;
        Rect rect2 = this.f455p;
        rect2.set(rect);
        n0.r1 r1Var = this.f456q;
        this.f458s = r1Var;
        if (this.f447h || z7) {
            f0.c cVarA = f0.c.a(r1Var.b(), this.f458s.d() + measuredHeight, this.f458s.c(), this.f458s.a());
            n0.r1 r1Var2 = this.f458s;
            int i11 = Build.VERSION.SDK_INT;
            n0.i1 h1Var = i11 >= 30 ? new n0.h1(r1Var2) : i11 >= 29 ? new n0.g1(r1Var2) : new n0.e1(r1Var2);
            h1Var.d(cVarA);
            this.f458s = h1Var.b();
        } else {
            rect2.top += measuredHeight;
            rect2.bottom = rect2.bottom;
            this.f458s = r1Var.f8352a.m(0, measuredHeight, 0, 0);
        }
        c(this.f444c, rect2, true);
        if (!this.f459t.equals(this.f458s)) {
            n0.r1 r1Var3 = this.f458s;
            this.f459t = r1Var3;
            n0.s0.b(this.f444c, r1Var3);
        }
        measureChildWithMargins(this.f444c, i6, 0, i10, 0);
        LayoutParams layoutParams2 = (LayoutParams) this.f444c.getLayoutParams();
        int iMax3 = Math.max(iMax, this.f444c.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
        int iMax4 = Math.max(iMax2, this.f444c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin);
        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f444c.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + iMax3, getSuggestedMinimumWidth()), i6, iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax4, getSuggestedMinimumHeight()), i10, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f3, boolean z7) {
        if (!this.f449j || !z7) {
            return false;
        }
        this.f461v.fling(0, 0, 0, (int) f3, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        if (this.f461v.getFinalY() > this.d.getHeight()) {
            d();
            this.f465z.run();
        } else {
            d();
            this.f464y.run();
        }
        this.f450k = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f3) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i6, int i10, int i11, int i12) {
        int i13 = this.f451l + i10;
        this.f451l = i13;
        setActionBarHideOffset(i13);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i6) {
        androidx.appcompat.app.x0 x0Var;
        j.j jVar;
        this.A.f8346a = i6;
        this.f451l = getActionBarHideOffset();
        d();
        d dVar = this.f460u;
        if (dVar == null || (jVar = (x0Var = (androidx.appcompat.app.x0) dVar).J) == null) {
            return;
        }
        jVar.a();
        x0Var.J = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i6) {
        if ((i6 & 2) == 0 || this.d.getVisibility() != 0) {
            return false;
        }
        return this.f449j;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        if (!this.f449j || this.f450k) {
            return;
        }
        if (this.f451l <= this.d.getHeight()) {
            d();
            postDelayed(this.f464y, 600L);
        } else {
            d();
            postDelayed(this.f465z, 600L);
        }
    }

    @Override // android.view.View
    public final void onWindowSystemUiVisibilityChanged(int i6) {
        super.onWindowSystemUiVisibilityChanged(i6);
        k();
        int i10 = this.f452m ^ i6;
        this.f452m = i6;
        boolean z7 = (i6 & 4) == 0;
        boolean z10 = (i6 & 256) != 0;
        d dVar = this.f460u;
        if (dVar != null) {
            androidx.appcompat.app.x0 x0Var = (androidx.appcompat.app.x0) dVar;
            x0Var.F = !z10;
            if (z7 || !z10) {
                if (x0Var.G) {
                    x0Var.G = false;
                    x0Var.Y(true);
                }
            } else if (!x0Var.G) {
                x0Var.G = true;
                x0Var.Y(true);
            }
        }
        if ((i10 & 256) == 0 || this.f460u == null) {
            return;
        }
        WeakHashMap weakHashMap = n0.s0.f8353a;
        n0.e0.c(this);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i6) {
        super.onWindowVisibilityChanged(i6);
        this.f443b = i6;
        d dVar = this.f460u;
        if (dVar != null) {
            ((androidx.appcompat.app.x0) dVar).E = i6;
        }
    }

    public void setActionBarHideOffset(int i6) {
        d();
        this.d.setTranslationY(-Math.max(0, Math.min(i6, this.d.getHeight())));
    }

    public void setActionBarVisibilityCallback(d dVar) {
        this.f460u = dVar;
        if (getWindowToken() != null) {
            ((androidx.appcompat.app.x0) this.f460u).E = this.f443b;
            int i6 = this.f452m;
            if (i6 != 0) {
                onWindowSystemUiVisibilityChanged(i6);
                WeakHashMap weakHashMap = n0.s0.f8353a;
                n0.e0.c(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z7) {
        this.f448i = z7;
    }

    public void setHideOnContentScrollEnabled(boolean z7) {
        if (z7 != this.f449j) {
            this.f449j = z7;
            if (z7) {
                return;
            }
            d();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i6) {
        k();
        v3 v3Var = (v3) this.f445e;
        v3Var.d = i6 != 0 ? com.bumptech.glide.c.h(v3Var.f862a.getContext(), i6) : null;
        v3Var.d();
    }

    public void setLogo(int i6) {
        k();
        v3 v3Var = (v3) this.f445e;
        v3Var.f865e = i6 != 0 ? com.bumptech.glide.c.h(v3Var.f862a.getContext(), i6) : null;
        v3Var.d();
    }

    public void setOverlayMode(boolean z7) {
        this.f447h = z7;
        this.f446g = z7 && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    @Override // androidx.appcompat.widget.i1
    public void setWindowCallback(Window.Callback callback) {
        k();
        ((v3) this.f445e).f870k = callback;
    }

    @Override // androidx.appcompat.widget.i1
    public void setWindowTitle(CharSequence charSequence) {
        k();
        v3 v3Var = (v3) this.f445e;
        if (v3Var.f866g) {
            return;
        }
        v3Var.f867h = charSequence;
        if ((v3Var.f863b & 8) != 0) {
            Toolbar toolbar = v3Var.f862a;
            toolbar.setTitle(charSequence);
            if (v3Var.f866g) {
                n0.s0.r(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public void setIcon(Drawable drawable) {
        k();
        v3 v3Var = (v3) this.f445e;
        v3Var.d = drawable;
        v3Var.d();
    }

    public void setShowingForActionMode(boolean z7) {
    }

    public void setUiOptions(int i6) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i6, int i10, int[] iArr) {
    }

    @Override // n0.p
    public final void b(View view, int i6, int i10, int[] iArr, int i11) {
    }
}
