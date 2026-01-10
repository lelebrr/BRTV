package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.Gravity;
import android.view.ViewGroup;
import androidx.media3.extractor.ts.TsExtractor;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d {
    public Typeface A;
    public Typeface B;
    public Typeface C;
    public Typeface D;
    public r6.a E;
    public r6.a F;
    public CharSequence G;
    public CharSequence H;
    public boolean I;
    public Bitmap K;
    public float L;
    public float M;
    public float N;
    public float O;
    public float P;
    public int Q;
    public int[] R;
    public boolean S;
    public final TextPaint T;
    public final TextPaint U;
    public TimeInterpolator V;
    public TimeInterpolator W;
    public float X;
    public float Y;
    public float Z;

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroup f4989a;

    /* renamed from: a0, reason: collision with root package name */
    public ColorStateList f4990a0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f4991b;

    /* renamed from: b0, reason: collision with root package name */
    public float f4992b0;

    /* renamed from: c, reason: collision with root package name */
    public float f4993c;

    /* renamed from: c0, reason: collision with root package name */
    public float f4994c0;
    public boolean d;

    /* renamed from: d0, reason: collision with root package name */
    public float f4995d0;

    /* renamed from: e, reason: collision with root package name */
    public float f4996e;

    /* renamed from: e0, reason: collision with root package name */
    public ColorStateList f4997e0;
    public float f;

    /* renamed from: f0, reason: collision with root package name */
    public float f4998f0;

    /* renamed from: g, reason: collision with root package name */
    public int f4999g;

    /* renamed from: g0, reason: collision with root package name */
    public float f5000g0;

    /* renamed from: h, reason: collision with root package name */
    public final Rect f5001h;

    /* renamed from: h0, reason: collision with root package name */
    public float f5002h0;

    /* renamed from: i, reason: collision with root package name */
    public final Rect f5003i;
    public StaticLayout i0;

    /* renamed from: j, reason: collision with root package name */
    public final RectF f5004j;

    /* renamed from: j0, reason: collision with root package name */
    public float f5005j0;

    /* renamed from: k0, reason: collision with root package name */
    public float f5007k0;

    /* renamed from: l0, reason: collision with root package name */
    public float f5009l0;

    /* renamed from: m0, reason: collision with root package name */
    public CharSequence f5011m0;

    /* renamed from: o, reason: collision with root package name */
    public ColorStateList f5014o;

    /* renamed from: p, reason: collision with root package name */
    public ColorStateList f5016p;

    /* renamed from: q, reason: collision with root package name */
    public int f5018q;

    /* renamed from: r, reason: collision with root package name */
    public float f5020r;

    /* renamed from: s, reason: collision with root package name */
    public float f5021s;

    /* renamed from: t, reason: collision with root package name */
    public float f5022t;

    /* renamed from: u, reason: collision with root package name */
    public float f5023u;

    /* renamed from: v, reason: collision with root package name */
    public float f5024v;

    /* renamed from: w, reason: collision with root package name */
    public float f5025w;

    /* renamed from: x, reason: collision with root package name */
    public Typeface f5026x;

    /* renamed from: y, reason: collision with root package name */
    public Typeface f5027y;

    /* renamed from: z, reason: collision with root package name */
    public Typeface f5028z;

    /* renamed from: k, reason: collision with root package name */
    public int f5006k = 16;

    /* renamed from: l, reason: collision with root package name */
    public int f5008l = 16;

    /* renamed from: m, reason: collision with root package name */
    public float f5010m = 15.0f;

    /* renamed from: n, reason: collision with root package name */
    public float f5012n = 15.0f;
    public boolean J = true;

    /* renamed from: n0, reason: collision with root package name */
    public int f5013n0 = 1;

    /* renamed from: o0, reason: collision with root package name */
    public float f5015o0 = 0.0f;

    /* renamed from: p0, reason: collision with root package name */
    public float f5017p0 = 1.0f;

    /* renamed from: q0, reason: collision with root package name */
    public int f5019q0 = u.f5065m;

    public d(ViewGroup viewGroup) {
        this.f4989a = viewGroup;
        TextPaint textPaint = new TextPaint(TsExtractor.TS_STREAM_TYPE_AC3);
        this.T = textPaint;
        this.U = new TextPaint(textPaint);
        this.f5003i = new Rect();
        this.f5001h = new Rect();
        this.f5004j = new RectF();
        float f = this.f4996e;
        this.f = ea.q.d(1.0f, f, 0.5f, f);
        h(viewGroup.getContext().getResources().getConfiguration());
    }

    public static int a(float f, int i6, int i10) {
        float f3 = 1.0f - f;
        return Color.argb(Math.round((Color.alpha(i10) * f) + (Color.alpha(i6) * f3)), Math.round((Color.red(i10) * f) + (Color.red(i6) * f3)), Math.round((Color.green(i10) * f) + (Color.green(i6) * f3)), Math.round((Color.blue(i10) * f) + (Color.blue(i6) * f3)));
    }

    public static float g(float f, float f3, float f4, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f4 = timeInterpolator.getInterpolation(f4);
        }
        return y5.a.a(f, f3, f4);
    }

    public final boolean b(CharSequence charSequence) {
        WeakHashMap weakHashMap = s0.f8353a;
        boolean z7 = this.f4989a.getLayoutDirection() == 1;
        if (this.J) {
            return (z7 ? l0.j.d : l0.j.f7942c).d(charSequence, charSequence.length());
        }
        return z7;
    }

    public final void c(float f, boolean z7) throws NoSuchMethodException, SecurityException {
        boolean z10;
        float f3;
        float f4;
        boolean z11;
        StaticLayout staticLayoutA;
        Layout.Alignment alignment;
        if (this.G == null) {
            return;
        }
        float fWidth = this.f5003i.width();
        float fWidth2 = this.f5001h.width();
        if (Math.abs(f - 1.0f) < 1.0E-5f) {
            f3 = this.f5012n;
            f4 = this.f4998f0;
            this.L = 1.0f;
            Typeface typeface = this.D;
            Typeface typeface2 = this.f5026x;
            if (typeface != typeface2) {
                this.D = typeface2;
                z11 = true;
            } else {
                z11 = false;
            }
        } else {
            float f5 = this.f5010m;
            float f10 = this.f5000g0;
            Typeface typeface3 = this.D;
            Typeface typeface4 = this.A;
            if (typeface3 != typeface4) {
                this.D = typeface4;
                z10 = true;
            } else {
                z10 = false;
            }
            if (Math.abs(f - 0.0f) < 1.0E-5f) {
                this.L = 1.0f;
            } else {
                this.L = g(this.f5010m, this.f5012n, f, this.W) / this.f5010m;
            }
            float f11 = this.f5012n / this.f5010m;
            fWidth = (!z7 && fWidth2 * f11 > fWidth) ? Math.min(fWidth / f11, fWidth2) : fWidth2;
            f3 = f5;
            f4 = f10;
            z11 = z10;
        }
        if (fWidth > 0.0f) {
            z11 = ((this.M > f3 ? 1 : (this.M == f3 ? 0 : -1)) != 0) || ((this.f5002h0 > f4 ? 1 : (this.f5002h0 == f4 ? 0 : -1)) != 0) || this.S || z11;
            this.M = f3;
            this.f5002h0 = f4;
            this.S = false;
        }
        if (this.H == null || z11) {
            float f12 = this.M;
            TextPaint textPaint = this.T;
            textPaint.setTextSize(f12);
            textPaint.setTypeface(this.D);
            textPaint.setLetterSpacing(this.f5002h0);
            textPaint.setLinearText(this.L != 1.0f);
            boolean zB = b(this.G);
            this.I = zB;
            int i6 = this.f5013n0;
            if (i6 <= 1 || (zB && !this.d)) {
                i6 = 1;
            }
            try {
                if (i6 == 1) {
                    alignment = Layout.Alignment.ALIGN_NORMAL;
                } else {
                    int absoluteGravity = Gravity.getAbsoluteGravity(this.f5006k, zB ? 1 : 0) & 7;
                    alignment = absoluteGravity != 1 ? absoluteGravity != 5 ? this.I ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : this.I ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_CENTER;
                }
                u uVar = new u(this.G, textPaint, (int) fWidth);
                uVar.f5078l = TextUtils.TruncateAt.END;
                uVar.f5077k = zB;
                uVar.f5072e = alignment;
                uVar.f5076j = false;
                uVar.f = i6;
                float f13 = this.f5015o0;
                float f14 = this.f5017p0;
                uVar.f5073g = f13;
                uVar.f5074h = f14;
                uVar.f5075i = this.f5019q0;
                staticLayoutA = uVar.a();
            } catch (t e5) {
                Log.e("CollapsingTextHelper", e5.getCause().getMessage(), e5);
                staticLayoutA = null;
            }
            staticLayoutA.getClass();
            this.i0 = staticLayoutA;
            this.H = staticLayoutA.getText();
        }
    }

    public final void d(Canvas canvas) {
        int iSave = canvas.save();
        if (this.H == null || !this.f4991b) {
            return;
        }
        TextPaint textPaint = this.T;
        textPaint.setTextSize(this.M);
        float f = this.f5024v;
        float f3 = this.f5025w;
        float f4 = this.L;
        if (f4 != 1.0f && !this.d) {
            canvas.scale(f4, f4, f, f3);
        }
        if (this.f5013n0 <= 1 || ((this.I && !this.d) || (this.d && this.f4993c <= this.f))) {
            canvas.translate(f, f3);
            this.i0.draw(canvas);
        } else {
            float lineStart = this.f5024v - this.i0.getLineStart(0);
            int alpha = textPaint.getAlpha();
            canvas.translate(lineStart, f3);
            float f5 = alpha;
            textPaint.setAlpha((int) (this.f5009l0 * f5));
            int i6 = Build.VERSION.SDK_INT;
            if (i6 >= 31) {
                textPaint.setShadowLayer(this.N, this.O, this.P, o9.e.j(this.Q, textPaint.getAlpha()));
            }
            this.i0.draw(canvas);
            textPaint.setAlpha((int) (this.f5007k0 * f5));
            if (i6 >= 31) {
                textPaint.setShadowLayer(this.N, this.O, this.P, o9.e.j(this.Q, textPaint.getAlpha()));
            }
            int lineBaseline = this.i0.getLineBaseline(0);
            CharSequence charSequence = this.f5011m0;
            float f10 = lineBaseline;
            canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f10, textPaint);
            if (i6 >= 31) {
                textPaint.setShadowLayer(this.N, this.O, this.P, this.Q);
            }
            if (!this.d) {
                String strTrim = this.f5011m0.toString().trim();
                if (strTrim.endsWith("…")) {
                    strTrim = strTrim.substring(0, strTrim.length() - 1);
                }
                String str = strTrim;
                textPaint.setAlpha(alpha);
                canvas.drawText(str, 0, Math.min(this.i0.getLineEnd(0), str.length()), 0.0f, f10, (Paint) textPaint);
            }
        }
        canvas.restoreToCount(iSave);
    }

    public final float e() {
        TextPaint textPaint = this.U;
        textPaint.setTextSize(this.f5012n);
        textPaint.setTypeface(this.f5026x);
        textPaint.setLetterSpacing(this.f4998f0);
        return -textPaint.ascent();
    }

    public final int f(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.R;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    public final void h(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            Typeface typeface = this.f5028z;
            if (typeface != null) {
                this.f5027y = n5.d.C(configuration, typeface);
            }
            Typeface typeface2 = this.C;
            if (typeface2 != null) {
                this.B = n5.d.C(configuration, typeface2);
            }
            Typeface typeface3 = this.f5027y;
            if (typeface3 == null) {
                typeface3 = this.f5028z;
            }
            this.f5026x = typeface3;
            Typeface typeface4 = this.B;
            if (typeface4 == null) {
                typeface4 = this.C;
            }
            this.A = typeface4;
            j(true);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void i() {
        /*
            r2 = this;
            android.graphics.Rect r0 = r2.f5003i
            int r1 = r0.width()
            if (r1 <= 0) goto L1e
            int r0 = r0.height()
            if (r0 <= 0) goto L1e
            android.graphics.Rect r0 = r2.f5001h
            int r1 = r0.width()
            if (r1 <= 0) goto L1e
            int r0 = r0.height()
            if (r0 <= 0) goto L1e
            r0 = 1
            goto L1f
        L1e:
            r0 = 0
        L1f:
            r2.f4991b = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.internal.d.i():void");
    }

    public final void j(boolean z7) {
        float fMeasureText;
        float f;
        StaticLayout staticLayout;
        ViewGroup viewGroup = this.f4989a;
        if ((viewGroup.getHeight() <= 0 || viewGroup.getWidth() <= 0) && !z7) {
            return;
        }
        c(1.0f, z7);
        CharSequence charSequence = this.H;
        TextPaint textPaint = this.T;
        if (charSequence != null && (staticLayout = this.i0) != null) {
            this.f5011m0 = TextUtils.ellipsize(charSequence, textPaint, staticLayout.getWidth(), TextUtils.TruncateAt.END);
        }
        CharSequence charSequence2 = this.f5011m0;
        if (charSequence2 != null) {
            this.f5005j0 = textPaint.measureText(charSequence2, 0, charSequence2.length());
        } else {
            this.f5005j0 = 0.0f;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(this.f5008l, this.I ? 1 : 0);
        int i6 = absoluteGravity & 112;
        Rect rect = this.f5003i;
        if (i6 == 48) {
            this.f5021s = rect.top;
        } else if (i6 != 80) {
            this.f5021s = rect.centerY() - ((textPaint.descent() - textPaint.ascent()) / 2.0f);
        } else {
            this.f5021s = textPaint.ascent() + rect.bottom;
        }
        int i10 = absoluteGravity & 8388615;
        if (i10 == 1) {
            this.f5023u = rect.centerX() - (this.f5005j0 / 2.0f);
        } else if (i10 != 5) {
            this.f5023u = rect.left;
        } else {
            this.f5023u = rect.right - this.f5005j0;
        }
        c(0.0f, z7);
        float height = this.i0 != null ? r1.getHeight() : 0.0f;
        StaticLayout staticLayout2 = this.i0;
        if (staticLayout2 == null || this.f5013n0 <= 1) {
            CharSequence charSequence3 = this.H;
            fMeasureText = charSequence3 != null ? textPaint.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        } else {
            fMeasureText = staticLayout2.getWidth();
        }
        StaticLayout staticLayout3 = this.i0;
        this.f5018q = staticLayout3 != null ? staticLayout3.getLineCount() : 0;
        int absoluteGravity2 = Gravity.getAbsoluteGravity(this.f5006k, this.I ? 1 : 0);
        int i11 = absoluteGravity2 & 112;
        Rect rect2 = this.f5001h;
        if (i11 == 48) {
            this.f5020r = rect2.top;
        } else if (i11 != 80) {
            this.f5020r = rect2.centerY() - (height / 2.0f);
        } else {
            this.f5020r = textPaint.descent() + (rect2.bottom - height);
        }
        int i12 = absoluteGravity2 & 8388615;
        if (i12 == 1) {
            this.f5022t = rect2.centerX() - (fMeasureText / 2.0f);
        } else if (i12 != 5) {
            this.f5022t = rect2.left;
        } else {
            this.f5022t = rect2.right - fMeasureText;
        }
        Bitmap bitmap = this.K;
        if (bitmap != null) {
            bitmap.recycle();
            this.K = null;
        }
        r(this.f4993c);
        float f3 = this.f4993c;
        boolean z10 = this.d;
        RectF rectF = this.f5004j;
        if (z10) {
            if (f3 < this.f) {
                rect = rect2;
            }
            rectF.set(rect);
        } else {
            rectF.left = g(rect2.left, rect.left, f3, this.V);
            rectF.top = g(this.f5020r, this.f5021s, f3, this.V);
            rectF.right = g(rect2.right, rect.right, f3, this.V);
            rectF.bottom = g(rect2.bottom, rect.bottom, f3, this.V);
        }
        if (!this.d) {
            this.f5024v = g(this.f5022t, this.f5023u, f3, this.V);
            this.f5025w = g(this.f5020r, this.f5021s, f3, this.V);
            r(f3);
            f = f3;
        } else if (f3 < this.f) {
            this.f5024v = this.f5022t;
            this.f5025w = this.f5020r;
            r(0.0f);
            f = 0.0f;
        } else {
            this.f5024v = this.f5023u;
            this.f5025w = this.f5021s - Math.max(0, this.f4999g);
            r(1.0f);
            f = 1.0f;
        }
        g1.a aVar = y5.a.f11407b;
        this.f5007k0 = 1.0f - g(0.0f, 1.0f, 1.0f - f3, aVar);
        WeakHashMap weakHashMap = s0.f8353a;
        viewGroup.postInvalidateOnAnimation();
        this.f5009l0 = g(1.0f, 0.0f, f3, aVar);
        viewGroup.postInvalidateOnAnimation();
        ColorStateList colorStateList = this.f5016p;
        ColorStateList colorStateList2 = this.f5014o;
        if (colorStateList != colorStateList2) {
            textPaint.setColor(a(f, f(colorStateList2), f(this.f5016p)));
        } else {
            textPaint.setColor(f(colorStateList));
        }
        float f4 = this.f4998f0;
        float f5 = this.f5000g0;
        if (f4 != f5) {
            textPaint.setLetterSpacing(g(f5, f4, f3, aVar));
        } else {
            textPaint.setLetterSpacing(f4);
        }
        this.N = y5.a.a(this.f4992b0, this.X, f3);
        this.O = y5.a.a(this.f4994c0, this.Y, f3);
        this.P = y5.a.a(this.f4995d0, this.Z, f3);
        int iA = a(f3, f(this.f4997e0), f(this.f4990a0));
        this.Q = iA;
        textPaint.setShadowLayer(this.N, this.O, this.P, iA);
        if (this.d) {
            int alpha = textPaint.getAlpha();
            float f10 = this.f;
            textPaint.setAlpha((int) ((f3 <= f10 ? y5.a.b(1.0f, 0.0f, this.f4996e, f10, f3) : y5.a.b(0.0f, 1.0f, f10, 1.0f, f3)) * alpha));
        }
        viewGroup.postInvalidateOnAnimation();
    }

    public final void k(int i6) {
        ViewGroup viewGroup = this.f4989a;
        r6.d dVar = new r6.d(viewGroup.getContext(), i6);
        ColorStateList colorStateList = dVar.f9599j;
        if (colorStateList != null) {
            this.f5016p = colorStateList;
        }
        float f = dVar.f9600k;
        if (f != 0.0f) {
            this.f5012n = f;
        }
        ColorStateList colorStateList2 = dVar.f9592a;
        if (colorStateList2 != null) {
            this.f4990a0 = colorStateList2;
        }
        this.Y = dVar.f9595e;
        this.Z = dVar.f;
        this.X = dVar.f9596g;
        this.f4998f0 = dVar.f9598i;
        r6.a aVar = this.F;
        if (aVar != null) {
            aVar.f9585t = true;
        }
        c cVar = new c(this, 0);
        dVar.a();
        this.F = new r6.a(cVar, dVar.f9603n);
        dVar.c(viewGroup.getContext(), this.F);
        j(false);
    }

    public final void l(ColorStateList colorStateList) {
        if (this.f5016p != colorStateList) {
            this.f5016p = colorStateList;
            j(false);
        }
    }

    public final void m(int i6) {
        if (this.f5008l != i6) {
            this.f5008l = i6;
            j(false);
        }
    }

    public final boolean n(Typeface typeface) {
        r6.a aVar = this.F;
        if (aVar != null) {
            aVar.f9585t = true;
        }
        if (this.f5028z == typeface) {
            return false;
        }
        this.f5028z = typeface;
        Typeface typefaceC = n5.d.C(this.f4989a.getContext().getResources().getConfiguration(), typeface);
        this.f5027y = typefaceC;
        if (typefaceC == null) {
            typefaceC = this.f5028z;
        }
        this.f5026x = typefaceC;
        return true;
    }

    public final void o(int i6) {
        ViewGroup viewGroup = this.f4989a;
        r6.d dVar = new r6.d(viewGroup.getContext(), i6);
        ColorStateList colorStateList = dVar.f9599j;
        if (colorStateList != null) {
            this.f5014o = colorStateList;
        }
        float f = dVar.f9600k;
        if (f != 0.0f) {
            this.f5010m = f;
        }
        ColorStateList colorStateList2 = dVar.f9592a;
        if (colorStateList2 != null) {
            this.f4997e0 = colorStateList2;
        }
        this.f4994c0 = dVar.f9595e;
        this.f4995d0 = dVar.f;
        this.f4992b0 = dVar.f9596g;
        this.f5000g0 = dVar.f9598i;
        r6.a aVar = this.E;
        if (aVar != null) {
            aVar.f9585t = true;
        }
        c cVar = new c(this, 1);
        dVar.a();
        this.E = new r6.a(cVar, dVar.f9603n);
        dVar.c(viewGroup.getContext(), this.E);
        j(false);
    }

    public final boolean p(Typeface typeface) {
        r6.a aVar = this.E;
        if (aVar != null) {
            aVar.f9585t = true;
        }
        if (this.C == typeface) {
            return false;
        }
        this.C = typeface;
        Typeface typefaceC = n5.d.C(this.f4989a.getContext().getResources().getConfiguration(), typeface);
        this.B = typefaceC;
        if (typefaceC == null) {
            typefaceC = this.C;
        }
        this.A = typefaceC;
        return true;
    }

    public final void q(float f) {
        float f3;
        if (f < 0.0f) {
            f = 0.0f;
        } else if (f > 1.0f) {
            f = 1.0f;
        }
        if (f != this.f4993c) {
            this.f4993c = f;
            boolean z7 = this.d;
            RectF rectF = this.f5004j;
            Rect rect = this.f5003i;
            Rect rect2 = this.f5001h;
            if (z7) {
                if (f < this.f) {
                    rect = rect2;
                }
                rectF.set(rect);
            } else {
                rectF.left = g(rect2.left, rect.left, f, this.V);
                rectF.top = g(this.f5020r, this.f5021s, f, this.V);
                rectF.right = g(rect2.right, rect.right, f, this.V);
                rectF.bottom = g(rect2.bottom, rect.bottom, f, this.V);
            }
            if (!this.d) {
                this.f5024v = g(this.f5022t, this.f5023u, f, this.V);
                this.f5025w = g(this.f5020r, this.f5021s, f, this.V);
                r(f);
                f3 = f;
            } else if (f < this.f) {
                this.f5024v = this.f5022t;
                this.f5025w = this.f5020r;
                r(0.0f);
                f3 = 0.0f;
            } else {
                this.f5024v = this.f5023u;
                this.f5025w = this.f5021s - Math.max(0, this.f4999g);
                r(1.0f);
                f3 = 1.0f;
            }
            g1.a aVar = y5.a.f11407b;
            this.f5007k0 = 1.0f - g(0.0f, 1.0f, 1.0f - f, aVar);
            WeakHashMap weakHashMap = s0.f8353a;
            ViewGroup viewGroup = this.f4989a;
            viewGroup.postInvalidateOnAnimation();
            this.f5009l0 = g(1.0f, 0.0f, f, aVar);
            viewGroup.postInvalidateOnAnimation();
            ColorStateList colorStateList = this.f5016p;
            ColorStateList colorStateList2 = this.f5014o;
            TextPaint textPaint = this.T;
            if (colorStateList != colorStateList2) {
                textPaint.setColor(a(f3, f(colorStateList2), f(this.f5016p)));
            } else {
                textPaint.setColor(f(colorStateList));
            }
            float f4 = this.f4998f0;
            float f5 = this.f5000g0;
            if (f4 != f5) {
                textPaint.setLetterSpacing(g(f5, f4, f, aVar));
            } else {
                textPaint.setLetterSpacing(f4);
            }
            this.N = y5.a.a(this.f4992b0, this.X, f);
            this.O = y5.a.a(this.f4994c0, this.Y, f);
            this.P = y5.a.a(this.f4995d0, this.Z, f);
            int iA = a(f, f(this.f4997e0), f(this.f4990a0));
            this.Q = iA;
            textPaint.setShadowLayer(this.N, this.O, this.P, iA);
            if (this.d) {
                int alpha = textPaint.getAlpha();
                float f10 = this.f;
                textPaint.setAlpha((int) ((f <= f10 ? y5.a.b(1.0f, 0.0f, this.f4996e, f10, f) : y5.a.b(0.0f, 1.0f, f10, 1.0f, f)) * alpha));
            }
            viewGroup.postInvalidateOnAnimation();
        }
    }

    public final void r(float f) throws NoSuchMethodException, SecurityException {
        c(f, false);
        WeakHashMap weakHashMap = s0.f8353a;
        this.f4989a.postInvalidateOnAnimation();
    }
}
