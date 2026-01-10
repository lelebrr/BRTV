package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.a2;
import androidx.viewpager.widget.ViewPager;
import b2.a;
import b2.f;
import com.google.android.material.internal.a0;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import m0.d;
import n0.g0;
import n0.s0;
import q.b;
import x6.c;
import x6.g;
import x6.h;
import x6.i;
import x6.k;
import x6.l;

/* compiled from: MyApplication */
@f
/* loaded from: classes.dex */
public class TabLayout extends HorizontalScrollView {
    public static final d R = new d(16);
    public boolean A;
    public boolean B;
    public int C;
    public int D;
    public boolean E;
    public b F;
    public c G;
    public final ArrayList H;
    public l I;
    public ValueAnimator J;
    public ViewPager K;
    public a L;
    public a2 M;
    public i N;
    public x6.b O;
    public boolean P;
    public final m0.c Q;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f5226a;

    /* renamed from: b, reason: collision with root package name */
    public h f5227b;

    /* renamed from: c, reason: collision with root package name */
    public final g f5228c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final int f5229e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f5230g;

    /* renamed from: h, reason: collision with root package name */
    public final int f5231h;

    /* renamed from: i, reason: collision with root package name */
    public ColorStateList f5232i;

    /* renamed from: j, reason: collision with root package name */
    public ColorStateList f5233j;

    /* renamed from: k, reason: collision with root package name */
    public ColorStateList f5234k;

    /* renamed from: l, reason: collision with root package name */
    public Drawable f5235l;

    /* renamed from: m, reason: collision with root package name */
    public int f5236m;

    /* renamed from: n, reason: collision with root package name */
    public final PorterDuff.Mode f5237n;

    /* renamed from: o, reason: collision with root package name */
    public final float f5238o;

    /* renamed from: p, reason: collision with root package name */
    public final float f5239p;

    /* renamed from: q, reason: collision with root package name */
    public final int f5240q;

    /* renamed from: r, reason: collision with root package name */
    public int f5241r;

    /* renamed from: s, reason: collision with root package name */
    public final int f5242s;

    /* renamed from: t, reason: collision with root package name */
    public final int f5243t;

    /* renamed from: u, reason: collision with root package name */
    public final int f5244u;

    /* renamed from: v, reason: collision with root package name */
    public final int f5245v;

    /* renamed from: w, reason: collision with root package name */
    public int f5246w;

    /* renamed from: x, reason: collision with root package name */
    public final int f5247x;

    /* renamed from: y, reason: collision with root package name */
    public int f5248y;

    /* renamed from: z, reason: collision with root package name */
    public int f5249z;

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.tabStyle);
    }

    private int getDefaultHeight() {
        ArrayList arrayList = this.f5226a;
        int size = arrayList.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size) {
                break;
            }
            h hVar = (h) arrayList.get(i6);
            if (hVar == null || hVar.f11058a == null || TextUtils.isEmpty(hVar.f11059b)) {
                i6++;
            } else if (!this.A) {
                return 72;
            }
        }
        return 48;
    }

    private int getTabMinWidth() {
        int i6 = this.f5242s;
        if (i6 != -1) {
            return i6;
        }
        int i10 = this.f5249z;
        if (i10 == 0 || i10 == 2) {
            return this.f5244u;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.f5228c.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private void setSelectedTabView(int i6) {
        g gVar = this.f5228c;
        int childCount = gVar.getChildCount();
        if (i6 < childCount) {
            int i10 = 0;
            while (i10 < childCount) {
                View childAt = gVar.getChildAt(i10);
                boolean z7 = true;
                childAt.setSelected(i10 == i6);
                if (i10 != i6) {
                    z7 = false;
                }
                childAt.setActivated(z7);
                i10++;
            }
        }
    }

    public final void a(c cVar) {
        ArrayList arrayList = this.H;
        if (arrayList.contains(cVar)) {
            return;
        }
        arrayList.add(cVar);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view) {
        c(view);
    }

    public final void b(h hVar, boolean z7) {
        ArrayList arrayList = this.f5226a;
        int size = arrayList.size();
        if (hVar.f != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        hVar.d = size;
        arrayList.add(size, hVar);
        int size2 = arrayList.size();
        for (int i6 = size + 1; i6 < size2; i6++) {
            ((h) arrayList.get(i6)).d = i6;
        }
        k kVar = hVar.f11062g;
        kVar.setSelected(false);
        kVar.setActivated(false);
        int i10 = hVar.d;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        if (this.f5249z == 1 && this.f5246w == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
        this.f5228c.addView(kVar, i10, layoutParams);
        if (z7) {
            TabLayout tabLayout = hVar.f;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            tabLayout.l(hVar, true);
        }
    }

    public final void c(View view) {
        if (!(view instanceof TabItem)) {
            throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
        }
        TabItem tabItem = (TabItem) view;
        h hVarI = i();
        CharSequence charSequence = tabItem.f5223a;
        if (charSequence != null) {
            if (TextUtils.isEmpty(hVarI.f11060c) && !TextUtils.isEmpty(charSequence)) {
                hVarI.f11062g.setContentDescription(charSequence);
            }
            hVarI.f11059b = charSequence;
            hVarI.a();
        }
        Drawable drawable = tabItem.f5224b;
        if (drawable != null) {
            hVarI.f11058a = drawable;
            TabLayout tabLayout = hVarI.f;
            if (tabLayout.f5246w == 1 || tabLayout.f5249z == 2) {
                tabLayout.p(true);
            }
            hVarI.a();
        }
        int i6 = tabItem.f5225c;
        if (i6 != 0) {
            hVarI.f11061e = LayoutInflater.from(hVarI.f11062g.getContext()).inflate(i6, (ViewGroup) hVarI.f11062g, false);
            hVarI.a();
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            hVarI.f11060c = tabItem.getContentDescription();
            hVarI.a();
        }
        b(hVarI, this.f5226a.isEmpty());
    }

    public final void d(int i6) {
        if (i6 == -1) {
            return;
        }
        if (getWindowToken() != null) {
            WeakHashMap weakHashMap = s0.f8353a;
            if (isLaidOut()) {
                g gVar = this.f5228c;
                int childCount = gVar.getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    if (gVar.getChildAt(i10).getWidth() > 0) {
                    }
                }
                int scrollX = getScrollX();
                int iF = f(i6, 0.0f);
                if (scrollX != iF) {
                    g();
                    this.J.setIntValues(scrollX, iF);
                    this.J.start();
                }
                ValueAnimator valueAnimator = gVar.f11054a;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    gVar.f11054a.cancel();
                }
                gVar.d(i6, this.f5247x, true);
                return;
            }
        }
        n(i6, 0.0f, true, true);
    }

    public final void e() {
        int i6 = this.f5249z;
        int iMax = (i6 == 0 || i6 == 2) ? Math.max(0, this.f5245v - this.d) : 0;
        WeakHashMap weakHashMap = s0.f8353a;
        g gVar = this.f5228c;
        gVar.setPaddingRelative(iMax, 0, 0, 0);
        int i10 = this.f5249z;
        if (i10 == 0) {
            int i11 = this.f5246w;
            if (i11 == 0) {
                Log.w("TabLayout", "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead");
            } else if (i11 == 1) {
                gVar.setGravity(1);
            } else if (i11 == 2) {
            }
            gVar.setGravity(8388611);
        } else if (i10 == 1 || i10 == 2) {
            if (this.f5246w == 2) {
                Log.w("TabLayout", "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead");
            }
            gVar.setGravity(1);
        }
        p(true);
    }

    public final int f(int i6, float f) {
        g gVar;
        View childAt;
        int i10 = this.f5249z;
        if ((i10 != 0 && i10 != 2) || (childAt = (gVar = this.f5228c).getChildAt(i6)) == null) {
            return 0;
        }
        int i11 = i6 + 1;
        View childAt2 = i11 < gVar.getChildCount() ? gVar.getChildAt(i11) : null;
        int width = childAt.getWidth();
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = ((width / 2) + childAt.getLeft()) - (getWidth() / 2);
        int i12 = (int) ((width + width2) * 0.5f * f);
        WeakHashMap weakHashMap = s0.f8353a;
        return getLayoutDirection() == 0 ? left + i12 : left - i12;
    }

    public final void g() {
        if (this.J == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.J = valueAnimator;
            valueAnimator.setInterpolator(y5.a.f11407b);
            this.J.setDuration(this.f5247x);
            this.J.addUpdateListener(new a7.c(7, this));
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    public int getSelectedTabPosition() {
        h hVar = this.f5227b;
        if (hVar != null) {
            return hVar.d;
        }
        return -1;
    }

    public int getTabCount() {
        return this.f5226a.size();
    }

    public int getTabGravity() {
        return this.f5246w;
    }

    public ColorStateList getTabIconTint() {
        return this.f5233j;
    }

    public int getTabIndicatorAnimationMode() {
        return this.D;
    }

    public int getTabIndicatorGravity() {
        return this.f5248y;
    }

    public int getTabMaxWidth() {
        return this.f5241r;
    }

    public int getTabMode() {
        return this.f5249z;
    }

    public ColorStateList getTabRippleColor() {
        return this.f5234k;
    }

    public Drawable getTabSelectedIndicator() {
        return this.f5235l;
    }

    public ColorStateList getTabTextColors() {
        return this.f5232i;
    }

    public final h h(int i6) {
        if (i6 < 0 || i6 >= getTabCount()) {
            return null;
        }
        return (h) this.f5226a.get(i6);
    }

    public final h i() {
        h hVar = (h) R.a();
        if (hVar == null) {
            hVar = new h();
            hVar.d = -1;
        }
        hVar.f = this;
        m0.c cVar = this.Q;
        k kVar = cVar != null ? (k) cVar.a() : null;
        if (kVar == null) {
            kVar = new k(this, getContext());
        }
        kVar.setTab(hVar);
        kVar.setFocusable(true);
        kVar.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(hVar.f11060c)) {
            kVar.setContentDescription(hVar.f11059b);
        } else {
            kVar.setContentDescription(hVar.f11060c);
        }
        hVar.f11062g = kVar;
        return hVar;
    }

    public final void j() {
        int currentItem;
        k();
        a aVar = this.L;
        if (aVar != null) {
            int iC = aVar.c();
            for (int i6 = 0; i6 < iC; i6++) {
                h hVarI = i();
                this.L.getClass();
                if (TextUtils.isEmpty(hVarI.f11060c) && !TextUtils.isEmpty(null)) {
                    hVarI.f11062g.setContentDescription(null);
                }
                hVarI.f11059b = null;
                hVarI.a();
                b(hVarI, false);
            }
            ViewPager viewPager = this.K;
            if (viewPager == null || iC <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            l(h(currentItem), true);
        }
    }

    public final void k() {
        g gVar = this.f5228c;
        int childCount = gVar.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                break;
            }
            k kVar = (k) gVar.getChildAt(childCount);
            gVar.removeViewAt(childCount);
            if (kVar != null) {
                kVar.setTab(null);
                kVar.setSelected(false);
                this.Q.c(kVar);
            }
            requestLayout();
        }
        Iterator it = this.f5226a.iterator();
        while (it.hasNext()) {
            h hVar = (h) it.next();
            it.remove();
            hVar.f = null;
            hVar.f11062g = null;
            hVar.f11058a = null;
            hVar.f11059b = null;
            hVar.f11060c = null;
            hVar.d = -1;
            hVar.f11061e = null;
            R.c(hVar);
        }
        this.f5227b = null;
    }

    public final void l(h hVar, boolean z7) {
        h hVar2 = this.f5227b;
        ArrayList arrayList = this.H;
        if (hVar2 == hVar) {
            if (hVar2 != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ((c) arrayList.get(size)).a(hVar);
                }
                d(hVar.d);
                return;
            }
            return;
        }
        int i6 = hVar != null ? hVar.d : -1;
        if (z7) {
            if ((hVar2 == null || hVar2.d == -1) && i6 != -1) {
                n(i6, 0.0f, true, true);
            } else {
                d(i6);
            }
            if (i6 != -1) {
                setSelectedTabView(i6);
            }
        }
        this.f5227b = hVar;
        if (hVar2 != null) {
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                ((c) arrayList.get(size2)).b(hVar2);
            }
        }
        if (hVar != null) {
            for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                ((c) arrayList.get(size3)).c(hVar);
            }
        }
    }

    public final void m(a aVar, boolean z7) {
        a2 a2Var;
        a aVar2 = this.L;
        if (aVar2 != null && (a2Var = this.M) != null) {
            aVar2.f3145a.unregisterObserver(a2Var);
        }
        this.L = aVar;
        if (z7 && aVar != null) {
            if (this.M == null) {
                this.M = new a2(3, this);
            }
            aVar.f3145a.registerObserver(this.M);
        }
        j();
    }

    public final void n(int i6, float f, boolean z7, boolean z10) {
        int iRound = Math.round(i6 + f);
        if (iRound >= 0) {
            g gVar = this.f5228c;
            if (iRound >= gVar.getChildCount()) {
                return;
            }
            if (z10) {
                ValueAnimator valueAnimator = gVar.f11054a;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    gVar.f11054a.cancel();
                }
                gVar.f11055b = i6;
                gVar.f11056c = f;
                gVar.c(gVar.getChildAt(i6), gVar.getChildAt(gVar.f11055b + 1), gVar.f11056c);
            }
            ValueAnimator valueAnimator2 = this.J;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.J.cancel();
            }
            scrollTo(i6 < 0 ? 0 : f(i6, f), 0);
            if (z7) {
                setSelectedTabView(iRound);
            }
        }
    }

    public final void o(ViewPager viewPager, boolean z7) {
        ArrayList arrayList;
        ArrayList arrayList2;
        ViewPager viewPager2 = this.K;
        if (viewPager2 != null) {
            i iVar = this.N;
            if (iVar != null && (arrayList2 = viewPager2.Q) != null) {
                arrayList2.remove(iVar);
            }
            x6.b bVar = this.O;
            if (bVar != null && (arrayList = this.K.T) != null) {
                arrayList.remove(bVar);
            }
        }
        l lVar = this.I;
        if (lVar != null) {
            this.H.remove(lVar);
            this.I = null;
        }
        if (viewPager != null) {
            this.K = viewPager;
            if (this.N == null) {
                this.N = new i(this);
            }
            i iVar2 = this.N;
            iVar2.f11065c = 0;
            iVar2.f11064b = 0;
            if (viewPager.Q == null) {
                viewPager.Q = new ArrayList();
            }
            viewPager.Q.add(iVar2);
            l lVar2 = new l(viewPager, 0);
            this.I = lVar2;
            a(lVar2);
            a adapter = viewPager.getAdapter();
            if (adapter != null) {
                m(adapter, true);
            }
            if (this.O == null) {
                this.O = new x6.b(this);
            }
            x6.b bVar2 = this.O;
            bVar2.f11047a = true;
            if (viewPager.T == null) {
                viewPager.T = new ArrayList();
            }
            viewPager.T.add(bVar2);
            n(viewPager.getCurrentItem(), 0.0f, true, true);
        } else {
            this.K = null;
            m(null, false);
        }
        this.P = z7;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        o9.d.E(this);
        if (this.K == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                o((ViewPager) parent, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.P) {
            setupWithViewPager(null);
            this.P = false;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        k kVar;
        Drawable drawable;
        int i6 = 0;
        while (true) {
            g gVar = this.f5228c;
            if (i6 >= gVar.getChildCount()) {
                super.onDraw(canvas);
                return;
            }
            View childAt = gVar.getChildAt(i6);
            if ((childAt instanceof k) && (drawable = (kVar = (k) childAt).f11075i) != null) {
                drawable.setBounds(kVar.getLeft(), kVar.getTop(), kVar.getRight(), kVar.getBottom());
                kVar.f11075i.draw(canvas);
            }
            i6++;
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) j7.c.z(1, getTabCount(), 1, false).f7444b);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return (getTabMode() == 0 || getTabMode() == 2) && super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onMeasure(int r7, int r8) {
        /*
            r6 = this;
            android.content.Context r0 = r6.getContext()
            int r1 = r6.getDefaultHeight()
            float r0 = com.google.android.material.internal.a0.e(r0, r1)
            int r0 = java.lang.Math.round(r0)
            int r1 = android.view.View.MeasureSpec.getMode(r8)
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = 0
            r4 = 1073741824(0x40000000, float:2.0)
            r5 = 1
            if (r1 == r2) goto L2e
            if (r1 == 0) goto L1f
            goto L41
        L1f:
            int r8 = r6.getPaddingTop()
            int r8 = r8 + r0
            int r0 = r6.getPaddingBottom()
            int r0 = r0 + r8
            int r8 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r4)
            goto L41
        L2e:
            int r1 = r6.getChildCount()
            if (r1 != r5) goto L41
            int r1 = android.view.View.MeasureSpec.getSize(r8)
            if (r1 < r0) goto L41
            android.view.View r1 = r6.getChildAt(r3)
            r1.setMinimumHeight(r0)
        L41:
            int r0 = android.view.View.MeasureSpec.getSize(r7)
            int r1 = android.view.View.MeasureSpec.getMode(r7)
            if (r1 == 0) goto L5f
            int r1 = r6.f5243t
            if (r1 <= 0) goto L50
            goto L5d
        L50:
            float r0 = (float) r0
            android.content.Context r1 = r6.getContext()
            r2 = 56
            float r1 = com.google.android.material.internal.a0.e(r1, r2)
            float r0 = r0 - r1
            int r1 = (int) r0
        L5d:
            r6.f5241r = r1
        L5f:
            super.onMeasure(r7, r8)
            int r7 = r6.getChildCount()
            if (r7 != r5) goto La9
            android.view.View r7 = r6.getChildAt(r3)
            int r0 = r6.f5249z
            if (r0 == 0) goto L81
            if (r0 == r5) goto L76
            r1 = 2
            if (r0 == r1) goto L81
            goto La9
        L76:
            int r0 = r7.getMeasuredWidth()
            int r1 = r6.getMeasuredWidth()
            if (r0 == r1) goto La9
            goto L8b
        L81:
            int r0 = r7.getMeasuredWidth()
            int r1 = r6.getMeasuredWidth()
            if (r0 >= r1) goto La9
        L8b:
            int r0 = r6.getPaddingTop()
            int r1 = r6.getPaddingBottom()
            int r1 = r1 + r0
            android.view.ViewGroup$LayoutParams r0 = r7.getLayoutParams()
            int r0 = r0.height
            int r8 = android.view.ViewGroup.getChildMeasureSpec(r8, r1, r0)
            int r0 = r6.getMeasuredWidth()
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r4)
            r7.measure(r0, r8)
        La9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.onMeasure(int, int):void");
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 8 || getTabMode() == 0 || getTabMode() == 2) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    public final void p(boolean z7) {
        int i6 = 0;
        while (true) {
            g gVar = this.f5228c;
            if (i6 >= gVar.getChildCount()) {
                return;
            }
            View childAt = gVar.getChildAt(i6);
            childAt.setMinimumWidth(getTabMinWidth());
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            if (this.f5249z == 1 && this.f5246w == 0) {
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            } else {
                layoutParams.width = -2;
                layoutParams.weight = 0.0f;
            }
            if (z7) {
                childAt.requestLayout();
            }
            i6++;
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        o9.d.B(this, f);
    }

    public void setInlineLabel(boolean z7) {
        if (this.A == z7) {
            return;
        }
        this.A = z7;
        int i6 = 0;
        while (true) {
            g gVar = this.f5228c;
            if (i6 >= gVar.getChildCount()) {
                e();
                return;
            }
            View childAt = gVar.getChildAt(i6);
            if (childAt instanceof k) {
                k kVar = (k) childAt;
                kVar.setOrientation(!kVar.f11077k.A ? 1 : 0);
                TextView textView = kVar.f11073g;
                if (textView == null && kVar.f11074h == null) {
                    kVar.f(kVar.f11070b, kVar.f11071c);
                } else {
                    kVar.f(textView, kVar.f11074h);
                }
            }
            i6++;
        }
    }

    public void setInlineLabelResource(int i6) {
        setInlineLabel(getResources().getBoolean(i6));
    }

    @Deprecated
    public void setOnTabSelectedListener(x6.d dVar) {
        setOnTabSelectedListener((c) dVar);
    }

    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        g();
        this.J.addListener(animatorListener);
    }

    public void setSelectedTabIndicator(Drawable drawable) {
        if (this.f5235l != drawable) {
            if (drawable == null) {
                drawable = new GradientDrawable();
            }
            this.f5235l = drawable;
            int intrinsicHeight = this.C;
            if (intrinsicHeight == -1) {
                intrinsicHeight = drawable.getIntrinsicHeight();
            }
            this.f5228c.b(intrinsicHeight);
        }
    }

    public void setSelectedTabIndicatorColor(int i6) {
        this.f5236m = i6;
        p(false);
    }

    public void setSelectedTabIndicatorGravity(int i6) {
        if (this.f5248y != i6) {
            this.f5248y = i6;
            WeakHashMap weakHashMap = s0.f8353a;
            this.f5228c.postInvalidateOnAnimation();
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i6) {
        this.C = i6;
        this.f5228c.b(i6);
    }

    public void setTabGravity(int i6) {
        if (this.f5246w != i6) {
            this.f5246w = i6;
            e();
        }
    }

    public void setTabIconTint(ColorStateList colorStateList) {
        if (this.f5233j != colorStateList) {
            this.f5233j = colorStateList;
            ArrayList arrayList = this.f5226a;
            int size = arrayList.size();
            for (int i6 = 0; i6 < size; i6++) {
                ((h) arrayList.get(i6)).a();
            }
        }
    }

    public void setTabIconTintResource(int i6) {
        setTabIconTint(u7.d.k(getContext(), i6));
    }

    public void setTabIndicatorAnimationMode(int i6) {
        this.D = i6;
        if (i6 == 0) {
            this.F = new b(10);
            return;
        }
        if (i6 == 1) {
            this.F = new x6.a(0);
        } else {
            if (i6 == 2) {
                this.F = new x6.a(1);
                return;
            }
            throw new IllegalArgumentException(i6 + " is not a valid TabIndicatorAnimationMode");
        }
    }

    public void setTabIndicatorFullWidth(boolean z7) {
        this.B = z7;
        int i6 = g.f;
        g gVar = this.f5228c;
        gVar.a();
        WeakHashMap weakHashMap = s0.f8353a;
        gVar.postInvalidateOnAnimation();
    }

    public void setTabMode(int i6) {
        if (i6 != this.f5249z) {
            this.f5249z = i6;
            e();
        }
    }

    public void setTabRippleColor(ColorStateList colorStateList) {
        if (this.f5234k == colorStateList) {
            return;
        }
        this.f5234k = colorStateList;
        int i6 = 0;
        while (true) {
            g gVar = this.f5228c;
            if (i6 >= gVar.getChildCount()) {
                return;
            }
            View childAt = gVar.getChildAt(i6);
            if (childAt instanceof k) {
                Context context = getContext();
                int i10 = k.f11068l;
                ((k) childAt).e(context);
            }
            i6++;
        }
    }

    public void setTabRippleColorResource(int i6) {
        setTabRippleColor(u7.d.k(getContext(), i6));
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        if (this.f5232i != colorStateList) {
            this.f5232i = colorStateList;
            ArrayList arrayList = this.f5226a;
            int size = arrayList.size();
            for (int i6 = 0; i6 < size; i6++) {
                ((h) arrayList.get(i6)).a();
            }
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(a aVar) {
        m(aVar, false);
    }

    public void setUnboundedRipple(boolean z7) {
        if (this.E == z7) {
            return;
        }
        this.E = z7;
        int i6 = 0;
        while (true) {
            g gVar = this.f5228c;
            if (i6 >= gVar.getChildCount()) {
                return;
            }
            View childAt = gVar.getChildAt(i6);
            if (childAt instanceof k) {
                Context context = getContext();
                int i10 = k.f11068l;
                ((k) childAt).e(context);
            }
            i6++;
        }
    }

    public void setUnboundedRippleResource(int i6) {
        setUnboundedRipple(getResources().getBoolean(i6));
    }

    public void setupWithViewPager(ViewPager viewPager) {
        o(viewPager, false);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    public TabLayout(Context context, AttributeSet attributeSet, int i6) throws Resources.NotFoundException {
        super(y6.a.a(context, attributeSet, i6, R.style.Widget_Design_TabLayout), attributeSet, i6);
        this.f5226a = new ArrayList();
        this.f5235l = new GradientDrawable();
        this.f5236m = 0;
        this.f5241r = Integer.MAX_VALUE;
        this.C = -1;
        this.H = new ArrayList();
        this.Q = new m0.c(12);
        Context context2 = getContext();
        setHorizontalScrollBarEnabled(false);
        g gVar = new g(this, context2);
        this.f5228c = gVar;
        super.addView(gVar, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray typedArrayJ = a0.j(context2, attributeSet, x5.a.Y, i6, R.style.Widget_Design_TabLayout, 23);
        if (getBackground() instanceof ColorDrawable) {
            ColorDrawable colorDrawable = (ColorDrawable) getBackground();
            u6.h hVar = new u6.h();
            hVar.n(ColorStateList.valueOf(colorDrawable.getColor()));
            hVar.k(context2);
            WeakHashMap weakHashMap = s0.f8353a;
            hVar.m(g0.i(this));
            setBackground(hVar);
        }
        setSelectedTabIndicator(com.bumptech.glide.d.n(context2, typedArrayJ, 5));
        setSelectedTabIndicatorColor(typedArrayJ.getColor(8, 0));
        gVar.b(typedArrayJ.getDimensionPixelSize(11, -1));
        setSelectedTabIndicatorGravity(typedArrayJ.getInt(10, 0));
        setTabIndicatorAnimationMode(typedArrayJ.getInt(7, 0));
        setTabIndicatorFullWidth(typedArrayJ.getBoolean(9, true));
        int dimensionPixelSize = typedArrayJ.getDimensionPixelSize(16, 0);
        this.f5230g = dimensionPixelSize;
        this.f = dimensionPixelSize;
        this.f5229e = dimensionPixelSize;
        this.d = dimensionPixelSize;
        this.d = typedArrayJ.getDimensionPixelSize(19, dimensionPixelSize);
        this.f5229e = typedArrayJ.getDimensionPixelSize(20, dimensionPixelSize);
        this.f = typedArrayJ.getDimensionPixelSize(18, dimensionPixelSize);
        this.f5230g = typedArrayJ.getDimensionPixelSize(17, dimensionPixelSize);
        int resourceId = typedArrayJ.getResourceId(23, R.style.TextAppearance_Design_Tab);
        this.f5231h = resourceId;
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(resourceId, e.a.f6369y);
        try {
            this.f5238o = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
            this.f5232i = com.bumptech.glide.d.k(context2, typedArrayObtainStyledAttributes, 3);
            typedArrayObtainStyledAttributes.recycle();
            if (typedArrayJ.hasValue(24)) {
                this.f5232i = com.bumptech.glide.d.k(context2, typedArrayJ, 24);
            }
            if (typedArrayJ.hasValue(22)) {
                this.f5232i = new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{typedArrayJ.getColor(22, 0), this.f5232i.getDefaultColor()});
            }
            this.f5233j = com.bumptech.glide.d.k(context2, typedArrayJ, 3);
            this.f5237n = a0.l(typedArrayJ.getInt(4, -1), null);
            this.f5234k = com.bumptech.glide.d.k(context2, typedArrayJ, 21);
            this.f5247x = typedArrayJ.getInt(6, 300);
            this.f5242s = typedArrayJ.getDimensionPixelSize(14, -1);
            this.f5243t = typedArrayJ.getDimensionPixelSize(13, -1);
            this.f5240q = typedArrayJ.getResourceId(0, 0);
            this.f5245v = typedArrayJ.getDimensionPixelSize(1, 0);
            this.f5249z = typedArrayJ.getInt(15, 1);
            this.f5246w = typedArrayJ.getInt(2, 0);
            this.A = typedArrayJ.getBoolean(12, false);
            this.E = typedArrayJ.getBoolean(25, false);
            typedArrayJ.recycle();
            Resources resources = getResources();
            this.f5239p = resources.getDimensionPixelSize(R.dimen.design_tab_text_size_2line);
            this.f5244u = resources.getDimensionPixelSize(R.dimen.design_tab_scrollable_min_width);
            e();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i6) {
        c(view);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Deprecated
    public void setOnTabSelectedListener(c cVar) {
        c cVar2 = this.G;
        if (cVar2 != null) {
            this.H.remove(cVar2);
        }
        this.G = cVar;
        if (cVar != null) {
            a(cVar);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        c(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i6, ViewGroup.LayoutParams layoutParams) {
        c(view);
    }

    public void setSelectedTabIndicator(int i6) {
        if (i6 != 0) {
            setSelectedTabIndicator(com.bumptech.glide.c.h(getContext(), i6));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }
}
