package com.google.android.material.slider;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOverlay;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.SeekBar;
import com.alibaba.fastjson.asm.Opcodes;
import com.google.android.material.internal.a0;
import com.google.android.material.internal.x;
import com.google.android.material.slider.BaseSlider;
import com.p2elite.brtv2.R;
import ea.q;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import n0.s0;
import u6.l;
import u6.m;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
abstract class BaseSlider<S extends BaseSlider<S, L, T>, L, T> extends View {

    /* renamed from: d0, reason: collision with root package name */
    public static final /* synthetic */ int f5173d0 = 0;
    public final int A;
    public float B;
    public MotionEvent C;
    public boolean D;
    public float E;
    public float F;
    public ArrayList G;
    public int H;
    public int I;
    public float J;
    public float[] K;
    public boolean L;
    public int M;
    public boolean N;
    public boolean O;
    public ColorStateList P;
    public ColorStateList Q;
    public ColorStateList R;
    public ColorStateList S;
    public ColorStateList T;
    public final u6.h U;
    public Drawable V;
    public List W;

    /* renamed from: a, reason: collision with root package name */
    public final Paint f5174a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f5175b;

    /* renamed from: b0, reason: collision with root package name */
    public float f5176b0;

    /* renamed from: c, reason: collision with root package name */
    public final Paint f5177c;

    /* renamed from: c0, reason: collision with root package name */
    public int f5178c0;
    public final Paint d;

    /* renamed from: e, reason: collision with root package name */
    public final Paint f5179e;
    public final Paint f;

    /* renamed from: g, reason: collision with root package name */
    public final e f5180g;

    /* renamed from: h, reason: collision with root package name */
    public final AccessibilityManager f5181h;

    /* renamed from: i, reason: collision with root package name */
    public d f5182i;

    /* renamed from: j, reason: collision with root package name */
    public final a f5183j;

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f5184k;

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList f5185l;

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f5186m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f5187n;

    /* renamed from: o, reason: collision with root package name */
    public ValueAnimator f5188o;

    /* renamed from: p, reason: collision with root package name */
    public ValueAnimator f5189p;

    /* renamed from: q, reason: collision with root package name */
    public final int f5190q;

    /* renamed from: r, reason: collision with root package name */
    public final int f5191r;

    /* renamed from: s, reason: collision with root package name */
    public final int f5192s;

    /* renamed from: t, reason: collision with root package name */
    public final int f5193t;

    /* renamed from: u, reason: collision with root package name */
    public int f5194u;

    /* renamed from: v, reason: collision with root package name */
    public int f5195v;

    /* renamed from: w, reason: collision with root package name */
    public int f5196w;

    /* renamed from: x, reason: collision with root package name */
    public final int f5197x;

    /* renamed from: y, reason: collision with root package name */
    public int f5198y;

    /* renamed from: z, reason: collision with root package name */
    public int f5199z;

    /* compiled from: MyApplication */
    public static class SliderState extends View.BaseSavedState {
        public static final Parcelable.Creator<SliderState> CREATOR = new f();

        /* renamed from: a, reason: collision with root package name */
        public float f5200a;

        /* renamed from: b, reason: collision with root package name */
        public float f5201b;

        /* renamed from: c, reason: collision with root package name */
        public ArrayList f5202c;
        public float d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f5203e;

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i6) {
            super.writeToParcel(parcel, i6);
            parcel.writeFloat(this.f5200a);
            parcel.writeFloat(this.f5201b);
            parcel.writeList(this.f5202c);
            parcel.writeFloat(this.d);
            parcel.writeBooleanArray(new boolean[]{this.f5203e});
        }
    }

    public BaseSlider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.sliderStyle);
    }

    public final void a(Drawable drawable) {
        int i6 = this.f5198y * 2;
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth == -1 && intrinsicHeight == -1) {
            drawable.setBounds(0, 0, i6, i6);
        } else {
            float fMax = i6 / Math.max(intrinsicWidth, intrinsicHeight);
            drawable.setBounds(0, 0, (int) (intrinsicWidth * fMax), (int) (intrinsicHeight * fMax));
        }
    }

    public final int b() {
        int i6 = this.f5197x;
        int i10 = this.f5194u;
        return i6 + ((i10 == 1 || i10 == 3) ? ((z6.a) this.f5184k.get(0)).getIntrinsicHeight() : 0);
    }

    public final ValueAnimator c(boolean z7) {
        float fFloatValue = z7 ? 0.0f : 1.0f;
        ValueAnimator valueAnimator = z7 ? this.f5189p : this.f5188o;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fFloatValue, z7 ? 1.0f : 0.0f);
        valueAnimatorOfFloat.setDuration(z7 ? 83L : 117L);
        valueAnimatorOfFloat.setInterpolator(z7 ? y5.a.f11409e : y5.a.f11408c);
        valueAnimatorOfFloat.addUpdateListener(new b(this));
        return valueAnimatorOfFloat;
    }

    public final void d(Canvas canvas, int i6, int i10, float f, Drawable drawable) {
        canvas.save();
        canvas.translate((this.f5196w + ((int) (o(f) * i6))) - (drawable.getBounds().width() / 2.0f), i10 - (drawable.getBounds().height() / 2.0f));
        drawable.draw(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.f5180g.m(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        this.f5174a.setColor(h(this.T));
        this.f5175b.setColor(h(this.S));
        this.f5179e.setColor(h(this.R));
        this.f.setColor(h(this.Q));
        Iterator it = this.f5184k.iterator();
        while (it.hasNext()) {
            z6.a aVar = (z6.a) it.next();
            if (aVar.isStateful()) {
                aVar.setState(getDrawableState());
            }
        }
        u6.h hVar = this.U;
        if (hVar.isStateful()) {
            hVar.setState(getDrawableState());
        }
        Paint paint = this.d;
        paint.setColor(h(this.P));
        paint.setAlpha(63);
    }

    public final void e() {
        if (this.f5187n) {
            this.f5187n = false;
            ValueAnimator valueAnimatorC = c(false);
            this.f5189p = valueAnimatorC;
            this.f5188o = null;
            valueAnimatorC.addListener(new c(this));
            this.f5189p.start();
        }
    }

    public final String f(float f) {
        return String.format(((float) ((int) f)) == f ? "%.0f" : "%.2f", Float.valueOf(f));
    }

    public final float[] g() {
        float fFloatValue = ((Float) Collections.max(getValues())).floatValue();
        float fFloatValue2 = ((Float) Collections.min(getValues())).floatValue();
        if (this.G.size() == 1) {
            fFloatValue2 = this.E;
        }
        float fO = o(fFloatValue2);
        float fO2 = o(fFloatValue);
        return k() ? new float[]{fO2, fO} : new float[]{fO, fO2};
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    public final int getAccessibilityFocusedVirtualViewId() {
        return this.f5180g.f10625k;
    }

    public float getMinSeparation() {
        return 0.0f;
    }

    public float getValueFrom() {
        return this.E;
    }

    public float getValueTo() {
        return this.F;
    }

    public List<Float> getValues() {
        return new ArrayList(this.G);
    }

    public final int h(ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    public final boolean i() {
        for (ViewParent parent = getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if ((viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) && viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
        }
        return false;
    }

    public final boolean j(float f) {
        double dDoubleValue = new BigDecimal(Float.toString(f)).divide(new BigDecimal(Float.toString(this.J)), MathContext.DECIMAL64).doubleValue();
        return Math.abs(((double) Math.round(dDoubleValue)) - dDoubleValue) < 1.0E-4d;
    }

    public final boolean k() {
        WeakHashMap weakHashMap = s0.f8353a;
        return getLayoutDirection() == 1;
    }

    public final void l() {
        if (this.J <= 0.0f) {
            return;
        }
        x();
        int iMin = Math.min((int) (((this.F - this.E) / this.J) + 1.0f), (this.M / (this.f5195v * 2)) + 1);
        float[] fArr = this.K;
        if (fArr == null || fArr.length != iMin * 2) {
            this.K = new float[iMin * 2];
        }
        float f = this.M / (iMin - 1);
        for (int i6 = 0; i6 < iMin * 2; i6 += 2) {
            float[] fArr2 = this.K;
            fArr2[i6] = ((i6 / 2) * f) + this.f5196w;
            fArr2[i6 + 1] = b();
        }
    }

    public final boolean m(int i6) {
        int i10 = this.I;
        long j10 = i10 + i6;
        long size = this.G.size() - 1;
        if (j10 < 0) {
            j10 = 0;
        } else if (j10 > size) {
            j10 = size;
        }
        int i11 = (int) j10;
        this.I = i11;
        if (i11 == i10) {
            return false;
        }
        if (this.H != -1) {
            this.H = i11;
        }
        w();
        postInvalidate();
        return true;
    }

    public final void n(int i6) {
        if (k()) {
            i6 = i6 == Integer.MIN_VALUE ? Integer.MAX_VALUE : -i6;
        }
        m(i6);
    }

    public final float o(float f) {
        float f3 = this.E;
        float f4 = (f - f3) / (this.F - f3);
        return k() ? 1.0f - f4 : f4;
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Iterator it = this.f5184k.iterator();
        while (it.hasNext()) {
            z6.a aVar = (z6.a) it.next();
            ViewGroup viewGroupF = a0.f(this);
            if (viewGroupF == null) {
                aVar.getClass();
            } else {
                aVar.getClass();
                int[] iArr = new int[2];
                viewGroupF.getLocationOnScreen(iArr);
                aVar.I = iArr[0];
                viewGroupF.getWindowVisibleDisplayFrame(aVar.C);
                viewGroupF.addOnLayoutChangeListener(aVar.B);
            }
        }
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        d dVar = this.f5182i;
        if (dVar != null) {
            removeCallbacks(dVar);
        }
        this.f5187n = false;
        Iterator it = this.f5184k.iterator();
        while (it.hasNext()) {
            z6.a aVar = (z6.a) it.next();
            ViewGroup viewGroupF = a0.f(this);
            a0.b bVar = viewGroupF == null ? null : new a0.b(viewGroupF);
            if (bVar != null) {
                ((ViewOverlay) bVar.f32b).remove(aVar);
                ViewGroup viewGroupF2 = a0.f(this);
                if (viewGroupF2 == null) {
                    aVar.getClass();
                } else {
                    viewGroupF2.removeOnLayoutChangeListener(aVar.B);
                }
            }
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.O) {
            x();
            l();
        }
        super.onDraw(canvas);
        int iB = b();
        int i6 = this.M;
        float[] fArrG = g();
        int i10 = this.f5196w;
        float f = i6;
        float f3 = i10 + (fArrG[1] * f);
        float f4 = i10 + i6;
        Paint paint = this.f5174a;
        if (f3 < f4) {
            float f5 = iB;
            canvas.drawLine(f3, f5, f4, f5, paint);
        }
        float f10 = this.f5196w;
        float f11 = (fArrG[0] * f) + f10;
        if (f11 > f10) {
            float f12 = iB;
            canvas.drawLine(f10, f12, f11, f12, paint);
        }
        if (((Float) Collections.max(getValues())).floatValue() > this.E) {
            int i11 = this.M;
            float[] fArrG2 = g();
            float f13 = this.f5196w;
            float f14 = i11;
            float f15 = iB;
            canvas.drawLine((fArrG2[0] * f14) + f13, f15, (fArrG2[1] * f14) + f13, f15, this.f5175b);
        }
        if (this.L && this.J > 0.0f) {
            float[] fArrG3 = g();
            int iRound = Math.round(fArrG3[0] * ((this.K.length / 2) - 1));
            int iRound2 = Math.round(fArrG3[1] * ((this.K.length / 2) - 1));
            float[] fArr = this.K;
            int i12 = iRound * 2;
            Paint paint2 = this.f5179e;
            canvas.drawPoints(fArr, 0, i12, paint2);
            int i13 = iRound2 * 2;
            canvas.drawPoints(this.K, i12, i13 - i12, this.f);
            float[] fArr2 = this.K;
            canvas.drawPoints(fArr2, i13, fArr2.length - i13, paint2);
        }
        if ((this.D || isFocused() || this.f5194u == 3) && isEnabled()) {
            int i14 = this.M;
            if (!(getBackground() instanceof RippleDrawable)) {
                int iO = (int) ((o(((Float) this.G.get(this.I)).floatValue()) * i14) + this.f5196w);
                if (Build.VERSION.SDK_INT < 28) {
                    int i15 = this.f5199z;
                    canvas.clipRect(iO - i15, iB - i15, iO + i15, i15 + iB, Region.Op.UNION);
                }
                canvas.drawCircle(iO, iB, this.f5199z, this.d);
            }
            if (this.H == -1 && this.f5194u != 3) {
                e();
            } else if (this.f5194u != 2) {
                if (!this.f5187n) {
                    this.f5187n = true;
                    ValueAnimator valueAnimatorC = c(true);
                    this.f5188o = valueAnimatorC;
                    this.f5189p = null;
                    valueAnimatorC.start();
                }
                ArrayList arrayList = this.f5184k;
                Iterator it = arrayList.iterator();
                for (int i16 = 0; i16 < this.G.size() && it.hasNext(); i16++) {
                    if (i16 != this.I) {
                        r((z6.a) it.next(), ((Float) this.G.get(i16)).floatValue());
                    }
                }
                if (!it.hasNext()) {
                    throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(arrayList.size()), Integer.valueOf(this.G.size())));
                }
                r((z6.a) it.next(), ((Float) this.G.get(this.I)).floatValue());
            }
        } else {
            e();
        }
        int i17 = this.M;
        for (int i18 = 0; i18 < this.G.size(); i18++) {
            float fFloatValue = ((Float) this.G.get(i18)).floatValue();
            Drawable drawable = this.V;
            if (drawable != null) {
                d(canvas, i17, iB, fFloatValue, drawable);
            } else if (i18 < this.W.size()) {
                d(canvas, i17, iB, fFloatValue, (Drawable) this.W.get(i18));
            } else {
                if (!isEnabled()) {
                    canvas.drawCircle((o(fFloatValue) * i17) + this.f5196w, iB, this.f5198y, this.f5177c);
                }
                d(canvas, i17, iB, fFloatValue, this.U);
            }
        }
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z7, int i6, Rect rect) {
        super.onFocusChanged(z7, i6, rect);
        e eVar = this.f5180g;
        if (!z7) {
            this.H = -1;
            eVar.j(this.I);
            return;
        }
        if (i6 == 1) {
            m(Integer.MAX_VALUE);
        } else if (i6 == 2) {
            m(Integer.MIN_VALUE);
        } else if (i6 == 17) {
            n(Integer.MAX_VALUE);
        } else if (i6 == 66) {
            n(Integer.MIN_VALUE);
        }
        eVar.w(this.I);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onKeyDown(int r14, android.view.KeyEvent r15) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.slider.BaseSlider.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i6, KeyEvent keyEvent) {
        this.N = false;
        return super.onKeyUp(i6, keyEvent);
    }

    @Override // android.view.View
    public final void onMeasure(int i6, int i10) {
        int i11 = this.f5193t;
        int i12 = this.f5194u;
        super.onMeasure(i6, View.MeasureSpec.makeMeasureSpec(i11 + ((i12 == 1 || i12 == 3) ? ((z6.a) this.f5184k.get(0)).getIntrinsicHeight() : 0), 1073741824));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SliderState sliderState = (SliderState) parcelable;
        super.onRestoreInstanceState(sliderState.getSuperState());
        this.E = sliderState.f5200a;
        this.F = sliderState.f5201b;
        s(sliderState.f5202c);
        this.J = sliderState.d;
        if (sliderState.f5203e) {
            requestFocus();
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SliderState sliderState = new SliderState(super.onSaveInstanceState());
        sliderState.f5200a = this.E;
        sliderState.f5201b = this.F;
        sliderState.f5202c = new ArrayList(this.G);
        sliderState.d = this.J;
        sliderState.f5203e = hasFocus();
        return sliderState;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i6, int i10, int i11, int i12) {
        this.M = Math.max(i6 - (this.f5196w * 2), 0);
        l();
        w();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        float x10 = motionEvent.getX();
        float f = (x10 - this.f5196w) / this.M;
        this.f5176b0 = f;
        float fMax = Math.max(0.0f, f);
        this.f5176b0 = fMax;
        this.f5176b0 = Math.min(1.0f, fMax);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            int i6 = this.f5190q;
            if (actionMasked == 1) {
                this.D = false;
                MotionEvent motionEvent2 = this.C;
                if (motionEvent2 != null && motionEvent2.getActionMasked() == 0) {
                    float f3 = i6;
                    if (Math.abs(this.C.getX() - motionEvent.getX()) <= f3 && Math.abs(this.C.getY() - motionEvent.getY()) <= f3 && q()) {
                        p();
                    }
                }
                if (this.H != -1) {
                    u();
                    this.H = -1;
                    Iterator it = this.f5186m.iterator();
                    if (it.hasNext()) {
                        throw a.e.l(it);
                    }
                }
                invalidate();
            } else if (actionMasked == 2) {
                if (!this.D) {
                    if (i() && Math.abs(x10 - this.B) < i6) {
                        return false;
                    }
                    getParent().requestDisallowInterceptTouchEvent(true);
                    p();
                }
                if (q()) {
                    this.D = true;
                    u();
                    w();
                    invalidate();
                }
            }
        } else {
            this.B = x10;
            if (!i()) {
                getParent().requestDisallowInterceptTouchEvent(true);
                if (q()) {
                    requestFocus();
                    this.D = true;
                    u();
                    w();
                    invalidate();
                    p();
                }
            }
        }
        setPressed(this.D);
        this.C = MotionEvent.obtain(motionEvent);
        return true;
    }

    public final void p() {
        Iterator it = this.f5186m.iterator();
        if (it.hasNext()) {
            throw a.e.l(it);
        }
    }

    public boolean q() {
        if (this.H != -1) {
            return true;
        }
        float f = this.f5176b0;
        if (k()) {
            f = 1.0f - f;
        }
        float f3 = this.F;
        float f4 = this.E;
        float fD = q.d(f3, f4, f, f4);
        float fO = (o(fD) * this.M) + this.f5196w;
        this.H = 0;
        float fAbs = Math.abs(((Float) this.G.get(0)).floatValue() - fD);
        for (int i6 = 1; i6 < this.G.size(); i6++) {
            float fAbs2 = Math.abs(((Float) this.G.get(i6)).floatValue() - fD);
            float fO2 = (o(((Float) this.G.get(i6)).floatValue()) * this.M) + this.f5196w;
            if (Float.compare(fAbs2, fAbs) > 1) {
                break;
            }
            boolean z7 = !k() ? fO2 - fO >= 0.0f : fO2 - fO <= 0.0f;
            if (Float.compare(fAbs2, fAbs) < 0) {
                this.H = i6;
            } else {
                if (Float.compare(fAbs2, fAbs) != 0) {
                    continue;
                } else {
                    if (Math.abs(fO2 - fO) < this.f5190q) {
                        this.H = -1;
                        return false;
                    }
                    if (z7) {
                        this.H = i6;
                    }
                }
            }
            fAbs = fAbs2;
        }
        return this.H != -1;
    }

    public final void r(z6.a aVar, float f) {
        String strF = f(f);
        if (!TextUtils.equals(aVar.f11669x, strF)) {
            aVar.f11669x = strF;
            aVar.A.d = true;
            aVar.invalidateSelf();
        }
        int iO = (this.f5196w + ((int) (o(f) * this.M))) - (aVar.getIntrinsicWidth() / 2);
        int iB = b() - (this.A + this.f5198y);
        aVar.setBounds(iO, iB - aVar.getIntrinsicHeight(), aVar.getIntrinsicWidth() + iO, iB);
        Rect rect = new Rect(aVar.getBounds());
        com.google.android.material.internal.e.c(a0.f(this), this, rect);
        aVar.setBounds(rect);
        ViewGroup viewGroupF = a0.f(this);
        ((ViewOverlay) (viewGroupF == null ? null : new a0.b(viewGroupF)).f32b).add(aVar);
    }

    public final void s(ArrayList arrayList) {
        ViewGroup viewGroupF;
        int resourceId;
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("At least one value must be set");
        }
        Collections.sort(arrayList);
        if (this.G.size() == arrayList.size() && this.G.equals(arrayList)) {
            return;
        }
        this.G = arrayList;
        this.O = true;
        this.I = 0;
        w();
        ArrayList arrayList2 = this.f5184k;
        if (arrayList2.size() > this.G.size()) {
            List<z6.a> listSubList = arrayList2.subList(this.G.size(), arrayList2.size());
            for (z6.a aVar : listSubList) {
                WeakHashMap weakHashMap = s0.f8353a;
                if (isAttachedToWindow()) {
                    ViewGroup viewGroupF2 = a0.f(this);
                    a0.b bVar = viewGroupF2 == null ? null : new a0.b(viewGroupF2);
                    if (bVar != null) {
                        ((ViewOverlay) bVar.f32b).remove(aVar);
                        ViewGroup viewGroupF3 = a0.f(this);
                        if (viewGroupF3 == null) {
                            aVar.getClass();
                        } else {
                            viewGroupF3.removeOnLayoutChangeListener(aVar.B);
                        }
                    }
                }
            }
            listSubList.clear();
        }
        while (arrayList2.size() < this.G.size()) {
            a aVar2 = this.f5183j;
            BaseSlider baseSlider = aVar2.f5210c;
            TypedArray typedArrayJ = a0.j(baseSlider.getContext(), aVar2.f5208a, x5.a.U, aVar2.f5209b, R.style.Widget_MaterialComponents_Slider, new int[0]);
            Context context = baseSlider.getContext();
            int resourceId2 = typedArrayJ.getResourceId(8, R.style.Widget_MaterialComponents_Tooltip);
            z6.a aVar3 = new z6.a(context, resourceId2);
            TypedArray typedArrayJ2 = a0.j(aVar3.f11670y, null, x5.a.f11024d0, 0, resourceId2, new int[0]);
            Context context2 = aVar3.f11670y;
            aVar3.H = context2.getResources().getDimensionPixelSize(R.dimen.mtrl_tooltip_arrowSize);
            l lVarF = aVar3.f10367a.f10350a.f();
            lVarF.f10397k = aVar3.x();
            aVar3.setShapeAppearanceModel(lVarF.a());
            CharSequence text = typedArrayJ2.getText(6);
            boolean zEquals = TextUtils.equals(aVar3.f11669x, text);
            x xVar = aVar3.A;
            if (!zEquals) {
                aVar3.f11669x = text;
                xVar.d = true;
                aVar3.invalidateSelf();
            }
            r6.d dVar = (!typedArrayJ2.hasValue(0) || (resourceId = typedArrayJ2.getResourceId(0, 0)) == 0) ? null : new r6.d(context2, resourceId);
            if (dVar != null && typedArrayJ2.hasValue(1)) {
                dVar.f9599j = com.bumptech.glide.d.k(context2, typedArrayJ2, 1);
            }
            xVar.b(dVar, context2);
            aVar3.n(ColorStateList.valueOf(typedArrayJ2.getColor(7, f0.a.f(f0.a.h(com.bumptech.glide.c.m(context2, R.attr.colorOnBackground, z6.a.class.getCanonicalName()), Opcodes.IFEQ), f0.a.h(com.bumptech.glide.c.m(context2, android.R.attr.colorBackground, z6.a.class.getCanonicalName()), 229)))));
            aVar3.s(ColorStateList.valueOf(com.bumptech.glide.c.m(context2, R.attr.colorSurface, z6.a.class.getCanonicalName())));
            aVar3.D = typedArrayJ2.getDimensionPixelSize(2, 0);
            aVar3.E = typedArrayJ2.getDimensionPixelSize(4, 0);
            aVar3.F = typedArrayJ2.getDimensionPixelSize(5, 0);
            aVar3.G = typedArrayJ2.getDimensionPixelSize(3, 0);
            typedArrayJ2.recycle();
            typedArrayJ.recycle();
            arrayList2.add(aVar3);
            WeakHashMap weakHashMap2 = s0.f8353a;
            if (isAttachedToWindow() && (viewGroupF = a0.f(this)) != null) {
                int[] iArr = new int[2];
                viewGroupF.getLocationOnScreen(iArr);
                aVar3.I = iArr[0];
                viewGroupF.getWindowVisibleDisplayFrame(aVar3.C);
                viewGroupF.addOnLayoutChangeListener(aVar3.B);
            }
        }
        int i6 = arrayList2.size() == 1 ? 0 : 1;
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            z6.a aVar4 = (z6.a) it.next();
            aVar4.f10367a.f10357j = i6;
            aVar4.invalidateSelf();
        }
        Iterator it2 = this.f5185l.iterator();
        while (it2.hasNext()) {
            if (it2.next() != null) {
                throw new ClassCastException();
            }
            Iterator it3 = this.G.iterator();
            if (it3.hasNext()) {
                ((Float) it3.next()).getClass();
                throw null;
            }
        }
        postInvalidate();
    }

    public void setActiveThumbIndex(int i6) {
        this.H = i6;
    }

    public void setCustomThumbDrawable(Drawable drawable) {
        Drawable drawableNewDrawable = drawable.mutate().getConstantState().newDrawable();
        a(drawableNewDrawable);
        this.V = drawableNewDrawable;
        this.W.clear();
        postInvalidate();
    }

    public void setCustomThumbDrawablesForValues(int... iArr) {
        Drawable[] drawableArr = new Drawable[iArr.length];
        for (int i6 = 0; i6 < iArr.length; i6++) {
            drawableArr[i6] = getResources().getDrawable(iArr[i6]);
        }
        setCustomThumbDrawablesForValues(drawableArr);
    }

    @Override // android.view.View
    public void setEnabled(boolean z7) {
        super.setEnabled(z7);
        setLayerType(z7 ? 0 : 2, null);
    }

    public void setFocusedThumbIndex(int i6) {
        if (i6 < 0 || i6 >= this.G.size()) {
            throw new IllegalArgumentException("index out of range");
        }
        this.I = i6;
        this.f5180g.w(i6);
        postInvalidate();
    }

    public void setHaloRadius(int i6) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (i6 == this.f5199z) {
            return;
        }
        this.f5199z = i6;
        Drawable background = getBackground();
        if (!(getBackground() instanceof RippleDrawable) || !(background instanceof RippleDrawable)) {
            postInvalidate();
            return;
        }
        RippleDrawable rippleDrawable = (RippleDrawable) background;
        int i10 = this.f5199z;
        if (Build.VERSION.SDK_INT >= 23) {
            rippleDrawable.setRadius(i10);
            return;
        }
        try {
            RippleDrawable.class.getDeclaredMethod("setMaxRadius", Integer.TYPE).invoke(rippleDrawable, Integer.valueOf(i10));
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e5) {
            throw new IllegalStateException("Couldn't set RippleDrawable radius", e5);
        }
    }

    public void setHaloTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.P)) {
            return;
        }
        this.P = colorStateList;
        Drawable background = getBackground();
        if ((getBackground() instanceof RippleDrawable) && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setColor(colorStateList);
            return;
        }
        int iH = h(colorStateList);
        Paint paint = this.d;
        paint.setColor(iH);
        paint.setAlpha(63);
        invalidate();
    }

    public void setLabelBehavior(int i6) {
        if (this.f5194u != i6) {
            this.f5194u = i6;
            requestLayout();
        }
    }

    public void setSeparationUnit(int i6) {
        this.f5178c0 = i6;
        this.O = true;
        postInvalidate();
    }

    public void setStepSize(float f) {
        if (f >= 0.0f) {
            if (this.J != f) {
                this.J = f;
                this.O = true;
                postInvalidate();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("The stepSize(" + f + ") must be 0, or a factor of the valueFrom(" + this.E + ")-valueTo(" + this.F + ") range");
    }

    public void setThumbElevation(float f) {
        this.U.m(f);
    }

    public void setThumbRadius(int i6) {
        int i10 = 0;
        if (i6 == this.f5198y) {
            return;
        }
        this.f5198y = i6;
        this.f5196w = this.f5191r + Math.max(i6 - this.f5192s, 0);
        WeakHashMap weakHashMap = s0.f8353a;
        if (isLaidOut()) {
            this.M = Math.max(getWidth() - (this.f5196w * 2), 0);
            l();
        }
        u6.e eVar = new u6.e(i10);
        u6.e eVar2 = new u6.e(i10);
        u6.e eVar3 = new u6.e(i10);
        u6.e eVar4 = new u6.e(i10);
        float f = this.f5198y;
        n5.d dVarE = o9.d.e(0);
        l.b(dVarE);
        l.b(dVarE);
        l.b(dVarE);
        l.b(dVarE);
        u6.a aVar = new u6.a(f);
        u6.a aVar2 = new u6.a(f);
        u6.a aVar3 = new u6.a(f);
        u6.a aVar4 = new u6.a(f);
        m mVar = new m();
        mVar.f10400a = dVarE;
        mVar.f10401b = dVarE;
        mVar.f10402c = dVarE;
        mVar.d = dVarE;
        mVar.f10403e = aVar;
        mVar.f = aVar2;
        mVar.f10404g = aVar3;
        mVar.f10405h = aVar4;
        mVar.f10406i = eVar;
        mVar.f10407j = eVar2;
        mVar.f10408k = eVar3;
        mVar.f10409l = eVar4;
        u6.h hVar = this.U;
        hVar.setShapeAppearanceModel(mVar);
        int i11 = this.f5198y * 2;
        hVar.setBounds(0, 0, i11, i11);
        Drawable drawable = this.V;
        if (drawable != null) {
            a(drawable);
        }
        Iterator it = this.W.iterator();
        while (it.hasNext()) {
            a((Drawable) it.next());
        }
        postInvalidate();
    }

    public void setThumbStrokeColor(ColorStateList colorStateList) {
        this.U.s(colorStateList);
        postInvalidate();
    }

    public void setThumbStrokeWidth(float f) {
        u6.h hVar = this.U;
        hVar.f10367a.f10357j = f;
        hVar.invalidateSelf();
        postInvalidate();
    }

    public void setTickActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.Q)) {
            return;
        }
        this.Q = colorStateList;
        this.f.setColor(h(colorStateList));
        invalidate();
    }

    public void setTickInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.R)) {
            return;
        }
        this.R = colorStateList;
        this.f5179e.setColor(h(colorStateList));
        invalidate();
    }

    public void setTrackActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.S)) {
            return;
        }
        this.S = colorStateList;
        this.f5175b.setColor(h(colorStateList));
        invalidate();
    }

    public void setTrackHeight(int i6) {
        if (this.f5195v != i6) {
            this.f5195v = i6;
            this.f5174a.setStrokeWidth(i6);
            this.f5175b.setStrokeWidth(this.f5195v);
            this.f5179e.setStrokeWidth(this.f5195v / 2.0f);
            this.f.setStrokeWidth(this.f5195v / 2.0f);
            postInvalidate();
        }
    }

    public void setTrackInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.T)) {
            return;
        }
        this.T = colorStateList;
        this.f5174a.setColor(h(colorStateList));
        invalidate();
    }

    public void setValues(Float... fArr) {
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, fArr);
        s(arrayList);
    }

    public final boolean t(int i6, float f) {
        this.I = i6;
        if (Math.abs(f - ((Float) this.G.get(i6)).floatValue()) < 1.0E-4d) {
            return false;
        }
        float minSeparation = getMinSeparation();
        if (this.f5178c0 == 0) {
            if (minSeparation == 0.0f) {
                minSeparation = 0.0f;
            } else {
                float f3 = this.E;
                minSeparation = q.d(f3, this.F, (minSeparation - this.f5196w) / this.M, f3);
            }
        }
        if (k()) {
            minSeparation = -minSeparation;
        }
        int i10 = i6 + 1;
        float fFloatValue = i10 >= this.G.size() ? this.F : ((Float) this.G.get(i10)).floatValue() - minSeparation;
        int i11 = i6 - 1;
        float fFloatValue2 = i11 < 0 ? this.E : minSeparation + ((Float) this.G.get(i11)).floatValue();
        if (f < fFloatValue2) {
            f = fFloatValue2;
        } else if (f > fFloatValue) {
            f = fFloatValue;
        }
        this.G.set(i6, Float.valueOf(f));
        Iterator it = this.f5185l.iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            ((Float) this.G.get(i6)).getClass();
            throw null;
        }
        AccessibilityManager accessibilityManager = this.f5181h;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            return true;
        }
        d dVar = this.f5182i;
        if (dVar == null) {
            this.f5182i = new d(this);
        } else {
            removeCallbacks(dVar);
        }
        d dVar2 = this.f5182i;
        dVar2.f5213a = i6;
        postDelayed(dVar2, 200L);
        return true;
    }

    public final void u() {
        double dRound;
        float f = this.f5176b0;
        float f3 = this.J;
        if (f3 > 0.0f) {
            dRound = Math.round(f * r1) / ((int) ((this.F - this.E) / f3));
        } else {
            dRound = f;
        }
        if (k()) {
            dRound = 1.0d - dRound;
        }
        float f4 = this.F;
        t(this.H, (float) ((dRound * (f4 - r1)) + this.E));
    }

    public final void v(int i6, Rect rect) {
        int iO = this.f5196w + ((int) (o(getValues().get(i6).floatValue()) * this.M));
        int iB = b();
        int i10 = this.f5198y;
        rect.set(iO - i10, iB - i10, iO + i10, iB + i10);
    }

    public final void w() {
        if (!(getBackground() instanceof RippleDrawable) || getMeasuredWidth() <= 0) {
            return;
        }
        Drawable background = getBackground();
        if (background instanceof RippleDrawable) {
            int iO = (int) ((o(((Float) this.G.get(this.I)).floatValue()) * this.M) + this.f5196w);
            int iB = b();
            int i6 = this.f5199z;
            g0.a.f(background, iO - i6, iB - i6, iO + i6, iB + i6);
        }
    }

    public final void x() {
        if (this.O) {
            float f = this.E;
            float f3 = this.F;
            if (f >= f3) {
                throw new IllegalStateException("valueFrom(" + this.E + ") must be smaller than valueTo(" + this.F + ")");
            }
            if (f3 <= f) {
                throw new IllegalStateException("valueTo(" + this.F + ") must be greater than valueFrom(" + this.E + ")");
            }
            if (this.J > 0.0f && !j(f3 - f)) {
                throw new IllegalStateException("The stepSize(" + this.J + ") must be 0, or a factor of the valueFrom(" + this.E + ")-valueTo(" + this.F + ") range");
            }
            Iterator it = this.G.iterator();
            while (it.hasNext()) {
                Float f4 = (Float) it.next();
                if (f4.floatValue() < this.E || f4.floatValue() > this.F) {
                    throw new IllegalStateException("Slider value(" + f4 + ") must be greater or equal to valueFrom(" + this.E + "), and lower or equal to valueTo(" + this.F + ")");
                }
                if (this.J > 0.0f && !j(f4.floatValue() - this.E)) {
                    float f5 = this.E;
                    float f10 = this.J;
                    throw new IllegalStateException("Value(" + f4 + ") must be equal to valueFrom(" + f5 + ") plus a multiple of stepSize(" + f10 + ") when using stepSize(" + f10 + ")");
                }
            }
            float minSeparation = getMinSeparation();
            if (minSeparation < 0.0f) {
                throw new IllegalStateException("minSeparation(" + minSeparation + ") must be greater or equal to 0");
            }
            float f11 = this.J;
            if (f11 > 0.0f && minSeparation > 0.0f) {
                if (this.f5178c0 != 1) {
                    throw new IllegalStateException("minSeparation(" + minSeparation + ") cannot be set as a dimension when using stepSize(" + this.J + ")");
                }
                if (minSeparation < f11 || !j(minSeparation)) {
                    float f12 = this.J;
                    throw new IllegalStateException("minSeparation(" + minSeparation + ") must be greater or equal and a multiple of stepSize(" + f12 + ") when using stepSize(" + f12 + ")");
                }
            }
            float f13 = this.J;
            if (f13 != 0.0f) {
                if (((int) f13) != f13) {
                    Log.w("BaseSlider", "Floating point value used for stepSize(" + f13 + "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.");
                }
                float f14 = this.E;
                if (((int) f14) != f14) {
                    Log.w("BaseSlider", "Floating point value used for valueFrom(" + f14 + "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.");
                }
                float f15 = this.F;
                if (((int) f15) != f15) {
                    Log.w("BaseSlider", "Floating point value used for valueTo(" + f15 + "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.");
                }
            }
            this.O = false;
        }
    }

    public BaseSlider(Context context, AttributeSet attributeSet, int i6) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException, InvocationTargetException {
        super(y6.a.a(context, attributeSet, i6, R.style.Widget_MaterialComponents_Slider), attributeSet, i6);
        this.f5184k = new ArrayList();
        this.f5185l = new ArrayList();
        this.f5186m = new ArrayList();
        this.f5187n = false;
        this.D = false;
        this.G = new ArrayList();
        this.H = -1;
        this.I = -1;
        this.J = 0.0f;
        this.L = true;
        this.N = false;
        u6.h hVar = new u6.h();
        this.U = hVar;
        this.W = Collections.emptyList();
        this.f5178c0 = 0;
        Context context2 = getContext();
        Paint paint = new Paint();
        this.f5174a = paint;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint.setStrokeCap(cap);
        Paint paint2 = new Paint();
        this.f5175b = paint2;
        paint2.setStyle(style);
        paint2.setStrokeCap(cap);
        Paint paint3 = new Paint(1);
        this.f5177c = paint3;
        Paint.Style style2 = Paint.Style.FILL;
        paint3.setStyle(style2);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint4 = new Paint(1);
        this.d = paint4;
        paint4.setStyle(style2);
        Paint paint5 = new Paint();
        this.f5179e = paint5;
        paint5.setStyle(style);
        paint5.setStrokeCap(cap);
        Paint paint6 = new Paint();
        this.f = paint6;
        paint6.setStyle(style);
        paint6.setStrokeCap(cap);
        Resources resources = context2.getResources();
        this.f5193t = resources.getDimensionPixelSize(R.dimen.mtrl_slider_widget_height);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_slider_track_side_padding);
        this.f5191r = dimensionPixelOffset;
        this.f5196w = dimensionPixelOffset;
        this.f5192s = resources.getDimensionPixelSize(R.dimen.mtrl_slider_thumb_radius);
        this.f5197x = resources.getDimensionPixelOffset(R.dimen.mtrl_slider_track_top);
        this.A = resources.getDimensionPixelSize(R.dimen.mtrl_slider_label_padding);
        this.f5183j = new a(this, attributeSet, i6);
        int[] iArr = x5.a.U;
        a0.a(context2, attributeSet, i6, R.style.Widget_MaterialComponents_Slider);
        a0.b(context2, attributeSet, iArr, i6, R.style.Widget_MaterialComponents_Slider, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, i6, R.style.Widget_MaterialComponents_Slider);
        this.E = typedArrayObtainStyledAttributes.getFloat(3, 0.0f);
        this.F = typedArrayObtainStyledAttributes.getFloat(4, 1.0f);
        setValues(Float.valueOf(this.E));
        this.J = typedArrayObtainStyledAttributes.getFloat(2, 0.0f);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(18);
        int i10 = zHasValue ? 18 : 20;
        int i11 = zHasValue ? 18 : 19;
        ColorStateList colorStateListK = com.bumptech.glide.d.k(context2, typedArrayObtainStyledAttributes, i10);
        setTrackInactiveTintList(colorStateListK == null ? u7.d.k(context2, R.color.material_slider_inactive_track_color) : colorStateListK);
        ColorStateList colorStateListK2 = com.bumptech.glide.d.k(context2, typedArrayObtainStyledAttributes, i11);
        setTrackActiveTintList(colorStateListK2 == null ? u7.d.k(context2, R.color.material_slider_active_track_color) : colorStateListK2);
        hVar.n(com.bumptech.glide.d.k(context2, typedArrayObtainStyledAttributes, 9));
        if (typedArrayObtainStyledAttributes.hasValue(12)) {
            setThumbStrokeColor(com.bumptech.glide.d.k(context2, typedArrayObtainStyledAttributes, 12));
        }
        setThumbStrokeWidth(typedArrayObtainStyledAttributes.getDimension(13, 0.0f));
        ColorStateList colorStateListK3 = com.bumptech.glide.d.k(context2, typedArrayObtainStyledAttributes, 5);
        setHaloTintList(colorStateListK3 == null ? u7.d.k(context2, R.color.material_slider_halo_color) : colorStateListK3);
        this.L = typedArrayObtainStyledAttributes.getBoolean(17, true);
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(14);
        int i12 = zHasValue2 ? 14 : 16;
        int i13 = zHasValue2 ? 14 : 15;
        ColorStateList colorStateListK4 = com.bumptech.glide.d.k(context2, typedArrayObtainStyledAttributes, i12);
        setTickInactiveTintList(colorStateListK4 == null ? u7.d.k(context2, R.color.material_slider_inactive_tick_marks_color) : colorStateListK4);
        ColorStateList colorStateListK5 = com.bumptech.glide.d.k(context2, typedArrayObtainStyledAttributes, i13);
        setTickActiveTintList(colorStateListK5 == null ? u7.d.k(context2, R.color.material_slider_active_tick_marks_color) : colorStateListK5);
        setThumbRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(11, 0));
        setHaloRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0));
        setThumbElevation(typedArrayObtainStyledAttributes.getDimension(10, 0.0f));
        setTrackHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(21, 0));
        setLabelBehavior(typedArrayObtainStyledAttributes.getInt(7, 0));
        if (!typedArrayObtainStyledAttributes.getBoolean(0, true)) {
            setEnabled(false);
        }
        typedArrayObtainStyledAttributes.recycle();
        setFocusable(true);
        setClickable(true);
        hVar.r();
        this.f5190q = ViewConfiguration.get(context2).getScaledTouchSlop();
        e eVar = new e(this);
        this.f5180g = eVar;
        s0.q(this, eVar);
        this.f5181h = (AccessibilityManager) getContext().getSystemService("accessibility");
    }

    public void setValues(List<Float> list) {
        s(new ArrayList(list));
    }

    public void setCustomThumbDrawablesForValues(Drawable... drawableArr) {
        this.V = null;
        this.W = new ArrayList();
        for (Drawable drawable : drawableArr) {
            List list = this.W;
            Drawable drawableNewDrawable = drawable.mutate().getConstantState().newDrawable();
            a(drawableNewDrawable);
            list.add(drawableNewDrawable);
        }
        postInvalidate();
    }
}
