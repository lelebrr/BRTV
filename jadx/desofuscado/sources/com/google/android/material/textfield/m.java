package com.google.android.material.textfield;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.LinearInterpolator;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import androidx.appcompat.widget.r2;
import com.p2elite.brtv2.R;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m extends n {

    /* renamed from: e, reason: collision with root package name */
    public final i f5329e;
    public final r2 f;

    /* renamed from: g, reason: collision with root package name */
    public final j f5330g;

    /* renamed from: h, reason: collision with root package name */
    public final a f5331h;

    /* renamed from: i, reason: collision with root package name */
    public final b f5332i;

    /* renamed from: j, reason: collision with root package name */
    public final k f5333j;

    /* renamed from: k, reason: collision with root package name */
    public final a0.b f5334k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f5335l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f5336m;

    /* renamed from: n, reason: collision with root package name */
    public long f5337n;

    /* renamed from: o, reason: collision with root package name */
    public StateListDrawable f5338o;

    /* renamed from: p, reason: collision with root package name */
    public u6.h f5339p;

    /* renamed from: q, reason: collision with root package name */
    public AccessibilityManager f5340q;

    /* renamed from: r, reason: collision with root package name */
    public ValueAnimator f5341r;

    /* renamed from: s, reason: collision with root package name */
    public ValueAnimator f5342s;

    public m(TextInputLayout textInputLayout, int i6) {
        super(textInputLayout, i6);
        this.f5329e = new i(this, 0);
        this.f = new r2(2, this);
        this.f5330g = new j(this, textInputLayout);
        this.f5331h = new a(this, 1);
        this.f5332i = new b(this, 1);
        this.f5333j = new k(0, this);
        this.f5334k = new a0.b(21, this);
        this.f5335l = false;
        this.f5336m = false;
        this.f5337n = Long.MAX_VALUE;
    }

    public static void d(m mVar, AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView == null) {
            mVar.getClass();
            return;
        }
        mVar.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis() - mVar.f5337n;
        if (jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300) {
            mVar.f5335l = false;
        }
        if (mVar.f5335l) {
            mVar.f5335l = false;
            return;
        }
        mVar.i(!mVar.f5336m);
        if (!mVar.f5336m) {
            autoCompleteTextView.dismissDropDown();
        } else {
            autoCompleteTextView.requestFocus();
            autoCompleteTextView.showDropDown();
        }
    }

    public static boolean h(EditText editText) {
        return editText.getKeyListener() != null;
    }

    @Override // com.google.android.material.textfield.n
    public final void a() throws Resources.NotFoundException {
        Context context = this.f5344b;
        float dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.mtrl_shape_corner_size_small_component);
        float dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        int dimensionPixelOffset3 = context.getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        u6.h hVarG = g(dimensionPixelOffset, dimensionPixelOffset3, dimensionPixelOffset, dimensionPixelOffset2);
        u6.h hVarG2 = g(0.0f, dimensionPixelOffset3, dimensionPixelOffset, dimensionPixelOffset2);
        this.f5339p = hVarG;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.f5338o = stateListDrawable;
        stateListDrawable.addState(new int[]{android.R.attr.state_above_anchor}, hVarG);
        this.f5338o.addState(new int[0], hVarG2);
        int i6 = this.d;
        if (i6 == 0) {
            i6 = R.drawable.mtrl_dropdown_arrow;
        }
        TextInputLayout textInputLayout = this.f5343a;
        textInputLayout.setEndIconDrawable(i6);
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R.string.exposed_dropdown_menu_content_description));
        textInputLayout.setEndIconOnClickListener(new androidx.appcompat.app.a(7, this));
        LinkedHashSet linkedHashSet = textInputLayout.f5259c0;
        a aVar = this.f5331h;
        linkedHashSet.add(aVar);
        if (textInputLayout.f5261e != null) {
            aVar.a(textInputLayout);
        }
        textInputLayout.f5265g0.add(this.f5332i);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        LinearInterpolator linearInterpolator = y5.a.f11406a;
        valueAnimatorOfFloat.setInterpolator(linearInterpolator);
        valueAnimatorOfFloat.setDuration(67);
        valueAnimatorOfFloat.addUpdateListener(new a7.c(4, this));
        this.f5342s = valueAnimatorOfFloat;
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat2.setInterpolator(linearInterpolator);
        valueAnimatorOfFloat2.setDuration(50);
        valueAnimatorOfFloat2.addUpdateListener(new a7.c(4, this));
        this.f5341r = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.addListener(new a6.a(4, this));
        this.f5340q = (AccessibilityManager) context.getSystemService("accessibility");
        textInputLayout.addOnAttachStateChangeListener(this.f5333j);
        f();
    }

    @Override // com.google.android.material.textfield.n
    public final boolean b(int i6) {
        return i6 != 0;
    }

    public final void e(AutoCompleteTextView autoCompleteTextView) {
        if (h(autoCompleteTextView)) {
            return;
        }
        TextInputLayout textInputLayout = this.f5343a;
        int boxBackgroundMode = textInputLayout.getBoxBackgroundMode();
        u6.h boxBackground = textInputLayout.getBoxBackground();
        int iP = o9.e.p(R.attr.colorControlHighlight, autoCompleteTextView);
        int[][] iArr = {new int[]{android.R.attr.state_pressed}, new int[0]};
        if (boxBackgroundMode != 2) {
            if (boxBackgroundMode == 1) {
                int boxBackgroundColor = textInputLayout.getBoxBackgroundColor();
                RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(iArr, new int[]{o9.e.x(0.1f, iP, boxBackgroundColor), boxBackgroundColor}), boxBackground, boxBackground);
                WeakHashMap weakHashMap = s0.f8353a;
                autoCompleteTextView.setBackground(rippleDrawable);
                return;
            }
            return;
        }
        int iP2 = o9.e.p(R.attr.colorSurface, autoCompleteTextView);
        u6.h hVar = new u6.h(boxBackground.f10367a.f10350a);
        int iX = o9.e.x(0.1f, iP, iP2);
        hVar.n(new ColorStateList(iArr, new int[]{iX, 0}));
        hVar.setTint(iP2);
        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iX, iP2});
        u6.h hVar2 = new u6.h(boxBackground.f10367a.f10350a);
        hVar2.setTint(-1);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, hVar, hVar2), boxBackground});
        WeakHashMap weakHashMap2 = s0.f8353a;
        autoCompleteTextView.setBackground(layerDrawable);
    }

    public final void f() {
        TextInputLayout textInputLayout;
        if (this.f5340q == null || (textInputLayout = this.f5343a) == null) {
            return;
        }
        WeakHashMap weakHashMap = s0.f8353a;
        if (textInputLayout.isAttachedToWindow()) {
            this.f5340q.addTouchExplorationStateChangeListener(new o0.b(this.f5334k));
        }
    }

    public final u6.h g(float f, int i6, float f3, float f4) {
        int i10 = 0;
        u6.k kVar = new u6.k();
        u6.k kVar2 = new u6.k();
        u6.k kVar3 = new u6.k();
        u6.k kVar4 = new u6.k();
        u6.e eVar = new u6.e(i10);
        u6.e eVar2 = new u6.e(i10);
        u6.e eVar3 = new u6.e(i10);
        u6.e eVar4 = new u6.e(i10);
        u6.a aVar = new u6.a(f);
        u6.a aVar2 = new u6.a(f);
        u6.a aVar3 = new u6.a(f3);
        u6.a aVar4 = new u6.a(f3);
        u6.m mVar = new u6.m();
        mVar.f10400a = kVar;
        mVar.f10401b = kVar2;
        mVar.f10402c = kVar3;
        mVar.d = kVar4;
        mVar.f10403e = aVar;
        mVar.f = aVar2;
        mVar.f10404g = aVar4;
        mVar.f10405h = aVar3;
        mVar.f10406i = eVar;
        mVar.f10407j = eVar2;
        mVar.f10408k = eVar3;
        mVar.f10409l = eVar4;
        Paint paint = u6.h.f10366w;
        String simpleName = u6.h.class.getSimpleName();
        Context context = this.f5344b;
        int iM = com.bumptech.glide.c.m(context, R.attr.colorSurface, simpleName);
        u6.h hVar = new u6.h();
        hVar.k(context);
        hVar.n(ColorStateList.valueOf(iM));
        hVar.m(f4);
        hVar.setShapeAppearanceModel(mVar);
        u6.g gVar = hVar.f10367a;
        if (gVar.f10354g == null) {
            gVar.f10354g = new Rect();
        }
        hVar.f10367a.f10354g.set(0, i6, 0, i6);
        hVar.invalidateSelf();
        return hVar;
    }

    public final void i(boolean z7) {
        if (this.f5336m != z7) {
            this.f5336m = z7;
            this.f5342s.cancel();
            this.f5341r.start();
        }
    }
}
