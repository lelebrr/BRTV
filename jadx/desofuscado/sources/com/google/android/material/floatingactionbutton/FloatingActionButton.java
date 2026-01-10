package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import androidx.appcompat.widget.w;
import androidx.appcompat.widget.z;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomappbar.b;
import com.google.android.material.bottomappbar.d;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.internal.a0;
import com.google.android.material.stateful.ExtendableSavedState;
import com.p2elite.brtv2.R;
import j7.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import k6.a;
import l6.h;
import l6.i;
import l6.j;
import l6.q;
import l6.s;
import n0.s0;
import o9.e;
import p.l;
import u6.m;
import u6.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class FloatingActionButton extends VisibilityAwareImageButton implements a, x, androidx.coordinatorlayout.widget.a {

    /* renamed from: b, reason: collision with root package name */
    public ColorStateList f4922b;

    /* renamed from: c, reason: collision with root package name */
    public PorterDuff.Mode f4923c;
    public ColorStateList d;

    /* renamed from: e, reason: collision with root package name */
    public PorterDuff.Mode f4924e;
    public ColorStateList f;

    /* renamed from: g, reason: collision with root package name */
    public int f4925g;

    /* renamed from: h, reason: collision with root package name */
    public int f4926h;

    /* renamed from: i, reason: collision with root package name */
    public int f4927i;

    /* renamed from: j, reason: collision with root package name */
    public int f4928j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f4929k;

    /* renamed from: l, reason: collision with root package name */
    public final Rect f4930l;

    /* renamed from: m, reason: collision with root package name */
    public final Rect f4931m;

    /* renamed from: n, reason: collision with root package name */
    public final z f4932n;

    /* renamed from: o, reason: collision with root package name */
    public final androidx.appcompat.widget.a f4933o;

    /* renamed from: p, reason: collision with root package name */
    public s f4934p;

    /* compiled from: MyApplication */
    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.floatingActionButtonStyle);
    }

    private q getImpl() {
        if (this.f4934p == null) {
            this.f4934p = new s(this, new c(9, this));
        }
        return this.f4934p;
    }

    public static int l(int i6, int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode == Integer.MIN_VALUE) {
            return Math.min(i6, size);
        }
        if (mode == 0) {
            return i6;
        }
        if (mode == 1073741824) {
            return size;
        }
        throw new IllegalArgumentException();
    }

    public final void c(AnimatorListenerAdapter animatorListenerAdapter) {
        q impl = getImpl();
        if (impl.f8056t == null) {
            impl.f8056t = new ArrayList();
        }
        impl.f8056t.add(animatorListenerAdapter);
    }

    public final void d(com.google.android.material.bottomappbar.a aVar) {
        q impl = getImpl();
        if (impl.f8055s == null) {
            impl.f8055s = new ArrayList();
        }
        impl.f8055s.add(aVar);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().j(getDrawableState());
    }

    public final void e(b bVar) {
        q impl = getImpl();
        i iVar = new i(this, bVar);
        if (impl.f8057u == null) {
            impl.f8057u = new ArrayList();
        }
        impl.f8057u.add(iVar);
    }

    public final int f(int i6) {
        int i10 = this.f4926h;
        if (i10 != 0) {
            return i10;
        }
        Resources resources = getResources();
        return i6 != -1 ? i6 != 1 ? resources.getDimensionPixelSize(R.dimen.design_fab_size_normal) : resources.getDimensionPixelSize(R.dimen.design_fab_size_mini) : Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? f(1) : f(0);
    }

    public final void g(d dVar, boolean z7) {
        q impl = getImpl();
        h hVar = dVar == null ? null : new h(this, 0, dVar);
        if (impl.f8058v.getVisibility() == 0) {
            if (impl.f8054r == 1) {
                return;
            }
        } else if (impl.f8054r != 2) {
            return;
        }
        Animator animator = impl.f8048l;
        if (animator != null) {
            animator.cancel();
        }
        WeakHashMap weakHashMap = s0.f8353a;
        FloatingActionButton floatingActionButton = impl.f8058v;
        if (!floatingActionButton.isLaidOut() || floatingActionButton.isInEditMode()) {
            floatingActionButton.a(z7 ? 8 : 4, z7);
            if (hVar != null) {
                ((e) hVar.f8016b).D((FloatingActionButton) hVar.f8017c);
                return;
            }
            return;
        }
        y5.e eVar = impl.f8050n;
        AnimatorSet animatorSetB = eVar != null ? impl.b(eVar, 0.0f, 0.0f, 0.0f) : impl.c(0.0f, 0.4f, 0.4f);
        animatorSetB.addListener(new j(impl, z7, hVar));
        ArrayList arrayList = impl.f8056t;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetB.addListener((Animator.AnimatorListener) it.next());
            }
        }
        animatorSetB.start();
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return this.f4922b;
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f4923c;
    }

    @Override // androidx.coordinatorlayout.widget.a
    public CoordinatorLayout.Behavior<FloatingActionButton> getBehavior() {
        return new Behavior();
    }

    public float getCompatElevation() {
        return getImpl().e();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().f8045i;
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().f8046j;
    }

    public Drawable getContentBackground() {
        return getImpl().f8042e;
    }

    public int getCustomSize() {
        return this.f4926h;
    }

    public int getExpandedComponentIdHint() {
        return this.f4933o.f660b;
    }

    public y5.e getHideMotionSpec() {
        return getImpl().f8050n;
    }

    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.f;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    public ColorStateList getRippleColorStateList() {
        return this.f;
    }

    public m getShapeAppearanceModel() {
        m mVar = getImpl().f8039a;
        mVar.getClass();
        return mVar;
    }

    public y5.e getShowMotionSpec() {
        return getImpl().f8049m;
    }

    public int getSize() {
        return this.f4925g;
    }

    public int getSizeDimension() {
        return f(this.f4925g);
    }

    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    public ColorStateList getSupportImageTintList() {
        return this.d;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f4924e;
    }

    public boolean getUseCompatPadding() {
        return this.f4929k;
    }

    public final boolean h() {
        q impl = getImpl();
        if (impl.f8058v.getVisibility() == 0) {
            if (impl.f8054r != 1) {
                return false;
            }
        } else if (impl.f8054r == 2) {
            return false;
        }
        return true;
    }

    public final boolean i() {
        q impl = getImpl();
        if (impl.f8058v.getVisibility() != 0) {
            if (impl.f8054r != 2) {
                return false;
            }
        } else if (impl.f8054r == 1) {
            return false;
        }
        return true;
    }

    public final void j(Rect rect) {
        int i6 = rect.left;
        Rect rect2 = this.f4930l;
        rect.left = i6 + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().h();
    }

    public final void k() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.d;
        if (colorStateList == null) {
            n5.d.a(drawable);
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.f4924e;
        if (mode == null) {
            mode = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(w.c(colorForState, mode));
    }

    public final void m(com.google.android.material.bottomappbar.c cVar, boolean z7) {
        int i6 = 0;
        q impl = getImpl();
        h hVar = cVar == null ? null : new h(this, i6, cVar);
        if (impl.f8058v.getVisibility() != 0) {
            if (impl.f8054r == 2) {
                return;
            }
        } else if (impl.f8054r != 1) {
            return;
        }
        Animator animator = impl.f8048l;
        if (animator != null) {
            animator.cancel();
        }
        boolean z10 = impl.f8049m == null;
        WeakHashMap weakHashMap = s0.f8353a;
        FloatingActionButton floatingActionButton = impl.f8058v;
        boolean z11 = floatingActionButton.isLaidOut() && !floatingActionButton.isInEditMode();
        Matrix matrix = impl.A;
        if (!z11) {
            floatingActionButton.a(0, z7);
            floatingActionButton.setAlpha(1.0f);
            floatingActionButton.setScaleY(1.0f);
            floatingActionButton.setScaleX(1.0f);
            impl.f8052p = 1.0f;
            impl.a(1.0f, matrix);
            floatingActionButton.setImageMatrix(matrix);
            if (hVar != null) {
                ((e) hVar.f8016b).E();
                return;
            }
            return;
        }
        if (floatingActionButton.getVisibility() != 0) {
            floatingActionButton.setAlpha(0.0f);
            floatingActionButton.setScaleY(z10 ? 0.4f : 0.0f);
            floatingActionButton.setScaleX(z10 ? 0.4f : 0.0f);
            float f = z10 ? 0.4f : 0.0f;
            impl.f8052p = f;
            impl.a(f, matrix);
            floatingActionButton.setImageMatrix(matrix);
        }
        y5.e eVar = impl.f8049m;
        AnimatorSet animatorSetB = eVar != null ? impl.b(eVar, 1.0f, 1.0f, 1.0f) : impl.c(1.0f, 1.0f, 1.0f);
        animatorSetB.addListener(new a7.b(impl, z7, hVar));
        ArrayList arrayList = impl.f8055s;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetB.addListener((Animator.AnimatorListener) it.next());
            }
        }
        animatorSetB.start();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        q impl = getImpl();
        u6.h hVar = impl.f8040b;
        FloatingActionButton floatingActionButton = impl.f8058v;
        if (hVar != null) {
            o9.d.D(floatingActionButton, hVar);
        }
        if (impl instanceof s) {
            return;
        }
        ViewTreeObserver viewTreeObserver = floatingActionButton.getViewTreeObserver();
        if (impl.B == null) {
            impl.B = new a0.d(1, impl);
        }
        viewTreeObserver.addOnPreDrawListener(impl.B);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        q impl = getImpl();
        ViewTreeObserver viewTreeObserver = impl.f8058v.getViewTreeObserver();
        a0.d dVar = impl.B;
        if (dVar != null) {
            viewTreeObserver.removeOnPreDrawListener(dVar);
            impl.B = null;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i6, int i10) {
        int sizeDimension = getSizeDimension();
        this.f4927i = (sizeDimension - this.f4928j) / 2;
        getImpl().r();
        int iMin = Math.min(l(sizeDimension, i6), l(sizeDimension, i10));
        Rect rect = this.f4930l;
        setMeasuredDimension(rect.left + iMin + rect.right, iMin + rect.top + rect.bottom);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.f1319a);
        Object obj = extendableSavedState.f5221c.get("expandableWidgetHelper");
        obj.getClass();
        Bundle bundle = (Bundle) obj;
        androidx.appcompat.widget.a aVar = this.f4933o;
        aVar.getClass();
        aVar.f659a = bundle.getBoolean("expanded", false);
        aVar.f660b = bundle.getInt("expandedComponentIdHint", 0);
        if (aVar.f659a) {
            View view = aVar.f661c;
            ViewParent parent = view.getParent();
            if (parent instanceof CoordinatorLayout) {
                ((CoordinatorLayout) parent).m(view);
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (parcelableOnSaveInstanceState == null) {
            parcelableOnSaveInstanceState = new Bundle();
        }
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(parcelableOnSaveInstanceState);
        l lVar = extendableSavedState.f5221c;
        androidx.appcompat.widget.a aVar = this.f4933o;
        aVar.getClass();
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", aVar.f659a);
        bundle.putInt("expandedComponentIdHint", aVar.f660b);
        lVar.put("expandableWidgetHelper", bundle);
        return extendableSavedState;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            WeakHashMap weakHashMap = s0.f8353a;
            if (isLaidOut()) {
                int width = getWidth();
                int height = getHeight();
                Rect rect = this.f4931m;
                rect.set(0, 0, width, height);
                j(rect);
                if (!rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                    return false;
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i6) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundResource(int i6) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.f4922b != colorStateList) {
            this.f4922b = colorStateList;
            q impl = getImpl();
            u6.h hVar = impl.f8040b;
            if (hVar != null) {
                hVar.setTintList(colorStateList);
            }
            l6.c cVar = impl.d;
            if (cVar != null) {
                if (colorStateList != null) {
                    cVar.f8003m = colorStateList.getColorForState(cVar.getState(), cVar.f8003m);
                }
                cVar.f8006p = colorStateList;
                cVar.f8004n = true;
                cVar.invalidateSelf();
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f4923c != mode) {
            this.f4923c = mode;
            u6.h hVar = getImpl().f8040b;
            if (hVar != null) {
                hVar.setTintMode(mode);
            }
        }
    }

    public void setCompatElevation(float f) {
        q impl = getImpl();
        if (impl.f8044h != f) {
            impl.f8044h = f;
            impl.k(f, impl.f8045i, impl.f8046j);
        }
    }

    public void setCompatElevationResource(int i6) {
        setCompatElevation(getResources().getDimension(i6));
    }

    public void setCompatHoveredFocusedTranslationZ(float f) {
        q impl = getImpl();
        if (impl.f8045i != f) {
            impl.f8045i = f;
            impl.k(impl.f8044h, f, impl.f8046j);
        }
    }

    public void setCompatHoveredFocusedTranslationZResource(int i6) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i6));
    }

    public void setCompatPressedTranslationZ(float f) {
        q impl = getImpl();
        if (impl.f8046j != f) {
            impl.f8046j = f;
            impl.k(impl.f8044h, impl.f8045i, f);
        }
    }

    public void setCompatPressedTranslationZResource(int i6) {
        setCompatPressedTranslationZ(getResources().getDimension(i6));
    }

    public void setCustomSize(int i6) {
        if (i6 < 0) {
            throw new IllegalArgumentException("Custom size must be non-negative");
        }
        if (i6 != this.f4926h) {
            this.f4926h = i6;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        u6.h hVar = getImpl().f8040b;
        if (hVar != null) {
            hVar.m(f);
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z7) {
        if (z7 != getImpl().f) {
            getImpl().f = z7;
            requestLayout();
        }
    }

    public void setExpandedComponentIdHint(int i6) {
        this.f4933o.f660b = i6;
    }

    public void setHideMotionSpec(y5.e eVar) {
        getImpl().f8050n = eVar;
    }

    public void setHideMotionSpecResource(int i6) {
        setHideMotionSpec(y5.e.b(getContext(), i6));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            q impl = getImpl();
            float f = impl.f8052p;
            impl.f8052p = f;
            Matrix matrix = impl.A;
            impl.a(f, matrix);
            impl.f8058v.setImageMatrix(matrix);
            if (this.d != null) {
                k();
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i6) {
        this.f4932n.c(i6);
        k();
    }

    public void setMaxImageSize(int i6) {
        this.f4928j = i6;
        q impl = getImpl();
        if (impl.f8053q != i6) {
            impl.f8053q = i6;
            float f = impl.f8052p;
            impl.f8052p = f;
            Matrix matrix = impl.A;
            impl.a(f, matrix);
            impl.f8058v.setImageMatrix(matrix);
        }
    }

    public void setRippleColor(int i6) {
        setRippleColor(ColorStateList.valueOf(i6));
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        super.setScaleX(f);
        getImpl().l();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        super.setScaleY(f);
        getImpl().l();
    }

    public void setShadowPaddingEnabled(boolean z7) {
        q impl = getImpl();
        impl.f8043g = z7;
        impl.r();
    }

    @Override // u6.x
    public void setShapeAppearanceModel(m mVar) {
        getImpl().o(mVar);
    }

    public void setShowMotionSpec(y5.e eVar) {
        getImpl().f8049m = eVar;
    }

    public void setShowMotionSpecResource(int i6) {
        setShowMotionSpec(y5.e.b(getContext(), i6));
    }

    public void setSize(int i6) {
        this.f4926h = 0;
        if (i6 != this.f4925g) {
            this.f4925g = i6;
            requestLayout();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        if (this.d != colorStateList) {
            this.d = colorStateList;
            k();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        if (this.f4924e != mode) {
            this.f4924e = mode;
            k();
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        super.setTranslationX(f);
        getImpl().m();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        getImpl().m();
    }

    @Override // android.view.View
    public void setTranslationZ(float f) {
        super.setTranslationZ(f);
        getImpl().m();
    }

    public void setUseCompatPadding(boolean z7) {
        if (this.f4929k != z7) {
            this.f4929k = z7;
            getImpl().i();
        }
    }

    @Override // com.google.android.material.internal.VisibilityAwareImageButton, android.widget.ImageView, android.view.View
    public void setVisibility(int i6) {
        super.setVisibility(i6);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i6) throws Resources.NotFoundException {
        super(y6.a.a(context, attributeSet, i6, R.style.Widget_Design_FloatingActionButton), attributeSet, i6);
        this.f4930l = new Rect();
        this.f4931m = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayJ = a0.j(context2, attributeSet, x5.a.f11037r, i6, R.style.Widget_Design_FloatingActionButton, new int[0]);
        this.f4922b = com.bumptech.glide.d.k(context2, typedArrayJ, 1);
        this.f4923c = a0.l(typedArrayJ.getInt(2, -1), null);
        this.f = com.bumptech.glide.d.k(context2, typedArrayJ, 12);
        this.f4925g = typedArrayJ.getInt(7, -1);
        this.f4926h = typedArrayJ.getDimensionPixelSize(6, 0);
        int dimensionPixelSize = typedArrayJ.getDimensionPixelSize(3, 0);
        float dimension = typedArrayJ.getDimension(4, 0.0f);
        float dimension2 = typedArrayJ.getDimension(9, 0.0f);
        float dimension3 = typedArrayJ.getDimension(11, 0.0f);
        this.f4929k = typedArrayJ.getBoolean(16, false);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.mtrl_fab_min_touch_target);
        setMaxImageSize(typedArrayJ.getDimensionPixelSize(10, 0));
        y5.e eVarA = y5.e.a(context2, typedArrayJ, 15);
        y5.e eVarA2 = y5.e.a(context2, typedArrayJ, 8);
        m mVarA = m.c(context2, attributeSet, i6, R.style.Widget_Design_FloatingActionButton, m.f10399m).a();
        boolean z7 = typedArrayJ.getBoolean(5, false);
        setEnabled(typedArrayJ.getBoolean(0, true));
        typedArrayJ.recycle();
        z zVar = new z(this);
        this.f4932n = zVar;
        zVar.b(attributeSet, i6);
        this.f4933o = new androidx.appcompat.widget.a(this);
        getImpl().o(mVarA);
        getImpl().g(this.f4922b, this.f4923c, this.f, dimensionPixelSize);
        getImpl().f8047k = dimensionPixelSize2;
        q impl = getImpl();
        if (impl.f8044h != dimension) {
            impl.f8044h = dimension;
            impl.k(dimension, impl.f8045i, impl.f8046j);
        }
        q impl2 = getImpl();
        if (impl2.f8045i != dimension2) {
            impl2.f8045i = dimension2;
            impl2.k(impl2.f8044h, dimension2, impl2.f8046j);
        }
        q impl3 = getImpl();
        if (impl3.f8046j != dimension3) {
            impl3.f8046j = dimension3;
            impl3.k(impl3.f8044h, impl3.f8045i, dimension3);
        }
        getImpl().f8049m = eVarA;
        getImpl().f8050n = eVarA2;
        getImpl().f = z7;
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (this.f != colorStateList) {
            this.f = colorStateList;
            getImpl().n(this.f);
        }
    }

    /* compiled from: MyApplication */
    public static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: a, reason: collision with root package name */
        public Rect f4935a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f4936b;

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, x5.a.f11038s);
            this.f4936b = typedArrayObtainStyledAttributes.getBoolean(0, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean a(View view, Rect rect) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            int left = floatingActionButton.getLeft();
            Rect rect2 = floatingActionButton.f4930l;
            rect.set(left + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void c(androidx.coordinatorlayout.widget.c cVar) {
            if (cVar.f1127h == 0) {
                cVar.f1127h = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                s(coordinatorLayout, (AppBarLayout) view2, floatingActionButton);
            } else {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams instanceof androidx.coordinatorlayout.widget.c ? ((androidx.coordinatorlayout.widget.c) layoutParams).f1122a instanceof BottomSheetBehavior : false) {
                    t(view2, floatingActionButton);
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i6) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            ArrayList arrayListO = coordinatorLayout.o(floatingActionButton);
            int size = arrayListO.size();
            int i10 = 0;
            for (int i11 = 0; i11 < size; i11++) {
                View view2 = (View) arrayListO.get(i11);
                if (!(view2 instanceof AppBarLayout)) {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    if ((layoutParams instanceof androidx.coordinatorlayout.widget.c ? ((androidx.coordinatorlayout.widget.c) layoutParams).f1122a instanceof BottomSheetBehavior : false) && t(view2, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (s(coordinatorLayout, (AppBarLayout) view2, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.v(i6, floatingActionButton);
            Rect rect = floatingActionButton.f4930l;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return true;
            }
            androidx.coordinatorlayout.widget.c cVar = (androidx.coordinatorlayout.widget.c) floatingActionButton.getLayoutParams();
            int i12 = floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) cVar).rightMargin ? rect.right : floatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) cVar).leftMargin ? -rect.left : 0;
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) cVar).bottomMargin) {
                i10 = rect.bottom;
            } else if (floatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) cVar).topMargin) {
                i10 = -rect.top;
            }
            if (i10 != 0) {
                s0.j(i10, floatingActionButton);
            }
            if (i12 == 0) {
                return true;
            }
            s0.i(i12, floatingActionButton);
            return true;
        }

        public final boolean s(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!(this.f4936b && ((androidx.coordinatorlayout.widget.c) floatingActionButton.getLayoutParams()).f == appBarLayout.getId() && floatingActionButton.getUserSetVisibility() == 0)) {
                return false;
            }
            if (this.f4935a == null) {
                this.f4935a = new Rect();
            }
            Rect rect = this.f4935a;
            com.google.android.material.internal.e.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.g(null, false);
            } else {
                floatingActionButton.m(null, false);
            }
            return true;
        }

        public final boolean t(View view, FloatingActionButton floatingActionButton) {
            if (!(this.f4936b && ((androidx.coordinatorlayout.widget.c) floatingActionButton.getLayoutParams()).f == view.getId() && floatingActionButton.getUserSetVisibility() == 0)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((androidx.coordinatorlayout.widget.c) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.g(null, false);
            } else {
                floatingActionButton.m(null, false);
            }
            return true;
        }

        public BaseBehavior() {
            this.f4936b = true;
        }
    }
}
