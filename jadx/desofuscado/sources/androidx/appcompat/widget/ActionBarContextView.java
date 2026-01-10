package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ActionBarContextView extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    public final a f424a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f425b;

    /* renamed from: c, reason: collision with root package name */
    public ActionMenuView f426c;
    public k d;

    /* renamed from: e, reason: collision with root package name */
    public int f427e;
    public n0.a1 f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f428g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f429h;

    /* renamed from: i, reason: collision with root package name */
    public CharSequence f430i;

    /* renamed from: j, reason: collision with root package name */
    public CharSequence f431j;

    /* renamed from: k, reason: collision with root package name */
    public View f432k;

    /* renamed from: l, reason: collision with root package name */
    public View f433l;

    /* renamed from: m, reason: collision with root package name */
    public View f434m;

    /* renamed from: n, reason: collision with root package name */
    public LinearLayout f435n;

    /* renamed from: o, reason: collision with root package name */
    public TextView f436o;

    /* renamed from: p, reason: collision with root package name */
    public TextView f437p;

    /* renamed from: q, reason: collision with root package name */
    public final int f438q;

    /* renamed from: r, reason: collision with root package name */
    public final int f439r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f440s;

    /* renamed from: t, reason: collision with root package name */
    public final int f441t;

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.actionModeStyle);
    }

    public static int f(View view, int i6, int i10) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE), i10);
        return Math.max(0, i6 - view.getMeasuredWidth());
    }

    public static int g(int i6, int i10, int i11, View view, boolean z7) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i12 = ((i11 - measuredHeight) / 2) + i10;
        if (z7) {
            view.layout(i6 - measuredWidth, i12, i6, measuredHeight + i12);
        } else {
            view.layout(i6, i12, i6 + measuredWidth, measuredHeight + i12);
        }
        return z7 ? -measuredWidth : measuredWidth;
    }

    public final void c(j.a aVar) {
        int i6 = 1;
        View view = this.f432k;
        if (view == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.f441t, (ViewGroup) this, false);
            this.f432k = viewInflate;
            addView(viewInflate);
        } else if (view.getParent() == null) {
            addView(this.f432k);
        }
        View viewFindViewById = this.f432k.findViewById(R.id.action_mode_close_button);
        this.f433l = viewFindViewById;
        viewFindViewById.setOnClickListener(new androidx.appcompat.app.a(i6, aVar));
        k.l lVarC = aVar.c();
        k kVar = this.d;
        if (kVar != null) {
            kVar.c();
            e eVar = kVar.f758u;
            if (eVar != null && eVar.b()) {
                eVar.f7674i.dismiss();
            }
        }
        k kVar2 = new k(getContext());
        this.d = kVar2;
        kVar2.f750m = true;
        kVar2.f751n = true;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        lVarC.b(this.d, this.f425b);
        k kVar3 = this.d;
        k.a0 a0Var = kVar3.f7548h;
        if (a0Var == null) {
            k.a0 a0Var2 = (k.a0) kVar3.d.inflate(kVar3.f, (ViewGroup) this, false);
            kVar3.f7548h = a0Var2;
            a0Var2.d(kVar3.f7545c);
            kVar3.j(true);
        }
        k.a0 a0Var3 = kVar3.f7548h;
        if (a0Var != a0Var3) {
            ((ActionMenuView) a0Var3).setPresenter(kVar3);
        }
        ActionMenuView actionMenuView = (ActionMenuView) a0Var3;
        this.f426c = actionMenuView;
        WeakHashMap weakHashMap = n0.s0.f8353a;
        actionMenuView.setBackground(null);
        addView(this.f426c, layoutParams);
    }

    public final void d() {
        if (this.f435n == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f435n = linearLayout;
            this.f436o = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.f437p = (TextView) this.f435n.findViewById(R.id.action_bar_subtitle);
            int i6 = this.f438q;
            if (i6 != 0) {
                this.f436o.setTextAppearance(getContext(), i6);
            }
            int i10 = this.f439r;
            if (i10 != 0) {
                this.f437p.setTextAppearance(getContext(), i10);
            }
        }
        this.f436o.setText(this.f430i);
        this.f437p.setText(this.f431j);
        boolean zIsEmpty = TextUtils.isEmpty(this.f430i);
        boolean zIsEmpty2 = TextUtils.isEmpty(this.f431j);
        this.f437p.setVisibility(!zIsEmpty2 ? 0 : 8);
        this.f435n.setVisibility((zIsEmpty && zIsEmpty2) ? 8 : 0);
        if (this.f435n.getParent() == null) {
            addView(this.f435n);
        }
    }

    public final void e() {
        removeAllViews();
        this.f434m = null;
        this.f426c = null;
        this.d = null;
        View view = this.f433l;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public int getAnimatedVisibility() {
        return this.f != null ? this.f424a.f660b : getVisibility();
    }

    public int getContentHeight() {
        return this.f427e;
    }

    public CharSequence getSubtitle() {
        return this.f431j;
    }

    public CharSequence getTitle() {
        return this.f430i;
    }

    @Override // android.view.View
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public final void setVisibility(int i6) {
        if (i6 != getVisibility()) {
            n0.a1 a1Var = this.f;
            if (a1Var != null) {
                a1Var.b();
            }
            super.setVisibility(i6);
        }
    }

    public final n0.a1 i(int i6, long j10) {
        n0.a1 a1Var = this.f;
        if (a1Var != null) {
            a1Var.b();
        }
        a aVar = this.f424a;
        if (i6 != 0) {
            n0.a1 a1VarA = n0.s0.a(this);
            a1VarA.a(0.0f);
            a1VarA.c(j10);
            ((ActionBarContextView) aVar.f661c).f = a1VarA;
            aVar.f660b = i6;
            a1VarA.d(aVar);
            return a1VarA;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        n0.a1 a1VarA2 = n0.s0.a(this);
        a1VarA2.a(1.0f);
        a1VarA2.c(j10);
        ((ActionBarContextView) aVar.f661c).f = a1VarA2;
        aVar.f660b = i6;
        a1VarA2.d(aVar);
        return a1VarA2;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, e.a.f6347a, R.attr.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(13, 0));
        typedArrayObtainStyledAttributes.recycle();
        k kVar = this.d;
        if (kVar != null) {
            Configuration configuration2 = kVar.f7544b.getResources().getConfiguration();
            int i6 = configuration2.screenWidthDp;
            int i10 = configuration2.screenHeightDp;
            kVar.f754q = (configuration2.smallestScreenWidthDp > 600 || i6 > 600 || (i6 > 960 && i10 > 720) || (i6 > 720 && i10 > 960)) ? 5 : (i6 >= 500 || (i6 > 640 && i10 > 480) || (i6 > 480 && i10 > 640)) ? 4 : i6 >= 360 ? 3 : 2;
            k.l lVar = kVar.f7545c;
            if (lVar != null) {
                lVar.p(true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        k kVar = this.d;
        if (kVar != null) {
            kVar.c();
            e eVar = this.d.f758u;
            if (eVar == null || !eVar.b()) {
                return;
            }
            eVar.f7674i.dismiss();
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f429h = false;
        }
        if (!this.f429h) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.f429h = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f429h = false;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        boolean zA = c4.a(this);
        int paddingRight = zA ? (i11 - i6) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i12 - i10) - getPaddingTop()) - getPaddingBottom();
        View view = this.f432k;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f432k.getLayoutParams();
            int i13 = zA ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i14 = zA ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int i15 = zA ? paddingRight - i13 : paddingRight + i13;
            int iG = g(i15, paddingTop, paddingTop2, this.f432k, zA) + i15;
            paddingRight = zA ? iG - i14 : iG + i14;
        }
        LinearLayout linearLayout = this.f435n;
        if (linearLayout != null && this.f434m == null && linearLayout.getVisibility() != 8) {
            paddingRight += g(paddingRight, paddingTop, paddingTop2, this.f435n, zA);
        }
        View view2 = this.f434m;
        if (view2 != null) {
            g(paddingRight, paddingTop, paddingTop2, view2, zA);
        }
        int paddingLeft = zA ? getPaddingLeft() : (i11 - i6) - getPaddingRight();
        ActionMenuView actionMenuView = this.f426c;
        if (actionMenuView != null) {
            g(paddingLeft, paddingTop, paddingTop2, actionMenuView, !zA);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i6, int i10) {
        if (View.MeasureSpec.getMode(i6) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_width=\"match_parent\" (or fill_parent)"));
        }
        if (View.MeasureSpec.getMode(i10) == 0) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_height=\"wrap_content\""));
        }
        int size = View.MeasureSpec.getSize(i6);
        int size2 = this.f427e;
        if (size2 <= 0) {
            size2 = View.MeasureSpec.getSize(i10);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingBottom;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        View view = this.f432k;
        if (view != null) {
            int iF = f(view, paddingLeft, iMakeMeasureSpec);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f432k.getLayoutParams();
            paddingLeft = iF - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f426c;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = f(this.f426c, paddingLeft, iMakeMeasureSpec);
        }
        LinearLayout linearLayout = this.f435n;
        if (linearLayout != null && this.f434m == null) {
            if (this.f440s) {
                this.f435n.measure(View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.f435n.getMeasuredWidth();
                boolean z7 = measuredWidth <= paddingLeft;
                if (z7) {
                    paddingLeft -= measuredWidth;
                }
                this.f435n.setVisibility(z7 ? 0 : 8);
            } else {
                paddingLeft = f(linearLayout, paddingLeft, iMakeMeasureSpec);
            }
        }
        View view2 = this.f434m;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i11 = layoutParams.width;
            int i12 = i11 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i11 >= 0) {
                paddingLeft = Math.min(i11, paddingLeft);
            }
            int i13 = layoutParams.height;
            int i14 = i13 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i13 >= 0) {
                iMin = Math.min(i13, iMin);
            }
            this.f434m.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i12), View.MeasureSpec.makeMeasureSpec(iMin, i14));
        }
        if (this.f427e > 0) {
            setMeasuredDimension(size, size2);
            return;
        }
        int childCount = getChildCount();
        int i15 = 0;
        for (int i16 = 0; i16 < childCount; i16++) {
            int measuredHeight = getChildAt(i16).getMeasuredHeight() + paddingBottom;
            if (measuredHeight > i15) {
                i15 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i15);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f428g = false;
        }
        if (!this.f428g) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f428g = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f428g = false;
        }
        return true;
    }

    public void setContentHeight(int i6) {
        this.f427e = i6;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f434m;
        if (view2 != null) {
            removeView(view2);
        }
        this.f434m = view;
        if (view != null && (linearLayout = this.f435n) != null) {
            removeView(linearLayout);
            this.f435n = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f431j = charSequence;
        d();
    }

    public void setTitle(CharSequence charSequence) {
        this.f430i = charSequence;
        d();
        n0.s0.r(this, charSequence);
    }

    public void setTitleOptional(boolean z7) {
        if (z7 != this.f440s) {
            requestLayout();
        }
        this.f440s = z7;
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i6) {
        int resourceId;
        super(context, attributeSet, i6);
        this.f424a = new a(this);
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f425b = context;
        } else {
            this.f425b = new ContextThemeWrapper(context, typedValue.resourceId);
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.a.d, i6, 0);
        Drawable drawable = (!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(0) : com.bumptech.glide.c.h(context, resourceId);
        WeakHashMap weakHashMap = n0.s0.f8353a;
        setBackground(drawable);
        this.f438q = typedArrayObtainStyledAttributes.getResourceId(5, 0);
        this.f439r = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        this.f427e = typedArrayObtainStyledAttributes.getLayoutDimension(3, 0);
        this.f441t = typedArrayObtainStyledAttributes.getResourceId(2, R.layout.abc_action_mode_close_item_material);
        typedArrayObtainStyledAttributes.recycle();
    }
}
