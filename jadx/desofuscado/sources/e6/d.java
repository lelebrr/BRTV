package e6;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.google.android.material.chip.Chip;
import com.google.android.material.internal.a0;
import com.google.android.material.internal.w;
import com.google.android.material.internal.x;
import g0.i;
import g0.j;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import u6.l;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends u6.h implements Drawable.Callback, w {
    public static final int[] G0 = {R.attr.state_enabled};
    public static final ShapeDrawable H0 = new ShapeDrawable(new OvalShape());
    public float A;
    public ColorStateList A0;
    public ColorStateList B;
    public WeakReference B0;
    public float C;
    public TextUtils.TruncateAt C0;
    public ColorStateList D;
    public boolean D0;
    public CharSequence E;
    public int E0;
    public boolean F;
    public boolean F0;
    public Drawable G;
    public ColorStateList H;
    public float I;
    public boolean J;
    public boolean K;
    public Drawable L;
    public RippleDrawable M;
    public ColorStateList N;
    public float O;
    public SpannableStringBuilder P;
    public boolean Q;
    public boolean R;
    public Drawable S;
    public ColorStateList T;
    public y5.e U;
    public y5.e V;
    public float W;
    public float X;
    public float Y;
    public float Z;

    /* renamed from: b0, reason: collision with root package name */
    public float f6570b0;

    /* renamed from: c0, reason: collision with root package name */
    public float f6571c0;

    /* renamed from: d0, reason: collision with root package name */
    public float f6572d0;

    /* renamed from: e0, reason: collision with root package name */
    public float f6573e0;

    /* renamed from: f0, reason: collision with root package name */
    public final Context f6574f0;

    /* renamed from: g0, reason: collision with root package name */
    public final Paint f6575g0;

    /* renamed from: h0, reason: collision with root package name */
    public final Paint.FontMetrics f6576h0;
    public final RectF i0;

    /* renamed from: j0, reason: collision with root package name */
    public final PointF f6577j0;

    /* renamed from: k0, reason: collision with root package name */
    public final Path f6578k0;

    /* renamed from: l0, reason: collision with root package name */
    public final x f6579l0;

    /* renamed from: m0, reason: collision with root package name */
    public int f6580m0;

    /* renamed from: n0, reason: collision with root package name */
    public int f6581n0;

    /* renamed from: o0, reason: collision with root package name */
    public int f6582o0;

    /* renamed from: p0, reason: collision with root package name */
    public int f6583p0;

    /* renamed from: q0, reason: collision with root package name */
    public int f6584q0;

    /* renamed from: r0, reason: collision with root package name */
    public int f6585r0;

    /* renamed from: s0, reason: collision with root package name */
    public boolean f6586s0;

    /* renamed from: t0, reason: collision with root package name */
    public int f6587t0;

    /* renamed from: u0, reason: collision with root package name */
    public int f6588u0;

    /* renamed from: v0, reason: collision with root package name */
    public ColorFilter f6589v0;

    /* renamed from: w0, reason: collision with root package name */
    public PorterDuffColorFilter f6590w0;

    /* renamed from: x, reason: collision with root package name */
    public ColorStateList f6591x;
    public ColorStateList x0;

    /* renamed from: y, reason: collision with root package name */
    public ColorStateList f6592y;

    /* renamed from: y0, reason: collision with root package name */
    public PorterDuff.Mode f6593y0;

    /* renamed from: z, reason: collision with root package name */
    public float f6594z;

    /* renamed from: z0, reason: collision with root package name */
    public int[] f6595z0;

    public d(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6, com.p2elite.brtv2.R.style.Widget_MaterialComponents_Chip_Action);
        this.A = -1.0f;
        this.f6575g0 = new Paint(1);
        this.f6576h0 = new Paint.FontMetrics();
        this.i0 = new RectF();
        this.f6577j0 = new PointF();
        this.f6578k0 = new Path();
        this.f6588u0 = 255;
        this.f6593y0 = PorterDuff.Mode.SRC_IN;
        this.B0 = new WeakReference(null);
        k(context);
        this.f6574f0 = context;
        x xVar = new x(this);
        this.f6579l0 = xVar;
        this.E = "";
        xVar.f5081a.density = context.getResources().getDisplayMetrics().density;
        int[] iArr = G0;
        setState(iArr);
        if (!Arrays.equals(this.f6595z0, iArr)) {
            this.f6595z0 = iArr;
            if (b0()) {
                E(getState(), iArr);
            }
        }
        this.D0 = true;
        int[] iArr2 = s6.c.f9823a;
        H0.setTint(-1);
    }

    public static boolean B(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    public static boolean C(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    public static void c0(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public final float A() {
        return this.F0 ? i() : this.A;
    }

    public final void D() {
        c cVar = (c) this.B0.get();
        if (cVar != null) {
            Chip chip = (Chip) cVar;
            chip.c(chip.f4780q);
            chip.requestLayout();
            chip.invalidateOutline();
        }
    }

    public final boolean E(int[] iArr, int[] iArr2) {
        boolean z7;
        boolean z10;
        ColorStateList colorStateList;
        boolean state = true;
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList2 = this.f6591x;
        int iC = c(colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.f6580m0) : 0);
        if (this.f6580m0 != iC) {
            this.f6580m0 = iC;
            zOnStateChange = true;
        }
        ColorStateList colorStateList3 = this.f6592y;
        int iC2 = c(colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.f6581n0) : 0);
        if (this.f6581n0 != iC2) {
            this.f6581n0 = iC2;
            zOnStateChange = true;
        }
        int iF = f0.a.f(iC2, iC);
        if ((this.f6582o0 != iF) | (this.f10367a.f10352c == null)) {
            this.f6582o0 = iF;
            n(ColorStateList.valueOf(iF));
            zOnStateChange = true;
        }
        ColorStateList colorStateList4 = this.B;
        int colorForState = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.f6583p0) : 0;
        if (this.f6583p0 != colorForState) {
            this.f6583p0 = colorForState;
            zOnStateChange = true;
        }
        int colorForState2 = (this.A0 == null || !s6.c.c(iArr)) ? 0 : this.A0.getColorForState(iArr, this.f6584q0);
        if (this.f6584q0 != colorForState2) {
            this.f6584q0 = colorForState2;
        }
        r6.d dVar = this.f6579l0.f;
        int colorForState3 = (dVar == null || (colorStateList = dVar.f9599j) == null) ? 0 : colorStateList.getColorForState(iArr, this.f6585r0);
        if (this.f6585r0 != colorForState3) {
            this.f6585r0 = colorForState3;
            zOnStateChange = true;
        }
        int[] state2 = getState();
        if (state2 != null) {
            int length = state2.length;
            int i6 = 0;
            while (true) {
                if (i6 >= length) {
                    break;
                }
                if (state2[i6] == 16842912) {
                    z7 = this.Q;
                } else {
                    i6++;
                }
            }
        }
        if (this.f6586s0 == z7 || this.S == null) {
            z10 = false;
        } else {
            float fY = y();
            this.f6586s0 = z7;
            if (fY != y()) {
                zOnStateChange = true;
                z10 = true;
            } else {
                zOnStateChange = true;
                z10 = false;
            }
        }
        ColorStateList colorStateList5 = this.x0;
        int colorForState4 = colorStateList5 != null ? colorStateList5.getColorForState(iArr, this.f6587t0) : 0;
        if (this.f6587t0 != colorForState4) {
            this.f6587t0 = colorForState4;
            ColorStateList colorStateList6 = this.x0;
            PorterDuff.Mode mode = this.f6593y0;
            this.f6590w0 = (colorStateList6 == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList6.getColorForState(getState(), 0), mode);
        } else {
            state = zOnStateChange;
        }
        if (C(this.G)) {
            state |= this.G.setState(iArr);
        }
        if (C(this.S)) {
            state |= this.S.setState(iArr);
        }
        if (C(this.L)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            state |= this.L.setState(iArr3);
        }
        int[] iArr4 = s6.c.f9823a;
        if (C(this.M)) {
            state |= this.M.setState(iArr2);
        }
        if (state) {
            invalidateSelf();
        }
        if (z10) {
            D();
        }
        return state;
    }

    public final void F(boolean z7) {
        if (this.Q != z7) {
            this.Q = z7;
            float fY = y();
            if (!z7 && this.f6586s0) {
                this.f6586s0 = false;
            }
            float fY2 = y();
            invalidateSelf();
            if (fY != fY2) {
                D();
            }
        }
    }

    public final void G(Drawable drawable) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (this.S != drawable) {
            float fY = y();
            this.S = drawable;
            float fY2 = y();
            c0(this.S);
            w(this.S);
            invalidateSelf();
            if (fY != fY2) {
                D();
            }
        }
    }

    public final void H(ColorStateList colorStateList) {
        Drawable drawable;
        if (this.T != colorStateList) {
            this.T = colorStateList;
            if (this.R && (drawable = this.S) != null && this.Q) {
                g0.a.h(drawable, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void I(boolean z7) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (this.R != z7) {
            boolean Z = Z();
            this.R = z7;
            boolean Z2 = Z();
            if (Z != Z2) {
                if (Z2) {
                    w(this.S);
                } else {
                    c0(this.S);
                }
                invalidateSelf();
                D();
            }
        }
    }

    public final void J(float f) {
        if (this.A != f) {
            this.A = f;
            l lVarF = this.f10367a.f10350a.f();
            lVarF.c(f);
            setShapeAppearanceModel(lVarF.a());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void K(Drawable drawable) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Drawable drawable2;
        Drawable drawable3 = this.G;
        if (drawable3 != 0) {
            boolean z7 = drawable3 instanceof i;
            drawable2 = drawable3;
            if (z7) {
                drawable2 = ((j) ((i) drawable3)).f;
            }
        } else {
            drawable2 = null;
        }
        if (drawable2 != drawable) {
            float fY = y();
            this.G = drawable != null ? n5.d.W(drawable).mutate() : null;
            float fY2 = y();
            c0(drawable2);
            if (a0()) {
                w(this.G);
            }
            invalidateSelf();
            if (fY != fY2) {
                D();
            }
        }
    }

    public final void L(float f) {
        if (this.I != f) {
            float fY = y();
            this.I = f;
            float fY2 = y();
            invalidateSelf();
            if (fY != fY2) {
                D();
            }
        }
    }

    public final void M(ColorStateList colorStateList) {
        this.J = true;
        if (this.H != colorStateList) {
            this.H = colorStateList;
            if (a0()) {
                g0.a.h(this.G, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void N(boolean z7) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (this.F != z7) {
            boolean zA0 = a0();
            this.F = z7;
            boolean zA02 = a0();
            if (zA0 != zA02) {
                if (zA02) {
                    w(this.G);
                } else {
                    c0(this.G);
                }
                invalidateSelf();
                D();
            }
        }
    }

    public final void O(ColorStateList colorStateList) {
        if (this.B != colorStateList) {
            this.B = colorStateList;
            if (this.F0) {
                s(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void P(float f) {
        if (this.C != f) {
            this.C = f;
            this.f6575g0.setStrokeWidth(f);
            if (this.F0) {
                this.f10367a.f10357j = f;
                invalidateSelf();
            }
            invalidateSelf();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void Q(Drawable drawable) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Drawable drawable2;
        Drawable drawable3 = this.L;
        if (drawable3 != 0) {
            boolean z7 = drawable3 instanceof i;
            drawable2 = drawable3;
            if (z7) {
                drawable2 = ((j) ((i) drawable3)).f;
            }
        } else {
            drawable2 = null;
        }
        if (drawable2 != drawable) {
            float fZ = z();
            this.L = drawable != null ? n5.d.W(drawable).mutate() : null;
            int[] iArr = s6.c.f9823a;
            this.M = new RippleDrawable(s6.c.b(this.D), this.L, H0);
            float fZ2 = z();
            c0(drawable2);
            if (b0()) {
                w(this.L);
            }
            invalidateSelf();
            if (fZ != fZ2) {
                D();
            }
        }
    }

    public final void R(float f) {
        if (this.f6572d0 != f) {
            this.f6572d0 = f;
            invalidateSelf();
            if (b0()) {
                D();
            }
        }
    }

    public final void S(float f) {
        if (this.O != f) {
            this.O = f;
            invalidateSelf();
            if (b0()) {
                D();
            }
        }
    }

    public final void T(float f) {
        if (this.f6571c0 != f) {
            this.f6571c0 = f;
            invalidateSelf();
            if (b0()) {
                D();
            }
        }
    }

    public final void U(ColorStateList colorStateList) {
        if (this.N != colorStateList) {
            this.N = colorStateList;
            if (b0()) {
                g0.a.h(this.L, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void V(boolean z7) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (this.K != z7) {
            boolean zB0 = b0();
            this.K = z7;
            boolean zB02 = b0();
            if (zB0 != zB02) {
                if (zB02) {
                    w(this.L);
                } else {
                    c0(this.L);
                }
                invalidateSelf();
                D();
            }
        }
    }

    public final void W(float f) {
        if (this.Y != f) {
            float fY = y();
            this.Y = f;
            float fY2 = y();
            invalidateSelf();
            if (fY != fY2) {
                D();
            }
        }
    }

    public final void X(float f) {
        if (this.X != f) {
            float fY = y();
            this.X = f;
            float fY2 = y();
            invalidateSelf();
            if (fY != fY2) {
                D();
            }
        }
    }

    public final void Y(ColorStateList colorStateList) {
        if (this.D != colorStateList) {
            this.D = colorStateList;
            this.A0 = null;
            onStateChange(getState());
        }
    }

    public final boolean Z() {
        return this.R && this.S != null && this.f6586s0;
    }

    @Override // u6.h, com.google.android.material.internal.w
    public final void a() {
        D();
        invalidateSelf();
    }

    public final boolean a0() {
        return this.F && this.G != null;
    }

    public final boolean b0() {
        return this.K && this.L != null;
    }

    @Override // u6.h, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i6;
        int iSaveLayerAlpha;
        int i10;
        RectF rectF;
        int i11;
        int i12;
        int iSave;
        Rect bounds = getBounds();
        if (bounds.isEmpty() || (i6 = this.f6588u0) == 0) {
            return;
        }
        if (i6 < 255) {
            float f = bounds.left;
            float f3 = bounds.top;
            float f4 = bounds.right;
            float f5 = bounds.bottom;
            iSaveLayerAlpha = Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(f, f3, f4, f5, i6) : canvas.saveLayerAlpha(f, f3, f4, f5, i6, 31);
        } else {
            iSaveLayerAlpha = 0;
        }
        boolean z7 = this.F0;
        Paint paint = this.f6575g0;
        RectF rectF2 = this.i0;
        if (!z7) {
            paint.setColor(this.f6580m0);
            paint.setStyle(Paint.Style.FILL);
            rectF2.set(bounds);
            canvas.drawRoundRect(rectF2, A(), A(), paint);
        }
        if (!this.F0) {
            paint.setColor(this.f6581n0);
            paint.setStyle(Paint.Style.FILL);
            ColorFilter colorFilter = this.f6589v0;
            if (colorFilter == null) {
                colorFilter = this.f6590w0;
            }
            paint.setColorFilter(colorFilter);
            rectF2.set(bounds);
            canvas.drawRoundRect(rectF2, A(), A(), paint);
        }
        if (this.F0) {
            super.draw(canvas);
        }
        if (this.C > 0.0f && !this.F0) {
            paint.setColor(this.f6583p0);
            paint.setStyle(Paint.Style.STROKE);
            if (!this.F0) {
                ColorFilter colorFilter2 = this.f6589v0;
                if (colorFilter2 == null) {
                    colorFilter2 = this.f6590w0;
                }
                paint.setColorFilter(colorFilter2);
            }
            float f10 = bounds.left;
            float f11 = this.C / 2.0f;
            rectF2.set(f10 + f11, bounds.top + f11, bounds.right - f11, bounds.bottom - f11);
            float f12 = this.A - (this.C / 2.0f);
            canvas.drawRoundRect(rectF2, f12, f12, paint);
        }
        paint.setColor(this.f6584q0);
        paint.setStyle(Paint.Style.FILL);
        rectF2.set(bounds);
        if (this.F0) {
            RectF rectF3 = new RectF(bounds);
            Path path = this.f6578k0;
            u6.g gVar = this.f10367a;
            this.f10382r.a(gVar.f10350a, gVar.f10356i, rectF3, this.f10381q, path);
            i10 = 0;
            e(canvas, paint, path, this.f10367a.f10350a, g());
        } else {
            canvas.drawRoundRect(rectF2, A(), A(), paint);
            i10 = 0;
        }
        if (a0()) {
            x(bounds, rectF2);
            float f13 = rectF2.left;
            float f14 = rectF2.top;
            canvas.translate(f13, f14);
            this.G.setBounds(i10, i10, (int) rectF2.width(), (int) rectF2.height());
            this.G.draw(canvas);
            canvas.translate(-f13, -f14);
        }
        if (Z()) {
            x(bounds, rectF2);
            float f15 = rectF2.left;
            float f16 = rectF2.top;
            canvas.translate(f15, f16);
            this.S.setBounds(i10, i10, (int) rectF2.width(), (int) rectF2.height());
            this.S.draw(canvas);
            canvas.translate(-f15, -f16);
        }
        if (!this.D0 || this.E == null) {
            rectF = rectF2;
            i11 = iSaveLayerAlpha;
            i12 = 255;
        } else {
            PointF pointF = this.f6577j0;
            pointF.set(0.0f, 0.0f);
            Paint.Align align = Paint.Align.LEFT;
            CharSequence charSequence = this.E;
            x xVar = this.f6579l0;
            if (charSequence != null) {
                float fY = y() + this.W + this.Z;
                if (n5.d.w(this) == 0) {
                    pointF.x = bounds.left + fY;
                } else {
                    pointF.x = bounds.right - fY;
                    align = Paint.Align.RIGHT;
                }
                float fCenterY = bounds.centerY();
                TextPaint textPaint = xVar.f5081a;
                Paint.FontMetrics fontMetrics = this.f6576h0;
                textPaint.getFontMetrics(fontMetrics);
                pointF.y = fCenterY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f);
            }
            rectF2.setEmpty();
            if (this.E != null) {
                float fY2 = y() + this.W + this.Z;
                float fZ = z() + this.f6573e0 + this.f6570b0;
                if (n5.d.w(this) == 0) {
                    rectF2.left = bounds.left + fY2;
                    rectF2.right = bounds.right - fZ;
                } else {
                    rectF2.left = bounds.left + fZ;
                    rectF2.right = bounds.right - fY2;
                }
                rectF2.top = bounds.top;
                rectF2.bottom = bounds.bottom;
            }
            r6.d dVar = xVar.f;
            TextPaint textPaint2 = xVar.f5081a;
            if (dVar != null) {
                textPaint2.drawableState = getState();
                xVar.f.e(this.f6574f0, textPaint2, xVar.f5082b);
            }
            textPaint2.setTextAlign(align);
            boolean z10 = Math.round(xVar.a(this.E.toString())) > Math.round(rectF2.width());
            if (z10) {
                iSave = canvas.save();
                canvas.clipRect(rectF2);
            } else {
                iSave = 0;
            }
            CharSequence charSequenceEllipsize = this.E;
            if (z10 && this.C0 != null) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, textPaint2, rectF2.width(), this.C0);
            }
            CharSequence charSequence2 = charSequenceEllipsize;
            int length = charSequence2.length();
            float f17 = pointF.x;
            float f18 = pointF.y;
            i12 = 255;
            rectF = rectF2;
            i11 = iSaveLayerAlpha;
            canvas.drawText(charSequence2, 0, length, f17, f18, textPaint2);
            if (z10) {
                canvas.restoreToCount(iSave);
            }
        }
        if (b0()) {
            rectF.setEmpty();
            if (b0()) {
                float f19 = this.f6573e0 + this.f6572d0;
                if (n5.d.w(this) == 0) {
                    float f20 = bounds.right - f19;
                    rectF.right = f20;
                    rectF.left = f20 - this.O;
                } else {
                    float f21 = bounds.left + f19;
                    rectF.left = f21;
                    rectF.right = f21 + this.O;
                }
                float fExactCenterY = bounds.exactCenterY();
                float f22 = this.O;
                float f23 = fExactCenterY - (f22 / 2.0f);
                rectF.top = f23;
                rectF.bottom = f23 + f22;
            }
            float f24 = rectF.left;
            float f25 = rectF.top;
            canvas.translate(f24, f25);
            this.L.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
            int[] iArr = s6.c.f9823a;
            this.M.setBounds(this.L.getBounds());
            this.M.jumpToCurrentState();
            this.M.draw(canvas);
            canvas.translate(-f24, -f25);
        }
        if (this.f6588u0 < i12) {
            canvas.restoreToCount(i11);
        }
    }

    @Override // u6.h, android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f6588u0;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.f6589v0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.f6594z;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.min(Math.round(z() + this.f6579l0.a(this.E.toString()) + y() + this.W + this.Z + this.f6570b0 + this.f6573e0), this.E0);
    }

    @Override // u6.h, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // u6.h, android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        if (this.F0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), (int) this.f6594z, this.A);
        } else {
            outline.setRoundRect(bounds, this.A);
        }
        outline.setAlpha(this.f6588u0 / 255.0f);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // u6.h, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        r6.d dVar;
        ColorStateList colorStateList;
        return B(this.f6591x) || B(this.f6592y) || B(this.B) || !((dVar = this.f6579l0.f) == null || (colorStateList = dVar.f9599j) == null || !colorStateList.isStateful()) || ((this.R && this.S != null && this.Q) || C(this.G) || C(this.S) || B(this.x0));
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i6) {
        boolean zOnLayoutDirectionChanged = super.onLayoutDirectionChanged(i6);
        if (a0()) {
            zOnLayoutDirectionChanged |= n5.d.Q(this.G, i6);
        }
        if (Z()) {
            zOnLayoutDirectionChanged |= n5.d.Q(this.S, i6);
        }
        if (b0()) {
            zOnLayoutDirectionChanged |= n5.d.Q(this.L, i6);
        }
        if (!zOnLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i6) {
        boolean zOnLevelChange = super.onLevelChange(i6);
        if (a0()) {
            zOnLevelChange |= this.G.setLevel(i6);
        }
        if (Z()) {
            zOnLevelChange |= this.S.setLevel(i6);
        }
        if (b0()) {
            zOnLevelChange |= this.L.setLevel(i6);
        }
        if (zOnLevelChange) {
            invalidateSelf();
        }
        return zOnLevelChange;
    }

    @Override // u6.h, android.graphics.drawable.Drawable, com.google.android.material.internal.w
    public final boolean onStateChange(int[] iArr) {
        if (this.F0) {
            super.onStateChange(iArr);
        }
        return E(iArr, this.f6595z0);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j10);
        }
    }

    @Override // u6.h, android.graphics.drawable.Drawable
    public final void setAlpha(int i6) {
        if (this.f6588u0 != i6) {
            this.f6588u0 = i6;
            invalidateSelf();
        }
    }

    @Override // u6.h, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f6589v0 != colorFilter) {
            this.f6589v0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // u6.h, android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        if (this.x0 != colorStateList) {
            this.x0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // u6.h, android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.f6593y0 != mode) {
            this.f6593y0 = mode;
            ColorStateList colorStateList = this.x0;
            this.f6590w0 = (colorStateList == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z7, boolean z10) {
        boolean visible = super.setVisible(z7, z10);
        if (a0()) {
            visible |= this.G.setVisible(z7, z10);
        }
        if (Z()) {
            visible |= this.S.setVisible(z7, z10);
        }
        if (b0()) {
            visible |= this.L.setVisible(z7, z10);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public final void w(Drawable drawable) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        n5.d.Q(drawable, n5.d.w(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.L) {
            if (drawable.isStateful()) {
                drawable.setState(this.f6595z0);
            }
            g0.a.h(drawable, this.N);
            return;
        }
        Drawable drawable2 = this.G;
        if (drawable == drawable2 && this.J) {
            g0.a.h(drawable2, this.H);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    public final void x(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (a0() || Z()) {
            float f = this.W + this.X;
            Drawable drawable = this.f6586s0 ? this.S : this.G;
            float intrinsicWidth = this.I;
            if (intrinsicWidth <= 0.0f && drawable != null) {
                intrinsicWidth = drawable.getIntrinsicWidth();
            }
            if (n5.d.w(this) == 0) {
                float f3 = rect.left + f;
                rectF.left = f3;
                rectF.right = f3 + intrinsicWidth;
            } else {
                float f4 = rect.right - f;
                rectF.right = f4;
                rectF.left = f4 - intrinsicWidth;
            }
            Drawable drawable2 = this.f6586s0 ? this.S : this.G;
            float fCeil = this.I;
            if (fCeil <= 0.0f && drawable2 != null) {
                fCeil = (float) Math.ceil(a0.e(this.f6574f0, 24));
                if (drawable2.getIntrinsicHeight() <= fCeil) {
                    fCeil = drawable2.getIntrinsicHeight();
                }
            }
            float fExactCenterY = rect.exactCenterY() - (fCeil / 2.0f);
            rectF.top = fExactCenterY;
            rectF.bottom = fExactCenterY + fCeil;
        }
    }

    public final float y() {
        if (!a0() && !Z()) {
            return 0.0f;
        }
        float f = this.X;
        Drawable drawable = this.f6586s0 ? this.S : this.G;
        float intrinsicWidth = this.I;
        if (intrinsicWidth <= 0.0f && drawable != null) {
            intrinsicWidth = drawable.getIntrinsicWidth();
        }
        return intrinsicWidth + f + this.Y;
    }

    public final float z() {
        if (b0()) {
            return this.f6571c0 + this.O + this.f6572d0;
        }
        return 0.0f;
    }
}
