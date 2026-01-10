package com.google.android.material.chip;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.app.r0;
import androidx.appcompat.widget.AppCompatCheckBox;
import com.google.android.material.internal.a0;
import com.google.android.material.internal.f;
import com.google.android.material.internal.g;
import com.google.android.material.internal.v;
import e6.b;
import e6.c;
import e6.d;
import g0.i;
import g0.j;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.WeakHashMap;
import n0.g0;
import n0.s0;
import u6.m;
import u6.x;
import y5.e;
import y6.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class Chip extends AppCompatCheckBox implements c, x, g {

    /* renamed from: x, reason: collision with root package name */
    public static final Rect f4766x = new Rect();

    /* renamed from: y, reason: collision with root package name */
    public static final int[] f4767y = {R.attr.state_selected};

    /* renamed from: z, reason: collision with root package name */
    public static final int[] f4768z = {R.attr.state_checkable};

    /* renamed from: e, reason: collision with root package name */
    public d f4769e;
    public InsetDrawable f;

    /* renamed from: g, reason: collision with root package name */
    public RippleDrawable f4770g;

    /* renamed from: h, reason: collision with root package name */
    public View.OnClickListener f4771h;

    /* renamed from: i, reason: collision with root package name */
    public CompoundButton.OnCheckedChangeListener f4772i;

    /* renamed from: j, reason: collision with root package name */
    public f f4773j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f4774k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f4775l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f4776m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f4777n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f4778o;

    /* renamed from: p, reason: collision with root package name */
    public int f4779p;

    /* renamed from: q, reason: collision with root package name */
    public int f4780q;

    /* renamed from: r, reason: collision with root package name */
    public CharSequence f4781r;

    /* renamed from: s, reason: collision with root package name */
    public final b f4782s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f4783t;

    /* renamed from: u, reason: collision with root package name */
    public final Rect f4784u;

    /* renamed from: v, reason: collision with root package name */
    public final RectF f4785v;

    /* renamed from: w, reason: collision with root package name */
    public final v f4786w;

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.p2elite.brtv2.R.attr.chipStyle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RectF getCloseIconTouchBounds() {
        RectF rectF = this.f4785v;
        rectF.setEmpty();
        if (d() && this.f4771h != null) {
            d dVar = this.f4769e;
            Rect bounds = dVar.getBounds();
            rectF.setEmpty();
            if (dVar.b0()) {
                float f = dVar.f6573e0 + dVar.f6572d0 + dVar.O + dVar.f6571c0 + dVar.f6570b0;
                if (n5.d.w(dVar) == 0) {
                    float f3 = bounds.right;
                    rectF.right = f3;
                    rectF.left = f3 - f;
                } else {
                    float f4 = bounds.left;
                    rectF.left = f4;
                    rectF.right = f4 + f;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
        }
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        int i6 = (int) closeIconTouchBounds.left;
        int i10 = (int) closeIconTouchBounds.top;
        int i11 = (int) closeIconTouchBounds.right;
        int i12 = (int) closeIconTouchBounds.bottom;
        Rect rect = this.f4784u;
        rect.set(i6, i10, i11, i12);
        return rect;
    }

    private r6.d getTextAppearance() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.f6579l0.f;
        }
        return null;
    }

    private void setCloseIconHovered(boolean z7) {
        if (this.f4776m != z7) {
            this.f4776m = z7;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z7) {
        if (this.f4775l != z7) {
            this.f4775l = z7;
            refreshDrawableState();
        }
    }

    public final void c(int i6) {
        this.f4780q = i6;
        if (!this.f4778o) {
            InsetDrawable insetDrawable = this.f;
            if (insetDrawable == null) {
                int[] iArr = s6.c.f9823a;
                g();
                return;
            } else {
                if (insetDrawable != null) {
                    this.f = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    int[] iArr2 = s6.c.f9823a;
                    g();
                    return;
                }
                return;
            }
        }
        int iMax = Math.max(0, i6 - ((int) this.f4769e.f6594z));
        int iMax2 = Math.max(0, i6 - this.f4769e.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            InsetDrawable insetDrawable2 = this.f;
            if (insetDrawable2 == null) {
                int[] iArr3 = s6.c.f9823a;
                g();
                return;
            } else {
                if (insetDrawable2 != null) {
                    this.f = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    int[] iArr4 = s6.c.f9823a;
                    g();
                    return;
                }
                return;
            }
        }
        int i10 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i11 = iMax > 0 ? iMax / 2 : 0;
        if (this.f != null) {
            Rect rect = new Rect();
            this.f.getPadding(rect);
            if (rect.top == i11 && rect.bottom == i11 && rect.left == i10 && rect.right == i10) {
                int[] iArr5 = s6.c.f9823a;
                g();
                return;
            }
        }
        if (getMinHeight() != i6) {
            setMinHeight(i6);
        }
        if (getMinWidth() != i6) {
            setMinWidth(i6);
        }
        this.f = new InsetDrawable((Drawable) this.f4769e, i10, i11, i10, i11);
        int[] iArr6 = s6.c.f9823a;
        g();
    }

    public final boolean d() {
        d dVar = this.f4769e;
        if (dVar != null) {
            Object obj = dVar.L;
            if (obj == null) {
                obj = null;
            } else if (obj instanceof i) {
                obj = ((j) ((i) obj)).f;
            }
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return !this.f4783t ? super.dispatchHoverEvent(motionEvent) : this.f4782s.m(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0057  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean dispatchKeyEvent(android.view.KeyEvent r10) {
        /*
            r9 = this;
            boolean r0 = r9.f4783t
            if (r0 != 0) goto L9
            boolean r10 = super.dispatchKeyEvent(r10)
            return r10
        L9:
            e6.b r0 = r9.f4782s
            r0.getClass()
            int r1 = r10.getAction()
            r2 = 1
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = 0
            if (r1 == r2) goto L85
            int r1 = r10.getKeyCode()
            r5 = 61
            r6 = 0
            if (r1 == r5) goto L6f
            r5 = 66
            if (r1 == r5) goto L57
            switch(r1) {
                case 19: goto L29;
                case 20: goto L29;
                case 21: goto L29;
                case 22: goto L29;
                case 23: goto L57;
                default: goto L28;
            }
        L28:
            goto L85
        L29:
            boolean r7 = r10.hasNoModifiers()
            if (r7 == 0) goto L85
            r7 = 19
            if (r1 == r7) goto L41
            r7 = 21
            if (r1 == r7) goto L3e
            r7 = 22
            if (r1 == r7) goto L43
            r5 = 130(0x82, float:1.82E-43)
            goto L43
        L3e:
            r5 = 17
            goto L43
        L41:
            r5 = 33
        L43:
            int r1 = r10.getRepeatCount()
            int r1 = r1 + r2
            r7 = 0
        L49:
            if (r4 >= r1) goto L55
            boolean r8 = r0.q(r5, r6)
            if (r8 == 0) goto L55
            int r4 = r4 + 1
            r7 = 1
            goto L49
        L55:
            r4 = r7
            goto L85
        L57:
            boolean r1 = r10.hasNoModifiers()
            if (r1 == 0) goto L85
            int r1 = r10.getRepeatCount()
            if (r1 != 0) goto L85
            int r1 = r0.f10626l
            if (r1 == r3) goto L6d
            r4 = 16
            boolean r1 = r0.s(r1, r4, r6)
        L6d:
            r4 = 1
            goto L85
        L6f:
            boolean r1 = r10.hasNoModifiers()
            if (r1 == 0) goto L7b
            r1 = 2
            boolean r4 = r0.q(r1, r6)
            goto L85
        L7b:
            boolean r1 = r10.hasModifiers(r2)
            if (r1 == 0) goto L85
            boolean r4 = r0.q(r2, r6)
        L85:
            if (r4 == 0) goto L8c
            int r0 = r0.f10626l
            if (r0 == r3) goto L8c
            return r2
        L8c:
            boolean r10 = super.dispatchKeyEvent(r10)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [boolean, int] */
    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        int i6;
        super.drawableStateChanged();
        d dVar = this.f4769e;
        boolean zE = false;
        if (dVar != null && d.C(dVar.L)) {
            d dVar2 = this.f4769e;
            ?? IsEnabled = isEnabled();
            int i10 = IsEnabled;
            if (this.f4777n) {
                i10 = IsEnabled + 1;
            }
            int i11 = i10;
            if (this.f4776m) {
                i11 = i10 + 1;
            }
            int i12 = i11;
            if (this.f4775l) {
                i12 = i11 + 1;
            }
            int i13 = i12;
            if (isChecked()) {
                i13 = i12 + 1;
            }
            int[] iArr = new int[i13];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i6 = 1;
            } else {
                i6 = 0;
            }
            if (this.f4777n) {
                iArr[i6] = 16842908;
                i6++;
            }
            if (this.f4776m) {
                iArr[i6] = 16843623;
                i6++;
            }
            if (this.f4775l) {
                iArr[i6] = 16842919;
                i6++;
            }
            if (isChecked()) {
                iArr[i6] = 16842913;
            }
            if (!Arrays.equals(dVar2.f6595z0, iArr)) {
                dVar2.f6595z0 = iArr;
                if (dVar2.b0()) {
                    zE = dVar2.E(dVar2.getState(), iArr);
                }
            }
        }
        if (zE) {
            invalidate();
        }
    }

    public final boolean e() {
        d dVar = this.f4769e;
        return dVar != null && dVar.Q;
    }

    public final void f() {
        d dVar;
        if (!d() || (dVar = this.f4769e) == null || !dVar.K || this.f4771h == null) {
            s0.q(this, null);
            this.f4783t = false;
        } else {
            s0.q(this, this.f4782s);
            this.f4783t = true;
        }
    }

    public final void g() {
        this.f4770g = new RippleDrawable(s6.c.b(this.f4769e.D), getBackgroundDrawable(), null);
        this.f4769e.getClass();
        RippleDrawable rippleDrawable = this.f4770g;
        WeakHashMap weakHashMap = s0.f8353a;
        setBackground(rippleDrawable);
        h();
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.f4781r)) {
            return this.f4781r;
        }
        if (!e()) {
            return isClickable() ? "android.widget.Button" : "android.view.View";
        }
        ViewParent parent = getParent();
        return ((parent instanceof ChipGroup) && ((ChipGroup) parent).f4789h.d) ? "android.widget.RadioButton" : "android.widget.CompoundButton";
    }

    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f;
        return insetDrawable == null ? this.f4769e : insetDrawable;
    }

    public Drawable getCheckedIcon() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.S;
        }
        return null;
    }

    public ColorStateList getCheckedIconTint() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.T;
        }
        return null;
    }

    public ColorStateList getChipBackgroundColor() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.f6592y;
        }
        return null;
    }

    public float getChipCornerRadius() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return Math.max(0.0f, dVar.A());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.f4769e;
    }

    public float getChipEndPadding() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.f6573e0;
        }
        return 0.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable getChipIcon() {
        Drawable drawable;
        d dVar = this.f4769e;
        if (dVar == null || (drawable = dVar.G) == 0) {
            return null;
        }
        boolean z7 = drawable instanceof i;
        Drawable drawable2 = drawable;
        if (z7) {
            drawable2 = ((j) ((i) drawable)).f;
        }
        return drawable2;
    }

    public float getChipIconSize() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.I;
        }
        return 0.0f;
    }

    public ColorStateList getChipIconTint() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.H;
        }
        return null;
    }

    public float getChipMinHeight() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.f6594z;
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.W;
        }
        return 0.0f;
    }

    public ColorStateList getChipStrokeColor() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.B;
        }
        return null;
    }

    public float getChipStrokeWidth() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.C;
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable getCloseIcon() {
        Drawable drawable;
        d dVar = this.f4769e;
        if (dVar == null || (drawable = dVar.L) == 0) {
            return null;
        }
        boolean z7 = drawable instanceof i;
        Drawable drawable2 = drawable;
        if (z7) {
            drawable2 = ((j) ((i) drawable)).f;
        }
        return drawable2;
    }

    public CharSequence getCloseIconContentDescription() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.P;
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.f6572d0;
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.O;
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.f6571c0;
        }
        return 0.0f;
    }

    public ColorStateList getCloseIconTint() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.N;
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.C0;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        if (this.f4783t) {
            b bVar = this.f4782s;
            if (bVar.f10626l == 1 || bVar.f10625k == 1) {
                rect.set(getCloseIconTouchBoundsInt());
                return;
            }
        }
        super.getFocusedRect(rect);
    }

    public e getHideMotionSpec() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.V;
        }
        return null;
    }

    public float getIconEndPadding() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.Y;
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.X;
        }
        return 0.0f;
    }

    public ColorStateList getRippleColor() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.D;
        }
        return null;
    }

    public m getShapeAppearanceModel() {
        return this.f4769e.f10367a.f10350a;
    }

    public e getShowMotionSpec() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.U;
        }
        return null;
    }

    public float getTextEndPadding() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.f6570b0;
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        d dVar = this.f4769e;
        if (dVar != null) {
            return dVar.Z;
        }
        return 0.0f;
    }

    public final void h() {
        d dVar;
        if (TextUtils.isEmpty(getText()) || (dVar = this.f4769e) == null) {
            return;
        }
        int iZ = (int) (dVar.z() + dVar.f6573e0 + dVar.f6570b0);
        d dVar2 = this.f4769e;
        int iY = (int) (dVar2.y() + dVar2.W + dVar2.Z);
        if (this.f != null) {
            Rect rect = new Rect();
            this.f.getPadding(rect);
            iY += rect.left;
            iZ += rect.right;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        WeakHashMap weakHashMap = s0.f8353a;
        setPaddingRelative(iY, paddingTop, iZ, paddingBottom);
    }

    public final void i() {
        TextPaint paint = getPaint();
        d dVar = this.f4769e;
        if (dVar != null) {
            paint.drawableState = dVar.getState();
        }
        r6.d textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.e(getContext(), paint, this.f4786w);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        o9.d.D(this, this.f4769e);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i6) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i6 + 2);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f4767y);
        }
        if (e()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f4768z);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z7, int i6, Rect rect) {
        super.onFocusChanged(z7, i6, rect);
        if (this.f4783t) {
            b bVar = this.f4782s;
            int i10 = bVar.f10626l;
            if (i10 != Integer.MIN_VALUE) {
                bVar.j(i10);
            }
            if (z7) {
                bVar.q(i6, rect);
            }
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i6;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        accessibilityNodeInfo.setCheckable(e());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            if (chipGroup.f4959c) {
                i6 = 0;
                for (int i10 = 0; i10 < chipGroup.getChildCount(); i10++) {
                    if (chipGroup.getChildAt(i10) instanceof Chip) {
                        if (((Chip) chipGroup.getChildAt(i10)) == this) {
                            break;
                        } else {
                            i6++;
                        }
                    }
                }
                i6 = -1;
            } else {
                i6 = -1;
            }
            Object tag = getTag(com.p2elite.brtv2.R.id.row_index_key);
            accessibilityNodeInfo.setCollectionItemInfo(o0.g.a(tag instanceof Integer ? ((Integer) tag).intValue() : -1, 1, i6, 1, isChecked()).f8539a);
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i6) {
        if (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) {
            return PointerIcon.getSystemIcon(getContext(), 1002);
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRtlPropertiesChanged(int i6) {
        super.onRtlPropertiesChanged(i6);
        if (this.f4779p != i6) {
            this.f4779p = i6;
            h();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
    
        if (r0 != 3) goto L28;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getActionMasked()
            android.graphics.RectF r1 = r5.getCloseIconTouchBounds()
            float r2 = r6.getX()
            float r3 = r6.getY()
            boolean r1 = r1.contains(r2, r3)
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L4a
            if (r0 == r3) goto L2c
            r4 = 2
            if (r0 == r4) goto L21
            r1 = 3
            if (r0 == r1) goto L45
            goto L50
        L21:
            boolean r0 = r5.f4775l
            if (r0 == 0) goto L50
            if (r1 != 0) goto L2a
            r5.setCloseIconPressed(r2)
        L2a:
            r0 = 1
            goto L51
        L2c:
            boolean r0 = r5.f4775l
            if (r0 == 0) goto L45
            r5.playSoundEffect(r2)
            android.view.View$OnClickListener r0 = r5.f4771h
            if (r0 == 0) goto L3a
            r0.onClick(r5)
        L3a:
            boolean r0 = r5.f4783t
            if (r0 == 0) goto L43
            e6.b r0 = r5.f4782s
            r0.x(r3, r3)
        L43:
            r0 = 1
            goto L46
        L45:
            r0 = 0
        L46:
            r5.setCloseIconPressed(r2)
            goto L51
        L4a:
            if (r1 == 0) goto L50
            r5.setCloseIconPressed(r3)
            goto L2a
        L50:
            r0 = 0
        L51:
            if (r0 != 0) goto L59
            boolean r6 = super.onTouchEvent(r6)
            if (r6 == 0) goto L5a
        L59:
            r2 = 1
        L5a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setAccessibilityClassName(CharSequence charSequence) {
        this.f4781r = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f4770g) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i6) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f4770g) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i6) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z7) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.F(z7);
        }
    }

    public void setCheckableResource(int i6) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.F(dVar.f6574f0.getResources().getBoolean(i6));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z7) {
        d dVar = this.f4769e;
        if (dVar == null) {
            this.f4774k = z7;
        } else if (dVar.Q) {
            super.setChecked(z7);
        }
    }

    public void setCheckedIcon(Drawable drawable) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.G(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z7) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setCheckedIconVisible(z7);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setCheckedIconVisible(i6);
    }

    public void setCheckedIconResource(int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.G(com.bumptech.glide.c.h(dVar.f6574f0, i6));
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.H(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i6) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.H(u7.d.k(dVar.f6574f0, i6));
        }
    }

    public void setCheckedIconVisible(int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.I(dVar.f6574f0.getResources().getBoolean(i6));
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        d dVar = this.f4769e;
        if (dVar == null || dVar.f6592y == colorStateList) {
            return;
        }
        dVar.f6592y = colorStateList;
        dVar.onStateChange(dVar.getState());
    }

    public void setChipBackgroundColorResource(int i6) {
        ColorStateList colorStateListK;
        d dVar = this.f4769e;
        if (dVar == null || dVar.f6592y == (colorStateListK = u7.d.k(dVar.f6574f0, i6))) {
            return;
        }
        dVar.f6592y = colorStateListK;
        dVar.onStateChange(dVar.getState());
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.J(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i6) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.J(dVar.f6574f0.getResources().getDimension(i6));
        }
    }

    public void setChipDrawable(d dVar) {
        d dVar2 = this.f4769e;
        if (dVar2 != dVar) {
            if (dVar2 != null) {
                dVar2.B0 = new WeakReference(null);
            }
            this.f4769e = dVar;
            dVar.D0 = false;
            dVar.B0 = new WeakReference(this);
            c(this.f4780q);
        }
    }

    public void setChipEndPadding(float f) {
        d dVar = this.f4769e;
        if (dVar == null || dVar.f6573e0 == f) {
            return;
        }
        dVar.f6573e0 = f;
        dVar.invalidateSelf();
        dVar.D();
    }

    public void setChipEndPaddingResource(int i6) throws Resources.NotFoundException {
        d dVar = this.f4769e;
        if (dVar != null) {
            float dimension = dVar.f6574f0.getResources().getDimension(i6);
            if (dVar.f6573e0 != dimension) {
                dVar.f6573e0 = dimension;
                dVar.invalidateSelf();
                dVar.D();
            }
        }
    }

    public void setChipIcon(Drawable drawable) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.K(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z7) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setChipIconVisible(z7);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setChipIconVisible(i6);
    }

    public void setChipIconResource(int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.K(com.bumptech.glide.c.h(dVar.f6574f0, i6));
        }
    }

    public void setChipIconSize(float f) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.L(f);
        }
    }

    public void setChipIconSizeResource(int i6) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.L(dVar.f6574f0.getResources().getDimension(i6));
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.M(colorStateList);
        }
    }

    public void setChipIconTintResource(int i6) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.M(u7.d.k(dVar.f6574f0, i6));
        }
    }

    public void setChipIconVisible(int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.N(dVar.f6574f0.getResources().getBoolean(i6));
        }
    }

    public void setChipMinHeight(float f) {
        d dVar = this.f4769e;
        if (dVar == null || dVar.f6594z == f) {
            return;
        }
        dVar.f6594z = f;
        dVar.invalidateSelf();
        dVar.D();
    }

    public void setChipMinHeightResource(int i6) throws Resources.NotFoundException {
        d dVar = this.f4769e;
        if (dVar != null) {
            float dimension = dVar.f6574f0.getResources().getDimension(i6);
            if (dVar.f6594z != dimension) {
                dVar.f6594z = dimension;
                dVar.invalidateSelf();
                dVar.D();
            }
        }
    }

    public void setChipStartPadding(float f) {
        d dVar = this.f4769e;
        if (dVar == null || dVar.W == f) {
            return;
        }
        dVar.W = f;
        dVar.invalidateSelf();
        dVar.D();
    }

    public void setChipStartPaddingResource(int i6) throws Resources.NotFoundException {
        d dVar = this.f4769e;
        if (dVar != null) {
            float dimension = dVar.f6574f0.getResources().getDimension(i6);
            if (dVar.W != dimension) {
                dVar.W = dimension;
                dVar.invalidateSelf();
                dVar.D();
            }
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.O(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i6) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.O(u7.d.k(dVar.f6574f0, i6));
        }
    }

    public void setChipStrokeWidth(float f) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.P(f);
        }
    }

    public void setChipStrokeWidthResource(int i6) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.P(dVar.f6574f0.getResources().getDimension(i6));
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i6) {
        setText(getResources().getString(i6));
    }

    public void setCloseIcon(Drawable drawable) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.Q(drawable);
        }
        f();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        d dVar = this.f4769e;
        if (dVar == null || dVar.P == charSequence) {
            return;
        }
        l0.b bVarC = l0.b.c();
        bVarC.getClass();
        r0 r0Var = l0.j.f7940a;
        dVar.P = bVarC.d(charSequence);
        dVar.invalidateSelf();
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z7) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setCloseIconVisible(z7);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setCloseIconVisible(i6);
    }

    public void setCloseIconEndPadding(float f) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.R(f);
        }
    }

    public void setCloseIconEndPaddingResource(int i6) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.R(dVar.f6574f0.getResources().getDimension(i6));
        }
    }

    public void setCloseIconResource(int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.Q(com.bumptech.glide.c.h(dVar.f6574f0, i6));
        }
        f();
    }

    public void setCloseIconSize(float f) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.S(f);
        }
    }

    public void setCloseIconSizeResource(int i6) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.S(dVar.f6574f0.getResources().getDimension(i6));
        }
    }

    public void setCloseIconStartPadding(float f) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.T(f);
        }
    }

    public void setCloseIconStartPaddingResource(int i6) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.T(dVar.f6574f0.getResources().getDimension(i6));
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.U(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i6) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.U(u7.d.k(dVar.f6574f0, i6));
        }
    }

    public void setCloseIconVisible(int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setCloseIconVisible(getResources().getBoolean(i6));
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i6, int i10, int i11, int i12) {
        if (i6 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i11 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i6, i10, i11, i12);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i6, int i10, int i11, int i12) {
        if (i6 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i11 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i6, i10, i11, i12);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.m(f);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f4769e == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.C0 = truncateAt;
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z7) {
        this.f4778o = z7;
        c(this.f4780q);
    }

    @Override // android.widget.TextView
    public void setGravity(int i6) {
        if (i6 != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i6);
        }
    }

    public void setHideMotionSpec(e eVar) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.V = eVar;
        }
    }

    public void setHideMotionSpecResource(int i6) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.V = e.b(dVar.f6574f0, i6);
        }
    }

    public void setIconEndPadding(float f) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.W(f);
        }
    }

    public void setIconEndPaddingResource(int i6) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.W(dVar.f6574f0.getResources().getDimension(i6));
        }
    }

    public void setIconStartPadding(float f) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.X(f);
        }
    }

    public void setIconStartPaddingResource(int i6) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.X(dVar.f6574f0.getResources().getDimension(i6));
        }
    }

    @Override // com.google.android.material.internal.g
    public void setInternalOnCheckedChangeListener(f fVar) {
        this.f4773j = fVar;
    }

    @Override // android.view.View
    public void setLayoutDirection(int i6) {
        if (this.f4769e == null) {
            return;
        }
        super.setLayoutDirection(i6);
    }

    @Override // android.widget.TextView
    public void setLines(int i6) {
        if (i6 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i6);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i6) {
        if (i6 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i6);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i6) {
        super.setMaxWidth(i6);
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.E0 = i6;
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i6) {
        if (i6 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i6);
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f4772i = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f4771h = onClickListener;
        f();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.Y(colorStateList);
        }
        this.f4769e.getClass();
        g();
    }

    public void setRippleColorResource(int i6) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.Y(u7.d.k(dVar.f6574f0, i6));
            this.f4769e.getClass();
            g();
        }
    }

    @Override // u6.x
    public void setShapeAppearanceModel(m mVar) {
        this.f4769e.setShapeAppearanceModel(mVar);
    }

    public void setShowMotionSpec(e eVar) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.U = eVar;
        }
    }

    public void setShowMotionSpecResource(int i6) {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.U = e.b(dVar.f6574f0, i6);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z7) {
        if (!z7) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z7);
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        d dVar = this.f4769e;
        if (dVar == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(dVar.D0 ? null : charSequence, bufferType);
        d dVar2 = this.f4769e;
        if (dVar2 == null || TextUtils.equals(dVar2.E, charSequence)) {
            return;
        }
        dVar2.E = charSequence;
        dVar2.f6579l0.d = true;
        dVar2.invalidateSelf();
        dVar2.D();
    }

    public void setTextAppearance(r6.d dVar) {
        d dVar2 = this.f4769e;
        if (dVar2 != null) {
            dVar2.f6579l0.b(dVar, dVar2.f6574f0);
        }
        i();
    }

    public void setTextAppearanceResource(int i6) {
        setTextAppearance(getContext(), i6);
    }

    public void setTextEndPadding(float f) {
        d dVar = this.f4769e;
        if (dVar == null || dVar.f6570b0 == f) {
            return;
        }
        dVar.f6570b0 = f;
        dVar.invalidateSelf();
        dVar.D();
    }

    public void setTextEndPaddingResource(int i6) throws Resources.NotFoundException {
        d dVar = this.f4769e;
        if (dVar != null) {
            float dimension = dVar.f6574f0.getResources().getDimension(i6);
            if (dVar.f6570b0 != dimension) {
                dVar.f6570b0 = dimension;
                dVar.invalidateSelf();
                dVar.D();
            }
        }
    }

    public void setTextStartPadding(float f) {
        d dVar = this.f4769e;
        if (dVar == null || dVar.Z == f) {
            return;
        }
        dVar.Z = f;
        dVar.invalidateSelf();
        dVar.D();
    }

    public void setTextStartPaddingResource(int i6) throws Resources.NotFoundException {
        d dVar = this.f4769e;
        if (dVar != null) {
            float dimension = dVar.f6574f0.getResources().getDimension(i6);
            if (dVar.Z != dimension) {
                dVar.Z = dimension;
                dVar.invalidateSelf();
                dVar.D();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Chip(Context context, AttributeSet attributeSet, int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int resourceId;
        super(a.a(context, attributeSet, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_Chip_Action), attributeSet, i6);
        int i10 = 0;
        this.f4784u = new Rect();
        this.f4785v = new RectF();
        this.f4786w = new v(1, this);
        Context context2 = getContext();
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
                Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
                throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
                throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
                throw new UnsupportedOperationException("Chip does not support multi-line text");
            }
            if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
                Log.w("Chip", "Chip text must be vertically center and start aligned");
            }
        }
        d dVar = new d(context2, attributeSet, i6);
        int[] iArr = x5.a.f11028i;
        TypedArray typedArrayJ = a0.j(dVar.f6574f0, attributeSet, iArr, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        dVar.F0 = typedArrayJ.hasValue(37);
        Context context3 = dVar.f6574f0;
        ColorStateList colorStateListK = com.bumptech.glide.d.k(context3, typedArrayJ, 24);
        if (dVar.f6591x != colorStateListK) {
            dVar.f6591x = colorStateListK;
            dVar.onStateChange(dVar.getState());
        }
        ColorStateList colorStateListK2 = com.bumptech.glide.d.k(context3, typedArrayJ, 11);
        if (dVar.f6592y != colorStateListK2) {
            dVar.f6592y = colorStateListK2;
            dVar.onStateChange(dVar.getState());
        }
        float dimension = typedArrayJ.getDimension(19, 0.0f);
        if (dVar.f6594z != dimension) {
            dVar.f6594z = dimension;
            dVar.invalidateSelf();
            dVar.D();
        }
        if (typedArrayJ.hasValue(12)) {
            dVar.J(typedArrayJ.getDimension(12, 0.0f));
        }
        dVar.O(com.bumptech.glide.d.k(context3, typedArrayJ, 22));
        dVar.P(typedArrayJ.getDimension(23, 0.0f));
        dVar.Y(com.bumptech.glide.d.k(context3, typedArrayJ, 36));
        String text = typedArrayJ.getText(5);
        text = text == null ? "" : text;
        boolean zEquals = TextUtils.equals(dVar.E, text);
        com.google.android.material.internal.x xVar = dVar.f6579l0;
        if (!zEquals) {
            dVar.E = text;
            xVar.d = true;
            dVar.invalidateSelf();
            dVar.D();
        }
        r6.d dVar2 = (!typedArrayJ.hasValue(0) || (resourceId = typedArrayJ.getResourceId(0, 0)) == 0) ? null : new r6.d(context3, resourceId);
        dVar2.f9600k = typedArrayJ.getDimension(1, dVar2.f9600k);
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 23) {
            dVar2.f9599j = com.bumptech.glide.d.k(context3, typedArrayJ, 2);
        }
        xVar.b(dVar2, context3);
        int i12 = typedArrayJ.getInt(3, 0);
        if (i12 == 1) {
            dVar.C0 = TextUtils.TruncateAt.START;
        } else if (i12 == 2) {
            dVar.C0 = TextUtils.TruncateAt.MIDDLE;
        } else if (i12 == 3) {
            dVar.C0 = TextUtils.TruncateAt.END;
        }
        dVar.N(typedArrayJ.getBoolean(18, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            dVar.N(typedArrayJ.getBoolean(15, false));
        }
        dVar.K(com.bumptech.glide.d.n(context3, typedArrayJ, 14));
        if (typedArrayJ.hasValue(17)) {
            dVar.M(com.bumptech.glide.d.k(context3, typedArrayJ, 17));
        }
        dVar.L(typedArrayJ.getDimension(16, -1.0f));
        dVar.V(typedArrayJ.getBoolean(31, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            dVar.V(typedArrayJ.getBoolean(26, false));
        }
        dVar.Q(com.bumptech.glide.d.n(context3, typedArrayJ, 25));
        dVar.U(com.bumptech.glide.d.k(context3, typedArrayJ, 30));
        dVar.S(typedArrayJ.getDimension(28, 0.0f));
        dVar.F(typedArrayJ.getBoolean(6, false));
        dVar.I(typedArrayJ.getBoolean(10, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            dVar.I(typedArrayJ.getBoolean(8, false));
        }
        dVar.G(com.bumptech.glide.d.n(context3, typedArrayJ, 7));
        if (typedArrayJ.hasValue(9)) {
            dVar.H(com.bumptech.glide.d.k(context3, typedArrayJ, 9));
        }
        dVar.U = e.a(context3, typedArrayJ, 39);
        dVar.V = e.a(context3, typedArrayJ, 33);
        float dimension2 = typedArrayJ.getDimension(21, 0.0f);
        if (dVar.W != dimension2) {
            dVar.W = dimension2;
            dVar.invalidateSelf();
            dVar.D();
        }
        dVar.X(typedArrayJ.getDimension(35, 0.0f));
        dVar.W(typedArrayJ.getDimension(34, 0.0f));
        float dimension3 = typedArrayJ.getDimension(41, 0.0f);
        if (dVar.Z != dimension3) {
            dVar.Z = dimension3;
            dVar.invalidateSelf();
            dVar.D();
        }
        float dimension4 = typedArrayJ.getDimension(40, 0.0f);
        if (dVar.f6570b0 != dimension4) {
            dVar.f6570b0 = dimension4;
            dVar.invalidateSelf();
            dVar.D();
        }
        dVar.T(typedArrayJ.getDimension(29, 0.0f));
        dVar.R(typedArrayJ.getDimension(27, 0.0f));
        float dimension5 = typedArrayJ.getDimension(13, 0.0f);
        if (dVar.f6573e0 != dimension5) {
            dVar.f6573e0 = dimension5;
            dVar.invalidateSelf();
            dVar.D();
        }
        dVar.E0 = typedArrayJ.getDimensionPixelSize(4, Integer.MAX_VALUE);
        typedArrayJ.recycle();
        a0.a(context2, attributeSet, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_Chip_Action);
        a0.b(context2, attributeSet, iArr, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_Chip_Action);
        this.f4778o = typedArrayObtainStyledAttributes.getBoolean(32, false);
        this.f4780q = (int) Math.ceil(typedArrayObtainStyledAttributes.getDimension(20, (float) Math.ceil(a0.e(getContext(), 48))));
        typedArrayObtainStyledAttributes.recycle();
        setChipDrawable(dVar);
        WeakHashMap weakHashMap = s0.f8353a;
        dVar.m(g0.i(this));
        a0.a(context2, attributeSet, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_Chip_Action);
        a0.b(context2, attributeSet, iArr, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet, iArr, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_Chip_Action);
        if (i11 < 23) {
            setTextColor(com.bumptech.glide.d.k(context2, typedArrayObtainStyledAttributes2, 2));
        }
        boolean zHasValue = typedArrayObtainStyledAttributes2.hasValue(37);
        typedArrayObtainStyledAttributes2.recycle();
        this.f4782s = new b(this, this);
        f();
        if (!zHasValue) {
            setOutlineProvider(new x.a(this, 2));
        }
        setChecked(this.f4774k);
        setText(dVar.E);
        setEllipsize(dVar.C0);
        i();
        if (!this.f4769e.D0) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        h();
        if (this.f4778o) {
            setMinHeight(this.f4780q);
        }
        this.f4779p = getLayoutDirection();
        super.setOnCheckedChangeListener(new e6.a(i10, this));
    }

    public void setCloseIconVisible(boolean z7) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.V(z7);
        }
        f();
    }

    public void setCheckedIconVisible(boolean z7) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.I(z7);
        }
    }

    public void setChipIconVisible(boolean z7) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        d dVar = this.f4769e;
        if (dVar != null) {
            dVar.N(z7);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i6) {
        super.setTextAppearance(context, i6);
        d dVar = this.f4769e;
        if (dVar != null) {
            Context context2 = dVar.f6574f0;
            dVar.f6579l0.b(new r6.d(context2, i6), context2);
        }
        i();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i6) {
        super.setTextAppearance(i6);
        d dVar = this.f4769e;
        if (dVar != null) {
            Context context = dVar.f6574f0;
            dVar.f6579l0.b(new r6.d(context, i6), context);
        }
        i();
    }
}
