package androidx.appcompat.widget;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import java.lang.reflect.InvocationTargetException;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class SwitchCompat extends CompoundButton {
    public static final g3 R = new g3("thumbPos", Float.class, 0);
    public static final int[] S = {R.attr.state_checked};
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public int G;
    public boolean H;
    public final TextPaint I;
    public final ColorStateList J;
    public StaticLayout K;
    public StaticLayout L;
    public final i.a M;
    public ObjectAnimator N;
    public y O;
    public i3 P;
    public final Rect Q;

    /* renamed from: a, reason: collision with root package name */
    public Drawable f606a;

    /* renamed from: b, reason: collision with root package name */
    public ColorStateList f607b;

    /* renamed from: c, reason: collision with root package name */
    public PorterDuff.Mode f608c;
    public boolean d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f609e;
    public Drawable f;

    /* renamed from: g, reason: collision with root package name */
    public ColorStateList f610g;

    /* renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f611h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f612i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f613j;

    /* renamed from: k, reason: collision with root package name */
    public int f614k;

    /* renamed from: l, reason: collision with root package name */
    public int f615l;

    /* renamed from: m, reason: collision with root package name */
    public int f616m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f617n;

    /* renamed from: o, reason: collision with root package name */
    public CharSequence f618o;

    /* renamed from: p, reason: collision with root package name */
    public CharSequence f619p;

    /* renamed from: q, reason: collision with root package name */
    public CharSequence f620q;

    /* renamed from: r, reason: collision with root package name */
    public CharSequence f621r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f622s;

    /* renamed from: t, reason: collision with root package name */
    public int f623t;

    /* renamed from: u, reason: collision with root package name */
    public final int f624u;

    /* renamed from: v, reason: collision with root package name */
    public float f625v;

    /* renamed from: w, reason: collision with root package name */
    public float f626w;

    /* renamed from: x, reason: collision with root package name */
    public final VelocityTracker f627x;

    /* renamed from: y, reason: collision with root package name */
    public final int f628y;

    /* renamed from: z, reason: collision with root package name */
    public float f629z;

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.p2elite.brtv2.R.attr.switchStyle);
    }

    private y getEmojiTextViewHelper() {
        if (this.O == null) {
            this.O = new y(this);
        }
        return this.O;
    }

    private boolean getTargetCheckedState() {
        return this.f629z > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((c4.a(this) ? 1.0f - this.f629z : this.f629z) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.f;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.Q;
        drawable.getPadding(rect);
        Drawable drawable2 = this.f606a;
        Rect rectB = drawable2 != null ? m1.b(drawable2) : m1.f786c;
        return ((((this.A - this.C) - rect.left) - rect.right) - rectB.left) - rectB.right;
    }

    private void setTextOffInternal(CharSequence charSequence) {
        this.f620q = charSequence;
        y emojiTextViewHelper = getEmojiTextViewHelper();
        TransformationMethod transformationMethodI = ((com.bumptech.glide.d) emojiTextViewHelper.f895b.f32b).I(this.M);
        if (transformationMethodI != null) {
            charSequence = transformationMethodI.getTransformation(charSequence, this);
        }
        this.f621r = charSequence;
        this.L = null;
        if (this.f622s) {
            d();
        }
    }

    private void setTextOnInternal(CharSequence charSequence) {
        this.f618o = charSequence;
        y emojiTextViewHelper = getEmojiTextViewHelper();
        TransformationMethod transformationMethodI = ((com.bumptech.glide.d) emojiTextViewHelper.f895b.f32b).I(this.M);
        if (transformationMethodI != null) {
            charSequence = transformationMethodI.getTransformation(charSequence, this);
        }
        this.f619p = charSequence;
        this.K = null;
        if (this.f622s) {
            d();
        }
    }

    public final void a() {
        Drawable drawable = this.f606a;
        if (drawable != null) {
            if (this.d || this.f609e) {
                Drawable drawableMutate = n5.d.W(drawable).mutate();
                this.f606a = drawableMutate;
                if (this.d) {
                    g0.a.h(drawableMutate, this.f607b);
                }
                if (this.f609e) {
                    g0.a.i(this.f606a, this.f608c);
                }
                if (this.f606a.isStateful()) {
                    this.f606a.setState(getDrawableState());
                }
            }
        }
    }

    public final void b() {
        Drawable drawable = this.f;
        if (drawable != null) {
            if (this.f612i || this.f613j) {
                Drawable drawableMutate = n5.d.W(drawable).mutate();
                this.f = drawableMutate;
                if (this.f612i) {
                    g0.a.h(drawableMutate, this.f610g);
                }
                if (this.f613j) {
                    g0.a.i(this.f, this.f611h);
                }
                if (this.f.isStateful()) {
                    this.f.setState(getDrawableState());
                }
            }
        }
    }

    public final void c() {
        setTextOnInternal(this.f618o);
        setTextOffInternal(this.f620q);
        requestLayout();
    }

    public final void d() {
        if (this.P == null && ((com.bumptech.glide.d) this.O.f895b.f32b).t() && b1.i.f3106j != null) {
            b1.i iVarA = b1.i.a();
            int iB = iVarA.b();
            if (iB == 3 || iB == 0) {
                i3 i3Var = new i3(this);
                this.P = i3Var;
                iVarA.f(i3Var);
            }
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i6;
        int i10;
        int i11 = this.D;
        int i12 = this.E;
        int i13 = this.F;
        int i14 = this.G;
        int thumbOffset = getThumbOffset() + i11;
        Drawable drawable = this.f606a;
        Rect rectB = drawable != null ? m1.b(drawable) : m1.f786c;
        Drawable drawable2 = this.f;
        Rect rect = this.Q;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i15 = rect.left;
            thumbOffset += i15;
            if (rectB != null) {
                int i16 = rectB.left;
                if (i16 > i15) {
                    i11 += i16 - i15;
                }
                int i17 = rectB.top;
                int i18 = rect.top;
                i6 = i17 > i18 ? (i17 - i18) + i12 : i12;
                int i19 = rectB.right;
                int i20 = rect.right;
                if (i19 > i20) {
                    i13 -= i19 - i20;
                }
                int i21 = rectB.bottom;
                int i22 = rect.bottom;
                if (i21 > i22) {
                    i10 = i14 - (i21 - i22);
                }
                this.f.setBounds(i11, i6, i13, i10);
            } else {
                i6 = i12;
            }
            i10 = i14;
            this.f.setBounds(i11, i6, i13, i10);
        }
        Drawable drawable3 = this.f606a;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i23 = thumbOffset - rect.left;
            int i24 = thumbOffset + this.C + rect.right;
            this.f606a.setBounds(i23, i12, i24, i14);
            Drawable background = getBackground();
            if (background != null) {
                g0.a.f(background, i23, i12, i24, i14);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableHotspotChanged(float f, float f3) {
        super.drawableHotspotChanged(f, f3);
        Drawable drawable = this.f606a;
        if (drawable != null) {
            g0.a.e(drawable, f, f3);
        }
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            g0.a.e(drawable2, f, f3);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f606a;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        Drawable drawable2 = this.f;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!c4.a(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.A;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.f616m : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (c4.a(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.A;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.f616m : compoundPaddingRight;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return n5.d.U(super.getCustomSelectionActionModeCallback());
    }

    public boolean getShowText() {
        return this.f622s;
    }

    public boolean getSplitTrack() {
        return this.f617n;
    }

    public int getSwitchMinWidth() {
        return this.f615l;
    }

    public int getSwitchPadding() {
        return this.f616m;
    }

    public CharSequence getTextOff() {
        return this.f620q;
    }

    public CharSequence getTextOn() {
        return this.f618o;
    }

    public Drawable getThumbDrawable() {
        return this.f606a;
    }

    public final float getThumbPosition() {
        return this.f629z;
    }

    public int getThumbTextPadding() {
        return this.f614k;
    }

    public ColorStateList getThumbTintList() {
        return this.f607b;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f608c;
    }

    public Drawable getTrackDrawable() {
        return this.f;
    }

    public ColorStateList getTrackTintList() {
        return this.f610g;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.f611h;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f606a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.N;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.N.end();
        this.N = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i6) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i6 + 1);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, S);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int width;
        super.onDraw(canvas);
        Drawable drawable = this.f;
        Rect rect = this.Q;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i6 = this.E;
        int i10 = this.G;
        int i11 = i6 + rect.top;
        int i12 = i10 - rect.bottom;
        Drawable drawable2 = this.f606a;
        if (drawable != null) {
            if (!this.f617n || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect rectB = m1.b(drawable2);
                drawable2.copyBounds(rect);
                rect.left += rectB.left;
                rect.right -= rectB.right;
                int iSave = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(iSave);
            }
        }
        int iSave2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        StaticLayout staticLayout = getTargetCheckedState() ? this.K : this.L;
        if (staticLayout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.J;
            TextPaint textPaint = this.I;
            if (colorStateList != null) {
                textPaint.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            textPaint.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (staticLayout.getWidth() / 2), ((i11 + i12) / 2) - (staticLayout.getHeight() / 2));
            staticLayout.draw(canvas);
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        if (Build.VERSION.SDK_INT < 30) {
            CharSequence charSequence = isChecked() ? this.f618o : this.f620q;
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(text);
            sb.append(' ');
            sb.append(charSequence);
            accessibilityNodeInfo.setText(sb);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int iMax;
        int iG;
        int paddingLeft;
        int height;
        int paddingTop;
        super.onLayout(z7, i6, i10, i11, i12);
        int iMax2 = 0;
        if (this.f606a != null) {
            Drawable drawable = this.f;
            Rect rect = this.Q;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect rectB = m1.b(this.f606a);
            iMax = Math.max(0, rectB.left - rect.left);
            iMax2 = Math.max(0, rectB.right - rect.right);
        } else {
            iMax = 0;
        }
        if (c4.a(this)) {
            paddingLeft = getPaddingLeft() + iMax;
            iG = a.e.g(paddingLeft, this.A, iMax, iMax2);
        } else {
            int width = (getWidth() - getPaddingRight()) - iMax2;
            int i13 = iMax2 + (width - this.A) + iMax;
            iG = width;
            paddingLeft = i13;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int height2 = ((getHeight() + getPaddingTop()) - getPaddingBottom()) / 2;
            int i14 = this.B;
            int i15 = height2 - (i14 / 2);
            height = i14 + i15;
            paddingTop = i15;
        } else if (gravity != 80) {
            paddingTop = getPaddingTop();
            height = this.B + paddingTop;
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = height - this.B;
        }
        this.D = paddingLeft;
        this.E = paddingTop;
        this.G = height;
        this.F = iG;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i6, int i10) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int intrinsicWidth;
        int intrinsicHeight;
        int intrinsicHeight2 = 0;
        if (this.f622s) {
            StaticLayout staticLayout = this.K;
            TextPaint textPaint = this.I;
            if (staticLayout == null) {
                CharSequence charSequence = this.f619p;
                this.K = new StaticLayout(charSequence, textPaint, charSequence != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
            if (this.L == null) {
                CharSequence charSequence2 = this.f621r;
                this.L = new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
        }
        Drawable drawable = this.f606a;
        Rect rect = this.Q;
        if (drawable != null) {
            drawable.getPadding(rect);
            intrinsicWidth = (this.f606a.getIntrinsicWidth() - rect.left) - rect.right;
            intrinsicHeight = this.f606a.getIntrinsicHeight();
        } else {
            intrinsicWidth = 0;
            intrinsicHeight = 0;
        }
        this.C = Math.max(this.f622s ? (this.f614k * 2) + Math.max(this.K.getWidth(), this.L.getWidth()) : 0, intrinsicWidth);
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            intrinsicHeight2 = this.f.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int iMax = rect.left;
        int iMax2 = rect.right;
        Drawable drawable3 = this.f606a;
        if (drawable3 != null) {
            Rect rectB = m1.b(drawable3);
            iMax = Math.max(iMax, rectB.left);
            iMax2 = Math.max(iMax2, rectB.right);
        }
        int iMax3 = this.H ? Math.max(this.f615l, (this.C * 2) + iMax + iMax2) : this.f615l;
        int iMax4 = Math.max(intrinsicHeight2, intrinsicHeight);
        this.A = iMax3;
        this.B = iMax4;
        super.onMeasure(i6, i10);
        if (getMeasuredHeight() < iMax4) {
            setMeasuredDimension(getMeasuredWidthAndState(), iMax4);
        }
    }

    @Override // android.view.View
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f618o : this.f620q;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x008f  */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onTouchEvent(android.view.MotionEvent r10) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 328
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z7) {
        super.setAllCaps(z7);
        getEmojiTextViewHelper().c(z7);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z7) throws Resources.NotFoundException {
        super.setChecked(z7);
        boolean zIsChecked = isChecked();
        if (zIsChecked) {
            if (Build.VERSION.SDK_INT >= 30) {
                Object string = this.f618o;
                if (string == null) {
                    string = getResources().getString(com.p2elite.brtv2.R.string.abc_capital_on);
                }
                Object obj = string;
                WeakHashMap weakHashMap = n0.s0.f8353a;
                new n0.c0(com.p2elite.brtv2.R.id.tag_state_description, CharSequence.class, 64, 30, 2).d(this, obj);
            }
        } else if (Build.VERSION.SDK_INT >= 30) {
            Object string2 = this.f620q;
            if (string2 == null) {
                string2 = getResources().getString(com.p2elite.brtv2.R.string.abc_capital_off);
            }
            Object obj2 = string2;
            WeakHashMap weakHashMap2 = n0.s0.f8353a;
            new n0.c0(com.p2elite.brtv2.R.id.tag_state_description, CharSequence.class, 64, 30, 2).d(this, obj2);
        }
        if (getWindowToken() != null) {
            WeakHashMap weakHashMap3 = n0.s0.f8353a;
            if (isLaidOut()) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, R, zIsChecked ? 1.0f : 0.0f);
                this.N = objectAnimatorOfFloat;
                objectAnimatorOfFloat.setDuration(250L);
                h3.a(this.N, true);
                this.N.start();
                return;
            }
        }
        ObjectAnimator objectAnimator = this.N;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        setThumbPosition(zIsChecked ? 1.0f : 0.0f);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(n5.d.X(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z7) {
        getEmojiTextViewHelper().d(z7);
        setTextOnInternal(this.f618o);
        setTextOffInternal(this.f620q);
        requestLayout();
    }

    public final void setEnforceSwitchWidth(boolean z7) {
        this.H = z7;
        invalidate();
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setShowText(boolean z7) {
        if (this.f622s != z7) {
            this.f622s = z7;
            requestLayout();
            if (z7) {
                d();
            }
        }
    }

    public void setSplitTrack(boolean z7) {
        this.f617n = z7;
        invalidate();
    }

    public void setSwitchMinWidth(int i6) {
        this.f615l = i6;
        requestLayout();
    }

    public void setSwitchPadding(int i6) {
        this.f616m = i6;
        requestLayout();
    }

    public void setSwitchTypeface(Typeface typeface) {
        TextPaint textPaint = this.I;
        if ((textPaint.getTypeface() == null || textPaint.getTypeface().equals(typeface)) && (textPaint.getTypeface() != null || typeface == null)) {
            return;
        }
        textPaint.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setTextOff(CharSequence charSequence) throws Resources.NotFoundException {
        setTextOffInternal(charSequence);
        requestLayout();
        if (isChecked() || Build.VERSION.SDK_INT < 30) {
            return;
        }
        Object string = this.f620q;
        if (string == null) {
            string = getResources().getString(com.p2elite.brtv2.R.string.abc_capital_off);
        }
        WeakHashMap weakHashMap = n0.s0.f8353a;
        new n0.c0(com.p2elite.brtv2.R.id.tag_state_description, CharSequence.class, 64, 30, 2).d(this, string);
    }

    public void setTextOn(CharSequence charSequence) throws Resources.NotFoundException {
        setTextOnInternal(charSequence);
        requestLayout();
        if (!isChecked() || Build.VERSION.SDK_INT < 30) {
            return;
        }
        Object string = this.f618o;
        if (string == null) {
            string = getResources().getString(com.p2elite.brtv2.R.string.abc_capital_on);
        }
        WeakHashMap weakHashMap = n0.s0.f8353a;
        new n0.c0(com.p2elite.brtv2.R.id.tag_state_description, CharSequence.class, 64, 30, 2).d(this, string);
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f606a;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f606a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbPosition(float f) {
        this.f629z = f;
        invalidate();
    }

    public void setThumbResource(int i6) {
        setThumbDrawable(com.bumptech.glide.c.h(getContext(), i6));
    }

    public void setThumbTextPadding(int i6) {
        this.f614k = i6;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f607b = colorStateList;
        this.d = true;
        a();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f608c = mode;
        this.f609e = true;
        a();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i6) {
        setTrackDrawable(com.bumptech.glide.c.h(getContext(), i6));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.f610g = colorStateList;
        this.f612i = true;
        b();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.f611h = mode;
        this.f613j = true;
        b();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() throws Resources.NotFoundException {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f606a || drawable == this.f;
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i6) throws Resources.NotFoundException {
        int resourceId;
        super(context, attributeSet, i6);
        this.f607b = null;
        this.f608c = null;
        this.d = false;
        this.f609e = false;
        this.f610g = null;
        this.f611h = null;
        this.f612i = false;
        this.f613j = false;
        this.f627x = VelocityTracker.obtain();
        this.H = true;
        this.Q = new Rect();
        j3.a(this, getContext());
        TextPaint textPaint = new TextPaint(1);
        this.I = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        int[] iArr = e.a.f6368x;
        a1.b bVarC = a1.b.C(context, attributeSet, iArr, i6);
        n0.s0.p(this, context, iArr, attributeSet, (TypedArray) bVarC.f48c, i6, 0);
        Drawable drawableT = bVarC.t(2);
        this.f606a = drawableT;
        if (drawableT != null) {
            drawableT.setCallback(this);
        }
        Drawable drawableT2 = bVarC.t(11);
        this.f = drawableT2;
        if (drawableT2 != null) {
            drawableT2.setCallback(this);
        }
        TypedArray typedArray = (TypedArray) bVarC.f48c;
        setTextOnInternal(typedArray.getText(0));
        setTextOffInternal(typedArray.getText(1));
        this.f622s = typedArray.getBoolean(3, true);
        this.f614k = typedArray.getDimensionPixelSize(8, 0);
        this.f615l = typedArray.getDimensionPixelSize(5, 0);
        this.f616m = typedArray.getDimensionPixelSize(6, 0);
        this.f617n = typedArray.getBoolean(4, false);
        ColorStateList colorStateListS = bVarC.s(9);
        if (colorStateListS != null) {
            this.f607b = colorStateListS;
            this.d = true;
        }
        PorterDuff.Mode modeC = m1.c(typedArray.getInt(10, -1), null);
        if (this.f608c != modeC) {
            this.f608c = modeC;
            this.f609e = true;
        }
        if (this.d || this.f609e) {
            a();
        }
        ColorStateList colorStateListS2 = bVarC.s(12);
        if (colorStateListS2 != null) {
            this.f610g = colorStateListS2;
            this.f612i = true;
        }
        PorterDuff.Mode modeC2 = m1.c(typedArray.getInt(13, -1), null);
        if (this.f611h != modeC2) {
            this.f611h = modeC2;
            this.f613j = true;
        }
        if (this.f612i || this.f613j) {
            b();
        }
        int resourceId2 = typedArray.getResourceId(7, 0);
        if (resourceId2 != 0) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(resourceId2, e.a.f6369y);
            ColorStateList colorStateList = (!typedArrayObtainStyledAttributes.hasValue(3) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(3, 0)) == 0 || (colorStateList = u7.d.k(context, resourceId)) == null) ? typedArrayObtainStyledAttributes.getColorStateList(3) : colorStateList;
            if (colorStateList != null) {
                this.J = colorStateList;
            } else {
                this.J = getTextColors();
            }
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
            if (dimensionPixelSize != 0) {
                float f = dimensionPixelSize;
                if (f != textPaint.getTextSize()) {
                    textPaint.setTextSize(f);
                    requestLayout();
                }
            }
            int i10 = typedArrayObtainStyledAttributes.getInt(1, -1);
            int i11 = typedArrayObtainStyledAttributes.getInt(2, -1);
            Typeface typeface = i10 != 1 ? i10 != 2 ? i10 != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF;
            if (i11 > 0) {
                Typeface typefaceDefaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i11) : Typeface.create(typeface, i11);
                setSwitchTypeface(typefaceDefaultFromStyle);
                int i12 = (~(typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0)) & i11;
                textPaint.setFakeBoldText((i12 & 1) != 0);
                textPaint.setTextSkewX((i12 & 2) != 0 ? -0.25f : 0.0f);
            } else {
                textPaint.setFakeBoldText(false);
                textPaint.setTextSkewX(0.0f);
                setSwitchTypeface(typeface);
            }
            if (typedArrayObtainStyledAttributes.getBoolean(14, false)) {
                Context context2 = getContext();
                i.a aVar = new i.a();
                aVar.f7288a = context2.getResources().getConfiguration().locale;
                this.M = aVar;
            } else {
                this.M = null;
            }
            setTextOnInternal(this.f618o);
            setTextOffInternal(this.f620q);
            typedArrayObtainStyledAttributes.recycle();
        }
        new x0(this).f(attributeSet, i6);
        bVarC.F();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f624u = viewConfiguration.getScaledTouchSlop();
        this.f628y = viewConfiguration.getScaledMinimumFlingVelocity();
        getEmojiTextViewHelper().b(attributeSet, i6);
        refreshDrawableState();
        setChecked(isChecked());
    }
}
