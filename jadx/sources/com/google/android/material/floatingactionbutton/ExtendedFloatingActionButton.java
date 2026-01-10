package com.google.android.material.floatingactionbutton;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.g3;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.a;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.a0;
import com.p2elite.brtv2.R;
import j7.c;
import java.util.ArrayList;
import java.util.WeakHashMap;
import l6.d;
import l6.e;
import l6.f;
import l6.g;
import n0.s0;
import u6.m;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ExtendedFloatingActionButton extends MaterialButton implements a {
    public static final g3 F;
    public static final g3 G;
    public static final g3 H;
    public static final g3 I;
    public final ExtendedFloatingActionButtonBehavior A;
    public boolean B;
    public boolean C;
    public boolean D;
    public ColorStateList E;

    /* renamed from: s, reason: collision with root package name */
    public int f4911s;

    /* renamed from: t, reason: collision with root package name */
    public final e f4912t;

    /* renamed from: u, reason: collision with root package name */
    public final e f4913u;

    /* renamed from: v, reason: collision with root package name */
    public final g f4914v;

    /* renamed from: w, reason: collision with root package name */
    public final f f4915w;

    /* renamed from: x, reason: collision with root package name */
    public final int f4916x;

    /* renamed from: y, reason: collision with root package name */
    public int f4917y;

    /* renamed from: z, reason: collision with root package name */
    public int f4918z;

    static {
        Class<Float> cls = Float.class;
        F = new g3("width", cls, 1);
        G = new g3("height", cls, 2);
        H = new g3("paddingStart", cls, 3);
        I = new g3("paddingEnd", cls, 4);
    }

    public ExtendedFloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.extendedFloatingActionButtonStyle);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void f(com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton r2, l6.b r3) {
        /*
            boolean r0 = r3.h()
            if (r0 == 0) goto L7
            goto L59
        L7:
            java.util.WeakHashMap r0 = n0.s0.f8353a
            boolean r0 = r2.isLaidOut()
            if (r0 != 0) goto L25
            int r0 = r2.getVisibility()
            if (r0 == 0) goto L1b
            int r0 = r2.f4911s
            r1 = 2
            if (r0 != r1) goto L21
            goto L56
        L1b:
            int r0 = r2.f4911s
            r1 = 1
            if (r0 == r1) goto L21
            goto L56
        L21:
            boolean r0 = r2.D
            if (r0 == 0) goto L56
        L25:
            boolean r0 = r2.isInEditMode()
            if (r0 != 0) goto L56
            r0 = 0
            r2.measure(r0, r0)
            android.animation.AnimatorSet r2 = r3.a()
            a6.a r0 = new a6.a
            r1 = 5
            r0.<init>(r1, r3)
            r2.addListener(r0)
            java.util.ArrayList r3 = r3.f7991c
            java.util.Iterator r3 = r3.iterator()
        L42:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L52
            java.lang.Object r0 = r3.next()
            android.animation.Animator$AnimatorListener r0 = (android.animation.Animator.AnimatorListener) r0
            r2.addListener(r0)
            goto L42
        L52:
            r2.start()
            goto L59
        L56:
            r3.g()
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.f(com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton, l6.b):void");
    }

    public final void g(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
    }

    @Override // androidx.coordinatorlayout.widget.a
    public CoordinatorLayout.Behavior<ExtendedFloatingActionButton> getBehavior() {
        return this.A;
    }

    public int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    public int getCollapsedSize() {
        int i6 = this.f4916x;
        if (i6 >= 0) {
            return i6;
        }
        WeakHashMap weakHashMap = s0.f8353a;
        return (Math.min(getPaddingStart(), getPaddingEnd()) * 2) + getIconSize();
    }

    public y5.e getExtendMotionSpec() {
        return this.f4913u.f;
    }

    public y5.e getHideMotionSpec() {
        return this.f4915w.f;
    }

    public y5.e getShowMotionSpec() {
        return this.f4914v.f;
    }

    public y5.e getShrinkMotionSpec() {
        return this.f4912t.f;
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.B && TextUtils.isEmpty(getText()) && getIcon() != null) {
            this.B = false;
            this.f4912t.g();
        }
    }

    public void setAnimateShowBeforeLayout(boolean z7) {
        this.D = z7;
    }

    public void setExtendMotionSpec(y5.e eVar) {
        this.f4913u.f = eVar;
    }

    public void setExtendMotionSpecResource(int i6) {
        setExtendMotionSpec(y5.e.b(getContext(), i6));
    }

    public void setExtended(boolean z7) {
        if (this.B == z7) {
            return;
        }
        e eVar = z7 ? this.f4913u : this.f4912t;
        if (eVar.h()) {
            return;
        }
        eVar.g();
    }

    public void setHideMotionSpec(y5.e eVar) {
        this.f4915w.f = eVar;
    }

    public void setHideMotionSpecResource(int i6) {
        setHideMotionSpec(y5.e.b(getContext(), i6));
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i6, int i10, int i11, int i12) {
        super.setPadding(i6, i10, i11, i12);
        if (!this.B || this.C) {
            return;
        }
        WeakHashMap weakHashMap = s0.f8353a;
        this.f4917y = getPaddingStart();
        this.f4918z = getPaddingEnd();
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPaddingRelative(int i6, int i10, int i11, int i12) {
        super.setPaddingRelative(i6, i10, i11, i12);
        if (!this.B || this.C) {
            return;
        }
        this.f4917y = i6;
        this.f4918z = i11;
    }

    public void setShowMotionSpec(y5.e eVar) {
        this.f4914v.f = eVar;
    }

    public void setShowMotionSpecResource(int i6) {
        setShowMotionSpec(y5.e.b(getContext(), i6));
    }

    public void setShrinkMotionSpec(y5.e eVar) {
        this.f4912t.f = eVar;
    }

    public void setShrinkMotionSpecResource(int i6) {
        setShrinkMotionSpec(y5.e.b(getContext(), i6));
    }

    @Override // android.widget.TextView
    public void setTextColor(int i6) {
        super.setTextColor(i6);
        this.E = getTextColors();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExtendedFloatingActionButton(Context context, AttributeSet attributeSet, int i6) {
        super(y6.a.a(context, attributeSet, i6, R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon), attributeSet, i6);
        int i10 = 8;
        boolean z7 = false;
        this.f4911s = 0;
        c cVar = new c(i10, z7);
        g gVar = new g(this, cVar);
        this.f4914v = gVar;
        f fVar = new f(this, cVar);
        this.f4915w = fVar;
        this.B = true;
        this.C = false;
        this.D = false;
        Context context2 = getContext();
        this.A = new ExtendedFloatingActionButtonBehavior(context2, attributeSet);
        TypedArray typedArrayJ = a0.j(context2, attributeSet, x5.a.f11035p, i6, R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon, new int[0]);
        y5.e eVarA = y5.e.a(context2, typedArrayJ, 4);
        y5.e eVarA2 = y5.e.a(context2, typedArrayJ, 3);
        y5.e eVarA3 = y5.e.a(context2, typedArrayJ, 2);
        y5.e eVarA4 = y5.e.a(context2, typedArrayJ, 5);
        this.f4916x = typedArrayJ.getDimensionPixelSize(0, -1);
        WeakHashMap weakHashMap = s0.f8353a;
        this.f4917y = getPaddingStart();
        this.f4918z = getPaddingEnd();
        c cVar2 = new c(i10, z7);
        e eVar = new e(this, cVar2, new d(this, 0), true);
        this.f4913u = eVar;
        e eVar2 = new e(this, cVar2, new d(this, 1), false);
        this.f4912t = eVar2;
        gVar.f = eVarA;
        fVar.f = eVarA2;
        eVar.f = eVarA3;
        eVar2.f = eVarA4;
        typedArrayJ.recycle();
        setShapeAppearanceModel(m.c(context2, attributeSet, i6, R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon, m.f10399m).a());
        this.E = getTextColors();
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        this.E = getTextColors();
    }

    /* compiled from: MyApplication */
    public static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: a, reason: collision with root package name */
        public Rect f4919a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f4920b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f4921c;

        public ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, x5.a.f11036q);
            this.f4920b = typedArrayObtainStyledAttributes.getBoolean(0, false);
            this.f4921c = typedArrayObtainStyledAttributes.getBoolean(1, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final /* bridge */ /* synthetic */ boolean a(View view, Rect rect) {
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void c(androidx.coordinatorlayout.widget.c cVar) {
            if (cVar.f1127h == 0) {
                cVar.f1127h = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) {
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                s(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton);
            } else {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams instanceof androidx.coordinatorlayout.widget.c ? ((androidx.coordinatorlayout.widget.c) layoutParams).f1122a instanceof BottomSheetBehavior : false) {
                    t(view2, extendedFloatingActionButton);
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i6) {
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            ArrayList arrayListO = coordinatorLayout.o(extendedFloatingActionButton);
            int size = arrayListO.size();
            for (int i10 = 0; i10 < size; i10++) {
                View view2 = (View) arrayListO.get(i10);
                if (!(view2 instanceof AppBarLayout)) {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    if ((layoutParams instanceof androidx.coordinatorlayout.widget.c ? ((androidx.coordinatorlayout.widget.c) layoutParams).f1122a instanceof BottomSheetBehavior : false) && t(view2, extendedFloatingActionButton)) {
                        break;
                    }
                } else {
                    if (s(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.v(i6, extendedFloatingActionButton);
            return true;
        }

        public final boolean s(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            androidx.coordinatorlayout.widget.c cVar = (androidx.coordinatorlayout.widget.c) extendedFloatingActionButton.getLayoutParams();
            if ((!this.f4920b && !this.f4921c) || cVar.f != appBarLayout.getId()) {
                return false;
            }
            if (this.f4919a == null) {
                this.f4919a = new Rect();
            }
            Rect rect = this.f4919a;
            com.google.android.material.internal.e.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                ExtendedFloatingActionButton.f(extendedFloatingActionButton, this.f4921c ? extendedFloatingActionButton.f4912t : extendedFloatingActionButton.f4915w);
                return true;
            }
            ExtendedFloatingActionButton.f(extendedFloatingActionButton, this.f4921c ? extendedFloatingActionButton.f4913u : extendedFloatingActionButton.f4914v);
            return true;
        }

        public final boolean t(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            androidx.coordinatorlayout.widget.c cVar = (androidx.coordinatorlayout.widget.c) extendedFloatingActionButton.getLayoutParams();
            if ((!this.f4920b && !this.f4921c) || cVar.f != view.getId()) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((androidx.coordinatorlayout.widget.c) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                ExtendedFloatingActionButton.f(extendedFloatingActionButton, this.f4921c ? extendedFloatingActionButton.f4912t : extendedFloatingActionButton.f4915w);
                return true;
            }
            ExtendedFloatingActionButton.f(extendedFloatingActionButton, this.f4921c ? extendedFloatingActionButton.f4913u : extendedFloatingActionButton.f4914v);
            return true;
        }

        public ExtendedFloatingActionButtonBehavior() {
            this.f4920b = false;
            this.f4921c = true;
        }
    }
}
