package com.google.android.material.bottomappbar;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.a0;
import com.google.android.material.internal.b0;
import com.p2elite.brtv2.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import n0.s0;
import p.l;
import u6.k;
import u6.m;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class BottomAppBar extends Toolbar implements androidx.coordinatorlayout.widget.a {

    /* renamed from: r0, reason: collision with root package name */
    public static final /* synthetic */ int f4645r0 = 0;
    public Integer U;
    public final int V;
    public final u6.h W;

    /* renamed from: b0, reason: collision with root package name */
    public AnimatorSet f4646b0;

    /* renamed from: c0, reason: collision with root package name */
    public AnimatorSet f4647c0;

    /* renamed from: d0, reason: collision with root package name */
    public int f4648d0;

    /* renamed from: e0, reason: collision with root package name */
    public int f4649e0;

    /* renamed from: f0, reason: collision with root package name */
    public boolean f4650f0;

    /* renamed from: g0, reason: collision with root package name */
    public final boolean f4651g0;

    /* renamed from: h0, reason: collision with root package name */
    public final boolean f4652h0;
    public final boolean i0;

    /* renamed from: j0, reason: collision with root package name */
    public boolean f4653j0;

    /* renamed from: k0, reason: collision with root package name */
    public boolean f4654k0;

    /* renamed from: l0, reason: collision with root package name */
    public Behavior f4655l0;

    /* renamed from: m0, reason: collision with root package name */
    public int f4656m0;

    /* renamed from: n0, reason: collision with root package name */
    public int f4657n0;

    /* renamed from: o0, reason: collision with root package name */
    public int f4658o0;

    /* renamed from: p0, reason: collision with root package name */
    public final a f4659p0;

    /* renamed from: q0, reason: collision with root package name */
    public final b f4660q0;

    /* compiled from: MyApplication */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new h();

        /* renamed from: c, reason: collision with root package name */
        public int f4664c;
        public boolean d;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f4664c = parcel.readInt();
            this.d = parcel.readInt() != 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i6) {
            super.writeToParcel(parcel, i6);
            parcel.writeInt(this.f4664c);
            parcel.writeInt(this.d ? 1 : 0);
        }
    }

    public BottomAppBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bottomAppBarStyle);
    }

    private ActionMenuView getActionMenuView() {
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            View childAt = getChildAt(i6);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBottomInset() {
        return this.f4656m0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationX() {
        return F(this.f4648d0);
    }

    private float getFabTranslationY() {
        return -getTopEdgeTreatment().f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLeftInset() {
        return this.f4658o0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRightInset() {
        return this.f4657n0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public i getTopEdgeTreatment() {
        return (i) this.W.f10367a.f10350a.f10406i;
    }

    public final FloatingActionButton C() {
        View viewD = D();
        if (viewD instanceof FloatingActionButton) {
            return (FloatingActionButton) viewD;
        }
        return null;
    }

    public final View D() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) getParent();
        List list = (List) ((l) coordinatorLayout.f1105b.f39c).get(this);
        ArrayList arrayList = coordinatorLayout.d;
        arrayList.clear();
        if (list != null) {
            arrayList.addAll(list);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            View view = (View) it.next();
            if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                return view;
            }
        }
        return null;
    }

    public final int E(ActionMenuView actionMenuView, int i6, boolean z7) {
        if (i6 != 1 || !z7) {
            return 0;
        }
        boolean zI = a0.i(this);
        int measuredWidth = zI ? getMeasuredWidth() : 0;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).f213a & 8388615) == 8388611) {
                measuredWidth = zI ? Math.min(measuredWidth, childAt.getLeft()) : Math.max(measuredWidth, childAt.getRight());
            }
        }
        return measuredWidth - ((zI ? actionMenuView.getRight() : actionMenuView.getLeft()) + (zI ? this.f4657n0 : -this.f4658o0));
    }

    public final float F(int i6) {
        boolean zI = a0.i(this);
        if (i6 == 1) {
            return ((getMeasuredWidth() / 2) - (this.V + (zI ? this.f4658o0 : this.f4657n0))) * (zI ? -1 : 1);
        }
        return 0.0f;
    }

    public final void G(int i6, boolean z7) {
        int i10 = 2;
        WeakHashMap weakHashMap = s0.f8353a;
        if (!isLaidOut()) {
            this.f4653j0 = false;
            return;
        }
        AnimatorSet animatorSet = this.f4647c0;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        ArrayList arrayList = new ArrayList();
        FloatingActionButton floatingActionButtonC = C();
        if (floatingActionButtonC == null || !floatingActionButtonC.i()) {
            i6 = 0;
            z7 = false;
        }
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView != null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
            if (Math.abs(actionMenuView.getTranslationX() - E(actionMenuView, i6, z7)) > 1.0f) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
                objectAnimatorOfFloat2.addListener(new e(this, actionMenuView, i6, z7));
                AnimatorSet animatorSet2 = new AnimatorSet();
                animatorSet2.setDuration(150L);
                animatorSet2.playSequentially(objectAnimatorOfFloat2, objectAnimatorOfFloat);
                arrayList.add(animatorSet2);
            } else if (actionMenuView.getAlpha() < 1.0f) {
                arrayList.add(objectAnimatorOfFloat);
            }
        }
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.playTogether(arrayList);
        this.f4647c0 = animatorSet3;
        animatorSet3.addListener(new a(this, i10));
        this.f4647c0.start();
    }

    public final void H() {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null || this.f4647c0 != null) {
            return;
        }
        actionMenuView.setAlpha(1.0f);
        FloatingActionButton floatingActionButtonC = C();
        if (floatingActionButtonC != null && floatingActionButtonC.i()) {
            K(actionMenuView, this.f4648d0, this.f4654k0, false);
        } else {
            K(actionMenuView, 0, false, false);
        }
    }

    public final void I() {
        FloatingActionButton floatingActionButtonC;
        getTopEdgeTreatment().f4679g = getFabTranslationX();
        View viewD = D();
        this.W.o((this.f4654k0 && (floatingActionButtonC = C()) != null && floatingActionButtonC.i()) ? 1.0f : 0.0f);
        if (viewD != null) {
            viewD.setTranslationY(getFabTranslationY());
            viewD.setTranslationX(getFabTranslationX());
        }
    }

    public final void J(int i6) {
        float f = i6;
        if (f != getTopEdgeTreatment().f4678e) {
            getTopEdgeTreatment().f4678e = f;
            this.W.invalidateSelf();
        }
    }

    public final void K(ActionMenuView actionMenuView, int i6, boolean z7, boolean z10) {
        f fVar = new f(this, actionMenuView, i6, z7);
        if (z10) {
            actionMenuView.post(fVar);
        } else {
            fVar.run();
        }
    }

    public ColorStateList getBackgroundTint() {
        return this.W.f10367a.f10353e;
    }

    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().f;
    }

    public int getFabAlignmentMode() {
        return this.f4648d0;
    }

    public int getFabAnimationMode() {
        return this.f4649e0;
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().d;
    }

    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().f4677c;
    }

    public boolean getHideOnScroll() {
        return this.f4650f0;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        o9.d.D(this, this.W);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        super.onLayout(z7, i6, i10, i11, i12);
        if (z7) {
            AnimatorSet animatorSet = this.f4647c0;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = this.f4646b0;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            I();
        }
        H();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f1319a);
        this.f4648d0 = savedState.f4664c;
        this.f4654k0 = savedState.d;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f4664c = this.f4648d0;
        savedState.d = this.f4654k0;
        return savedState;
    }

    public void setBackgroundTint(ColorStateList colorStateList) {
        g0.a.h(this.W, colorStateList);
    }

    public void setCradleVerticalOffset(float f) {
        if (f != getCradleVerticalOffset()) {
            getTopEdgeTreatment().k(f);
            this.W.invalidateSelf();
            I();
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        u6.h hVar = this.W;
        hVar.m(f);
        int iH = hVar.f10367a.f10362o - hVar.h();
        Behavior behavior = getBehavior();
        behavior.f4640c = iH;
        if (behavior.f4639b == 1) {
            setTranslationY(behavior.f4638a + iH);
        }
    }

    public void setFabAlignmentMode(int i6) {
        int i10 = 1;
        this.f4653j0 = true;
        G(i6, this.f4654k0);
        if (this.f4648d0 != i6) {
            WeakHashMap weakHashMap = s0.f8353a;
            if (isLaidOut()) {
                AnimatorSet animatorSet = this.f4646b0;
                if (animatorSet != null) {
                    animatorSet.cancel();
                }
                ArrayList arrayList = new ArrayList();
                if (this.f4649e0 == 1) {
                    ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(C(), "translationX", F(i6));
                    objectAnimatorOfFloat.setDuration(300L);
                    arrayList.add(objectAnimatorOfFloat);
                } else {
                    FloatingActionButton floatingActionButtonC = C();
                    if (floatingActionButtonC != null && !floatingActionButtonC.h()) {
                        floatingActionButtonC.g(new d(this, i6), true);
                    }
                }
                AnimatorSet animatorSet2 = new AnimatorSet();
                animatorSet2.playTogether(arrayList);
                this.f4646b0 = animatorSet2;
                animatorSet2.addListener(new a(this, i10));
                this.f4646b0.start();
            }
        }
        this.f4648d0 = i6;
    }

    public void setFabAnimationMode(int i6) {
        this.f4649e0 = i6;
    }

    public void setFabCornerSize(float f) {
        if (f != getTopEdgeTreatment().f4680h) {
            getTopEdgeTreatment().f4680h = f;
            this.W.invalidateSelf();
        }
    }

    public void setFabCradleMargin(float f) {
        if (f != getFabCradleMargin()) {
            getTopEdgeTreatment().d = f;
            this.W.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(float f) {
        if (f != getFabCradleRoundedCornerRadius()) {
            getTopEdgeTreatment().f4677c = f;
            this.W.invalidateSelf();
        }
    }

    public void setHideOnScroll(boolean z7) {
        this.f4650f0 = z7;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null && this.U != null) {
            drawable = n5.d.W(drawable.mutate());
            g0.a.g(drawable, this.U.intValue());
        }
        super.setNavigationIcon(drawable);
    }

    public void setNavigationIconTint(int i6) {
        this.U = Integer.valueOf(i6);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public BottomAppBar(Context context, AttributeSet attributeSet, int i6) {
        super(y6.a.a(context, attributeSet, i6, R.style.Widget_MaterialComponents_BottomAppBar), attributeSet, i6);
        u6.h hVar = new u6.h();
        this.W = hVar;
        int i10 = 0;
        this.f4653j0 = false;
        this.f4654k0 = true;
        this.f4659p0 = new a(this, i10);
        this.f4660q0 = new b(this);
        Context context2 = getContext();
        TypedArray typedArrayJ = a0.j(context2, attributeSet, x5.a.f11025e, i6, R.style.Widget_MaterialComponents_BottomAppBar, new int[0]);
        ColorStateList colorStateListK = com.bumptech.glide.d.k(context2, typedArrayJ, 0);
        if (typedArrayJ.hasValue(8)) {
            setNavigationIconTint(typedArrayJ.getColor(8, -1));
        }
        int dimensionPixelSize = typedArrayJ.getDimensionPixelSize(1, 0);
        float dimensionPixelOffset = typedArrayJ.getDimensionPixelOffset(4, 0);
        float dimensionPixelOffset2 = typedArrayJ.getDimensionPixelOffset(5, 0);
        float dimensionPixelOffset3 = typedArrayJ.getDimensionPixelOffset(6, 0);
        this.f4648d0 = typedArrayJ.getInt(2, 0);
        this.f4649e0 = typedArrayJ.getInt(3, 0);
        this.f4650f0 = typedArrayJ.getBoolean(7, false);
        this.f4651g0 = typedArrayJ.getBoolean(9, false);
        this.f4652h0 = typedArrayJ.getBoolean(10, false);
        this.i0 = typedArrayJ.getBoolean(11, false);
        typedArrayJ.recycle();
        this.V = getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fabOffsetEndMode);
        i iVar = new i(i10);
        iVar.f4680h = -1.0f;
        iVar.d = dimensionPixelOffset;
        iVar.f4677c = dimensionPixelOffset2;
        iVar.k(dimensionPixelOffset3);
        iVar.f4679g = 0.0f;
        k kVar = new k();
        k kVar2 = new k();
        k kVar3 = new k();
        k kVar4 = new k();
        u6.a aVar = new u6.a(0.0f);
        u6.a aVar2 = new u6.a(0.0f);
        u6.a aVar3 = new u6.a(0.0f);
        u6.a aVar4 = new u6.a(0.0f);
        int i11 = 0;
        u6.e eVar = new u6.e(i11);
        u6.e eVar2 = new u6.e(i11);
        u6.e eVar3 = new u6.e(i11);
        m mVar = new m();
        mVar.f10400a = kVar;
        mVar.f10401b = kVar2;
        mVar.f10402c = kVar3;
        mVar.d = kVar4;
        mVar.f10403e = aVar;
        mVar.f = aVar2;
        mVar.f10404g = aVar3;
        mVar.f10405h = aVar4;
        mVar.f10406i = iVar;
        mVar.f10407j = eVar;
        mVar.f10408k = eVar2;
        mVar.f10409l = eVar3;
        hVar.setShapeAppearanceModel(mVar);
        hVar.r();
        hVar.p(Paint.Style.FILL);
        hVar.k(context2);
        setElevation(dimensionPixelSize);
        g0.a.h(hVar, colorStateListK);
        WeakHashMap weakHashMap = s0.f8353a;
        setBackground(hVar);
        b bVar = new b(this);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, x5.a.f11041v, i6, R.style.Widget_MaterialComponents_BottomAppBar);
        boolean z7 = typedArrayObtainStyledAttributes.getBoolean(3, false);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(4, false);
        boolean z11 = typedArrayObtainStyledAttributes.getBoolean(5, false);
        typedArrayObtainStyledAttributes.recycle();
        a0.d(this, new b0(z7, z10, z11, bVar));
    }

    @Override // androidx.coordinatorlayout.widget.a
    public Behavior getBehavior() {
        if (this.f4655l0 == null) {
            this.f4655l0 = new Behavior();
        }
        return this.f4655l0;
    }

    /* compiled from: MyApplication */
    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* renamed from: e, reason: collision with root package name */
        public final Rect f4661e;
        public WeakReference f;

        /* renamed from: g, reason: collision with root package name */
        public int f4662g;

        /* renamed from: h, reason: collision with root package name */
        public final g f4663h;

        public Behavior() {
            this.f4663h = new g(this);
            this.f4661e = new Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i6) {
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            this.f = new WeakReference(bottomAppBar);
            int i10 = BottomAppBar.f4645r0;
            View viewD = bottomAppBar.D();
            if (viewD != null) {
                WeakHashMap weakHashMap = s0.f8353a;
                if (!viewD.isLaidOut()) {
                    androidx.coordinatorlayout.widget.c cVar = (androidx.coordinatorlayout.widget.c) viewD.getLayoutParams();
                    cVar.d = 49;
                    this.f4662g = ((ViewGroup.MarginLayoutParams) cVar).bottomMargin;
                    if (viewD instanceof FloatingActionButton) {
                        FloatingActionButton floatingActionButton = (FloatingActionButton) viewD;
                        if (floatingActionButton.getShowMotionSpec() == null) {
                            floatingActionButton.setShowMotionSpecResource(R.animator.mtrl_fab_show_motion_spec);
                        }
                        if (floatingActionButton.getHideMotionSpec() == null) {
                            floatingActionButton.setHideMotionSpecResource(R.animator.mtrl_fab_hide_motion_spec);
                        }
                        floatingActionButton.addOnLayoutChangeListener(this.f4663h);
                        floatingActionButton.c(bottomAppBar.f4659p0);
                        floatingActionButton.d(new a(bottomAppBar, 3));
                        floatingActionButton.e(bottomAppBar.f4660q0);
                    }
                    bottomAppBar.I();
                }
            }
            coordinatorLayout.v(i6, bottomAppBar);
            super.h(coordinatorLayout, bottomAppBar, i6);
            return false;
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean p(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i6, int i10) {
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            return bottomAppBar.getHideOnScroll() && super.p(coordinatorLayout, bottomAppBar, view2, view3, i6, i10);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f4663h = new g(this);
            this.f4661e = new Rect();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }
}
