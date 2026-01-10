package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.app.ActionBar$LayoutParams;
import androidx.customview.view.AbsSavedState;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class Toolbar extends ViewGroup {
    public ColorStateList A;
    public boolean B;
    public boolean C;
    public final ArrayList D;
    public final ArrayList E;
    public final int[] F;
    public final l6.h G;
    public ArrayList H;
    public r3 I;
    public final o3 J;
    public v3 K;
    public k L;
    public q3 M;
    public androidx.appcompat.app.r0 N;
    public androidx.appcompat.app.q0 O;
    public boolean P;
    public OnBackInvokedCallback Q;
    public OnBackInvokedDispatcher R;
    public boolean S;
    public final a.f T;

    /* renamed from: a, reason: collision with root package name */
    public ActionMenuView f630a;

    /* renamed from: b, reason: collision with root package name */
    public AppCompatTextView f631b;

    /* renamed from: c, reason: collision with root package name */
    public AppCompatTextView f632c;
    public AppCompatImageButton d;

    /* renamed from: e, reason: collision with root package name */
    public AppCompatImageView f633e;
    public final Drawable f;

    /* renamed from: g, reason: collision with root package name */
    public final CharSequence f634g;

    /* renamed from: h, reason: collision with root package name */
    public AppCompatImageButton f635h;

    /* renamed from: i, reason: collision with root package name */
    public View f636i;

    /* renamed from: j, reason: collision with root package name */
    public Context f637j;

    /* renamed from: k, reason: collision with root package name */
    public int f638k;

    /* renamed from: l, reason: collision with root package name */
    public int f639l;

    /* renamed from: m, reason: collision with root package name */
    public int f640m;

    /* renamed from: n, reason: collision with root package name */
    public final int f641n;

    /* renamed from: o, reason: collision with root package name */
    public final int f642o;

    /* renamed from: p, reason: collision with root package name */
    public int f643p;

    /* renamed from: q, reason: collision with root package name */
    public int f644q;

    /* renamed from: r, reason: collision with root package name */
    public int f645r;

    /* renamed from: s, reason: collision with root package name */
    public int f646s;

    /* renamed from: t, reason: collision with root package name */
    public n2 f647t;

    /* renamed from: u, reason: collision with root package name */
    public int f648u;

    /* renamed from: v, reason: collision with root package name */
    public int f649v;

    /* renamed from: w, reason: collision with root package name */
    public final int f650w;

    /* renamed from: x, reason: collision with root package name */
    public CharSequence f651x;

    /* renamed from: y, reason: collision with root package name */
    public CharSequence f652y;

    /* renamed from: z, reason: collision with root package name */
    public ColorStateList f653z;

    /* compiled from: MyApplication */
    public static class LayoutParams extends ActionBar$LayoutParams {

        /* renamed from: b, reason: collision with root package name */
        public int f654b;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f654b = 0;
        }
    }

    /* compiled from: MyApplication */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new s3();

        /* renamed from: c, reason: collision with root package name */
        public int f655c;
        public boolean d;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f655c = parcel.readInt();
            this.d = parcel.readInt() != 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i6) {
            super.writeToParcel(parcel, i6);
            parcel.writeInt(this.f655c);
            parcel.writeInt(this.d ? 1 : 0);
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i6 = 0; i6 < menu.size(); i6++) {
            arrayList.add(menu.getItem(i6));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new j.i(getContext());
    }

    public static LayoutParams h() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.f654b = 0;
        layoutParams.f213a = 8388627;
        return layoutParams;
    }

    public static LayoutParams i(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            LayoutParams layoutParams3 = new LayoutParams(layoutParams2);
            layoutParams3.f654b = 0;
            layoutParams3.f654b = layoutParams2.f654b;
            return layoutParams3;
        }
        if (layoutParams instanceof ActionBar$LayoutParams) {
            LayoutParams layoutParams4 = new LayoutParams((ActionBar$LayoutParams) layoutParams);
            layoutParams4.f654b = 0;
            return layoutParams4;
        }
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            LayoutParams layoutParams5 = new LayoutParams(layoutParams);
            layoutParams5.f654b = 0;
            return layoutParams5;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        LayoutParams layoutParams6 = new LayoutParams(marginLayoutParams);
        layoutParams6.f654b = 0;
        ((ViewGroup.MarginLayoutParams) layoutParams6).leftMargin = marginLayoutParams.leftMargin;
        ((ViewGroup.MarginLayoutParams) layoutParams6).topMargin = marginLayoutParams.topMargin;
        ((ViewGroup.MarginLayoutParams) layoutParams6).rightMargin = marginLayoutParams.rightMargin;
        ((ViewGroup.MarginLayoutParams) layoutParams6).bottomMargin = marginLayoutParams.bottomMargin;
        return layoutParams6;
    }

    public static int l(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginEnd() + marginLayoutParams.getMarginStart();
    }

    public static int m(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final void a(int i6, ArrayList arrayList) {
        WeakHashMap weakHashMap = n0.s0.f8353a;
        boolean z7 = getLayoutDirection() == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i6, getLayoutDirection());
        arrayList.clear();
        if (!z7) {
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = getChildAt(i10);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f654b == 0 && u(childAt) && j(layoutParams.f213a) == absoluteGravity) {
                    arrayList.add(childAt);
                }
            }
            return;
        }
        for (int i11 = childCount - 1; i11 >= 0; i11--) {
            View childAt2 = getChildAt(i11);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.f654b == 0 && u(childAt2) && j(layoutParams2.f213a) == absoluteGravity) {
                arrayList.add(childAt2);
            }
        }
    }

    public final void b(View view, boolean z7) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        LayoutParams layoutParamsH = layoutParams == null ? h() : !checkLayoutParams(layoutParams) ? i(layoutParams) : (LayoutParams) layoutParams;
        layoutParamsH.f654b = 1;
        if (!z7 || this.f636i == null) {
            addView(view, layoutParamsH);
        } else {
            view.setLayoutParams(layoutParamsH);
            this.E.add(view);
        }
    }

    public final void c() {
        if (this.f635h == null) {
            AppCompatImageButton appCompatImageButton = new AppCompatImageButton(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.f635h = appCompatImageButton;
            appCompatImageButton.setImageDrawable(this.f);
            this.f635h.setContentDescription(this.f634g);
            LayoutParams layoutParamsH = h();
            layoutParamsH.f213a = (this.f641n & 112) | 8388611;
            layoutParamsH.f654b = 2;
            this.f635h.setLayoutParams(layoutParamsH);
            this.f635h.setOnClickListener(new androidx.appcompat.app.a(2, this));
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    public final void d() {
        if (this.f647t == null) {
            n2 n2Var = new n2();
            n2Var.f787a = 0;
            n2Var.f788b = 0;
            n2Var.f789c = Integer.MIN_VALUE;
            n2Var.d = Integer.MIN_VALUE;
            n2Var.f790e = 0;
            n2Var.f = 0;
            n2Var.f791g = false;
            n2Var.f792h = false;
            this.f647t = n2Var;
        }
    }

    public final void e() {
        f();
        ActionMenuView actionMenuView = this.f630a;
        if (actionMenuView.f467p == null) {
            k.l lVar = (k.l) actionMenuView.getMenu();
            if (this.M == null) {
                this.M = new q3(this);
            }
            this.f630a.setExpandedActionViewsExclusive(true);
            lVar.b(this.M, this.f637j);
            w();
        }
    }

    public final void f() {
        if (this.f630a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext(), null);
            this.f630a = actionMenuView;
            actionMenuView.setPopupTheme(this.f638k);
            this.f630a.setOnMenuItemClickListener(this.J);
            ActionMenuView actionMenuView2 = this.f630a;
            androidx.appcompat.app.r0 r0Var = this.N;
            o3 o3Var = new o3(this);
            actionMenuView2.f472u = r0Var;
            actionMenuView2.f473v = o3Var;
            LayoutParams layoutParamsH = h();
            layoutParamsH.f213a = (this.f641n & 112) | 8388613;
            this.f630a.setLayoutParams(layoutParamsH);
            b(this.f630a, false);
        }
    }

    public final void g() {
        if (this.d == null) {
            this.d = new AppCompatImageButton(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            LayoutParams layoutParamsH = h();
            layoutParamsH.f213a = (this.f641n & 112) | 8388611;
            this.d.setLayoutParams(layoutParamsH);
        }
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return h();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return i(layoutParams);
    }

    public CharSequence getCollapseContentDescription() {
        AppCompatImageButton appCompatImageButton = this.f635h;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        AppCompatImageButton appCompatImageButton = this.f635h;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        n2 n2Var = this.f647t;
        if (n2Var != null) {
            return n2Var.f791g ? n2Var.f787a : n2Var.f788b;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i6 = this.f649v;
        return i6 != Integer.MIN_VALUE ? i6 : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        n2 n2Var = this.f647t;
        if (n2Var != null) {
            return n2Var.f787a;
        }
        return 0;
    }

    public int getContentInsetRight() {
        n2 n2Var = this.f647t;
        if (n2Var != null) {
            return n2Var.f788b;
        }
        return 0;
    }

    public int getContentInsetStart() {
        n2 n2Var = this.f647t;
        if (n2Var != null) {
            return n2Var.f791g ? n2Var.f788b : n2Var.f787a;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i6 = this.f648u;
        return i6 != Integer.MIN_VALUE ? i6 : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        k.l lVar;
        ActionMenuView actionMenuView = this.f630a;
        return (actionMenuView == null || (lVar = actionMenuView.f467p) == null || !lVar.hasVisibleItems()) ? getContentInsetEnd() : Math.max(getContentInsetEnd(), Math.max(this.f649v, 0));
    }

    public int getCurrentContentInsetLeft() {
        WeakHashMap weakHashMap = n0.s0.f8353a;
        return getLayoutDirection() == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        WeakHashMap weakHashMap = n0.s0.f8353a;
        return getLayoutDirection() == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f648u, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        AppCompatImageView appCompatImageView = this.f633e;
        if (appCompatImageView != null) {
            return appCompatImageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        AppCompatImageView appCompatImageView = this.f633e;
        if (appCompatImageView != null) {
            return appCompatImageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        e();
        return this.f630a.getMenu();
    }

    public View getNavButtonView() {
        return this.d;
    }

    public CharSequence getNavigationContentDescription() {
        AppCompatImageButton appCompatImageButton = this.d;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        AppCompatImageButton appCompatImageButton = this.d;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getDrawable();
        }
        return null;
    }

    public k getOuterActionMenuPresenter() {
        return this.L;
    }

    public Drawable getOverflowIcon() {
        e();
        return this.f630a.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.f637j;
    }

    public int getPopupTheme() {
        return this.f638k;
    }

    public CharSequence getSubtitle() {
        return this.f652y;
    }

    public final TextView getSubtitleTextView() {
        return this.f632c;
    }

    public CharSequence getTitle() {
        return this.f651x;
    }

    public int getTitleMarginBottom() {
        return this.f646s;
    }

    public int getTitleMarginEnd() {
        return this.f644q;
    }

    public int getTitleMarginStart() {
        return this.f643p;
    }

    public int getTitleMarginTop() {
        return this.f645r;
    }

    public final TextView getTitleTextView() {
        return this.f631b;
    }

    public j1 getWrapper() {
        if (this.K == null) {
            this.K = new v3(this, true);
        }
        return this.K;
    }

    public final int j(int i6) {
        WeakHashMap weakHashMap = n0.s0.f8353a;
        int layoutDirection = getLayoutDirection();
        int absoluteGravity = Gravity.getAbsoluteGravity(i6, layoutDirection) & 7;
        return (absoluteGravity == 1 || absoluteGravity == 3 || absoluteGravity == 5) ? absoluteGravity : layoutDirection == 1 ? 5 : 3;
    }

    public final int k(int i6, View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i10 = i6 > 0 ? (measuredHeight - i6) / 2 : 0;
        int i11 = layoutParams.f213a & 112;
        if (i11 != 16 && i11 != 48 && i11 != 80) {
            i11 = this.f650w & 112;
        }
        if (i11 == 48) {
            return getPaddingTop() - i10;
        }
        if (i11 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - i10;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i12 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        if (iMax < i12) {
            iMax = i12;
        } else {
            int i13 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i14 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            if (i13 < i14) {
                iMax = Math.max(0, iMax - (i14 - i13));
            }
        }
        return paddingTop + iMax;
    }

    public final void n() {
        Iterator it = this.H.iterator();
        while (it.hasNext()) {
            getMenu().removeItem(((MenuItem) it.next()).getItemId());
        }
        getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        getMenuInflater();
        Iterator it2 = ((CopyOnWriteArrayList) this.G.f8017c).iterator();
        if (it2.hasNext()) {
            throw a.e.l(it2);
        }
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.H = currentMenuItems2;
    }

    public final boolean o(View view) {
        return view.getParent() == this || this.E.contains(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        w();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.T);
        w();
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.C = false;
        }
        if (!this.C) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.C = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.C = false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x029b A[LOOP:0: B:106:0x0299->B:107:0x029b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02b8 A[LOOP:1: B:109:0x02b6->B:110:0x02b8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02d6 A[LOOP:2: B:112:0x02d4->B:113:0x02d6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0325 A[LOOP:3: B:121:0x0323->B:122:0x0325, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0222  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 822
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    public final void onMeasure(int i6, int i10) {
        int iL;
        int iMax;
        int iCombineMeasuredStates;
        int iL2;
        int iCombineMeasuredStates2;
        int iMax2;
        int iM;
        boolean zA = c4.a(this);
        int i11 = !zA ? 1 : 0;
        int i12 = 0;
        if (u(this.d)) {
            t(this.d, i6, 0, i10, this.f642o);
            iL = l(this.d) + this.d.getMeasuredWidth();
            iMax = Math.max(0, m(this.d) + this.d.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(0, this.d.getMeasuredState());
        } else {
            iL = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (u(this.f635h)) {
            t(this.f635h, i6, 0, i10, this.f642o);
            iL = l(this.f635h) + this.f635h.getMeasuredWidth();
            iMax = Math.max(iMax, m(this.f635h) + this.f635h.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f635h.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = Math.max(currentContentInsetStart, iL);
        int iMax4 = Math.max(0, currentContentInsetStart - iL);
        int[] iArr = this.F;
        iArr[zA ? 1 : 0] = iMax4;
        if (u(this.f630a)) {
            t(this.f630a, i6, iMax3, i10, this.f642o);
            iL2 = l(this.f630a) + this.f630a.getMeasuredWidth();
            iMax = Math.max(iMax, m(this.f630a) + this.f630a.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f630a.getMeasuredState());
        } else {
            iL2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax5 = iMax3 + Math.max(currentContentInsetEnd, iL2);
        iArr[i11] = Math.max(0, currentContentInsetEnd - iL2);
        if (u(this.f636i)) {
            iMax5 += s(this.f636i, i6, iMax5, i10, 0, iArr);
            iMax = Math.max(iMax, m(this.f636i) + this.f636i.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f636i.getMeasuredState());
        }
        if (u(this.f633e)) {
            iMax5 += s(this.f633e, i6, iMax5, i10, 0, iArr);
            iMax = Math.max(iMax, m(this.f633e) + this.f633e.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f633e.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (((LayoutParams) childAt.getLayoutParams()).f654b == 0 && u(childAt)) {
                iMax5 += s(childAt, i6, iMax5, i10, 0, iArr);
                iMax = Math.max(iMax, m(childAt) + childAt.getMeasuredHeight());
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
            }
        }
        int i14 = this.f645r + this.f646s;
        int i15 = this.f643p + this.f644q;
        if (u(this.f631b)) {
            s(this.f631b, i6, iMax5 + i15, i10, i14, iArr);
            int iL3 = l(this.f631b) + this.f631b.getMeasuredWidth();
            iM = m(this.f631b) + this.f631b.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f631b.getMeasuredState());
            iMax2 = iL3;
        } else {
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
            iM = 0;
        }
        if (u(this.f632c)) {
            iMax2 = Math.max(iMax2, s(this.f632c, i6, iMax5 + i15, i10, iM + i14, iArr));
            iM += m(this.f632c) + this.f632c.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.f632c.getMeasuredState());
        }
        int iMax6 = Math.max(iMax, iM);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop() + iMax6;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight + iMax5 + iMax2, getSuggestedMinimumWidth()), i6, (-16777216) & iCombineMeasuredStates2);
        int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i10, iCombineMeasuredStates2 << 16);
        if (!this.P) {
            i12 = iResolveSizeAndState2;
            break;
        }
        int childCount2 = getChildCount();
        for (int i16 = 0; i16 < childCount2; i16++) {
            View childAt2 = getChildAt(i16);
            if (u(childAt2) && childAt2.getMeasuredWidth() > 0 && childAt2.getMeasuredHeight() > 0) {
                i12 = iResolveSizeAndState2;
                break;
            }
        }
        setMeasuredDimension(iResolveSizeAndState, i12);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f1319a);
        ActionMenuView actionMenuView = this.f630a;
        k.l lVar = actionMenuView != null ? actionMenuView.f467p : null;
        int i6 = savedState.f655c;
        if (i6 != 0 && this.M != null && lVar != null && (menuItemFindItem = lVar.findItem(i6)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (savedState.d) {
            a.f fVar = this.T;
            removeCallbacks(fVar);
            post(fVar);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i6) {
        super.onRtlPropertiesChanged(i6);
        d();
        n2 n2Var = this.f647t;
        boolean z7 = i6 == 1;
        if (z7 == n2Var.f791g) {
            return;
        }
        n2Var.f791g = z7;
        if (!n2Var.f792h) {
            n2Var.f787a = n2Var.f790e;
            n2Var.f788b = n2Var.f;
            return;
        }
        if (z7) {
            int i10 = n2Var.d;
            if (i10 == Integer.MIN_VALUE) {
                i10 = n2Var.f790e;
            }
            n2Var.f787a = i10;
            int i11 = n2Var.f789c;
            if (i11 == Integer.MIN_VALUE) {
                i11 = n2Var.f;
            }
            n2Var.f788b = i11;
            return;
        }
        int i12 = n2Var.f789c;
        if (i12 == Integer.MIN_VALUE) {
            i12 = n2Var.f790e;
        }
        n2Var.f787a = i12;
        int i13 = n2Var.d;
        if (i13 == Integer.MIN_VALUE) {
            i13 = n2Var.f;
        }
        n2Var.f788b = i13;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        k.n nVar;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        q3 q3Var = this.M;
        if (q3Var != null && (nVar = q3Var.f814b) != null) {
            savedState.f655c = nVar.f7634a;
        }
        savedState.d = p();
        return savedState;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.B = false;
        }
        if (!this.B) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.B = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.B = false;
        }
        return true;
    }

    public final boolean p() {
        k kVar;
        ActionMenuView actionMenuView = this.f630a;
        return (actionMenuView == null || (kVar = actionMenuView.f471t) == null || !kVar.h()) ? false : true;
    }

    public final int q(View view, int i6, int i10, int[] iArr) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i11 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin - iArr[0];
        int iMax = Math.max(0, i11) + i6;
        iArr[0] = Math.max(0, -i11);
        int iK = k(i10, view);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, iK, iMax + measuredWidth, view.getMeasuredHeight() + iK);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + iMax;
    }

    public final int r(View view, int i6, int i10, int[] iArr) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i11 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin - iArr[1];
        int iMax = i6 - Math.max(0, i11);
        iArr[1] = Math.max(0, -i11);
        int iK = k(i10, view);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, iK, iMax, view.getMeasuredHeight() + iK);
        return iMax - (measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
    }

    public final int s(View view, int i6, int i10, int i11, int i12, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i13 = marginLayoutParams.leftMargin - iArr[0];
        int i14 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i14) + Math.max(0, i13);
        iArr[0] = Math.max(0, -i13);
        iArr[1] = Math.max(0, -i14);
        view.measure(ViewGroup.getChildMeasureSpec(i6, getPaddingRight() + getPaddingLeft() + iMax + i10, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i11, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i12, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    public void setBackInvokedCallbackEnabled(boolean z7) {
        if (this.S != z7) {
            this.S = z7;
            w();
        }
    }

    public void setCollapseContentDescription(int i6) {
        setCollapseContentDescription(i6 != 0 ? getContext().getText(i6) : null);
    }

    public void setCollapseIcon(int i6) {
        setCollapseIcon(com.bumptech.glide.c.h(getContext(), i6));
    }

    public void setCollapsible(boolean z7) {
        this.P = z7;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i6) {
        if (i6 < 0) {
            i6 = Integer.MIN_VALUE;
        }
        if (i6 != this.f649v) {
            this.f649v = i6;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i6) {
        if (i6 < 0) {
            i6 = Integer.MIN_VALUE;
        }
        if (i6 != this.f648u) {
            this.f648u = i6;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i6) {
        setLogo(com.bumptech.glide.c.h(getContext(), i6));
    }

    public void setLogoDescription(int i6) {
        setLogoDescription(getContext().getText(i6));
    }

    public void setNavigationContentDescription(int i6) {
        setNavigationContentDescription(i6 != 0 ? getContext().getText(i6) : null);
    }

    public void setNavigationIcon(int i6) {
        setNavigationIcon(com.bumptech.glide.c.h(getContext(), i6));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        g();
        this.d.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(r3 r3Var) {
        this.I = r3Var;
    }

    public void setOverflowIcon(Drawable drawable) {
        e();
        this.f630a.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i6) {
        if (this.f638k != i6) {
            this.f638k = i6;
            if (i6 == 0) {
                this.f637j = getContext();
            } else {
                this.f637j = new ContextThemeWrapper(getContext(), i6);
            }
        }
    }

    public void setSubtitle(int i6) {
        setSubtitle(getContext().getText(i6));
    }

    public void setSubtitleTextColor(int i6) {
        setSubtitleTextColor(ColorStateList.valueOf(i6));
    }

    public void setTitle(int i6) {
        setTitle(getContext().getText(i6));
    }

    public void setTitleMarginBottom(int i6) {
        this.f646s = i6;
        requestLayout();
    }

    public void setTitleMarginEnd(int i6) {
        this.f644q = i6;
        requestLayout();
    }

    public void setTitleMarginStart(int i6) {
        this.f643p = i6;
        requestLayout();
    }

    public void setTitleMarginTop(int i6) {
        this.f645r = i6;
        requestLayout();
    }

    public void setTitleTextColor(int i6) {
        setTitleTextColor(ColorStateList.valueOf(i6));
    }

    public final void t(View view, int i6, int i10, int i11, int i12) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i6, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i10, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i11, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i12 >= 0) {
            if (mode != 0) {
                i12 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i12);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public final boolean u(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    public final boolean v() {
        k kVar;
        ActionMenuView actionMenuView = this.f630a;
        return (actionMenuView == null || (kVar = actionMenuView.f471t) == null || !kVar.n()) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void w() {
        /*
            r4 = this;
            r0 = 0
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 33
            if (r1 < r2) goto L4f
            android.window.OnBackInvokedDispatcher r1 = androidx.appcompat.widget.p3.a(r4)
            androidx.appcompat.widget.q3 r2 = r4.M
            if (r2 == 0) goto L23
            k.n r2 = r2.f814b
            if (r2 == 0) goto L23
            if (r1 == 0) goto L23
            java.util.WeakHashMap r2 = n0.s0.f8353a
            boolean r2 = r4.isAttachedToWindow()
            if (r2 == 0) goto L23
            boolean r2 = r4.S
            if (r2 == 0) goto L23
            r2 = 1
            goto L24
        L23:
            r2 = 0
        L24:
            if (r2 == 0) goto L41
            android.window.OnBackInvokedDispatcher r3 = r4.R
            if (r3 != 0) goto L41
            android.window.OnBackInvokedCallback r2 = r4.Q
            if (r2 != 0) goto L39
            androidx.appcompat.widget.n3 r2 = new androidx.appcompat.widget.n3
            r2.<init>(r4, r0)
            android.window.OnBackInvokedCallback r0 = androidx.appcompat.widget.p3.b(r2)
            r4.Q = r0
        L39:
            android.window.OnBackInvokedCallback r0 = r4.Q
            androidx.appcompat.widget.p3.c(r1, r0)
            r4.R = r1
            goto L4f
        L41:
            if (r2 != 0) goto L4f
            android.window.OnBackInvokedDispatcher r0 = r4.R
            if (r0 == 0) goto L4f
            android.window.OnBackInvokedCallback r1 = r4.Q
            androidx.appcompat.widget.p3.d(r0, r1)
            r0 = 0
            r4.R = r0
        L4f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.w():void");
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f650w = 8388627;
        this.D = new ArrayList();
        this.E = new ArrayList();
        this.F = new int[2];
        this.G = new l6.h(new n3(this, 1));
        this.H = new ArrayList();
        this.J = new o3(this);
        this.T = new a.f(3, this);
        Context context2 = getContext();
        int[] iArr = e.a.f6370z;
        a1.b bVarC = a1.b.C(context2, attributeSet, iArr, i6);
        n0.s0.p(this, context, iArr, attributeSet, (TypedArray) bVarC.f48c, i6, 0);
        TypedArray typedArray = (TypedArray) bVarC.f48c;
        this.f639l = typedArray.getResourceId(28, 0);
        this.f640m = typedArray.getResourceId(19, 0);
        this.f650w = typedArray.getInteger(0, 8388627);
        this.f641n = typedArray.getInteger(2, 48);
        int dimensionPixelOffset = typedArray.getDimensionPixelOffset(22, 0);
        dimensionPixelOffset = typedArray.hasValue(27) ? typedArray.getDimensionPixelOffset(27, dimensionPixelOffset) : dimensionPixelOffset;
        this.f646s = dimensionPixelOffset;
        this.f645r = dimensionPixelOffset;
        this.f644q = dimensionPixelOffset;
        this.f643p = dimensionPixelOffset;
        int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(25, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.f643p = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = typedArray.getDimensionPixelOffset(24, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.f644q = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = typedArray.getDimensionPixelOffset(26, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.f645r = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = typedArray.getDimensionPixelOffset(23, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.f646s = dimensionPixelOffset5;
        }
        this.f642o = typedArray.getDimensionPixelSize(13, -1);
        int dimensionPixelOffset6 = typedArray.getDimensionPixelOffset(9, Integer.MIN_VALUE);
        int dimensionPixelOffset7 = typedArray.getDimensionPixelOffset(5, Integer.MIN_VALUE);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(7, 0);
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(8, 0);
        d();
        n2 n2Var = this.f647t;
        n2Var.f792h = false;
        if (dimensionPixelSize != Integer.MIN_VALUE) {
            n2Var.f790e = dimensionPixelSize;
            n2Var.f787a = dimensionPixelSize;
        }
        if (dimensionPixelSize2 != Integer.MIN_VALUE) {
            n2Var.f = dimensionPixelSize2;
            n2Var.f788b = dimensionPixelSize2;
        }
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            n2Var.a(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.f648u = typedArray.getDimensionPixelOffset(10, Integer.MIN_VALUE);
        this.f649v = typedArray.getDimensionPixelOffset(6, Integer.MIN_VALUE);
        this.f = bVarC.t(4);
        this.f634g = typedArray.getText(3);
        CharSequence text = typedArray.getText(21);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = typedArray.getText(18);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.f637j = getContext();
        setPopupTheme(typedArray.getResourceId(17, 0));
        Drawable drawableT = bVarC.t(16);
        if (drawableT != null) {
            setNavigationIcon(drawableT);
        }
        CharSequence text3 = typedArray.getText(15);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable drawableT2 = bVarC.t(11);
        if (drawableT2 != null) {
            setLogo(drawableT2);
        }
        CharSequence text4 = typedArray.getText(12);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        if (typedArray.hasValue(29)) {
            setTitleTextColor(bVarC.s(29));
        }
        if (typedArray.hasValue(20)) {
            setSubtitleTextColor(bVarC.s(20));
        }
        if (typedArray.hasValue(14)) {
            getMenuInflater().inflate(typedArray.getResourceId(14, 0), getMenu());
        }
        bVarC.F();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            c();
        }
        AppCompatImageButton appCompatImageButton = this.f635h;
        if (appCompatImageButton != null) {
            appCompatImageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            c();
            this.f635h.setImageDrawable(drawable);
        } else {
            AppCompatImageButton appCompatImageButton = this.f635h;
            if (appCompatImageButton != null) {
                appCompatImageButton.setImageDrawable(this.f);
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            if (this.f633e == null) {
                this.f633e = new AppCompatImageView(getContext(), null);
            }
            if (!o(this.f633e)) {
                b(this.f633e, true);
            }
        } else {
            AppCompatImageView appCompatImageView = this.f633e;
            if (appCompatImageView != null && o(appCompatImageView)) {
                removeView(this.f633e);
                this.E.remove(this.f633e);
            }
        }
        AppCompatImageView appCompatImageView2 = this.f633e;
        if (appCompatImageView2 != null) {
            appCompatImageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.f633e == null) {
            this.f633e = new AppCompatImageView(getContext(), null);
        }
        AppCompatImageView appCompatImageView = this.f633e;
        if (appCompatImageView != null) {
            appCompatImageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        AppCompatImageButton appCompatImageButton = this.d;
        if (appCompatImageButton != null) {
            appCompatImageButton.setContentDescription(charSequence);
            r4.b.L(this.d, charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            g();
            if (!o(this.d)) {
                b(this.d, true);
            }
        } else {
            AppCompatImageButton appCompatImageButton = this.d;
            if (appCompatImageButton != null && o(appCompatImageButton)) {
                removeView(this.d);
                this.E.remove(this.d);
            }
        }
        AppCompatImageButton appCompatImageButton2 = this.d;
        if (appCompatImageButton2 != null) {
            appCompatImageButton2.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            AppCompatTextView appCompatTextView = this.f632c;
            if (appCompatTextView != null && o(appCompatTextView)) {
                removeView(this.f632c);
                this.E.remove(this.f632c);
            }
        } else {
            if (this.f632c == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                this.f632c = appCompatTextView2;
                appCompatTextView2.setSingleLine();
                this.f632c.setEllipsize(TextUtils.TruncateAt.END);
                int i6 = this.f640m;
                if (i6 != 0) {
                    this.f632c.setTextAppearance(context, i6);
                }
                ColorStateList colorStateList = this.A;
                if (colorStateList != null) {
                    this.f632c.setTextColor(colorStateList);
                }
            }
            if (!o(this.f632c)) {
                b(this.f632c, true);
            }
        }
        AppCompatTextView appCompatTextView3 = this.f632c;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.f652y = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.A = colorStateList;
        AppCompatTextView appCompatTextView = this.f632c;
        if (appCompatTextView != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            AppCompatTextView appCompatTextView = this.f631b;
            if (appCompatTextView != null && o(appCompatTextView)) {
                removeView(this.f631b);
                this.E.remove(this.f631b);
            }
        } else {
            if (this.f631b == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                this.f631b = appCompatTextView2;
                appCompatTextView2.setSingleLine();
                this.f631b.setEllipsize(TextUtils.TruncateAt.END);
                int i6 = this.f639l;
                if (i6 != 0) {
                    this.f631b.setTextAppearance(context, i6);
                }
                ColorStateList colorStateList = this.f653z;
                if (colorStateList != null) {
                    this.f631b.setTextColor(colorStateList);
                }
            }
            if (!o(this.f631b)) {
                b(this.f631b, true);
            }
        }
        AppCompatTextView appCompatTextView3 = this.f631b;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.f651x = charSequence;
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.f653z = colorStateList;
        AppCompatTextView appCompatTextView = this.f631b;
        if (appCompatTextView != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }
}
