package x6;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.internal.a0;
import com.google.android.material.tabs.TabLayout;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import n0.s0;
import n0.w;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class k extends LinearLayout {

    /* renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ int f11068l = 0;

    /* renamed from: a, reason: collision with root package name */
    public h f11069a;

    /* renamed from: b, reason: collision with root package name */
    public TextView f11070b;

    /* renamed from: c, reason: collision with root package name */
    public ImageView f11071c;
    public View d;

    /* renamed from: e, reason: collision with root package name */
    public z5.a f11072e;
    public View f;

    /* renamed from: g, reason: collision with root package name */
    public TextView f11073g;

    /* renamed from: h, reason: collision with root package name */
    public ImageView f11074h;

    /* renamed from: i, reason: collision with root package name */
    public Drawable f11075i;

    /* renamed from: j, reason: collision with root package name */
    public int f11076j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ TabLayout f11077k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(TabLayout tabLayout, Context context) {
        super(context);
        int i6 = 16;
        this.f11077k = tabLayout;
        this.f11076j = 2;
        e(context);
        int i10 = tabLayout.d;
        WeakHashMap weakHashMap = s0.f8353a;
        setPaddingRelative(i10, tabLayout.f5229e, tabLayout.f, tabLayout.f5230g);
        setGravity(17);
        setOrientation(!tabLayout.A ? 1 : 0);
        setClickable(true);
        s0.t(this, Build.VERSION.SDK_INT >= 24 ? new j7.c(i6, w.b(getContext(), 1002)) : new j7.c(i6, (Object) null));
    }

    private z5.a getBadge() {
        return this.f11072e;
    }

    private z5.a getOrCreateBadge() {
        if (this.f11072e == null) {
            this.f11072e = new z5.a(getContext(), null);
        }
        b();
        z5.a aVar = this.f11072e;
        if (aVar != null) {
            return aVar;
        }
        throw new IllegalStateException("Unable to create badge");
    }

    public final void a() {
        if (this.f11072e != null) {
            setClipChildren(true);
            setClipToPadding(true);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(true);
                viewGroup.setClipToPadding(true);
            }
            View view = this.d;
            if (view != null) {
                z5.a aVar = this.f11072e;
                if (aVar != null) {
                    WeakReference weakReference = aVar.f11664m;
                    if ((weakReference != null ? (FrameLayout) weakReference.get() : null) != null) {
                        WeakReference weakReference2 = aVar.f11664m;
                        (weakReference2 != null ? (FrameLayout) weakReference2.get() : null).setForeground(null);
                    } else {
                        view.getOverlay().remove(aVar);
                    }
                }
                this.d = null;
            }
        }
    }

    public final void b() {
        h hVar;
        if (this.f11072e != null) {
            if (this.f != null) {
                a();
                return;
            }
            ImageView imageView = this.f11071c;
            if (imageView != null && (hVar = this.f11069a) != null && hVar.f11058a != null) {
                if (this.d == imageView) {
                    c(imageView);
                    return;
                }
                a();
                ImageView imageView2 = this.f11071c;
                if (this.f11072e == null || imageView2 == null) {
                    return;
                }
                setClipChildren(false);
                setClipToPadding(false);
                ViewGroup viewGroup = (ViewGroup) getParent();
                if (viewGroup != null) {
                    viewGroup.setClipChildren(false);
                    viewGroup.setClipToPadding(false);
                }
                z5.a aVar = this.f11072e;
                Rect rect = new Rect();
                imageView2.getDrawingRect(rect);
                aVar.setBounds(rect);
                aVar.f(imageView2, null);
                WeakReference weakReference = aVar.f11664m;
                if ((weakReference != null ? (FrameLayout) weakReference.get() : null) != null) {
                    WeakReference weakReference2 = aVar.f11664m;
                    (weakReference2 != null ? (FrameLayout) weakReference2.get() : null).setForeground(aVar);
                } else {
                    imageView2.getOverlay().add(aVar);
                }
                this.d = imageView2;
                return;
            }
            TextView textView = this.f11070b;
            if (textView == null || this.f11069a == null) {
                a();
                return;
            }
            if (this.d == textView) {
                c(textView);
                return;
            }
            a();
            TextView textView2 = this.f11070b;
            if (this.f11072e == null || textView2 == null) {
                return;
            }
            setClipChildren(false);
            setClipToPadding(false);
            ViewGroup viewGroup2 = (ViewGroup) getParent();
            if (viewGroup2 != null) {
                viewGroup2.setClipChildren(false);
                viewGroup2.setClipToPadding(false);
            }
            z5.a aVar2 = this.f11072e;
            Rect rect2 = new Rect();
            textView2.getDrawingRect(rect2);
            aVar2.setBounds(rect2);
            aVar2.f(textView2, null);
            WeakReference weakReference3 = aVar2.f11664m;
            if ((weakReference3 != null ? (FrameLayout) weakReference3.get() : null) != null) {
                WeakReference weakReference4 = aVar2.f11664m;
                (weakReference4 != null ? (FrameLayout) weakReference4.get() : null).setForeground(aVar2);
            } else {
                textView2.getOverlay().add(aVar2);
            }
            this.d = textView2;
        }
    }

    public final void c(View view) {
        z5.a aVar = this.f11072e;
        if (aVar == null || view != this.d) {
            return;
        }
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        aVar.setBounds(rect);
        aVar.f(view, null);
    }

    public final void d() {
        h hVar = this.f11069a;
        View view = hVar != null ? hVar.f11061e : null;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent != this) {
                if (parent != null) {
                    ((ViewGroup) parent).removeView(view);
                }
                addView(view);
            }
            this.f = view;
            TextView textView = this.f11070b;
            if (textView != null) {
                textView.setVisibility(8);
            }
            ImageView imageView = this.f11071c;
            if (imageView != null) {
                imageView.setVisibility(8);
                this.f11071c.setImageDrawable(null);
            }
            TextView textView2 = (TextView) view.findViewById(R.id.text1);
            this.f11073g = textView2;
            if (textView2 != null) {
                this.f11076j = textView2.getMaxLines();
            }
            this.f11074h = (ImageView) view.findViewById(R.id.icon);
        } else {
            View view2 = this.f;
            if (view2 != null) {
                removeView(view2);
                this.f = null;
            }
            this.f11073g = null;
            this.f11074h = null;
        }
        boolean z7 = false;
        if (this.f == null) {
            if (this.f11071c == null) {
                ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(com.p2elite.brtv2.R.layout.design_layout_tab_icon, (ViewGroup) this, false);
                this.f11071c = imageView2;
                addView(imageView2, 0);
            }
            if (this.f11070b == null) {
                TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(com.p2elite.brtv2.R.layout.design_layout_tab_text, (ViewGroup) this, false);
                this.f11070b = textView3;
                addView(textView3);
                this.f11076j = this.f11070b.getMaxLines();
            }
            TextView textView4 = this.f11070b;
            TabLayout tabLayout = this.f11077k;
            n5.d.R(textView4, tabLayout.f5231h);
            ColorStateList colorStateList = tabLayout.f5232i;
            if (colorStateList != null) {
                this.f11070b.setTextColor(colorStateList);
            }
            f(this.f11070b, this.f11071c);
            b();
            ImageView imageView3 = this.f11071c;
            if (imageView3 != null) {
                imageView3.addOnLayoutChangeListener(new j(this, imageView3));
            }
            TextView textView5 = this.f11070b;
            if (textView5 != null) {
                textView5.addOnLayoutChangeListener(new j(this, textView5));
            }
        } else {
            TextView textView6 = this.f11073g;
            if (textView6 != null || this.f11074h != null) {
                f(textView6, this.f11074h);
            }
        }
        if (hVar != null && !TextUtils.isEmpty(hVar.f11060c)) {
            setContentDescription(hVar.f11060c);
        }
        if (hVar != null) {
            TabLayout tabLayout2 = hVar.f;
            if (tabLayout2 == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            int selectedTabPosition = tabLayout2.getSelectedTabPosition();
            if (selectedTabPosition != -1 && selectedTabPosition == hVar.d) {
                z7 = true;
            }
        }
        setSelected(z7);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f11075i;
        if ((drawable == null || !drawable.isStateful()) ? false : this.f11075i.setState(drawableState)) {
            invalidate();
            this.f11077k.invalidate();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [android.graphics.drawable.RippleDrawable] */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.view.View, x6.k] */
    public final void e(Context context) {
        TabLayout tabLayout = this.f11077k;
        int i6 = tabLayout.f5240q;
        if (i6 != 0) {
            Drawable drawableH = com.bumptech.glide.c.h(context, i6);
            this.f11075i = drawableH;
            if (drawableH != null && drawableH.isStateful()) {
                this.f11075i.setState(getDrawableState());
            }
        } else {
            this.f11075i = null;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(0);
        if (tabLayout.f5234k != null) {
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setCornerRadius(1.0E-5f);
            gradientDrawable2.setColor(-1);
            ColorStateList colorStateListA = s6.c.a(tabLayout.f5234k);
            boolean z7 = tabLayout.E;
            if (z7) {
                gradientDrawable = null;
            }
            gradientDrawable = new RippleDrawable(colorStateListA, gradientDrawable, z7 ? null : gradientDrawable2);
        }
        WeakHashMap weakHashMap = s0.f8353a;
        setBackground(gradientDrawable);
        tabLayout.invalidate();
    }

    public final void f(TextView textView, ImageView imageView) {
        Drawable drawable;
        h hVar = this.f11069a;
        Drawable drawableMutate = (hVar == null || (drawable = hVar.f11058a) == null) ? null : n5.d.W(drawable).mutate();
        TabLayout tabLayout = this.f11077k;
        if (drawableMutate != null) {
            g0.a.h(drawableMutate, tabLayout.f5233j);
            PorterDuff.Mode mode = tabLayout.f5237n;
            if (mode != null) {
                g0.a.i(drawableMutate, mode);
            }
        }
        h hVar2 = this.f11069a;
        CharSequence charSequence = hVar2 != null ? hVar2.f11059b : null;
        if (imageView != null) {
            if (drawableMutate != null) {
                imageView.setImageDrawable(drawableMutate);
                imageView.setVisibility(0);
                setVisibility(0);
            } else {
                imageView.setVisibility(8);
                imageView.setImageDrawable(null);
            }
        }
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        if (textView != null) {
            if (zIsEmpty) {
                textView.setVisibility(8);
                textView.setText((CharSequence) null);
            } else {
                textView.setText(charSequence);
                this.f11069a.getClass();
                textView.setVisibility(0);
                setVisibility(0);
            }
        }
        if (imageView != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
            int iE = (zIsEmpty || imageView.getVisibility() != 0) ? 0 : (int) a0.e(getContext(), 8);
            if (tabLayout.A) {
                if (iE != marginLayoutParams.getMarginEnd()) {
                    marginLayoutParams.setMarginEnd(iE);
                    marginLayoutParams.bottomMargin = 0;
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            } else if (iE != marginLayoutParams.bottomMargin) {
                marginLayoutParams.bottomMargin = iE;
                marginLayoutParams.setMarginEnd(0);
                imageView.setLayoutParams(marginLayoutParams);
                imageView.requestLayout();
            }
        }
        h hVar3 = this.f11069a;
        CharSequence charSequence2 = hVar3 != null ? hVar3.f11060c : null;
        if (Build.VERSION.SDK_INT > 23) {
            if (zIsEmpty) {
                charSequence = charSequence2;
            }
            r4.b.L(this, charSequence);
        }
    }

    public int getContentHeight() {
        View[] viewArr = {this.f11070b, this.f11071c, this.f};
        int iMax = 0;
        int iMin = 0;
        boolean z7 = false;
        for (int i6 = 0; i6 < 3; i6++) {
            View view = viewArr[i6];
            if (view != null && view.getVisibility() == 0) {
                iMin = z7 ? Math.min(iMin, view.getTop()) : view.getTop();
                iMax = z7 ? Math.max(iMax, view.getBottom()) : view.getBottom();
                z7 = true;
            }
        }
        return iMax - iMin;
    }

    public int getContentWidth() {
        View[] viewArr = {this.f11070b, this.f11071c, this.f};
        int iMax = 0;
        int iMin = 0;
        boolean z7 = false;
        for (int i6 = 0; i6 < 3; i6++) {
            View view = viewArr[i6];
            if (view != null && view.getVisibility() == 0) {
                iMin = z7 ? Math.min(iMin, view.getLeft()) : view.getLeft();
                iMax = z7 ? Math.max(iMax, view.getRight()) : view.getRight();
                z7 = true;
            }
        }
        return iMax - iMin;
    }

    public h getTab() {
        return this.f11069a;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) throws Resources.NotFoundException {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        z5.a aVar = this.f11072e;
        if (aVar != null && aVar.isVisible()) {
            accessibilityNodeInfo.setContentDescription(((Object) getContentDescription()) + ", " + ((Object) this.f11072e.c()));
        }
        accessibilityNodeInfo.setCollectionItemInfo(o0.g.a(0, 1, this.f11069a.d, 1, isSelected()).f8539a);
        if (isSelected()) {
            accessibilityNodeInfo.setClickable(false);
            accessibilityNodeInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) o0.c.f8523g.f8536a);
        }
        accessibilityNodeInfo.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", getResources().getString(com.p2elite.brtv2.R.string.item_view_role_description));
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i6, int i10) {
        int size = View.MeasureSpec.getSize(i6);
        int mode = View.MeasureSpec.getMode(i6);
        TabLayout tabLayout = this.f11077k;
        int tabMaxWidth = tabLayout.getTabMaxWidth();
        if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
            i6 = View.MeasureSpec.makeMeasureSpec(tabLayout.f5241r, Integer.MIN_VALUE);
        }
        super.onMeasure(i6, i10);
        if (this.f11070b != null) {
            float f = tabLayout.f5238o;
            int i11 = this.f11076j;
            ImageView imageView = this.f11071c;
            if (imageView == null || imageView.getVisibility() != 0) {
                TextView textView = this.f11070b;
                if (textView != null && textView.getLineCount() > 1) {
                    f = tabLayout.f5239p;
                }
            } else {
                i11 = 1;
            }
            float textSize = this.f11070b.getTextSize();
            int lineCount = this.f11070b.getLineCount();
            int maxLines = this.f11070b.getMaxLines();
            if (f != textSize || (maxLines >= 0 && i11 != maxLines)) {
                if (tabLayout.f5249z == 1 && f > textSize && lineCount == 1) {
                    Layout layout = this.f11070b.getLayout();
                    if (layout == null) {
                        return;
                    }
                    if ((f / layout.getPaint().getTextSize()) * layout.getLineWidth(0) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) {
                        return;
                    }
                }
                this.f11070b.setTextSize(0, f);
                this.f11070b.setMaxLines(i11);
                super.onMeasure(i6, i10);
            }
        }
    }

    @Override // android.view.View
    public final boolean performClick() {
        boolean zPerformClick = super.performClick();
        if (this.f11069a == null) {
            return zPerformClick;
        }
        if (!zPerformClick) {
            playSoundEffect(0);
        }
        h hVar = this.f11069a;
        TabLayout tabLayout = hVar.f;
        if (tabLayout == null) {
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }
        tabLayout.l(hVar, true);
        return true;
    }

    @Override // android.view.View
    public void setSelected(boolean z7) {
        isSelected();
        super.setSelected(z7);
        TextView textView = this.f11070b;
        if (textView != null) {
            textView.setSelected(z7);
        }
        ImageView imageView = this.f11071c;
        if (imageView != null) {
            imageView.setSelected(z7);
        }
        View view = this.f;
        if (view != null) {
            view.setSelected(z7);
        }
    }

    public void setTab(h hVar) {
        if (hVar != this.f11069a) {
            this.f11069a = hVar;
            d();
        }
    }
}
