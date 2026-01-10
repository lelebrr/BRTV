package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.LinearLayoutCompat;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ActionMenuView extends LinearLayoutCompat implements k.k, k.a0 {
    public n A;

    /* renamed from: p, reason: collision with root package name */
    public k.l f467p;

    /* renamed from: q, reason: collision with root package name */
    public Context f468q;

    /* renamed from: r, reason: collision with root package name */
    public int f469r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f470s;

    /* renamed from: t, reason: collision with root package name */
    public k f471t;

    /* renamed from: u, reason: collision with root package name */
    public androidx.appcompat.app.r0 f472u;

    /* renamed from: v, reason: collision with root package name */
    public k.j f473v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f474w;

    /* renamed from: x, reason: collision with root package name */
    public int f475x;

    /* renamed from: y, reason: collision with root package name */
    public final int f476y;

    /* renamed from: z, reason: collision with root package name */
    public final int f477z;

    /* compiled from: MyApplication */
    public static class LayoutParams extends LinearLayoutCompat.LayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public boolean f478a;

        /* renamed from: b, reason: collision with root package name */
        public int f479b;

        /* renamed from: c, reason: collision with root package name */
        public int f480c;
        public boolean d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f481e;
        public boolean f;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.f476y = (int) (56.0f * f);
        this.f477z = (int) (f * 4.0f);
        this.f468q = context;
        this.f469r = 0;
    }

    public static LayoutParams l() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.f478a = false;
        ((LinearLayout.LayoutParams) layoutParams).gravity = 16;
        return layoutParams;
    }

    public static LayoutParams m(ViewGroup.LayoutParams layoutParams) {
        LayoutParams layoutParams2;
        if (layoutParams == null) {
            return l();
        }
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams3 = (LayoutParams) layoutParams;
            layoutParams2 = new LayoutParams(layoutParams3);
            layoutParams2.f478a = layoutParams3.f478a;
        } else {
            layoutParams2 = new LayoutParams(layoutParams);
        }
        if (((LinearLayout.LayoutParams) layoutParams2).gravity <= 0) {
            ((LinearLayout.LayoutParams) layoutParams2).gravity = 16;
        }
        return layoutParams2;
    }

    @Override // k.k
    public final boolean a(k.n nVar) {
        return this.f467p.q(nVar, null, 0);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // k.a0
    public final void d(k.l lVar) {
        this.f467p = lVar;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return l();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m(layoutParams);
    }

    public Menu getMenu() {
        if (this.f467p == null) {
            Context context = getContext();
            k.l lVar = new k.l(context);
            this.f467p = lVar;
            lVar.f7612e = new a0.b(5, this);
            k kVar = new k(context);
            this.f471t = kVar;
            kVar.f750m = true;
            kVar.f751n = true;
            k.x mVar = this.f472u;
            if (mVar == null) {
                mVar = new m();
            }
            kVar.f7546e = mVar;
            this.f467p.b(kVar, this.f468q);
            k kVar2 = this.f471t;
            kVar2.f7548h = this;
            this.f467p = kVar2.f7545c;
        }
        return this.f467p;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        k kVar = this.f471t;
        i iVar = kVar.f747j;
        if (iVar != null) {
            return iVar.getDrawable();
        }
        if (kVar.f749l) {
            return kVar.f748k;
        }
        return null;
    }

    public int getPopupTheme() {
        return this.f469r;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* renamed from: h */
    public final /* bridge */ /* synthetic */ LinearLayoutCompat.LayoutParams generateDefaultLayoutParams() {
        return l();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* renamed from: i */
    public final LinearLayoutCompat.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* renamed from: j */
    public final /* bridge */ /* synthetic */ LinearLayoutCompat.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m(layoutParams);
    }

    public final boolean n(int i6) {
        boolean zA = false;
        if (i6 == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i6 - 1);
        KeyEvent.Callback childAt2 = getChildAt(i6);
        if (i6 < getChildCount() && (childAt instanceof l)) {
            zA = ((l) childAt).a();
        }
        return (i6 <= 0 || !(childAt2 instanceof l)) ? zA : zA | ((l) childAt2).b();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        k kVar = this.f471t;
        if (kVar != null) {
            kVar.j(false);
            if (this.f471t.h()) {
                this.f471t.c();
                this.f471t.n();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        k kVar = this.f471t;
        if (kVar != null) {
            kVar.c();
            e eVar = kVar.f758u;
            if (eVar == null || !eVar.b()) {
                return;
            }
            eVar.f7674i.dismiss();
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        int width;
        int paddingLeft;
        if (!this.f474w) {
            super.onLayout(z7, i6, i10, i11, i12);
            return;
        }
        int childCount = getChildCount();
        int i13 = (i12 - i10) / 2;
        int dividerWidth = getDividerWidth();
        int i14 = i11 - i6;
        int paddingRight = (i14 - getPaddingRight()) - getPaddingLeft();
        boolean zA = c4.a(this);
        int i15 = 0;
        int i16 = 0;
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt = getChildAt(i17);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f478a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (n(i17)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (zA) {
                        paddingLeft = getPaddingLeft() + ((LinearLayout.LayoutParams) layoutParams).leftMargin;
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i18 = i13 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i18, width, measuredHeight + i18);
                    paddingRight -= measuredWidth;
                    i15 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) layoutParams).leftMargin) + ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                    n(i17);
                    i16++;
                }
            }
        }
        if (childCount == 1 && i15 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i19 = (i14 / 2) - (measuredWidth2 / 2);
            int i20 = i13 - (measuredHeight2 / 2);
            childAt2.layout(i19, i20, measuredWidth2 + i19, measuredHeight2 + i20);
            return;
        }
        int i21 = i16 - (i15 ^ 1);
        int iMax = Math.max(0, i21 > 0 ? paddingRight / i21 : 0);
        if (zA) {
            int width2 = getWidth() - getPaddingRight();
            for (int i22 = 0; i22 < childCount; i22++) {
                View childAt3 = getChildAt(i22);
                LayoutParams layoutParams2 = (LayoutParams) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !layoutParams2.f478a) {
                    int i23 = width2 - ((LinearLayout.LayoutParams) layoutParams2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i24 = i13 - (measuredHeight3 / 2);
                    childAt3.layout(i23 - measuredWidth3, i24, i23, measuredHeight3 + i24);
                    width2 = i23 - ((measuredWidth3 + ((LinearLayout.LayoutParams) layoutParams2).leftMargin) + iMax);
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i25 = 0; i25 < childCount; i25++) {
            View childAt4 = getChildAt(i25);
            LayoutParams layoutParams3 = (LayoutParams) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !layoutParams3.f478a) {
                int i26 = paddingLeft2 + ((LinearLayout.LayoutParams) layoutParams3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i27 = i13 - (measuredHeight4 / 2);
                childAt4.layout(i26, i27, i26 + measuredWidth4, measuredHeight4 + i27);
                paddingLeft2 = measuredWidth4 + ((LinearLayout.LayoutParams) layoutParams3).rightMargin + iMax + i26;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v31 */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public final void onMeasure(int i6, int i10) {
        int i11;
        boolean z7;
        int i12;
        boolean z10;
        int i13;
        int i14;
        int i15;
        ?? r42;
        int i16;
        int i17;
        int i18;
        k.l lVar;
        boolean z11 = this.f474w;
        boolean z12 = View.MeasureSpec.getMode(i6) == 1073741824;
        this.f474w = z12;
        if (z11 != z12) {
            this.f475x = 0;
        }
        int size = View.MeasureSpec.getSize(i6);
        if (this.f474w && (lVar = this.f467p) != null && size != this.f475x) {
            this.f475x = size;
            lVar.p(true);
        }
        int childCount = getChildCount();
        if (!this.f474w || childCount <= 0) {
            for (int i19 = 0; i19 < childCount; i19++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i19).getLayoutParams();
                ((LinearLayout.LayoutParams) layoutParams).rightMargin = 0;
                ((LinearLayout.LayoutParams) layoutParams).leftMargin = 0;
            }
            super.onMeasure(i6, i10);
            return;
        }
        int mode = View.MeasureSpec.getMode(i10);
        int size2 = View.MeasureSpec.getSize(i6);
        int size3 = View.MeasureSpec.getSize(i10);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, paddingBottom, -2);
        int i20 = size2 - paddingRight;
        int i21 = this.f476y;
        int i22 = i20 / i21;
        int i23 = i20 % i21;
        if (i22 == 0) {
            setMeasuredDimension(i20, 0);
            return;
        }
        int i24 = (i23 / i22) + i21;
        int childCount2 = getChildCount();
        int iMax = 0;
        int i25 = 0;
        int iMax2 = 0;
        int i26 = 0;
        boolean z13 = false;
        long j10 = 0;
        int i27 = 0;
        while (true) {
            i11 = this.f477z;
            if (i26 >= childCount2) {
                break;
            }
            View childAt = getChildAt(i26);
            int i28 = size3;
            int i29 = i20;
            if (childAt.getVisibility() == 8) {
                i16 = mode;
                i17 = paddingBottom;
            } else {
                boolean z14 = childAt instanceof ActionMenuItemView;
                int i30 = i25 + 1;
                if (z14) {
                    childAt.setPadding(i11, 0, i11, 0);
                }
                LayoutParams layoutParams2 = (LayoutParams) childAt.getLayoutParams();
                layoutParams2.f = false;
                layoutParams2.f480c = 0;
                layoutParams2.f479b = 0;
                layoutParams2.d = false;
                ((LinearLayout.LayoutParams) layoutParams2).leftMargin = 0;
                ((LinearLayout.LayoutParams) layoutParams2).rightMargin = 0;
                layoutParams2.f481e = z14 && !TextUtils.isEmpty(((ActionMenuItemView) childAt).getText());
                int i31 = layoutParams2.f478a ? 1 : i22;
                LayoutParams layoutParams3 = (LayoutParams) childAt.getLayoutParams();
                i16 = mode;
                i17 = paddingBottom;
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(childMeasureSpec) - paddingBottom, View.MeasureSpec.getMode(childMeasureSpec));
                ActionMenuItemView actionMenuItemView = z14 ? (ActionMenuItemView) childAt : null;
                boolean z15 = (actionMenuItemView == null || TextUtils.isEmpty(actionMenuItemView.getText())) ? false : true;
                if (i31 <= 0 || (z15 && i31 < 2)) {
                    i18 = 0;
                } else {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i31 * i24, Integer.MIN_VALUE), iMakeMeasureSpec);
                    int measuredWidth = childAt.getMeasuredWidth();
                    i18 = measuredWidth / i24;
                    if (measuredWidth % i24 != 0) {
                        i18++;
                    }
                    if (z15 && i18 < 2) {
                        i18 = 2;
                    }
                }
                layoutParams3.d = !layoutParams3.f478a && z15;
                layoutParams3.f479b = i18;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i18 * i24, 1073741824), iMakeMeasureSpec);
                iMax2 = Math.max(iMax2, i18);
                if (layoutParams2.d) {
                    i27++;
                }
                if (layoutParams2.f478a) {
                    z13 = true;
                }
                i22 -= i18;
                iMax = Math.max(iMax, childAt.getMeasuredHeight());
                if (i18 == 1) {
                    j10 |= 1 << i26;
                }
                i25 = i30;
            }
            i26++;
            size3 = i28;
            i20 = i29;
            paddingBottom = i17;
            mode = i16;
        }
        int i32 = mode;
        int i33 = i20;
        int i34 = size3;
        boolean z16 = z13 && i25 == 2;
        boolean z17 = false;
        while (i27 > 0 && i22 > 0) {
            int i35 = Integer.MAX_VALUE;
            int i36 = 0;
            int i37 = 0;
            long j11 = 0;
            while (i37 < childCount2) {
                LayoutParams layoutParams4 = (LayoutParams) getChildAt(i37).getLayoutParams();
                boolean z18 = z17;
                if (layoutParams4.d) {
                    int i38 = layoutParams4.f479b;
                    if (i38 < i35) {
                        j11 = 1 << i37;
                        i35 = i38;
                        i36 = 1;
                    } else if (i38 == i35) {
                        j11 |= 1 << i37;
                        i36++;
                    }
                }
                i37++;
                z17 = z18;
            }
            z7 = z17;
            j10 |= j11;
            if (i36 > i22) {
                break;
            }
            int i39 = i35 + 1;
            int i40 = 0;
            while (i40 < childCount2) {
                View childAt2 = getChildAt(i40);
                LayoutParams layoutParams5 = (LayoutParams) childAt2.getLayoutParams();
                int i41 = iMax;
                int i42 = childMeasureSpec;
                int i43 = childCount2;
                long j12 = 1 << i40;
                if ((j11 & j12) != 0) {
                    if (z16 && layoutParams5.f481e) {
                        r42 = 1;
                        r42 = 1;
                        if (i22 == 1) {
                            childAt2.setPadding(i11 + i24, 0, i11, 0);
                        }
                    } else {
                        r42 = 1;
                    }
                    layoutParams5.f479b += r42;
                    layoutParams5.f = r42;
                    i22--;
                } else if (layoutParams5.f479b == i39) {
                    j10 |= j12;
                }
                i40++;
                childMeasureSpec = i42;
                iMax = i41;
                childCount2 = i43;
            }
            z17 = true;
        }
        z7 = z17;
        int i44 = iMax;
        int i45 = childMeasureSpec;
        int i46 = childCount2;
        boolean z19 = !z13 && i25 == 1;
        if (i22 <= 0 || j10 == 0 || (i22 >= i25 - 1 && !z19 && iMax2 <= 1)) {
            i12 = i46;
            z10 = z7;
        } else {
            float fBitCount = Long.bitCount(j10);
            if (!z19) {
                if ((j10 & 1) != 0 && !((LayoutParams) getChildAt(0).getLayoutParams()).f481e) {
                    fBitCount -= 0.5f;
                }
                int i47 = i46 - 1;
                if ((j10 & (1 << i47)) != 0 && !((LayoutParams) getChildAt(i47).getLayoutParams()).f481e) {
                    fBitCount -= 0.5f;
                }
            }
            int i48 = fBitCount > 0.0f ? (int) ((i22 * i24) / fBitCount) : 0;
            boolean z20 = z7;
            i12 = i46;
            for (int i49 = 0; i49 < i12; i49++) {
                if ((j10 & (1 << i49)) != 0) {
                    View childAt3 = getChildAt(i49);
                    LayoutParams layoutParams6 = (LayoutParams) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        layoutParams6.f480c = i48;
                        layoutParams6.f = true;
                        if (i49 == 0 && !layoutParams6.f481e) {
                            ((LinearLayout.LayoutParams) layoutParams6).leftMargin = (-i48) / 2;
                        }
                        z20 = true;
                    } else {
                        if (layoutParams6.f478a) {
                            layoutParams6.f480c = i48;
                            layoutParams6.f = true;
                            ((LinearLayout.LayoutParams) layoutParams6).rightMargin = (-i48) / 2;
                            z20 = true;
                        } else {
                            if (i49 != 0) {
                                ((LinearLayout.LayoutParams) layoutParams6).leftMargin = i48 / 2;
                            }
                            if (i49 != i12 - 1) {
                                ((LinearLayout.LayoutParams) layoutParams6).rightMargin = i48 / 2;
                            }
                        }
                    }
                }
            }
            z10 = z20;
        }
        if (z10) {
            int i50 = 0;
            while (i50 < i12) {
                View childAt4 = getChildAt(i50);
                LayoutParams layoutParams7 = (LayoutParams) childAt4.getLayoutParams();
                if (layoutParams7.f) {
                    i15 = i45;
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((layoutParams7.f479b * i24) + layoutParams7.f480c, 1073741824), i15);
                } else {
                    i15 = i45;
                }
                i50++;
                i45 = i15;
            }
        }
        if (i32 != 1073741824) {
            i14 = i33;
            i13 = i44;
        } else {
            i13 = i34;
            i14 = i33;
        }
        setMeasuredDimension(i14, i13);
    }

    public void setExpandedActionViewsExclusive(boolean z7) {
        this.f471t.f755r = z7;
    }

    public void setOnMenuItemClickListener(n nVar) {
        this.A = nVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        k kVar = this.f471t;
        i iVar = kVar.f747j;
        if (iVar != null) {
            iVar.setImageDrawable(drawable);
        } else {
            kVar.f749l = true;
            kVar.f748k = drawable;
        }
    }

    public void setOverflowReserved(boolean z7) {
        this.f470s = z7;
    }

    public void setPopupTheme(int i6) {
        if (this.f469r != i6) {
            this.f469r = i6;
            if (i6 == 0) {
                this.f468q = getContext();
            } else {
                this.f468q = new ContextThemeWrapper(getContext(), i6);
            }
        }
    }

    public void setPresenter(k kVar) {
        this.f471t = kVar;
        kVar.f7548h = this;
        this.f467p = kVar.f7545c;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }
}
