package com.google.android.material.appbar;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.internal.a0;
import com.p2elite.brtv2.R;
import com.youth.banner.config.BannerConfig;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.WeakHashMap;
import n0.e0;
import n0.g0;
import n0.r1;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class CollapsingToolbarLayout extends FrameLayout {
    public boolean A;
    public int B;
    public boolean C;

    /* renamed from: a, reason: collision with root package name */
    public boolean f4565a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4566b;

    /* renamed from: c, reason: collision with root package name */
    public ViewGroup f4567c;
    public View d;

    /* renamed from: e, reason: collision with root package name */
    public View f4568e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f4569g;

    /* renamed from: h, reason: collision with root package name */
    public int f4570h;

    /* renamed from: i, reason: collision with root package name */
    public int f4571i;

    /* renamed from: j, reason: collision with root package name */
    public final Rect f4572j;

    /* renamed from: k, reason: collision with root package name */
    public final com.google.android.material.internal.d f4573k;

    /* renamed from: l, reason: collision with root package name */
    public final j6.a f4574l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f4575m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f4576n;

    /* renamed from: o, reason: collision with root package name */
    public Drawable f4577o;

    /* renamed from: p, reason: collision with root package name */
    public Drawable f4578p;

    /* renamed from: q, reason: collision with root package name */
    public int f4579q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f4580r;

    /* renamed from: s, reason: collision with root package name */
    public ValueAnimator f4581s;

    /* renamed from: t, reason: collision with root package name */
    public long f4582t;

    /* renamed from: u, reason: collision with root package name */
    public int f4583u;

    /* renamed from: v, reason: collision with root package name */
    public h f4584v;

    /* renamed from: w, reason: collision with root package name */
    public int f4585w;

    /* renamed from: x, reason: collision with root package name */
    public int f4586x;

    /* renamed from: y, reason: collision with root package name */
    public r1 f4587y;

    /* renamed from: z, reason: collision with root package name */
    public int f4588z;

    /* compiled from: MyApplication */
    public static class LayoutParams extends FrameLayout.LayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public int f4589a;

        /* renamed from: b, reason: collision with root package name */
        public float f4590b;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f4589a = 0;
            this.f4590b = 0.5f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, x5.a.f11034o);
            this.f4589a = typedArrayObtainStyledAttributes.getInt(0, 0);
            this.f4590b = typedArrayObtainStyledAttributes.getFloat(1, 0.5f);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.collapsingToolbarLayoutStyle);
    }

    public static j b(View view) {
        j jVar = (j) view.getTag(R.id.view_offset_helper);
        if (jVar != null) {
            return jVar;
        }
        j jVar2 = new j(view);
        view.setTag(R.id.view_offset_helper, jVar2);
        return jVar2;
    }

    public final void a() {
        if (this.f4565a) {
            ViewGroup viewGroup = null;
            this.f4567c = null;
            this.d = null;
            int i6 = this.f4566b;
            if (i6 != -1) {
                ViewGroup viewGroup2 = (ViewGroup) findViewById(i6);
                this.f4567c = viewGroup2;
                if (viewGroup2 != null) {
                    ViewParent parent = viewGroup2.getParent();
                    View view = viewGroup2;
                    while (parent != this && parent != null) {
                        if (parent instanceof View) {
                            view = (View) parent;
                        }
                        parent = parent.getParent();
                        view = view;
                    }
                    this.d = view;
                }
            }
            if (this.f4567c == null) {
                int childCount = getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    View childAt = getChildAt(i10);
                    if ((childAt instanceof Toolbar) || (childAt instanceof android.widget.Toolbar)) {
                        viewGroup = (ViewGroup) childAt;
                        break;
                    }
                }
                this.f4567c = viewGroup;
            }
            c();
            this.f4565a = false;
        }
    }

    public final void c() {
        View view;
        if (!this.f4575m && (view = this.f4568e) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f4568e);
            }
        }
        if (!this.f4575m || this.f4567c == null) {
            return;
        }
        if (this.f4568e == null) {
            this.f4568e = new View(getContext());
        }
        if (this.f4568e.getParent() == null) {
            this.f4567c.addView(this.f4568e, -1, -1);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public final void d() {
        if (this.f4577o == null && this.f4578p == null) {
            return;
        }
        setScrimsShown(getHeight() + this.f4585w < getScrimVisibleHeightTrigger());
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        a();
        if (this.f4567c == null && (drawable = this.f4577o) != null && this.f4579q > 0) {
            drawable.mutate().setAlpha(this.f4579q);
            this.f4577o.draw(canvas);
        }
        if (this.f4575m && this.f4576n) {
            ViewGroup viewGroup = this.f4567c;
            com.google.android.material.internal.d dVar = this.f4573k;
            if (viewGroup == null || this.f4577o == null || this.f4579q <= 0 || this.f4586x != 1 || dVar.f4993c >= dVar.f) {
                dVar.d(canvas);
            } else {
                int iSave = canvas.save();
                canvas.clipRect(this.f4577o.getBounds(), Region.Op.DIFFERENCE);
                dVar.d(canvas);
                canvas.restoreToCount(iSave);
            }
        }
        if (this.f4578p == null || this.f4579q <= 0) {
            return;
        }
        r1 r1Var = this.f4587y;
        int iD = r1Var != null ? r1Var.d() : 0;
        if (iD > 0) {
            this.f4578p.setBounds(0, -this.f4585w, getWidth(), iD - this.f4585w);
            this.f4578p.mutate().setAlpha(this.f4579q);
            this.f4578p.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j10) {
        boolean z7;
        View view2;
        Drawable drawable = this.f4577o;
        if (drawable == null || this.f4579q <= 0 || ((view2 = this.d) == null || view2 == this ? view != this.f4567c : view != view2)) {
            z7 = false;
        } else {
            int width = getWidth();
            int height = getHeight();
            if (this.f4586x == 1 && view != null && this.f4575m) {
                height = view.getBottom();
            }
            drawable.setBounds(0, 0, width, height);
            this.f4577o.mutate().setAlpha(this.f4579q);
            this.f4577o.draw(canvas);
            z7 = true;
        }
        return super.drawChild(canvas, view, j10) || z7;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        ColorStateList colorStateList;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f4578p;
        boolean z7 = false;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        Drawable drawable2 = this.f4577o;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        com.google.android.material.internal.d dVar = this.f4573k;
        if (dVar != null) {
            dVar.R = drawableState;
            ColorStateList colorStateList2 = dVar.f5016p;
            if ((colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = dVar.f5014o) != null && colorStateList.isStateful())) {
                dVar.j(false);
                z7 = true;
            }
            state |= z7;
        }
        if (state) {
            invalidate();
        }
    }

    public final void e(int i6, int i10, int i11, int i12, boolean z7) {
        View view;
        int titleMarginBottom;
        int titleMarginEnd;
        int titleMarginTop;
        if (!this.f4575m || (view = this.f4568e) == null) {
            return;
        }
        WeakHashMap weakHashMap = s0.f8353a;
        int titleMarginStart = 0;
        boolean z10 = view.isAttachedToWindow() && this.f4568e.getVisibility() == 0;
        this.f4576n = z10;
        if (z10 || z7) {
            boolean z11 = getLayoutDirection() == 1;
            View view2 = this.d;
            if (view2 == null) {
                view2 = this.f4567c;
            }
            int height = ((getHeight() - b(view2).f4619b) - view2.getHeight()) - ((FrameLayout.LayoutParams) ((LayoutParams) view2.getLayoutParams())).bottomMargin;
            View view3 = this.f4568e;
            Rect rect = this.f4572j;
            com.google.android.material.internal.e.a(this, view3, rect);
            ViewGroup viewGroup = this.f4567c;
            if (viewGroup instanceof Toolbar) {
                Toolbar toolbar = (Toolbar) viewGroup;
                titleMarginStart = toolbar.getTitleMarginStart();
                titleMarginEnd = toolbar.getTitleMarginEnd();
                titleMarginTop = toolbar.getTitleMarginTop();
                titleMarginBottom = toolbar.getTitleMarginBottom();
            } else if (Build.VERSION.SDK_INT < 24 || !(viewGroup instanceof android.widget.Toolbar)) {
                titleMarginBottom = 0;
                titleMarginEnd = 0;
                titleMarginTop = 0;
            } else {
                android.widget.Toolbar toolbar2 = (android.widget.Toolbar) viewGroup;
                titleMarginStart = toolbar2.getTitleMarginStart();
                titleMarginEnd = toolbar2.getTitleMarginEnd();
                titleMarginTop = toolbar2.getTitleMarginTop();
                titleMarginBottom = toolbar2.getTitleMarginBottom();
            }
            int i13 = rect.left + (z11 ? titleMarginEnd : titleMarginStart);
            int i14 = rect.top + height + titleMarginTop;
            int i15 = rect.right;
            if (!z11) {
                titleMarginStart = titleMarginEnd;
            }
            int i16 = i15 - titleMarginStart;
            int i17 = (rect.bottom + height) - titleMarginBottom;
            com.google.android.material.internal.d dVar = this.f4573k;
            Rect rect2 = dVar.f5003i;
            if (rect2.left != i13 || rect2.top != i14 || rect2.right != i16 || rect2.bottom != i17) {
                rect2.set(i13, i14, i16, i17);
                dVar.S = true;
                dVar.i();
            }
            int i18 = z11 ? this.f4570h : this.f;
            int i19 = rect.top + this.f4569g;
            int i20 = (i11 - i6) - (z11 ? this.f : this.f4570h);
            int i21 = (i12 - i10) - this.f4571i;
            Rect rect3 = dVar.f5001h;
            if (rect3.left != i18 || rect3.top != i19 || rect3.right != i20 || rect3.bottom != i21) {
                rect3.set(i18, i19, i20, i21);
                dVar.S = true;
                dVar.i();
            }
            dVar.j(z7);
        }
    }

    public final void f() {
        if (this.f4567c != null && this.f4575m && TextUtils.isEmpty(this.f4573k.G)) {
            ViewGroup viewGroup = this.f4567c;
            setTitle(viewGroup instanceof Toolbar ? ((Toolbar) viewGroup).getTitle() : viewGroup instanceof android.widget.Toolbar ? ((android.widget.Toolbar) viewGroup).getTitle() : null);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-1, -1);
        layoutParams.f4589a = 0;
        layoutParams.f4590b = 0.5f;
        return layoutParams;
    }

    public int getCollapsedTitleGravity() {
        return this.f4573k.f5008l;
    }

    public Typeface getCollapsedTitleTypeface() {
        Typeface typeface = this.f4573k.f5026x;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public Drawable getContentScrim() {
        return this.f4577o;
    }

    public int getExpandedTitleGravity() {
        return this.f4573k.f5006k;
    }

    public int getExpandedTitleMarginBottom() {
        return this.f4571i;
    }

    public int getExpandedTitleMarginEnd() {
        return this.f4570h;
    }

    public int getExpandedTitleMarginStart() {
        return this.f;
    }

    public int getExpandedTitleMarginTop() {
        return this.f4569g;
    }

    public Typeface getExpandedTitleTypeface() {
        Typeface typeface = this.f4573k.A;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public int getHyphenationFrequency() {
        return this.f4573k.f5019q0;
    }

    public int getLineCount() {
        StaticLayout staticLayout = this.f4573k.i0;
        if (staticLayout != null) {
            return staticLayout.getLineCount();
        }
        return 0;
    }

    public float getLineSpacingAdd() {
        return this.f4573k.i0.getSpacingAdd();
    }

    public float getLineSpacingMultiplier() {
        return this.f4573k.i0.getSpacingMultiplier();
    }

    public int getMaxLines() {
        return this.f4573k.f5013n0;
    }

    public int getScrimAlpha() {
        return this.f4579q;
    }

    public long getScrimAnimationDuration() {
        return this.f4582t;
    }

    public int getScrimVisibleHeightTrigger() {
        int i6 = this.f4583u;
        if (i6 >= 0) {
            return i6 + this.f4588z + this.B;
        }
        r1 r1Var = this.f4587y;
        int iD = r1Var != null ? r1Var.d() : 0;
        WeakHashMap weakHashMap = s0.f8353a;
        int minimumHeight = getMinimumHeight();
        return minimumHeight > 0 ? Math.min((minimumHeight * 2) + iD, getHeight()) : getHeight() / 3;
    }

    public Drawable getStatusBarScrim() {
        return this.f4578p;
    }

    public CharSequence getTitle() {
        if (this.f4575m) {
            return this.f4573k.G;
        }
        return null;
    }

    public int getTitleCollapseMode() {
        return this.f4586x;
    }

    public TimeInterpolator getTitlePositionInterpolator() {
        return this.f4573k.V;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            if (this.f4586x == 1) {
                appBarLayout.setLiftOnScroll(false);
            }
            WeakHashMap weakHashMap = s0.f8353a;
            setFitsSystemWindows(appBarLayout.getFitsSystemWindows());
            if (this.f4584v == null) {
                this.f4584v = new h(this);
            }
            h hVar = this.f4584v;
            if (appBarLayout.f4541h == null) {
                appBarLayout.f4541h = new ArrayList();
            }
            if (hVar != null && !appBarLayout.f4541h.contains(hVar)) {
                appBarLayout.f4541h.add(hVar);
            }
            e0.c(this);
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f4573k.h(configuration);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        ArrayList arrayList;
        ViewParent parent = getParent();
        h hVar = this.f4584v;
        if (hVar != null && (parent instanceof AppBarLayout) && (arrayList = ((AppBarLayout) parent).f4541h) != null) {
            arrayList.remove(hVar);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        super.onLayout(z7, i6, i10, i11, i12);
        r1 r1Var = this.f4587y;
        if (r1Var != null) {
            int iD = r1Var.d();
            int childCount = getChildCount();
            for (int i13 = 0; i13 < childCount; i13++) {
                View childAt = getChildAt(i13);
                WeakHashMap weakHashMap = s0.f8353a;
                if (!childAt.getFitsSystemWindows() && childAt.getTop() < iD) {
                    s0.j(iD, childAt);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i14 = 0; i14 < childCount2; i14++) {
            j jVarB = b(getChildAt(i14));
            View view = jVarB.f4618a;
            jVarB.f4619b = view.getTop();
            jVarB.f4620c = view.getLeft();
        }
        e(i6, i10, i11, i12, false);
        f();
        d();
        int childCount3 = getChildCount();
        for (int i15 = 0; i15 < childCount3; i15++) {
            b(getChildAt(i15)).a();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i6, int i10) {
        int measuredHeight;
        int measuredHeight2;
        a();
        super.onMeasure(i6, i10);
        int mode = View.MeasureSpec.getMode(i10);
        r1 r1Var = this.f4587y;
        int iD = r1Var != null ? r1Var.d() : 0;
        if ((mode == 0 || this.A) && iD > 0) {
            this.f4588z = iD;
            super.onMeasure(i6, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + iD, 1073741824));
        }
        if (this.C) {
            com.google.android.material.internal.d dVar = this.f4573k;
            if (dVar.f5013n0 > 1) {
                f();
                e(0, 0, getMeasuredWidth(), getMeasuredHeight(), true);
                int i11 = dVar.f5018q;
                if (i11 > 1) {
                    TextPaint textPaint = dVar.U;
                    textPaint.setTextSize(dVar.f5010m);
                    textPaint.setTypeface(dVar.A);
                    textPaint.setLetterSpacing(dVar.f5000g0);
                    this.B = (i11 - 1) * Math.round(textPaint.descent() + (-textPaint.ascent()));
                    super.onMeasure(i6, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + this.B, 1073741824));
                }
            }
        }
        ViewGroup viewGroup = this.f4567c;
        if (viewGroup != null) {
            View view = this.d;
            if (view == null || view == this) {
                ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    measuredHeight = viewGroup.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                } else {
                    measuredHeight = viewGroup.getMeasuredHeight();
                }
                setMinimumHeight(measuredHeight);
                return;
            }
            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
            if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                measuredHeight2 = view.getMeasuredHeight() + marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin;
            } else {
                measuredHeight2 = view.getMeasuredHeight();
            }
            setMinimumHeight(measuredHeight2);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i6, int i10, int i11, int i12) {
        super.onSizeChanged(i6, i10, i11, i12);
        Drawable drawable = this.f4577o;
        if (drawable != null) {
            ViewGroup viewGroup = this.f4567c;
            if (this.f4586x == 1 && viewGroup != null && this.f4575m) {
                i10 = viewGroup.getBottom();
            }
            drawable.setBounds(0, 0, i6, i10);
        }
    }

    public void setCollapsedTitleGravity(int i6) {
        this.f4573k.m(i6);
    }

    public void setCollapsedTitleTextAppearance(int i6) {
        this.f4573k.k(i6);
    }

    public void setCollapsedTitleTextColor(int i6) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i6));
    }

    public void setCollapsedTitleTypeface(Typeface typeface) {
        com.google.android.material.internal.d dVar = this.f4573k;
        if (dVar.n(typeface)) {
            dVar.j(false);
        }
    }

    public void setContentScrim(Drawable drawable) {
        Drawable drawable2 = this.f4577o;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f4577o = drawableMutate;
            if (drawableMutate != null) {
                int width = getWidth();
                int height = getHeight();
                ViewGroup viewGroup = this.f4567c;
                if (this.f4586x == 1 && viewGroup != null && this.f4575m) {
                    height = viewGroup.getBottom();
                }
                drawableMutate.setBounds(0, 0, width, height);
                this.f4577o.setCallback(this);
                this.f4577o.setAlpha(this.f4579q);
            }
            WeakHashMap weakHashMap = s0.f8353a;
            postInvalidateOnAnimation();
        }
    }

    public void setContentScrimColor(int i6) {
        setContentScrim(new ColorDrawable(i6));
    }

    public void setContentScrimResource(int i6) {
        setContentScrim(d0.a.b(getContext(), i6));
    }

    public void setExpandedTitleColor(int i6) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i6));
    }

    public void setExpandedTitleGravity(int i6) {
        com.google.android.material.internal.d dVar = this.f4573k;
        if (dVar.f5006k != i6) {
            dVar.f5006k = i6;
            dVar.j(false);
        }
    }

    public void setExpandedTitleMarginBottom(int i6) {
        this.f4571i = i6;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i6) {
        this.f4570h = i6;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i6) {
        this.f = i6;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i6) {
        this.f4569g = i6;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(int i6) {
        this.f4573k.o(i6);
    }

    public void setExpandedTitleTextColor(ColorStateList colorStateList) {
        com.google.android.material.internal.d dVar = this.f4573k;
        if (dVar.f5014o != colorStateList) {
            dVar.f5014o = colorStateList;
            dVar.j(false);
        }
    }

    public void setExpandedTitleTypeface(Typeface typeface) {
        com.google.android.material.internal.d dVar = this.f4573k;
        if (dVar.p(typeface)) {
            dVar.j(false);
        }
    }

    public void setExtraMultilineHeightEnabled(boolean z7) {
        this.C = z7;
    }

    public void setForceApplySystemWindowInsetTop(boolean z7) {
        this.A = z7;
    }

    public void setHyphenationFrequency(int i6) {
        this.f4573k.f5019q0 = i6;
    }

    public void setLineSpacingAdd(float f) {
        this.f4573k.f5015o0 = f;
    }

    public void setLineSpacingMultiplier(float f) {
        this.f4573k.f5017p0 = f;
    }

    public void setMaxLines(int i6) {
        com.google.android.material.internal.d dVar = this.f4573k;
        if (i6 != dVar.f5013n0) {
            dVar.f5013n0 = i6;
            Bitmap bitmap = dVar.K;
            if (bitmap != null) {
                bitmap.recycle();
                dVar.K = null;
            }
            dVar.j(false);
        }
    }

    public void setRtlTextDirectionHeuristicsEnabled(boolean z7) {
        this.f4573k.J = z7;
    }

    public void setScrimAlpha(int i6) {
        ViewGroup viewGroup;
        if (i6 != this.f4579q) {
            if (this.f4577o != null && (viewGroup = this.f4567c) != null) {
                WeakHashMap weakHashMap = s0.f8353a;
                viewGroup.postInvalidateOnAnimation();
            }
            this.f4579q = i6;
            WeakHashMap weakHashMap2 = s0.f8353a;
            postInvalidateOnAnimation();
        }
    }

    public void setScrimAnimationDuration(long j10) {
        this.f4582t = j10;
    }

    public void setScrimVisibleHeightTrigger(int i6) {
        if (this.f4583u != i6) {
            this.f4583u = i6;
            d();
        }
    }

    public void setScrimsShown(boolean z7) {
        WeakHashMap weakHashMap = s0.f8353a;
        boolean z10 = isLaidOut() && !isInEditMode();
        if (this.f4580r != z7) {
            if (z10) {
                int i6 = z7 ? 255 : 0;
                a();
                ValueAnimator valueAnimator = this.f4581s;
                if (valueAnimator == null) {
                    ValueAnimator valueAnimator2 = new ValueAnimator();
                    this.f4581s = valueAnimator2;
                    valueAnimator2.setInterpolator(i6 > this.f4579q ? y5.a.f11408c : y5.a.d);
                    this.f4581s.addUpdateListener(new a7.c(2, this));
                } else if (valueAnimator.isRunning()) {
                    this.f4581s.cancel();
                }
                this.f4581s.setDuration(this.f4582t);
                this.f4581s.setIntValues(this.f4579q, i6);
                this.f4581s.start();
            } else {
                setScrimAlpha(z7 ? 255 : 0);
            }
            this.f4580r = z7;
        }
    }

    public void setStatusBarScrim(Drawable drawable) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Drawable drawable2 = this.f4578p;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f4578p = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f4578p.setState(getDrawableState());
                }
                Drawable drawable3 = this.f4578p;
                WeakHashMap weakHashMap = s0.f8353a;
                n5.d.Q(drawable3, getLayoutDirection());
                this.f4578p.setVisible(getVisibility() == 0, false);
                this.f4578p.setCallback(this);
                this.f4578p.setAlpha(this.f4579q);
            }
            WeakHashMap weakHashMap2 = s0.f8353a;
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarScrimColor(int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setStatusBarScrim(new ColorDrawable(i6));
    }

    public void setStatusBarScrimResource(int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setStatusBarScrim(d0.a.b(getContext(), i6));
    }

    public void setTitle(CharSequence charSequence) {
        com.google.android.material.internal.d dVar = this.f4573k;
        if (charSequence == null || !TextUtils.equals(dVar.G, charSequence)) {
            dVar.G = charSequence;
            dVar.H = null;
            Bitmap bitmap = dVar.K;
            if (bitmap != null) {
                bitmap.recycle();
                dVar.K = null;
            }
            dVar.j(false);
        }
        setContentDescription(getTitle());
    }

    public void setTitleCollapseMode(int i6) throws Resources.NotFoundException {
        this.f4586x = i6;
        boolean z7 = i6 == 1;
        this.f4573k.d = z7;
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            if (this.f4586x == 1) {
                appBarLayout.setLiftOnScroll(false);
            }
        }
        if (z7 && this.f4577o == null) {
            float dimension = getResources().getDimension(R.dimen.design_appbar_elevation);
            j6.a aVar = this.f4574l;
            setContentScrimColor(aVar.a(aVar.d, dimension));
        }
    }

    public void setTitleEnabled(boolean z7) {
        if (z7 != this.f4575m) {
            this.f4575m = z7;
            setContentDescription(getTitle());
            c();
            requestLayout();
        }
    }

    public void setTitlePositionInterpolator(TimeInterpolator timeInterpolator) {
        com.google.android.material.internal.d dVar = this.f4573k;
        dVar.V = timeInterpolator;
        dVar.j(false);
    }

    @Override // android.view.View
    public void setVisibility(int i6) {
        super.setVisibility(i6);
        boolean z7 = i6 == 0;
        Drawable drawable = this.f4578p;
        if (drawable != null && drawable.isVisible() != z7) {
            this.f4578p.setVisible(z7, false);
        }
        Drawable drawable2 = this.f4577o;
        if (drawable2 == null || drawable2.isVisible() == z7) {
            return;
        }
        this.f4577o.setVisible(z7, false);
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f4577o || drawable == this.f4578p;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet, int i6) throws IllegalAccessException, NoSuchMethodException, Resources.NotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int i10;
        ColorStateList colorStateListK;
        super(y6.a.a(context, attributeSet, i6, R.style.Widget_Design_CollapsingToolbar), attributeSet, i6);
        int i11 = 14;
        this.f4565a = true;
        this.f4572j = new Rect();
        this.f4583u = -1;
        this.f4588z = 0;
        this.B = 0;
        Context context2 = getContext();
        com.google.android.material.internal.d dVar = new com.google.android.material.internal.d(this);
        this.f4573k = dVar;
        dVar.W = y5.a.f11409e;
        dVar.j(false);
        dVar.J = false;
        this.f4574l = new j6.a(context2);
        int[] iArr = x5.a.f11033n;
        a0.a(context2, attributeSet, i6, R.style.Widget_Design_CollapsingToolbar);
        a0.b(context2, attributeSet, iArr, i6, R.style.Widget_Design_CollapsingToolbar, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, i6, R.style.Widget_Design_CollapsingToolbar);
        int i12 = typedArrayObtainStyledAttributes.getInt(4, 8388691);
        if (dVar.f5006k != i12) {
            dVar.f5006k = i12;
            dVar.j(false);
        }
        dVar.m(typedArrayObtainStyledAttributes.getInt(0, 8388627));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, 0);
        this.f4571i = dimensionPixelSize;
        this.f4570h = dimensionPixelSize;
        this.f4569g = dimensionPixelSize;
        this.f = dimensionPixelSize;
        if (typedArrayObtainStyledAttributes.hasValue(8)) {
            this.f = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        }
        if (typedArrayObtainStyledAttributes.hasValue(7)) {
            this.f4570h = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, 0);
        }
        if (typedArrayObtainStyledAttributes.hasValue(9)) {
            this.f4569g = typedArrayObtainStyledAttributes.getDimensionPixelSize(9, 0);
        }
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            this.f4571i = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0);
        }
        this.f4575m = typedArrayObtainStyledAttributes.getBoolean(20, true);
        setTitle(typedArrayObtainStyledAttributes.getText(18));
        dVar.o(R.style.TextAppearance_Design_CollapsingToolbar_Expanded);
        dVar.k(R.style.TextAppearance_AppCompat_Widget_ActionBar_Title);
        if (typedArrayObtainStyledAttributes.hasValue(10)) {
            dVar.o(typedArrayObtainStyledAttributes.getResourceId(10, 0));
        }
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            dVar.k(typedArrayObtainStyledAttributes.getResourceId(1, 0));
        }
        if (typedArrayObtainStyledAttributes.hasValue(11) && dVar.f5014o != (colorStateListK = com.bumptech.glide.d.k(context2, typedArrayObtainStyledAttributes, 11))) {
            dVar.f5014o = colorStateListK;
            dVar.j(false);
        }
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            dVar.l(com.bumptech.glide.d.k(context2, typedArrayObtainStyledAttributes, 2));
        }
        this.f4583u = typedArrayObtainStyledAttributes.getDimensionPixelSize(16, -1);
        if (typedArrayObtainStyledAttributes.hasValue(14) && (i10 = typedArrayObtainStyledAttributes.getInt(14, 1)) != dVar.f5013n0) {
            dVar.f5013n0 = i10;
            Bitmap bitmap = dVar.K;
            if (bitmap != null) {
                bitmap.recycle();
                dVar.K = null;
            }
            dVar.j(false);
        }
        if (typedArrayObtainStyledAttributes.hasValue(21)) {
            dVar.V = AnimationUtils.loadInterpolator(context2, typedArrayObtainStyledAttributes.getResourceId(21, 0));
            dVar.j(false);
        }
        this.f4582t = typedArrayObtainStyledAttributes.getInt(15, BannerConfig.SCROLL_TIME);
        setContentScrim(typedArrayObtainStyledAttributes.getDrawable(3));
        setStatusBarScrim(typedArrayObtainStyledAttributes.getDrawable(17));
        setTitleCollapseMode(typedArrayObtainStyledAttributes.getInt(19, 0));
        this.f4566b = typedArrayObtainStyledAttributes.getResourceId(22, -1);
        this.A = typedArrayObtainStyledAttributes.getBoolean(13, false);
        this.C = typedArrayObtainStyledAttributes.getBoolean(12, false);
        typedArrayObtainStyledAttributes.recycle();
        setWillNotDraw(false);
        a0.b bVar = new a0.b(i11, this);
        WeakHashMap weakHashMap = s0.f8353a;
        g0.u(this, bVar);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public void setCollapsedTitleTextColor(ColorStateList colorStateList) {
        this.f4573k.l(colorStateList);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        LayoutParams layoutParams2 = new LayoutParams(layoutParams);
        layoutParams2.f4589a = 0;
        layoutParams2.f4590b = 0.5f;
        return layoutParams2;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-1, -1);
        layoutParams.f4589a = 0;
        layoutParams.f4590b = 0.5f;
        return layoutParams;
    }
}
