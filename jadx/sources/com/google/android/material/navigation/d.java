package com.google.android.material.navigation;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.s2;
import androidx.leanback.widget.n0;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import k.z;
import n0.s0;
import n0.w;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class d extends FrameLayout implements z {
    public static final int[] C = {R.attr.state_checked};
    public static final b D = new b();
    public static final c E = new c();
    public int A;
    public z5.a B;

    /* renamed from: a, reason: collision with root package name */
    public boolean f5104a;

    /* renamed from: b, reason: collision with root package name */
    public int f5105b;

    /* renamed from: c, reason: collision with root package name */
    public int f5106c;
    public float d;

    /* renamed from: e, reason: collision with root package name */
    public float f5107e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public int f5108g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f5109h;

    /* renamed from: i, reason: collision with root package name */
    public final FrameLayout f5110i;

    /* renamed from: j, reason: collision with root package name */
    public final View f5111j;

    /* renamed from: k, reason: collision with root package name */
    public final ImageView f5112k;

    /* renamed from: l, reason: collision with root package name */
    public final ViewGroup f5113l;

    /* renamed from: m, reason: collision with root package name */
    public final TextView f5114m;

    /* renamed from: n, reason: collision with root package name */
    public final TextView f5115n;

    /* renamed from: o, reason: collision with root package name */
    public int f5116o;

    /* renamed from: p, reason: collision with root package name */
    public k.n f5117p;

    /* renamed from: q, reason: collision with root package name */
    public ColorStateList f5118q;

    /* renamed from: r, reason: collision with root package name */
    public Drawable f5119r;

    /* renamed from: s, reason: collision with root package name */
    public Drawable f5120s;

    /* renamed from: t, reason: collision with root package name */
    public ValueAnimator f5121t;

    /* renamed from: u, reason: collision with root package name */
    public b f5122u;

    /* renamed from: v, reason: collision with root package name */
    public float f5123v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f5124w;

    /* renamed from: x, reason: collision with root package name */
    public int f5125x;

    /* renamed from: y, reason: collision with root package name */
    public int f5126y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f5127z;

    public d(Context context) {
        super(context);
        this.f5104a = false;
        this.f5116o = -1;
        this.f5122u = D;
        this.f5123v = 0.0f;
        this.f5124w = false;
        this.f5125x = 0;
        this.f5126y = 0;
        this.f5127z = false;
        this.A = 0;
        int i6 = 1;
        LayoutInflater.from(context).inflate(getItemLayoutResId(), (ViewGroup) this, true);
        this.f5110i = (FrameLayout) findViewById(com.p2elite.brtv2.R.id.navigation_bar_item_icon_container);
        this.f5111j = findViewById(com.p2elite.brtv2.R.id.navigation_bar_item_active_indicator_view);
        ImageView imageView = (ImageView) findViewById(com.p2elite.brtv2.R.id.navigation_bar_item_icon_view);
        this.f5112k = imageView;
        ViewGroup viewGroup = (ViewGroup) findViewById(com.p2elite.brtv2.R.id.navigation_bar_item_labels_group);
        this.f5113l = viewGroup;
        TextView textView = (TextView) findViewById(com.p2elite.brtv2.R.id.navigation_bar_item_small_label_view);
        this.f5114m = textView;
        TextView textView2 = (TextView) findViewById(com.p2elite.brtv2.R.id.navigation_bar_item_large_label_view);
        this.f5115n = textView2;
        setBackgroundResource(getItemBackgroundResId());
        this.f5105b = getResources().getDimensionPixelSize(getItemDefaultMarginResId());
        this.f5106c = viewGroup.getPaddingBottom();
        WeakHashMap weakHashMap = s0.f8353a;
        textView.setImportantForAccessibility(2);
        textView2.setImportantForAccessibility(2);
        setFocusable(true);
        a(textView.getTextSize(), textView2.getTextSize());
        if (imageView != null) {
            imageView.addOnLayoutChangeListener(new s2(i6, this));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x000a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void d(android.widget.TextView r4, int r5) throws android.content.res.Resources.NotFoundException {
        /*
            n5.d.R(r4, r5)
            android.content.Context r0 = r4.getContext()
            r1 = 0
            if (r5 != 0) goto Lc
        La:
            r5 = 0
            goto L58
        Lc:
            int[] r2 = x5.a.Z
            android.content.res.TypedArray r5 = r0.obtainStyledAttributes(r5, r2)
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            boolean r3 = r5.getValue(r1, r2)
            r5.recycle()
            if (r3 != 0) goto L21
            goto La
        L21:
            int r5 = android.os.Build.VERSION.SDK_INT
            r3 = 22
            if (r5 < r3) goto L2c
            int r5 = android.support.v4.media.session.a.a(r2)
            goto L30
        L2c:
            int r5 = r2.data
            r5 = r5 & 15
        L30:
            r3 = 2
            if (r5 != r3) goto L4a
            int r5 = r2.data
            float r5 = android.util.TypedValue.complexToFloat(r5)
            android.content.res.Resources r0 = r0.getResources()
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()
            float r0 = r0.density
            float r5 = r5 * r0
            int r5 = java.lang.Math.round(r5)
            goto L58
        L4a:
            int r5 = r2.data
            android.content.res.Resources r0 = r0.getResources()
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()
            int r5 = android.util.TypedValue.complexToDimensionPixelSize(r5, r0)
        L58:
            if (r5 == 0) goto L5e
            float r5 = (float) r5
            r4.setTextSize(r1, r5)
        L5e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.navigation.d.d(android.widget.TextView, int):void");
    }

    public static void e(View view, float f, float f3, int i6) {
        view.setScaleX(f);
        view.setScaleY(f3);
        view.setVisibility(i6);
    }

    public static void f(View view, int i6, int i10) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i6;
        layoutParams.bottomMargin = i6;
        layoutParams.gravity = i10;
        view.setLayoutParams(layoutParams);
    }

    private View getIconOrContainer() {
        FrameLayout frameLayout = this.f5110i;
        return frameLayout != null ? frameLayout : this.f5112k;
    }

    private int getItemVisiblePosition() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        int iIndexOfChild = viewGroup.indexOfChild(this);
        int i6 = 0;
        for (int i10 = 0; i10 < iIndexOfChild; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if ((childAt instanceof d) && childAt.getVisibility() == 0) {
                i6++;
            }
        }
        return i6;
    }

    private int getSuggestedIconHeight() {
        z5.a aVar = this.B;
        int minimumHeight = aVar != null ? aVar.getMinimumHeight() / 2 : 0;
        return this.f5112k.getMeasuredWidth() + Math.max(minimumHeight, ((FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams()).topMargin) + minimumHeight;
    }

    private int getSuggestedIconWidth() {
        z5.a aVar = this.B;
        int minimumWidth = aVar == null ? 0 : aVar.getMinimumWidth() - this.B.f11657e.f11666b.f4632m.intValue();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams();
        return Math.max(minimumWidth, layoutParams.rightMargin) + this.f5112k.getMeasuredWidth() + Math.max(minimumWidth, layoutParams.leftMargin);
    }

    public static void h(int i6, View view) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i6);
    }

    public final void a(float f, float f3) {
        this.d = f - f3;
        this.f5107e = (f3 * 1.0f) / f;
        this.f = (f * 1.0f) / f3;
    }

    public final void b(float f, float f3) {
        View view = this.f5111j;
        if (view != null) {
            b bVar = this.f5122u;
            bVar.getClass();
            view.setScaleX(y5.a.a(0.4f, 1.0f, f));
            view.setScaleY(bVar.a(f, f3));
            view.setAlpha(y5.a.b(0.0f, 1.0f, f3 == 0.0f ? 0.8f : 0.0f, f3 == 0.0f ? 1.0f : 0.2f, f));
        }
        this.f5123v = f;
    }

    @Override // k.z
    public final void c(k.n nVar) throws Resources.NotFoundException {
        this.f5117p = nVar;
        setCheckable(nVar.isCheckable());
        setChecked(nVar.isChecked());
        setEnabled(nVar.isEnabled());
        setIcon(nVar.getIcon());
        setTitle(nVar.f7637e);
        setId(nVar.f7634a);
        if (!TextUtils.isEmpty(nVar.f7648q)) {
            setContentDescription(nVar.f7648q);
        }
        CharSequence charSequence = !TextUtils.isEmpty(nVar.f7649r) ? nVar.f7649r : nVar.f7637e;
        if (Build.VERSION.SDK_INT > 23) {
            r4.b.L(this, charSequence);
        }
        setVisibility(nVar.isVisible() ? 0 : 8);
        this.f5104a = true;
    }

    public final void g(int i6) {
        View view = this.f5111j;
        if (view == null) {
            return;
        }
        int iMin = Math.min(this.f5125x, i6 - (this.A * 2));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.height = (this.f5127z && this.f5108g == 2) ? iMin : this.f5126y;
        layoutParams.width = iMin;
        view.setLayoutParams(layoutParams);
    }

    public Drawable getActiveIndicatorDrawable() {
        View view = this.f5111j;
        if (view == null) {
            return null;
        }
        return view.getBackground();
    }

    public z5.a getBadge() {
        return this.B;
    }

    public int getItemBackgroundResId() {
        return com.p2elite.brtv2.R.drawable.mtrl_navigation_bar_item_background;
    }

    @Override // k.z
    public k.n getItemData() {
        return this.f5117p;
    }

    public int getItemDefaultMarginResId() {
        return com.p2elite.brtv2.R.dimen.mtrl_navigation_bar_item_default_margin;
    }

    public abstract int getItemLayoutResId();

    public int getItemPosition() {
        return this.f5116o;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        ViewGroup viewGroup = this.f5113l;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewGroup.getLayoutParams();
        return viewGroup.getMeasuredHeight() + getSuggestedIconHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        ViewGroup viewGroup = this.f5113l;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewGroup.getLayoutParams();
        return Math.max(getSuggestedIconWidth(), viewGroup.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i6) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i6 + 1);
        k.n nVar = this.f5117p;
        if (nVar != null && nVar.isCheckable() && this.f5117p.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, C);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) throws Resources.NotFoundException {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        z5.a aVar = this.B;
        if (aVar != null && aVar.isVisible()) {
            k.n nVar = this.f5117p;
            CharSequence charSequence = nVar.f7637e;
            if (!TextUtils.isEmpty(nVar.f7648q)) {
                charSequence = this.f5117p.f7648q;
            }
            accessibilityNodeInfo.setContentDescription(((Object) charSequence) + ", " + ((Object) this.B.c()));
        }
        accessibilityNodeInfo.setCollectionItemInfo(o0.g.a(0, 1, getItemVisiblePosition(), 1, isSelected()).f8539a);
        if (isSelected()) {
            accessibilityNodeInfo.setClickable(false);
            accessibilityNodeInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) o0.c.f8523g.f8536a);
        }
        accessibilityNodeInfo.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", getResources().getString(com.p2elite.brtv2.R.string.item_view_role_description));
    }

    @Override // android.view.View
    public final void onSizeChanged(int i6, int i10, int i11, int i12) {
        super.onSizeChanged(i6, i10, i11, i12);
        post(new n0(i6, 2, this));
    }

    public void setActiveIndicatorDrawable(Drawable drawable) {
        View view = this.f5111j;
        if (view == null) {
            return;
        }
        view.setBackgroundDrawable(drawable);
    }

    public void setActiveIndicatorEnabled(boolean z7) {
        this.f5124w = z7;
        View view = this.f5111j;
        if (view != null) {
            view.setVisibility(z7 ? 0 : 8);
            requestLayout();
        }
    }

    public void setActiveIndicatorHeight(int i6) {
        this.f5126y = i6;
        g(getWidth());
    }

    public void setActiveIndicatorMarginHorizontal(int i6) {
        this.A = i6;
        g(getWidth());
    }

    public void setActiveIndicatorResizeable(boolean z7) {
        this.f5127z = z7;
    }

    public void setActiveIndicatorWidth(int i6) {
        this.f5125x = i6;
        g(getWidth());
    }

    public void setBadge(z5.a aVar) {
        z5.a aVar2 = this.B;
        if (aVar2 == aVar) {
            return;
        }
        boolean z7 = aVar2 != null;
        ImageView imageView = this.f5112k;
        if (z7 && imageView != null) {
            Log.w("NavigationBar", "Multiple badges shouldn't be attached to one item.");
            if (this.B != null) {
                setClipChildren(true);
                setClipToPadding(true);
                z5.a aVar3 = this.B;
                if (aVar3 != null) {
                    WeakReference weakReference = aVar3.f11664m;
                    if ((weakReference != null ? (FrameLayout) weakReference.get() : null) != null) {
                        WeakReference weakReference2 = aVar3.f11664m;
                        (weakReference2 != null ? (FrameLayout) weakReference2.get() : null).setForeground(null);
                    } else {
                        imageView.getOverlay().remove(aVar3);
                    }
                }
                this.B = null;
            }
        }
        this.B = aVar;
        if (imageView == null || aVar == null) {
            return;
        }
        setClipChildren(false);
        setClipToPadding(false);
        z5.a aVar4 = this.B;
        Rect rect = new Rect();
        imageView.getDrawingRect(rect);
        aVar4.setBounds(rect);
        aVar4.f(imageView, null);
        WeakReference weakReference3 = aVar4.f11664m;
        if ((weakReference3 != null ? (FrameLayout) weakReference3.get() : null) == null) {
            imageView.getOverlay().add(aVar4);
        } else {
            WeakReference weakReference4 = aVar4.f11664m;
            (weakReference4 != null ? (FrameLayout) weakReference4.get() : null).setForeground(aVar4);
        }
    }

    public void setCheckable(boolean z7) {
        refreshDrawableState();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x009d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setChecked(boolean r13) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 385
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.navigation.d.setChecked(boolean):void");
    }

    @Override // android.view.View
    public void setEnabled(boolean z7) {
        j7.c cVar;
        super.setEnabled(z7);
        this.f5114m.setEnabled(z7);
        this.f5115n.setEnabled(z7);
        this.f5112k.setEnabled(z7);
        Object obj = null;
        if (!z7) {
            s0.t(this, null);
            return;
        }
        Context context = getContext();
        if (Build.VERSION.SDK_INT >= 24) {
            cVar = new j7.c(16, w.b(context, 1002));
        } else {
            cVar = new j7.c(16, obj);
        }
        s0.t(this, cVar);
    }

    public void setIcon(Drawable drawable) {
        if (drawable == this.f5119r) {
            return;
        }
        this.f5119r = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = n5.d.W(drawable).mutate();
            this.f5120s = drawable;
            ColorStateList colorStateList = this.f5118q;
            if (colorStateList != null) {
                g0.a.h(drawable, colorStateList);
            }
        }
        this.f5112k.setImageDrawable(drawable);
    }

    public void setIconSize(int i6) {
        ImageView imageView = this.f5112k;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams.width = i6;
        layoutParams.height = i6;
        imageView.setLayoutParams(layoutParams);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        Drawable drawable;
        this.f5118q = colorStateList;
        if (this.f5117p == null || (drawable = this.f5120s) == null) {
            return;
        }
        g0.a.h(drawable, colorStateList);
        this.f5120s.invalidateSelf();
    }

    public void setItemBackground(int i6) {
        setItemBackground(i6 == 0 ? null : d0.a.b(getContext(), i6));
    }

    public void setItemPaddingBottom(int i6) throws Resources.NotFoundException {
        if (this.f5106c != i6) {
            this.f5106c = i6;
            k.n nVar = this.f5117p;
            if (nVar != null) {
                setChecked(nVar.isChecked());
            }
        }
    }

    public void setItemPaddingTop(int i6) throws Resources.NotFoundException {
        if (this.f5105b != i6) {
            this.f5105b = i6;
            k.n nVar = this.f5117p;
            if (nVar != null) {
                setChecked(nVar.isChecked());
            }
        }
    }

    public void setItemPosition(int i6) {
        this.f5116o = i6;
    }

    public void setLabelVisibilityMode(int i6) throws Resources.NotFoundException {
        if (this.f5108g != i6) {
            this.f5108g = i6;
            if (this.f5127z && i6 == 2) {
                this.f5122u = E;
            } else {
                this.f5122u = D;
            }
            g(getWidth());
            k.n nVar = this.f5117p;
            if (nVar != null) {
                setChecked(nVar.isChecked());
            }
        }
    }

    public void setShifting(boolean z7) throws Resources.NotFoundException {
        if (this.f5109h != z7) {
            this.f5109h = z7;
            k.n nVar = this.f5117p;
            if (nVar != null) {
                setChecked(nVar.isChecked());
            }
        }
    }

    public void setTextAppearanceActive(int i6) throws Resources.NotFoundException {
        TextView textView = this.f5115n;
        d(textView, i6);
        a(this.f5114m.getTextSize(), textView.getTextSize());
    }

    public void setTextAppearanceInactive(int i6) throws Resources.NotFoundException {
        TextView textView = this.f5114m;
        d(textView, i6);
        a(textView.getTextSize(), this.f5115n.getTextSize());
    }

    public void setTextColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f5114m.setTextColor(colorStateList);
            this.f5115n.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.f5114m.setText(charSequence);
        this.f5115n.setText(charSequence);
        k.n nVar = this.f5117p;
        if (nVar == null || TextUtils.isEmpty(nVar.f7648q)) {
            setContentDescription(charSequence);
        }
        k.n nVar2 = this.f5117p;
        if (nVar2 != null && !TextUtils.isEmpty(nVar2.f7649r)) {
            charSequence = this.f5117p.f7649r;
        }
        if (Build.VERSION.SDK_INT > 23) {
            r4.b.L(this, charSequence);
        }
    }

    public void setItemBackground(Drawable drawable) {
        if (drawable != null && drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        WeakHashMap weakHashMap = s0.f8353a;
        setBackground(drawable);
    }
}
