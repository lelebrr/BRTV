package com.google.android.material.textfield;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.LinearInterpolator;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.r0;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.m1;
import androidx.appcompat.widget.p2;
import androidx.appcompat.widget.w;
import androidx.customview.view.AbsSavedState;
import androidx.transition.Fade;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.a0;
import com.p2elite.brtv2.R;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import n0.j0;
import n0.s0;
import y1.b0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class TextInputLayout extends LinearLayout {
    public CharSequence A;
    public int A0;
    public final AppCompatTextView B;
    public int B0;
    public boolean C;
    public boolean C0;
    public CharSequence D;
    public final com.google.android.material.internal.d D0;
    public boolean E;
    public boolean E0;
    public u6.h F;
    public boolean F0;
    public u6.h G;
    public ValueAnimator G0;
    public u6.h H;
    public boolean H0;
    public u6.m I;
    public boolean I0;
    public boolean J;
    public final int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public final Rect S;
    public final Rect T;
    public final RectF U;
    public Typeface V;
    public ColorDrawable W;

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f5255a;

    /* renamed from: b, reason: collision with root package name */
    public final s f5256b;

    /* renamed from: b0, reason: collision with root package name */
    public int f5257b0;

    /* renamed from: c, reason: collision with root package name */
    public final LinearLayout f5258c;

    /* renamed from: c0, reason: collision with root package name */
    public final LinkedHashSet f5259c0;
    public final FrameLayout d;

    /* renamed from: d0, reason: collision with root package name */
    public int f5260d0;

    /* renamed from: e, reason: collision with root package name */
    public EditText f5261e;

    /* renamed from: e0, reason: collision with root package name */
    public final SparseArray f5262e0;
    public CharSequence f;

    /* renamed from: f0, reason: collision with root package name */
    public final CheckableImageButton f5263f0;

    /* renamed from: g, reason: collision with root package name */
    public int f5264g;

    /* renamed from: g0, reason: collision with root package name */
    public final LinkedHashSet f5265g0;

    /* renamed from: h, reason: collision with root package name */
    public int f5266h;

    /* renamed from: h0, reason: collision with root package name */
    public ColorStateList f5267h0;

    /* renamed from: i, reason: collision with root package name */
    public int f5268i;
    public PorterDuff.Mode i0;

    /* renamed from: j, reason: collision with root package name */
    public int f5269j;

    /* renamed from: j0, reason: collision with root package name */
    public ColorDrawable f5270j0;

    /* renamed from: k, reason: collision with root package name */
    public final q f5271k;

    /* renamed from: k0, reason: collision with root package name */
    public int f5272k0;

    /* renamed from: l, reason: collision with root package name */
    public boolean f5273l;

    /* renamed from: l0, reason: collision with root package name */
    public Drawable f5274l0;

    /* renamed from: m, reason: collision with root package name */
    public int f5275m;

    /* renamed from: m0, reason: collision with root package name */
    public View.OnLongClickListener f5276m0;

    /* renamed from: n, reason: collision with root package name */
    public boolean f5277n;

    /* renamed from: n0, reason: collision with root package name */
    public View.OnLongClickListener f5278n0;

    /* renamed from: o, reason: collision with root package name */
    public AppCompatTextView f5279o;

    /* renamed from: o0, reason: collision with root package name */
    public final CheckableImageButton f5280o0;

    /* renamed from: p, reason: collision with root package name */
    public int f5281p;

    /* renamed from: p0, reason: collision with root package name */
    public ColorStateList f5282p0;

    /* renamed from: q, reason: collision with root package name */
    public int f5283q;

    /* renamed from: q0, reason: collision with root package name */
    public PorterDuff.Mode f5284q0;

    /* renamed from: r, reason: collision with root package name */
    public CharSequence f5285r;

    /* renamed from: r0, reason: collision with root package name */
    public ColorStateList f5286r0;

    /* renamed from: s, reason: collision with root package name */
    public boolean f5287s;

    /* renamed from: s0, reason: collision with root package name */
    public ColorStateList f5288s0;

    /* renamed from: t, reason: collision with root package name */
    public AppCompatTextView f5289t;

    /* renamed from: t0, reason: collision with root package name */
    public int f5290t0;

    /* renamed from: u, reason: collision with root package name */
    public ColorStateList f5291u;

    /* renamed from: u0, reason: collision with root package name */
    public int f5292u0;

    /* renamed from: v, reason: collision with root package name */
    public int f5293v;

    /* renamed from: v0, reason: collision with root package name */
    public int f5294v0;

    /* renamed from: w, reason: collision with root package name */
    public Fade f5295w;

    /* renamed from: w0, reason: collision with root package name */
    public ColorStateList f5296w0;

    /* renamed from: x, reason: collision with root package name */
    public Fade f5297x;
    public int x0;

    /* renamed from: y, reason: collision with root package name */
    public ColorStateList f5298y;

    /* renamed from: y0, reason: collision with root package name */
    public int f5299y0;

    /* renamed from: z, reason: collision with root package name */
    public ColorStateList f5300z;

    /* renamed from: z0, reason: collision with root package name */
    public int f5301z0;

    /* compiled from: MyApplication */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new v();

        /* renamed from: c, reason: collision with root package name */
        public CharSequence f5302c;
        public boolean d;

        /* renamed from: e, reason: collision with root package name */
        public CharSequence f5303e;
        public CharSequence f;

        /* renamed from: g, reason: collision with root package name */
        public CharSequence f5304g;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
            this.f5302c = (CharSequence) creator.createFromParcel(parcel);
            this.d = parcel.readInt() == 1;
            this.f5303e = (CharSequence) creator.createFromParcel(parcel);
            this.f = (CharSequence) creator.createFromParcel(parcel);
            this.f5304g = (CharSequence) creator.createFromParcel(parcel);
        }

        public final String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f5302c) + " hint=" + ((Object) this.f5303e) + " helperText=" + ((Object) this.f) + " placeholderText=" + ((Object) this.f5304g) + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i6) {
            super.writeToParcel(parcel, i6);
            TextUtils.writeToParcel(this.f5302c, parcel, i6);
            parcel.writeInt(this.d ? 1 : 0);
            TextUtils.writeToParcel(this.f5303e, parcel, i6);
            TextUtils.writeToParcel(this.f, parcel, i6);
            TextUtils.writeToParcel(this.f5304g, parcel, i6);
        }
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textInputStyle);
    }

    private n getEndIconDelegate() {
        SparseArray sparseArray = this.f5262e0;
        n nVar = (n) sparseArray.get(this.f5260d0);
        return nVar != null ? nVar : (n) sparseArray.get(0);
    }

    private CheckableImageButton getEndIconToUpdateDummyDrawable() {
        CheckableImageButton checkableImageButton = this.f5280o0;
        if (checkableImageButton.getVisibility() == 0) {
            return checkableImageButton;
        }
        if (this.f5260d0 == 0 || !g()) {
            return null;
        }
        return this.f5263f0;
    }

    public static void j(ViewGroup viewGroup, boolean z7) {
        int childCount = viewGroup.getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = viewGroup.getChildAt(i6);
            childAt.setEnabled(z7);
            if (childAt instanceof ViewGroup) {
                j((ViewGroup) childAt, z7);
            }
        }
    }

    public static void k(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        WeakHashMap weakHashMap = s0.f8353a;
        boolean zHasOnClickListeners = checkableImageButton.hasOnClickListeners();
        boolean z7 = onLongClickListener != null;
        boolean z10 = zHasOnClickListeners || z7;
        checkableImageButton.setFocusable(z10);
        checkableImageButton.setClickable(zHasOnClickListeners);
        checkableImageButton.setPressable(zHasOnClickListeners);
        checkableImageButton.setLongClickable(z7);
        checkableImageButton.setImportantForAccessibility(z10 ? 1 : 2);
    }

    private void setEditText(EditText editText) throws Resources.NotFoundException {
        if (this.f5261e != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (this.f5260d0 != 3 && !(editText instanceof TextInputEditText)) {
            Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.f5261e = editText;
        int i6 = this.f5264g;
        if (i6 != -1) {
            setMinEms(i6);
        } else {
            setMinWidth(this.f5268i);
        }
        int i10 = this.f5266h;
        if (i10 != -1) {
            setMaxEms(i10);
        } else {
            setMaxWidth(this.f5269j);
        }
        h();
        setTextInputAccessibilityDelegate(new u(this));
        Typeface typeface = this.f5261e.getTypeface();
        com.google.android.material.internal.d dVar = this.D0;
        boolean zN = dVar.n(typeface);
        boolean zP = dVar.p(typeface);
        if (zN || zP) {
            dVar.j(false);
        }
        float textSize = this.f5261e.getTextSize();
        if (dVar.f5010m != textSize) {
            dVar.f5010m = textSize;
            dVar.j(false);
        }
        float letterSpacing = this.f5261e.getLetterSpacing();
        if (dVar.f5000g0 != letterSpacing) {
            dVar.f5000g0 = letterSpacing;
            dVar.j(false);
        }
        int gravity = this.f5261e.getGravity();
        dVar.m((gravity & (-113)) | 48);
        if (dVar.f5006k != gravity) {
            dVar.f5006k = gravity;
            dVar.j(false);
        }
        this.f5261e.addTextChangedListener(new p2(2, this));
        if (this.f5286r0 == null) {
            this.f5286r0 = this.f5261e.getHintTextColors();
        }
        if (this.C) {
            if (TextUtils.isEmpty(this.D)) {
                CharSequence hint = this.f5261e.getHint();
                this.f = hint;
                setHint(hint);
                this.f5261e.setHint((CharSequence) null);
            }
            this.E = true;
        }
        if (this.f5279o != null) {
            m(this.f5261e.getText().length());
        }
        p();
        this.f5271k.b();
        this.f5256b.bringToFront();
        this.f5258c.bringToFront();
        this.d.bringToFront();
        this.f5280o0.bringToFront();
        Iterator it = this.f5259c0.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a(this);
        }
        w();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        t(false, true);
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.D)) {
            return;
        }
        this.D = charSequence;
        com.google.android.material.internal.d dVar = this.D0;
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
        if (this.C0) {
            return;
        }
        i();
    }

    private void setPlaceholderTextEnabled(boolean z7) {
        if (this.f5287s == z7) {
            return;
        }
        if (z7) {
            AppCompatTextView appCompatTextView = this.f5289t;
            if (appCompatTextView != null) {
                this.f5255a.addView(appCompatTextView);
                this.f5289t.setVisibility(0);
            }
        } else {
            AppCompatTextView appCompatTextView2 = this.f5289t;
            if (appCompatTextView2 != null) {
                appCompatTextView2.setVisibility(8);
            }
            this.f5289t = null;
        }
        this.f5287s = z7;
    }

    public final void a(float f) {
        com.google.android.material.internal.d dVar = this.D0;
        if (dVar.f4993c == f) {
            return;
        }
        if (this.G0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.G0 = valueAnimator;
            valueAnimator.setInterpolator(y5.a.f11407b);
            this.G0.setDuration(167L);
            this.G0.addUpdateListener(new a7.c(5, this));
        }
        this.G0.setFloatValues(dVar.f4993c, f);
        this.G0.start();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i6, ViewGroup.LayoutParams layoutParams) throws Resources.NotFoundException {
        if (!(view instanceof EditText)) {
            super.addView(view, i6, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        FrameLayout frameLayout = this.f5255a;
        frameLayout.addView(view, layoutParams2);
        frameLayout.setLayoutParams(layoutParams);
        s();
        setEditText((EditText) view);
    }

    public final void b() {
        int i6;
        int i10;
        u6.h hVar = this.F;
        if (hVar == null) {
            return;
        }
        u6.m mVar = hVar.f10367a.f10350a;
        u6.m mVar2 = this.I;
        if (mVar != mVar2) {
            hVar.setShapeAppearanceModel(mVar2);
            if (this.f5260d0 == 3 && this.L == 2) {
                m mVar3 = (m) this.f5262e0.get(3);
                AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) this.f5261e;
                mVar3.getClass();
                if (!m.h(autoCompleteTextView) && mVar3.f5343a.getBoxBackgroundMode() == 2 && (autoCompleteTextView.getBackground() instanceof LayerDrawable)) {
                    mVar3.e(autoCompleteTextView);
                }
            }
        }
        if (this.L == 2 && (i6 = this.N) > -1 && (i10 = this.Q) != 0) {
            u6.h hVar2 = this.F;
            hVar2.f10367a.f10357j = i6;
            hVar2.invalidateSelf();
            hVar2.s(ColorStateList.valueOf(i10));
        }
        int iF = this.R;
        if (this.L == 1) {
            iF = f0.a.f(this.R, o9.e.q(getContext(), R.attr.colorSurface, 0));
        }
        this.R = iF;
        this.F.n(ColorStateList.valueOf(iF));
        if (this.f5260d0 == 3) {
            this.f5261e.getBackground().invalidateSelf();
        }
        u6.h hVar3 = this.G;
        if (hVar3 != null && this.H != null) {
            if (this.N > -1 && this.Q != 0) {
                hVar3.n(this.f5261e.isFocused() ? ColorStateList.valueOf(this.f5290t0) : ColorStateList.valueOf(this.Q));
                this.H.n(ColorStateList.valueOf(this.Q));
            }
            invalidate();
        }
        invalidate();
    }

    public final int c() {
        float fE;
        if (!this.C) {
            return 0;
        }
        int i6 = this.L;
        com.google.android.material.internal.d dVar = this.D0;
        if (i6 == 0) {
            fE = dVar.e();
        } else {
            if (i6 != 2) {
                return 0;
            }
            fE = dVar.e() / 2.0f;
        }
        return (int) fE;
    }

    public final boolean d() {
        return this.C && !TextUtils.isEmpty(this.D) && (this.F instanceof g);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i6) {
        EditText editText = this.f5261e;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i6);
            return;
        }
        if (this.f != null) {
            boolean z7 = this.E;
            this.E = false;
            CharSequence hint = editText.getHint();
            this.f5261e.setHint(this.f);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i6);
                return;
            } finally {
                this.f5261e.setHint(hint);
                this.E = z7;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i6);
        onProvideAutofillVirtualStructure(viewStructure, i6);
        FrameLayout frameLayout = this.f5255a;
        viewStructure.setChildCount(frameLayout.getChildCount());
        for (int i10 = 0; i10 < frameLayout.getChildCount(); i10++) {
            View childAt = frameLayout.getChildAt(i10);
            ViewStructure viewStructureNewChild = viewStructure.newChild(i10);
            childAt.dispatchProvideAutofillStructure(viewStructureNewChild, i6);
            if (childAt == this.f5261e) {
                viewStructureNewChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.I0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.I0 = false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        u6.h hVar;
        super.draw(canvas);
        boolean z7 = this.C;
        com.google.android.material.internal.d dVar = this.D0;
        if (z7) {
            dVar.d(canvas);
        }
        if (this.H == null || (hVar = this.G) == null) {
            return;
        }
        hVar.draw(canvas);
        if (this.f5261e.isFocused()) {
            Rect bounds = this.H.getBounds();
            Rect bounds2 = this.G.getBounds();
            float f = dVar.f4993c;
            int iCenterX = bounds2.centerX();
            bounds.left = y5.a.c(f, iCenterX, bounds2.left);
            bounds.right = y5.a.c(f, iCenterX, bounds2.right);
            this.H.draw(canvas);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002f  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void drawableStateChanged() throws android.content.res.Resources.NotFoundException {
        /*
            r4 = this;
            boolean r0 = r4.H0
            if (r0 == 0) goto L5
            return
        L5:
            r0 = 1
            r4.H0 = r0
            super.drawableStateChanged()
            int[] r1 = r4.getDrawableState()
            r2 = 0
            com.google.android.material.internal.d r3 = r4.D0
            if (r3 == 0) goto L2f
            r3.R = r1
            android.content.res.ColorStateList r1 = r3.f5016p
            if (r1 == 0) goto L20
            boolean r1 = r1.isStateful()
            if (r1 != 0) goto L2a
        L20:
            android.content.res.ColorStateList r1 = r3.f5014o
            if (r1 == 0) goto L2f
            boolean r1 = r1.isStateful()
            if (r1 == 0) goto L2f
        L2a:
            r3.j(r2)
            r1 = 1
            goto L30
        L2f:
            r1 = 0
        L30:
            android.widget.EditText r3 = r4.f5261e
            if (r3 == 0) goto L47
            java.util.WeakHashMap r3 = n0.s0.f8353a
            boolean r3 = r4.isLaidOut()
            if (r3 == 0) goto L43
            boolean r3 = r4.isEnabled()
            if (r3 == 0) goto L43
            goto L44
        L43:
            r0 = 0
        L44:
            r4.t(r0, r2)
        L47:
            r4.p()
            r4.y()
            if (r1 == 0) goto L52
            r4.invalidate()
        L52:
            r4.H0 = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.drawableStateChanged():void");
    }

    public final int e(int i6, boolean z7) {
        int compoundPaddingLeft = this.f5261e.getCompoundPaddingLeft() + i6;
        return (getPrefixText() == null || z7) ? compoundPaddingLeft : (compoundPaddingLeft - getPrefixTextView().getMeasuredWidth()) + getPrefixTextView().getPaddingLeft();
    }

    public final int f(int i6, boolean z7) {
        int compoundPaddingRight = i6 - this.f5261e.getCompoundPaddingRight();
        return (getPrefixText() == null || !z7) ? compoundPaddingRight : compoundPaddingRight + (getPrefixTextView().getMeasuredWidth() - getPrefixTextView().getPaddingRight());
    }

    public final boolean g() {
        return this.d.getVisibility() == 0 && this.f5263f0.getVisibility() == 0;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f5261e;
        if (editText == null) {
            return super.getBaseline();
        }
        return c() + getPaddingTop() + editText.getBaseline();
    }

    public u6.h getBoxBackground() {
        int i6 = this.L;
        if (i6 == 1 || i6 == 2) {
            return this.F;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.R;
    }

    public int getBoxBackgroundMode() {
        return this.L;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.M;
    }

    public float getBoxCornerRadiusBottomEnd() {
        boolean zI = a0.i(this);
        RectF rectF = this.U;
        return zI ? this.I.f10405h.a(rectF) : this.I.f10404g.a(rectF);
    }

    public float getBoxCornerRadiusBottomStart() {
        boolean zI = a0.i(this);
        RectF rectF = this.U;
        return zI ? this.I.f10404g.a(rectF) : this.I.f10405h.a(rectF);
    }

    public float getBoxCornerRadiusTopEnd() {
        boolean zI = a0.i(this);
        RectF rectF = this.U;
        return zI ? this.I.f10403e.a(rectF) : this.I.f.a(rectF);
    }

    public float getBoxCornerRadiusTopStart() {
        boolean zI = a0.i(this);
        RectF rectF = this.U;
        return zI ? this.I.f.a(rectF) : this.I.f10403e.a(rectF);
    }

    public int getBoxStrokeColor() {
        return this.f5294v0;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.f5296w0;
    }

    public int getBoxStrokeWidth() {
        return this.O;
    }

    public int getBoxStrokeWidthFocused() {
        return this.P;
    }

    public int getCounterMaxLength() {
        return this.f5275m;
    }

    public CharSequence getCounterOverflowDescription() {
        AppCompatTextView appCompatTextView;
        if (this.f5273l && this.f5277n && (appCompatTextView = this.f5279o) != null) {
            return appCompatTextView.getContentDescription();
        }
        return null;
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.f5298y;
    }

    public ColorStateList getCounterTextColor() {
        return this.f5298y;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.f5286r0;
    }

    public EditText getEditText() {
        return this.f5261e;
    }

    public CharSequence getEndIconContentDescription() {
        return this.f5263f0.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.f5263f0.getDrawable();
    }

    public int getEndIconMode() {
        return this.f5260d0;
    }

    public CheckableImageButton getEndIconView() {
        return this.f5263f0;
    }

    public CharSequence getError() {
        q qVar = this.f5271k;
        if (qVar.f5360k) {
            return qVar.f5359j;
        }
        return null;
    }

    public CharSequence getErrorContentDescription() {
        return this.f5271k.f5362m;
    }

    public int getErrorCurrentTextColors() {
        AppCompatTextView appCompatTextView = this.f5271k.f5361l;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    public Drawable getErrorIconDrawable() {
        return this.f5280o0.getDrawable();
    }

    public final int getErrorTextCurrentColor() {
        AppCompatTextView appCompatTextView = this.f5271k.f5361l;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHelperText() {
        q qVar = this.f5271k;
        if (qVar.f5366q) {
            return qVar.f5365p;
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        AppCompatTextView appCompatTextView = this.f5271k.f5367r;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHint() {
        if (this.C) {
            return this.D;
        }
        return null;
    }

    public final float getHintCollapsedTextHeight() {
        return this.D0.e();
    }

    public final int getHintCurrentCollapsedTextColor() {
        com.google.android.material.internal.d dVar = this.D0;
        return dVar.f(dVar.f5016p);
    }

    public ColorStateList getHintTextColor() {
        return this.f5288s0;
    }

    public int getMaxEms() {
        return this.f5266h;
    }

    public int getMaxWidth() {
        return this.f5269j;
    }

    public int getMinEms() {
        return this.f5264g;
    }

    public int getMinWidth() {
        return this.f5268i;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f5263f0.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f5263f0.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        if (this.f5287s) {
            return this.f5285r;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.f5293v;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.f5291u;
    }

    public CharSequence getPrefixText() {
        return this.f5256b.f5375c;
    }

    public ColorStateList getPrefixTextColor() {
        return this.f5256b.f5374b.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.f5256b.f5374b;
    }

    public CharSequence getStartIconContentDescription() {
        return this.f5256b.d.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.f5256b.d.getDrawable();
    }

    public CharSequence getSuffixText() {
        return this.A;
    }

    public ColorStateList getSuffixTextColor() {
        return this.B.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.B;
    }

    public Typeface getTypeface() {
        return this.V;
    }

    public final void h() throws Resources.NotFoundException {
        int i6 = this.L;
        if (i6 == 0) {
            this.F = null;
            this.G = null;
            this.H = null;
        } else if (i6 == 1) {
            this.F = new u6.h(this.I);
            this.G = new u6.h();
            this.H = new u6.h();
        } else {
            if (i6 != 2) {
                throw new IllegalArgumentException(this.L + " is illegal; only @BoxBackgroundMode constants are supported.");
            }
            if (!this.C || (this.F instanceof g)) {
                this.F = new u6.h(this.I);
            } else {
                this.F = new g(this.I);
            }
            this.G = null;
            this.H = null;
        }
        EditText editText = this.f5261e;
        if (editText != null && this.F != null && editText.getBackground() == null && this.L != 0) {
            EditText editText2 = this.f5261e;
            u6.h hVar = this.F;
            WeakHashMap weakHashMap = s0.f8353a;
            editText2.setBackground(hVar);
        }
        y();
        if (this.L == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                this.M = getResources().getDimensionPixelSize(R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (com.bumptech.glide.d.u(getContext())) {
                this.M = getResources().getDimensionPixelSize(R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
        if (this.f5261e != null && this.L == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                EditText editText3 = this.f5261e;
                WeakHashMap weakHashMap2 = s0.f8353a;
                editText3.setPaddingRelative(editText3.getPaddingStart(), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_2_0_padding_top), this.f5261e.getPaddingEnd(), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_2_0_padding_bottom));
            } else if (com.bumptech.glide.d.u(getContext())) {
                EditText editText4 = this.f5261e;
                WeakHashMap weakHashMap3 = s0.f8353a;
                editText4.setPaddingRelative(editText4.getPaddingStart(), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_1_3_padding_top), this.f5261e.getPaddingEnd(), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_1_3_padding_bottom));
            }
        }
        if (this.L != 0) {
            s();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void i() {
        /*
            Method dump skipped, instructions count: 202
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.i():void");
    }

    public final void l(AppCompatTextView appCompatTextView, int i6) {
        try {
            n5.d.R(appCompatTextView, i6);
        } catch (Exception unused) {
        }
        if (Build.VERSION.SDK_INT >= 23) {
            if (appCompatTextView.getTextColors().getDefaultColor() != -65281) {
                return;
            }
            n5.d.R(appCompatTextView, R.style.TextAppearance_AppCompat_Caption);
            appCompatTextView.setTextColor(u7.d.i(getContext(), R.color.design_error));
        }
    }

    public final void m(int i6) throws Resources.NotFoundException {
        boolean z7 = this.f5277n;
        int i10 = this.f5275m;
        String string = null;
        if (i10 == -1) {
            this.f5279o.setText(String.valueOf(i6));
            this.f5279o.setContentDescription(null);
            this.f5277n = false;
        } else {
            this.f5277n = i6 > i10;
            Context context = getContext();
            this.f5279o.setContentDescription(context.getString(this.f5277n ? R.string.character_counter_overflowed_content_description : R.string.character_counter_content_description, Integer.valueOf(i6), Integer.valueOf(this.f5275m)));
            if (z7 != this.f5277n) {
                n();
            }
            l0.b bVarC = l0.b.c();
            AppCompatTextView appCompatTextView = this.f5279o;
            String string2 = getContext().getString(R.string.character_counter_pattern, Integer.valueOf(i6), Integer.valueOf(this.f5275m));
            if (string2 == null) {
                bVarC.getClass();
            } else {
                bVarC.getClass();
                r0 r0Var = l0.j.f7940a;
                string = bVarC.d(string2).toString();
            }
            appCompatTextView.setText(string);
        }
        if (this.f5261e == null || z7 == this.f5277n) {
            return;
        }
        t(false, false);
        y();
        p();
    }

    public final void n() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        AppCompatTextView appCompatTextView = this.f5279o;
        if (appCompatTextView != null) {
            l(appCompatTextView, this.f5277n ? this.f5281p : this.f5283q);
            if (!this.f5277n && (colorStateList2 = this.f5298y) != null) {
                this.f5279o.setTextColor(colorStateList2);
            }
            if (!this.f5277n || (colorStateList = this.f5300z) == null) {
                return;
            }
            this.f5279o.setTextColor(colorStateList);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean o() {
        /*
            Method dump skipped, instructions count: 291
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.o():boolean");
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.D0.h(configuration);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        super.onLayout(z7, i6, i10, i11, i12);
        EditText editText = this.f5261e;
        if (editText != null) {
            Rect rect = this.S;
            com.google.android.material.internal.e.a(this, editText, rect);
            u6.h hVar = this.G;
            if (hVar != null) {
                int i13 = rect.bottom;
                hVar.setBounds(rect.left, i13 - this.O, rect.right, i13);
            }
            u6.h hVar2 = this.H;
            if (hVar2 != null) {
                int i14 = rect.bottom;
                hVar2.setBounds(rect.left, i14 - this.P, rect.right, i14);
            }
            if (this.C) {
                float textSize = this.f5261e.getTextSize();
                com.google.android.material.internal.d dVar = this.D0;
                if (dVar.f5010m != textSize) {
                    dVar.f5010m = textSize;
                    dVar.j(false);
                }
                int gravity = this.f5261e.getGravity();
                dVar.m((gravity & (-113)) | 48);
                if (dVar.f5006k != gravity) {
                    dVar.f5006k = gravity;
                    dVar.j(false);
                }
                if (this.f5261e == null) {
                    throw new IllegalStateException();
                }
                boolean zI = a0.i(this);
                int i15 = rect.bottom;
                Rect rect2 = this.T;
                rect2.bottom = i15;
                int i16 = this.L;
                if (i16 == 1) {
                    rect2.left = e(rect.left, zI);
                    rect2.top = rect.top + this.M;
                    rect2.right = f(rect.right, zI);
                } else if (i16 != 2) {
                    rect2.left = e(rect.left, zI);
                    rect2.top = getPaddingTop();
                    rect2.right = f(rect.right, zI);
                } else {
                    rect2.left = this.f5261e.getPaddingLeft() + rect.left;
                    rect2.top = rect.top - c();
                    rect2.right = rect.right - this.f5261e.getPaddingRight();
                }
                int i17 = rect2.left;
                int i18 = rect2.top;
                int i19 = rect2.right;
                int i20 = rect2.bottom;
                Rect rect3 = dVar.f5003i;
                if (rect3.left != i17 || rect3.top != i18 || rect3.right != i19 || rect3.bottom != i20) {
                    rect3.set(i17, i18, i19, i20);
                    dVar.S = true;
                    dVar.i();
                }
                if (this.f5261e == null) {
                    throw new IllegalStateException();
                }
                TextPaint textPaint = dVar.U;
                textPaint.setTextSize(dVar.f5010m);
                textPaint.setTypeface(dVar.A);
                textPaint.setLetterSpacing(dVar.f5000g0);
                float f = -textPaint.ascent();
                rect2.left = this.f5261e.getCompoundPaddingLeft() + rect.left;
                rect2.top = (this.L != 1 || this.f5261e.getMinLines() > 1) ? rect.top + this.f5261e.getCompoundPaddingTop() : (int) (rect.centerY() - (f / 2.0f));
                rect2.right = rect.right - this.f5261e.getCompoundPaddingRight();
                int compoundPaddingBottom = (this.L != 1 || this.f5261e.getMinLines() > 1) ? rect.bottom - this.f5261e.getCompoundPaddingBottom() : (int) (rect2.top + f);
                rect2.bottom = compoundPaddingBottom;
                int i21 = rect2.left;
                int i22 = rect2.top;
                int i23 = rect2.right;
                Rect rect4 = dVar.f5001h;
                if (rect4.left != i21 || rect4.top != i22 || rect4.right != i23 || rect4.bottom != compoundPaddingBottom) {
                    rect4.set(i21, i22, i23, compoundPaddingBottom);
                    dVar.S = true;
                    dVar.i();
                }
                dVar.j(false);
                if (!d() || this.C0) {
                    return;
                }
                i();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i6, int i10) throws Resources.NotFoundException {
        EditText editText;
        int iMax;
        super.onMeasure(i6, i10);
        boolean z7 = false;
        if (this.f5261e != null && this.f5261e.getMeasuredHeight() < (iMax = Math.max(this.f5258c.getMeasuredHeight(), this.f5256b.getMeasuredHeight()))) {
            this.f5261e.setMinimumHeight(iMax);
            z7 = true;
        }
        boolean zO = o();
        if (z7 || zO) {
            this.f5261e.post(new t(this, 1));
        }
        if (this.f5289t != null && (editText = this.f5261e) != null) {
            this.f5289t.setGravity(editText.getGravity());
            this.f5289t.setPadding(this.f5261e.getCompoundPaddingLeft(), this.f5261e.getCompoundPaddingTop(), this.f5261e.getCompoundPaddingRight(), this.f5261e.getCompoundPaddingBottom());
        }
        w();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) throws Resources.NotFoundException {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f1319a);
        setError(savedState.f5302c);
        if (savedState.d) {
            this.f5263f0.post(new t(this, 0));
        }
        setHint(savedState.f5303e);
        setHelperText(savedState.f);
        setPlaceholderText(savedState.f5304g);
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onRtlPropertiesChanged(int i6) {
        super.onRtlPropertiesChanged(i6);
        boolean z7 = false;
        boolean z10 = i6 == 1;
        boolean z11 = this.J;
        if (z10 != z11) {
            if (z10 && !z11) {
                z7 = true;
            }
            u6.c cVar = this.I.f10403e;
            RectF rectF = this.U;
            float fA = cVar.a(rectF);
            float fA2 = this.I.f.a(rectF);
            float fA3 = this.I.f10405h.a(rectF);
            float fA4 = this.I.f10404g.a(rectF);
            float f = z7 ? fA : fA2;
            if (z7) {
                fA = fA2;
            }
            float f3 = z7 ? fA3 : fA4;
            if (z7) {
                fA3 = fA4;
            }
            boolean zI = a0.i(this);
            this.J = zI;
            float f4 = zI ? fA : f;
            if (!zI) {
                f = fA;
            }
            float f5 = zI ? fA3 : f3;
            if (!zI) {
                f3 = fA3;
            }
            u6.h hVar = this.F;
            if (hVar != null && hVar.i() == f4) {
                u6.h hVar2 = this.F;
                if (hVar2.f10367a.f10350a.f.a(hVar2.g()) == f) {
                    u6.h hVar3 = this.F;
                    if (hVar3.f10367a.f10350a.f10405h.a(hVar3.g()) == f5) {
                        u6.h hVar4 = this.F;
                        if (hVar4.f10367a.f10350a.f10404g.a(hVar4.g()) == f3) {
                            return;
                        }
                    }
                }
            }
            u6.l lVarF = this.I.f();
            lVarF.f10392e = new u6.a(f4);
            lVarF.f = new u6.a(f);
            lVarF.f10394h = new u6.a(f5);
            lVarF.f10393g = new u6.a(f3);
            this.I = lVarF.a();
            b();
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.f5271k.e()) {
            savedState.f5302c = getError();
        }
        savedState.d = this.f5260d0 != 0 && this.f5263f0.d;
        savedState.f5303e = getHint();
        savedState.f = getHelperText();
        savedState.f5304g = getPlaceholderText();
        return savedState;
    }

    public final void p() {
        Drawable background;
        AppCompatTextView appCompatTextView;
        EditText editText = this.f5261e;
        if (editText == null || this.L != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        int[] iArr = m1.f784a;
        Drawable drawableMutate = background.mutate();
        q qVar = this.f5271k;
        if (qVar.e()) {
            AppCompatTextView appCompatTextView2 = qVar.f5361l;
            drawableMutate.setColorFilter(w.c(appCompatTextView2 != null ? appCompatTextView2.getCurrentTextColor() : -1, PorterDuff.Mode.SRC_IN));
        } else if (this.f5277n && (appCompatTextView = this.f5279o) != null) {
            drawableMutate.setColorFilter(w.c(appCompatTextView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            n5.d.a(drawableMutate);
            this.f5261e.refreshDrawableState();
        }
    }

    public final void q() {
        int visibility = this.f5263f0.getVisibility();
        CheckableImageButton checkableImageButton = this.f5280o0;
        this.d.setVisibility((visibility != 0 || checkableImageButton.getVisibility() == 0) ? 8 : 0);
        this.f5258c.setVisibility((g() || checkableImageButton.getVisibility() == 0 || ((this.A == null || this.C0) ? '\b' : (char) 0) == 0) ? 0 : 8);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void r() throws android.content.res.Resources.NotFoundException {
        /*
            r2 = this;
            android.graphics.drawable.Drawable r0 = r2.getErrorIconDrawable()
            if (r0 == 0) goto L14
            com.google.android.material.textfield.q r0 = r2.f5271k
            boolean r1 = r0.f5360k
            if (r1 == 0) goto L14
            boolean r0 = r0.e()
            if (r0 == 0) goto L14
            r0 = 0
            goto L16
        L14:
            r0 = 8
        L16:
            com.google.android.material.internal.CheckableImageButton r1 = r2.f5280o0
            r1.setVisibility(r0)
            r2.q()
            r2.w()
            int r0 = r2.f5260d0
            if (r0 == 0) goto L26
            goto L29
        L26:
            r2.o()
        L29:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.r():void");
    }

    public final void s() {
        if (this.L != 1) {
            FrameLayout frameLayout = this.f5255a;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
            int iC = c();
            if (iC != layoutParams.topMargin) {
                layoutParams.topMargin = iC;
                frameLayout.requestLayout();
            }
        }
    }

    public void setBoxBackgroundColor(int i6) {
        if (this.R != i6) {
            this.R = i6;
            this.x0 = i6;
            this.f5301z0 = i6;
            this.A0 = i6;
            b();
        }
    }

    public void setBoxBackgroundColorResource(int i6) {
        setBoxBackgroundColor(u7.d.i(getContext(), i6));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.x0 = defaultColor;
        this.R = defaultColor;
        this.f5299y0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.f5301z0 = colorStateList.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
        this.A0 = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
        b();
    }

    public void setBoxBackgroundMode(int i6) throws Resources.NotFoundException {
        if (i6 == this.L) {
            return;
        }
        this.L = i6;
        if (this.f5261e != null) {
            h();
        }
    }

    public void setBoxCollapsedPaddingTop(int i6) {
        this.M = i6;
    }

    public void setBoxStrokeColor(int i6) throws Resources.NotFoundException {
        if (this.f5294v0 != i6) {
            this.f5294v0 = i6;
            y();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) throws Resources.NotFoundException {
        if (colorStateList.isStateful()) {
            this.f5290t0 = colorStateList.getDefaultColor();
            this.B0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.f5292u0 = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
            this.f5294v0 = colorStateList.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
        } else if (this.f5294v0 != colorStateList.getDefaultColor()) {
            this.f5294v0 = colorStateList.getDefaultColor();
        }
        y();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) throws Resources.NotFoundException {
        if (this.f5296w0 != colorStateList) {
            this.f5296w0 = colorStateList;
            y();
        }
    }

    public void setBoxStrokeWidth(int i6) throws Resources.NotFoundException {
        this.O = i6;
        y();
    }

    public void setBoxStrokeWidthFocused(int i6) throws Resources.NotFoundException {
        this.P = i6;
        y();
    }

    public void setBoxStrokeWidthFocusedResource(int i6) throws Resources.NotFoundException {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i6));
    }

    public void setBoxStrokeWidthResource(int i6) throws Resources.NotFoundException {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i6));
    }

    public void setCounterEnabled(boolean z7) throws Resources.NotFoundException {
        if (this.f5273l != z7) {
            q qVar = this.f5271k;
            if (z7) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
                this.f5279o = appCompatTextView;
                appCompatTextView.setId(R.id.textinput_counter);
                Typeface typeface = this.V;
                if (typeface != null) {
                    this.f5279o.setTypeface(typeface);
                }
                this.f5279o.setMaxLines(1);
                qVar.a(this.f5279o, 2);
                ((ViewGroup.MarginLayoutParams) this.f5279o.getLayoutParams()).setMarginStart(getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_counter_margin_start));
                n();
                if (this.f5279o != null) {
                    EditText editText = this.f5261e;
                    m(editText == null ? 0 : editText.getText().length());
                }
            } else {
                qVar.h(this.f5279o, 2);
                this.f5279o = null;
            }
            this.f5273l = z7;
        }
    }

    public void setCounterMaxLength(int i6) throws Resources.NotFoundException {
        if (this.f5275m != i6) {
            if (i6 > 0) {
                this.f5275m = i6;
            } else {
                this.f5275m = -1;
            }
            if (!this.f5273l || this.f5279o == null) {
                return;
            }
            EditText editText = this.f5261e;
            m(editText == null ? 0 : editText.getText().length());
        }
    }

    public void setCounterOverflowTextAppearance(int i6) {
        if (this.f5281p != i6) {
            this.f5281p = i6;
            n();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.f5300z != colorStateList) {
            this.f5300z = colorStateList;
            n();
        }
    }

    public void setCounterTextAppearance(int i6) {
        if (this.f5283q != i6) {
            this.f5283q = i6;
            n();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.f5298y != colorStateList) {
            this.f5298y = colorStateList;
            n();
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.f5286r0 = colorStateList;
        this.f5288s0 = colorStateList;
        if (this.f5261e != null) {
            t(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z7) {
        j(this, z7);
        super.setEnabled(z7);
    }

    public void setEndIconActivated(boolean z7) {
        this.f5263f0.setActivated(z7);
    }

    public void setEndIconCheckable(boolean z7) {
        this.f5263f0.setCheckable(z7);
    }

    public void setEndIconContentDescription(int i6) {
        setEndIconContentDescription(i6 != 0 ? getResources().getText(i6) : null);
    }

    public void setEndIconDrawable(int i6) {
        setEndIconDrawable(i6 != 0 ? com.bumptech.glide.c.h(getContext(), i6) : null);
    }

    public void setEndIconMode(int i6) throws Resources.NotFoundException {
        int i10 = this.f5260d0;
        if (i10 == i6) {
            return;
        }
        this.f5260d0 = i6;
        Iterator it = this.f5265g0.iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            switch (bVar.f5307a) {
                case 0:
                    EditText editText = getEditText();
                    if (editText != null && i10 == 2) {
                        editText.post(new a3.c(bVar, 5, editText));
                        View.OnFocusChangeListener onFocusChangeListener = editText.getOnFocusChangeListener();
                        e eVar = (e) bVar.f5308b;
                        if (onFocusChangeListener == eVar.f) {
                            editText.setOnFocusChangeListener(null);
                        }
                        if (eVar.f5345c.getOnFocusChangeListener() != eVar.f) {
                            break;
                        } else {
                            eVar.f5345c.setOnFocusChangeListener(null);
                            break;
                        }
                    } else {
                        break;
                    }
                    break;
                case 1:
                    AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) getEditText();
                    m mVar = (m) bVar.f5308b;
                    if (autoCompleteTextView != null && i10 == 3) {
                        autoCompleteTextView.post(new a3.c(bVar, 7, autoCompleteTextView));
                        if (autoCompleteTextView.getOnFocusChangeListener() == mVar.f) {
                            autoCompleteTextView.setOnFocusChangeListener(null);
                        }
                        autoCompleteTextView.setOnTouchListener(null);
                        autoCompleteTextView.setOnDismissListener(null);
                    }
                    if (i10 != 3) {
                        break;
                    } else {
                        removeOnAttachStateChangeListener(mVar.f5333j);
                        AccessibilityManager accessibilityManager = mVar.f5340q;
                        if (accessibilityManager == null) {
                            break;
                        } else {
                            accessibilityManager.removeTouchExplorationStateChangeListener(new o0.b(mVar.f5334k));
                            break;
                        }
                    }
                default:
                    EditText editText2 = getEditText();
                    if (editText2 != null && i10 == 1) {
                        editText2.setTransformationMethod(PasswordTransformationMethod.getInstance());
                        editText2.post(new a3.c(bVar, 8, editText2));
                        break;
                    } else {
                        break;
                    }
            }
        }
        setEndIconVisible(i6 != 0);
        if (getEndIconDelegate().b(this.L)) {
            getEndIconDelegate().a();
            u7.d.a(this, this.f5263f0, this.f5267h0, this.i0);
        } else {
            throw new IllegalStateException("The current box background mode " + this.L + " is not supported by the end icon mode " + i6);
        }
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        View.OnLongClickListener onLongClickListener = this.f5276m0;
        CheckableImageButton checkableImageButton = this.f5263f0;
        checkableImageButton.setOnClickListener(onClickListener);
        k(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f5276m0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.f5263f0;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        k(checkableImageButton, onLongClickListener);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        if (this.f5267h0 != colorStateList) {
            this.f5267h0 = colorStateList;
            u7.d.a(this, this.f5263f0, colorStateList, this.i0);
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        if (this.i0 != mode) {
            this.i0 = mode;
            u7.d.a(this, this.f5263f0, this.f5267h0, mode);
        }
    }

    public void setEndIconVisible(boolean z7) throws Resources.NotFoundException {
        if (g() != z7) {
            this.f5263f0.setVisibility(z7 ? 0 : 8);
            q();
            w();
            o();
        }
    }

    public void setError(CharSequence charSequence) throws Resources.NotFoundException {
        q qVar = this.f5271k;
        if (!qVar.f5360k) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            qVar.g();
            return;
        }
        qVar.c();
        qVar.f5359j = charSequence;
        qVar.f5361l.setText(charSequence);
        int i6 = qVar.f5357h;
        if (i6 != 1) {
            qVar.f5358i = 1;
        }
        qVar.j(i6, qVar.f5358i, qVar.i(qVar.f5361l, charSequence));
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        q qVar = this.f5271k;
        qVar.f5362m = charSequence;
        AppCompatTextView appCompatTextView = qVar.f5361l;
        if (appCompatTextView != null) {
            appCompatTextView.setContentDescription(charSequence);
        }
    }

    public void setErrorEnabled(boolean z7) throws Resources.NotFoundException {
        q qVar = this.f5271k;
        if (qVar.f5360k == z7) {
            return;
        }
        qVar.c();
        TextInputLayout textInputLayout = qVar.f5353b;
        if (z7) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(qVar.f5352a, null);
            qVar.f5361l = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_error);
            qVar.f5361l.setTextAlignment(5);
            Typeface typeface = qVar.f5370u;
            if (typeface != null) {
                qVar.f5361l.setTypeface(typeface);
            }
            int i6 = qVar.f5363n;
            qVar.f5363n = i6;
            AppCompatTextView appCompatTextView2 = qVar.f5361l;
            if (appCompatTextView2 != null) {
                textInputLayout.l(appCompatTextView2, i6);
            }
            ColorStateList colorStateList = qVar.f5364o;
            qVar.f5364o = colorStateList;
            AppCompatTextView appCompatTextView3 = qVar.f5361l;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            CharSequence charSequence = qVar.f5362m;
            qVar.f5362m = charSequence;
            AppCompatTextView appCompatTextView4 = qVar.f5361l;
            if (appCompatTextView4 != null) {
                appCompatTextView4.setContentDescription(charSequence);
            }
            qVar.f5361l.setVisibility(4);
            AppCompatTextView appCompatTextView5 = qVar.f5361l;
            WeakHashMap weakHashMap = s0.f8353a;
            appCompatTextView5.setAccessibilityLiveRegion(1);
            qVar.a(qVar.f5361l, 0);
        } else {
            qVar.g();
            qVar.h(qVar.f5361l, 0);
            qVar.f5361l = null;
            textInputLayout.p();
            textInputLayout.y();
        }
        qVar.f5360k = z7;
    }

    public void setErrorIconDrawable(int i6) throws Resources.NotFoundException {
        setErrorIconDrawable(i6 != 0 ? com.bumptech.glide.c.h(getContext(), i6) : null);
        u7.d.x(this, this.f5280o0, this.f5282p0);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        View.OnLongClickListener onLongClickListener = this.f5278n0;
        CheckableImageButton checkableImageButton = this.f5280o0;
        checkableImageButton.setOnClickListener(onClickListener);
        k(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f5278n0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.f5280o0;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        k(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        if (this.f5282p0 != colorStateList) {
            this.f5282p0 = colorStateList;
            u7.d.a(this, this.f5280o0, colorStateList, this.f5284q0);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        if (this.f5284q0 != mode) {
            this.f5284q0 = mode;
            u7.d.a(this, this.f5280o0, this.f5282p0, mode);
        }
    }

    public void setErrorTextAppearance(int i6) {
        q qVar = this.f5271k;
        qVar.f5363n = i6;
        AppCompatTextView appCompatTextView = qVar.f5361l;
        if (appCompatTextView != null) {
            qVar.f5353b.l(appCompatTextView, i6);
        }
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        q qVar = this.f5271k;
        qVar.f5364o = colorStateList;
        AppCompatTextView appCompatTextView = qVar.f5361l;
        if (appCompatTextView == null || colorStateList == null) {
            return;
        }
        appCompatTextView.setTextColor(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z7) {
        if (this.E0 != z7) {
            this.E0 = z7;
            t(false, false);
        }
    }

    public void setHelperText(CharSequence charSequence) throws Resources.NotFoundException {
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        q qVar = this.f5271k;
        if (zIsEmpty) {
            if (qVar.f5366q) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!qVar.f5366q) {
            setHelperTextEnabled(true);
        }
        qVar.c();
        qVar.f5365p = charSequence;
        qVar.f5367r.setText(charSequence);
        int i6 = qVar.f5357h;
        if (i6 != 2) {
            qVar.f5358i = 2;
        }
        qVar.j(i6, qVar.f5358i, qVar.i(qVar.f5367r, charSequence));
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        q qVar = this.f5271k;
        qVar.f5369t = colorStateList;
        AppCompatTextView appCompatTextView = qVar.f5367r;
        if (appCompatTextView == null || colorStateList == null) {
            return;
        }
        appCompatTextView.setTextColor(colorStateList);
    }

    public void setHelperTextEnabled(boolean z7) throws Resources.NotFoundException {
        int i6 = 0;
        q qVar = this.f5271k;
        if (qVar.f5366q == z7) {
            return;
        }
        qVar.c();
        if (z7) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(qVar.f5352a, null);
            qVar.f5367r = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_helper_text);
            qVar.f5367r.setTextAlignment(5);
            Typeface typeface = qVar.f5370u;
            if (typeface != null) {
                qVar.f5367r.setTypeface(typeface);
            }
            qVar.f5367r.setVisibility(4);
            AppCompatTextView appCompatTextView2 = qVar.f5367r;
            WeakHashMap weakHashMap = s0.f8353a;
            appCompatTextView2.setAccessibilityLiveRegion(1);
            int i10 = qVar.f5368s;
            qVar.f5368s = i10;
            AppCompatTextView appCompatTextView3 = qVar.f5367r;
            if (appCompatTextView3 != null) {
                n5.d.R(appCompatTextView3, i10);
            }
            ColorStateList colorStateList = qVar.f5369t;
            qVar.f5369t = colorStateList;
            AppCompatTextView appCompatTextView4 = qVar.f5367r;
            if (appCompatTextView4 != null && colorStateList != null) {
                appCompatTextView4.setTextColor(colorStateList);
            }
            qVar.a(qVar.f5367r, 1);
            qVar.f5367r.setAccessibilityDelegate(new p(i6, qVar));
        } else {
            qVar.c();
            int i11 = qVar.f5357h;
            if (i11 == 2) {
                qVar.f5358i = 0;
            }
            qVar.j(i11, qVar.f5358i, qVar.i(qVar.f5367r, ""));
            qVar.h(qVar.f5367r, 1);
            qVar.f5367r = null;
            TextInputLayout textInputLayout = qVar.f5353b;
            textInputLayout.p();
            textInputLayout.y();
        }
        qVar.f5366q = z7;
    }

    public void setHelperTextTextAppearance(int i6) {
        q qVar = this.f5271k;
        qVar.f5368s = i6;
        AppCompatTextView appCompatTextView = qVar.f5367r;
        if (appCompatTextView != null) {
            n5.d.R(appCompatTextView, i6);
        }
    }

    public void setHint(CharSequence charSequence) {
        if (this.C) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z7) {
        this.F0 = z7;
    }

    public void setHintEnabled(boolean z7) {
        if (z7 != this.C) {
            this.C = z7;
            if (z7) {
                CharSequence hint = this.f5261e.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.D)) {
                        setHint(hint);
                    }
                    this.f5261e.setHint((CharSequence) null);
                }
                this.E = true;
            } else {
                this.E = false;
                if (!TextUtils.isEmpty(this.D) && TextUtils.isEmpty(this.f5261e.getHint())) {
                    this.f5261e.setHint(this.D);
                }
                setHintInternal(null);
            }
            if (this.f5261e != null) {
                s();
            }
        }
    }

    public void setHintTextAppearance(int i6) {
        com.google.android.material.internal.d dVar = this.D0;
        dVar.k(i6);
        this.f5288s0 = dVar.f5016p;
        if (this.f5261e != null) {
            t(false, false);
            s();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.f5288s0 != colorStateList) {
            if (this.f5286r0 == null) {
                this.D0.l(colorStateList);
            }
            this.f5288s0 = colorStateList;
            if (this.f5261e != null) {
                t(false, false);
            }
        }
    }

    public void setMaxEms(int i6) {
        this.f5266h = i6;
        EditText editText = this.f5261e;
        if (editText == null || i6 == -1) {
            return;
        }
        editText.setMaxEms(i6);
    }

    public void setMaxWidth(int i6) {
        this.f5269j = i6;
        EditText editText = this.f5261e;
        if (editText == null || i6 == -1) {
            return;
        }
        editText.setMaxWidth(i6);
    }

    public void setMaxWidthResource(int i6) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i6));
    }

    public void setMinEms(int i6) {
        this.f5264g = i6;
        EditText editText = this.f5261e;
        if (editText == null || i6 == -1) {
            return;
        }
        editText.setMinEms(i6);
    }

    public void setMinWidth(int i6) {
        this.f5268i = i6;
        EditText editText = this.f5261e;
        if (editText == null || i6 == -1) {
            return;
        }
        editText.setMinWidth(i6);
    }

    public void setMinWidthResource(int i6) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i6));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i6) {
        setPasswordVisibilityToggleContentDescription(i6 != 0 ? getResources().getText(i6) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i6) {
        setPasswordVisibilityToggleDrawable(i6 != 0 ? com.bumptech.glide.c.h(getContext(), i6) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z7) throws Resources.NotFoundException {
        if (z7 && this.f5260d0 != 1) {
            setEndIconMode(1);
        } else {
            if (z7) {
                return;
            }
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        this.f5267h0 = colorStateList;
        u7.d.a(this, this.f5263f0, colorStateList, this.i0);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        this.i0 = mode;
        u7.d.a(this, this.f5263f0, this.f5267h0, mode);
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (this.f5289t == null) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
            this.f5289t = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_placeholder);
            AppCompatTextView appCompatTextView2 = this.f5289t;
            WeakHashMap weakHashMap = s0.f8353a;
            appCompatTextView2.setImportantForAccessibility(2);
            Fade fade = new Fade();
            fade.f3016c = 87L;
            LinearInterpolator linearInterpolator = y5.a.f11406a;
            fade.d = linearInterpolator;
            this.f5295w = fade;
            fade.f3015b = 67L;
            Fade fade2 = new Fade();
            fade2.f3016c = 87L;
            fade2.d = linearInterpolator;
            this.f5297x = fade2;
            setPlaceholderTextAppearance(this.f5293v);
            setPlaceholderTextColor(this.f5291u);
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.f5287s) {
                setPlaceholderTextEnabled(true);
            }
            this.f5285r = charSequence;
        }
        EditText editText = this.f5261e;
        u(editText != null ? editText.getText().length() : 0);
    }

    public void setPlaceholderTextAppearance(int i6) {
        this.f5293v = i6;
        AppCompatTextView appCompatTextView = this.f5289t;
        if (appCompatTextView != null) {
            n5.d.R(appCompatTextView, i6);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.f5291u != colorStateList) {
            this.f5291u = colorStateList;
            AppCompatTextView appCompatTextView = this.f5289t;
            if (appCompatTextView == null || colorStateList == null) {
                return;
            }
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        s sVar = this.f5256b;
        sVar.getClass();
        sVar.f5375c = TextUtils.isEmpty(charSequence) ? null : charSequence;
        sVar.f5374b.setText(charSequence);
        sVar.d();
    }

    public void setPrefixTextAppearance(int i6) {
        n5.d.R(this.f5256b.f5374b, i6);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.f5256b.f5374b.setTextColor(colorStateList);
    }

    public void setStartIconCheckable(boolean z7) {
        this.f5256b.d.setCheckable(z7);
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.f5256b.d;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(int i6) {
        setStartIconDrawable(i6 != 0 ? com.bumptech.glide.c.h(getContext(), i6) : null);
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        s sVar = this.f5256b;
        View.OnLongClickListener onLongClickListener = sVar.f5377g;
        CheckableImageButton checkableImageButton = sVar.d;
        checkableImageButton.setOnClickListener(onClickListener);
        u7.d.y(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        s sVar = this.f5256b;
        sVar.f5377g = onLongClickListener;
        CheckableImageButton checkableImageButton = sVar.d;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        u7.d.y(checkableImageButton, onLongClickListener);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        s sVar = this.f5256b;
        if (sVar.f5376e != colorStateList) {
            sVar.f5376e = colorStateList;
            u7.d.a(sVar.f5373a, sVar.d, colorStateList, sVar.f);
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        s sVar = this.f5256b;
        if (sVar.f != mode) {
            sVar.f = mode;
            u7.d.a(sVar.f5373a, sVar.d, sVar.f5376e, mode);
        }
    }

    public void setStartIconVisible(boolean z7) {
        this.f5256b.b(z7);
    }

    public void setSuffixText(CharSequence charSequence) {
        this.A = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.B.setText(charSequence);
        x();
    }

    public void setSuffixTextAppearance(int i6) {
        n5.d.R(this.B, i6);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.B.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(u uVar) {
        EditText editText = this.f5261e;
        if (editText != null) {
            s0.q(editText, uVar);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.V) {
            this.V = typeface;
            com.google.android.material.internal.d dVar = this.D0;
            boolean zN = dVar.n(typeface);
            boolean zP = dVar.p(typeface);
            if (zN || zP) {
                dVar.j(false);
            }
            q qVar = this.f5271k;
            if (typeface != qVar.f5370u) {
                qVar.f5370u = typeface;
                AppCompatTextView appCompatTextView = qVar.f5361l;
                if (appCompatTextView != null) {
                    appCompatTextView.setTypeface(typeface);
                }
                AppCompatTextView appCompatTextView2 = qVar.f5367r;
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setTypeface(typeface);
                }
            }
            AppCompatTextView appCompatTextView3 = this.f5279o;
            if (appCompatTextView3 != null) {
                appCompatTextView3.setTypeface(typeface);
            }
        }
    }

    public final void t(boolean z7, boolean z10) {
        ColorStateList colorStateList;
        AppCompatTextView appCompatTextView;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.f5261e;
        boolean z11 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f5261e;
        boolean z12 = editText2 != null && editText2.hasFocus();
        q qVar = this.f5271k;
        boolean zE = qVar.e();
        ColorStateList colorStateList2 = this.f5286r0;
        com.google.android.material.internal.d dVar = this.D0;
        if (colorStateList2 != null) {
            dVar.l(colorStateList2);
            ColorStateList colorStateList3 = this.f5286r0;
            if (dVar.f5014o != colorStateList3) {
                dVar.f5014o = colorStateList3;
                dVar.j(false);
            }
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList4 = this.f5286r0;
            int colorForState = colorStateList4 != null ? colorStateList4.getColorForState(new int[]{-16842910}, this.B0) : this.B0;
            dVar.l(ColorStateList.valueOf(colorForState));
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(colorForState);
            if (dVar.f5014o != colorStateListValueOf) {
                dVar.f5014o = colorStateListValueOf;
                dVar.j(false);
            }
        } else if (zE) {
            AppCompatTextView appCompatTextView2 = qVar.f5361l;
            dVar.l(appCompatTextView2 != null ? appCompatTextView2.getTextColors() : null);
        } else if (this.f5277n && (appCompatTextView = this.f5279o) != null) {
            dVar.l(appCompatTextView.getTextColors());
        } else if (z12 && (colorStateList = this.f5288s0) != null) {
            dVar.l(colorStateList);
        }
        s sVar = this.f5256b;
        if (z11 || !this.E0 || (isEnabled() && z12)) {
            if (z10 || this.C0) {
                ValueAnimator valueAnimator = this.G0;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.G0.cancel();
                }
                if (z7 && this.F0) {
                    a(1.0f);
                } else {
                    dVar.q(1.0f);
                }
                this.C0 = false;
                if (d()) {
                    i();
                }
                EditText editText3 = this.f5261e;
                u(editText3 == null ? 0 : editText3.getText().length());
                sVar.f5378h = false;
                sVar.d();
                x();
                return;
            }
            return;
        }
        if (z10 || !this.C0) {
            ValueAnimator valueAnimator2 = this.G0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.G0.cancel();
            }
            if (z7 && this.F0) {
                a(0.0f);
            } else {
                dVar.q(0.0f);
            }
            if (d() && !((g) this.F).f5319x.isEmpty() && d()) {
                ((g) this.F).w(0.0f, 0.0f, 0.0f, 0.0f);
            }
            this.C0 = true;
            AppCompatTextView appCompatTextView3 = this.f5289t;
            if (appCompatTextView3 != null && this.f5287s) {
                appCompatTextView3.setText((CharSequence) null);
                b0.a(this.f5255a, this.f5297x);
                this.f5289t.setVisibility(4);
            }
            sVar.f5378h = true;
            sVar.d();
            x();
        }
    }

    public final void u(int i6) {
        FrameLayout frameLayout = this.f5255a;
        if (i6 != 0 || this.C0) {
            AppCompatTextView appCompatTextView = this.f5289t;
            if (appCompatTextView == null || !this.f5287s) {
                return;
            }
            appCompatTextView.setText((CharSequence) null);
            b0.a(frameLayout, this.f5297x);
            this.f5289t.setVisibility(4);
            return;
        }
        if (this.f5289t == null || !this.f5287s || TextUtils.isEmpty(this.f5285r)) {
            return;
        }
        this.f5289t.setText(this.f5285r);
        b0.a(frameLayout, this.f5295w);
        this.f5289t.setVisibility(0);
        this.f5289t.bringToFront();
        announceForAccessibility(this.f5285r);
    }

    public final void v(boolean z7, boolean z10) {
        int defaultColor = this.f5296w0.getDefaultColor();
        int colorForState = this.f5296w0.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.f5296w0.getColorForState(new int[]{android.R.attr.state_activated, android.R.attr.state_enabled}, defaultColor);
        if (z7) {
            this.Q = colorForState2;
        } else if (z10) {
            this.Q = colorForState;
        } else {
            this.Q = defaultColor;
        }
    }

    public final void w() throws Resources.NotFoundException {
        int paddingEnd;
        if (this.f5261e == null) {
            return;
        }
        if (g() || this.f5280o0.getVisibility() == 0) {
            paddingEnd = 0;
        } else {
            EditText editText = this.f5261e;
            WeakHashMap weakHashMap = s0.f8353a;
            paddingEnd = editText.getPaddingEnd();
        }
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding);
        int paddingTop = this.f5261e.getPaddingTop();
        int paddingBottom = this.f5261e.getPaddingBottom();
        WeakHashMap weakHashMap2 = s0.f8353a;
        this.B.setPaddingRelative(dimensionPixelSize, paddingTop, paddingEnd, paddingBottom);
    }

    public final void x() {
        AppCompatTextView appCompatTextView = this.B;
        int visibility = appCompatTextView.getVisibility();
        int i6 = (this.A == null || this.C0) ? 8 : 0;
        if (visibility != i6) {
            getEndIconDelegate().c(i6 == 0);
        }
        q();
        appCompatTextView.setVisibility(i6);
        o();
    }

    public final void y() throws Resources.NotFoundException {
        AppCompatTextView appCompatTextView;
        EditText editText;
        EditText editText2;
        if (this.F == null || this.L == 0) {
            return;
        }
        boolean z7 = false;
        boolean z10 = isFocused() || ((editText2 = this.f5261e) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.f5261e) != null && editText.isHovered())) {
            z7 = true;
        }
        boolean zIsEnabled = isEnabled();
        q qVar = this.f5271k;
        if (!zIsEnabled) {
            this.Q = this.B0;
        } else if (qVar.e()) {
            if (this.f5296w0 != null) {
                v(z10, z7);
            } else {
                AppCompatTextView appCompatTextView2 = qVar.f5361l;
                this.Q = appCompatTextView2 != null ? appCompatTextView2.getCurrentTextColor() : -1;
            }
        } else if (!this.f5277n || (appCompatTextView = this.f5279o) == null) {
            if (z10) {
                this.Q = this.f5294v0;
            } else if (z7) {
                this.Q = this.f5292u0;
            } else {
                this.Q = this.f5290t0;
            }
        } else if (this.f5296w0 != null) {
            v(z10, z7);
        } else {
            this.Q = appCompatTextView.getCurrentTextColor();
        }
        r();
        u7.d.x(this, this.f5280o0, this.f5282p0);
        s sVar = this.f5256b;
        u7.d.x(sVar.f5373a, sVar.d, sVar.f5376e);
        ColorStateList colorStateList = this.f5267h0;
        CheckableImageButton checkableImageButton = this.f5263f0;
        u7.d.x(this, checkableImageButton, colorStateList);
        n endIconDelegate = getEndIconDelegate();
        endIconDelegate.getClass();
        if (endIconDelegate instanceof m) {
            if (!qVar.e() || getEndIconDrawable() == null) {
                u7.d.a(this, checkableImageButton, this.f5267h0, this.i0);
            } else {
                Drawable drawableMutate = n5.d.W(getEndIconDrawable()).mutate();
                AppCompatTextView appCompatTextView3 = qVar.f5361l;
                g0.a.g(drawableMutate, appCompatTextView3 != null ? appCompatTextView3.getCurrentTextColor() : -1);
                checkableImageButton.setImageDrawable(drawableMutate);
            }
        }
        if (this.L == 2) {
            int i6 = this.N;
            if (z10 && isEnabled()) {
                this.N = this.P;
            } else {
                this.N = this.O;
            }
            if (this.N != i6 && d() && !this.C0) {
                if (d()) {
                    ((g) this.F).w(0.0f, 0.0f, 0.0f, 0.0f);
                }
                i();
            }
        }
        if (this.L == 1) {
            if (!isEnabled()) {
                this.R = this.f5299y0;
            } else if (z7 && !z10) {
                this.R = this.A0;
            } else if (z10) {
                this.R = this.f5301z0;
            } else {
                this.R = this.x0;
            }
        }
        b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v53 */
    /* JADX WARN: Type inference failed for: r3v54, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v79 */
    public TextInputLayout(Context context, AttributeSet attributeSet, int i6) throws Resources.NotFoundException {
        int i10;
        ?? r32;
        super(y6.a.a(context, attributeSet, i6, R.style.Widget_Design_TextInputLayout), attributeSet, i6);
        this.f5264g = -1;
        this.f5266h = -1;
        this.f5268i = -1;
        this.f5269j = -1;
        this.f5271k = new q(this);
        this.S = new Rect();
        this.T = new Rect();
        this.U = new RectF();
        this.f5259c0 = new LinkedHashSet();
        this.f5260d0 = 0;
        SparseArray sparseArray = new SparseArray();
        this.f5262e0 = sparseArray;
        this.f5265g0 = new LinkedHashSet();
        com.google.android.material.internal.d dVar = new com.google.android.material.internal.d(this);
        this.D0 = dVar;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f5255a = frameLayout;
        FrameLayout frameLayout2 = new FrameLayout(context2);
        this.d = frameLayout2;
        LinearLayout linearLayout = new LinearLayout(context2);
        this.f5258c = linearLayout;
        AppCompatTextView appCompatTextView = new AppCompatTextView(context2, null);
        this.B = appCompatTextView;
        linearLayout.setVisibility(8);
        frameLayout2.setVisibility(8);
        appCompatTextView.setVisibility(8);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context2);
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflaterFrom.inflate(R.layout.design_text_input_end_icon, (ViewGroup) linearLayout, false);
        this.f5280o0 = checkableImageButton;
        CheckableImageButton checkableImageButton2 = (CheckableImageButton) layoutInflaterFrom.inflate(R.layout.design_text_input_end_icon, (ViewGroup) frameLayout2, false);
        this.f5263f0 = checkableImageButton2;
        frameLayout.setAddStatesFromChildren(true);
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        LinearInterpolator linearInterpolator = y5.a.f11406a;
        dVar.W = linearInterpolator;
        dVar.j(false);
        dVar.V = linearInterpolator;
        dVar.j(false);
        dVar.m(8388659);
        a1.b bVarK = a0.k(context2, attributeSet, x5.a.f11021b0, i6, R.style.Widget_Design_TextInputLayout, 22, 20, 35, 40, 44);
        s sVar = new s(this, bVarK);
        this.f5256b = sVar;
        TypedArray typedArray = (TypedArray) bVarK.f48c;
        this.C = typedArray.getBoolean(43, true);
        setHint(typedArray.getText(4));
        this.F0 = typedArray.getBoolean(42, true);
        this.E0 = typedArray.getBoolean(37, true);
        if (typedArray.hasValue(6)) {
            i10 = -1;
            setMinEms(typedArray.getInt(6, -1));
        } else {
            i10 = -1;
            if (typedArray.hasValue(3)) {
                setMinWidth(typedArray.getDimensionPixelSize(3, -1));
            }
        }
        if (typedArray.hasValue(5)) {
            setMaxEms(typedArray.getInt(5, i10));
        } else if (typedArray.hasValue(2)) {
            setMaxWidth(typedArray.getDimensionPixelSize(2, i10));
        }
        this.I = u6.m.b(context2, attributeSet, i6, R.style.Widget_Design_TextInputLayout).a();
        this.K = context2.getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.M = typedArray.getDimensionPixelOffset(9, 0);
        this.O = typedArray.getDimensionPixelSize(16, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_default));
        this.P = typedArray.getDimensionPixelSize(17, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.N = this.O;
        float dimension = typedArray.getDimension(13, -1.0f);
        float dimension2 = typedArray.getDimension(12, -1.0f);
        float dimension3 = typedArray.getDimension(10, -1.0f);
        float dimension4 = typedArray.getDimension(11, -1.0f);
        u6.l lVarF = this.I.f();
        if (dimension >= 0.0f) {
            lVarF.f10392e = new u6.a(dimension);
        }
        if (dimension2 >= 0.0f) {
            lVarF.f = new u6.a(dimension2);
        }
        if (dimension3 >= 0.0f) {
            lVarF.f10393g = new u6.a(dimension3);
        }
        if (dimension4 >= 0.0f) {
            lVarF.f10394h = new u6.a(dimension4);
        }
        this.I = lVarF.a();
        ColorStateList colorStateListJ = com.bumptech.glide.d.j(context2, bVarK, 7);
        if (colorStateListJ != null) {
            int defaultColor = colorStateListJ.getDefaultColor();
            this.x0 = defaultColor;
            this.R = defaultColor;
            if (colorStateListJ.isStateful()) {
                this.f5299y0 = colorStateListJ.getColorForState(new int[]{-16842910}, -1);
                this.f5301z0 = colorStateListJ.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
                this.A0 = colorStateListJ.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
            } else {
                this.f5301z0 = this.x0;
                ColorStateList colorStateListK = u7.d.k(context2, R.color.mtrl_filled_background_color);
                this.f5299y0 = colorStateListK.getColorForState(new int[]{-16842910}, -1);
                this.A0 = colorStateListK.getColorForState(new int[]{android.R.attr.state_hovered}, -1);
            }
        } else {
            this.R = 0;
            this.x0 = 0;
            this.f5299y0 = 0;
            this.f5301z0 = 0;
            this.A0 = 0;
        }
        if (typedArray.hasValue(1)) {
            ColorStateList colorStateListS = bVarK.s(1);
            this.f5288s0 = colorStateListS;
            this.f5286r0 = colorStateListS;
        }
        ColorStateList colorStateListJ2 = com.bumptech.glide.d.j(context2, bVarK, 14);
        this.f5294v0 = typedArray.getColor(14, 0);
        this.f5290t0 = u7.d.i(context2, R.color.mtrl_textinput_default_box_stroke_color);
        this.B0 = u7.d.i(context2, R.color.mtrl_textinput_disabled_color);
        this.f5292u0 = u7.d.i(context2, R.color.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateListJ2 != null) {
            setBoxStrokeColorStateList(colorStateListJ2);
        }
        if (typedArray.hasValue(15)) {
            setBoxStrokeErrorColor(com.bumptech.glide.d.j(context2, bVarK, 15));
        }
        if (typedArray.getResourceId(44, -1) != -1) {
            r32 = 0;
            setHintTextAppearance(typedArray.getResourceId(44, 0));
        } else {
            r32 = 0;
        }
        int resourceId = typedArray.getResourceId(35, r32);
        CharSequence text = typedArray.getText(30);
        boolean z7 = typedArray.getBoolean(31, r32);
        checkableImageButton.setId(R.id.text_input_error_icon);
        if (com.bumptech.glide.d.u(context2)) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginStart(r32);
        }
        if (typedArray.hasValue(33)) {
            this.f5282p0 = com.bumptech.glide.d.j(context2, bVarK, 33);
        }
        if (typedArray.hasValue(34)) {
            this.f5284q0 = a0.l(typedArray.getInt(34, -1), null);
        }
        if (typedArray.hasValue(32)) {
            setErrorIconDrawable(bVarK.t(32));
        }
        checkableImageButton.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        WeakHashMap weakHashMap = s0.f8353a;
        checkableImageButton.setImportantForAccessibility(2);
        checkableImageButton.setClickable(false);
        checkableImageButton.setPressable(false);
        checkableImageButton.setFocusable(false);
        int resourceId2 = typedArray.getResourceId(40, 0);
        boolean z10 = typedArray.getBoolean(39, false);
        CharSequence text2 = typedArray.getText(38);
        int resourceId3 = typedArray.getResourceId(52, 0);
        CharSequence text3 = typedArray.getText(51);
        int resourceId4 = typedArray.getResourceId(65, 0);
        CharSequence text4 = typedArray.getText(64);
        boolean z11 = typedArray.getBoolean(18, false);
        setCounterMaxLength(typedArray.getInt(19, -1));
        this.f5283q = typedArray.getResourceId(22, 0);
        this.f5281p = typedArray.getResourceId(20, 0);
        setBoxBackgroundMode(typedArray.getInt(8, 0));
        if (com.bumptech.glide.d.u(context2)) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton2.getLayoutParams()).setMarginStart(0);
        }
        int resourceId5 = typedArray.getResourceId(26, 0);
        sparseArray.append(-1, new f(this, resourceId5, 0));
        sparseArray.append(0, new f(this, 0, 1));
        sparseArray.append(1, new r(this, resourceId5 == 0 ? typedArray.getResourceId(47, 0) : resourceId5));
        sparseArray.append(2, new e(this, resourceId5));
        sparseArray.append(3, new m(this, resourceId5));
        if (!typedArray.hasValue(48)) {
            if (typedArray.hasValue(28)) {
                this.f5267h0 = com.bumptech.glide.d.j(context2, bVarK, 28);
            }
            if (typedArray.hasValue(29)) {
                this.i0 = a0.l(typedArray.getInt(29, -1), null);
            }
        }
        if (typedArray.hasValue(27)) {
            setEndIconMode(typedArray.getInt(27, 0));
            if (typedArray.hasValue(25)) {
                setEndIconContentDescription(typedArray.getText(25));
            }
            setEndIconCheckable(typedArray.getBoolean(24, true));
        } else if (typedArray.hasValue(48)) {
            if (typedArray.hasValue(49)) {
                this.f5267h0 = com.bumptech.glide.d.j(context2, bVarK, 49);
            }
            if (typedArray.hasValue(50)) {
                this.i0 = a0.l(typedArray.getInt(50, -1), null);
            }
            setEndIconMode(typedArray.getBoolean(48, false) ? 1 : 0);
            setEndIconContentDescription(typedArray.getText(46));
        }
        appCompatTextView.setId(R.id.textinput_suffix_text);
        appCompatTextView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 80));
        appCompatTextView.setAccessibilityLiveRegion(1);
        setErrorContentDescription(text);
        setCounterOverflowTextAppearance(this.f5281p);
        setHelperTextTextAppearance(resourceId2);
        setErrorTextAppearance(resourceId);
        setCounterTextAppearance(this.f5283q);
        setPlaceholderText(text3);
        setPlaceholderTextAppearance(resourceId3);
        setSuffixTextAppearance(resourceId4);
        if (typedArray.hasValue(36)) {
            setErrorTextColor(bVarK.s(36));
        }
        if (typedArray.hasValue(41)) {
            setHelperTextColor(bVarK.s(41));
        }
        if (typedArray.hasValue(45)) {
            setHintTextColor(bVarK.s(45));
        }
        if (typedArray.hasValue(23)) {
            setCounterTextColor(bVarK.s(23));
        }
        if (typedArray.hasValue(21)) {
            setCounterOverflowTextColor(bVarK.s(21));
        }
        if (typedArray.hasValue(53)) {
            setPlaceholderTextColor(bVarK.s(53));
        }
        if (typedArray.hasValue(66)) {
            setSuffixTextColor(bVarK.s(66));
        }
        setEnabled(typedArray.getBoolean(0, true));
        bVarK.F();
        setImportantForAccessibility(2);
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 26 && i11 >= 26) {
            j0.m(this, 1);
        }
        frameLayout2.addView(checkableImageButton2);
        linearLayout.addView(appCompatTextView);
        linearLayout.addView(checkableImageButton);
        linearLayout.addView(frameLayout2);
        frameLayout.addView(sVar);
        frameLayout.addView(linearLayout);
        addView(frameLayout);
        setHelperTextEnabled(z10);
        setErrorEnabled(z7);
        setCounterEnabled(z11);
        setHelperText(text2);
        setSuffixText(text4);
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.f5263f0.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.f5263f0;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            u7.d.a(this, checkableImageButton, this.f5267h0, this.i0);
            u7.d.x(this, checkableImageButton, this.f5267h0);
        }
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.f5256b.a(drawable);
    }

    public void setErrorIconDrawable(Drawable drawable) throws Resources.NotFoundException {
        CheckableImageButton checkableImageButton = this.f5280o0;
        checkableImageButton.setImageDrawable(drawable);
        r();
        u7.d.a(this, checkableImageButton, this.f5282p0, this.f5284q0);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.f5263f0.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.f5263f0.setImageDrawable(drawable);
    }

    public void setHint(int i6) {
        setHint(i6 != 0 ? getResources().getText(i6) : null);
    }

    public void setStartIconContentDescription(int i6) {
        setStartIconContentDescription(i6 != 0 ? getResources().getText(i6) : null);
    }
}
