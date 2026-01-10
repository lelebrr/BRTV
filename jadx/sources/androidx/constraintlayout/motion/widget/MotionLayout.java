package androidx.constraintlayout.motion.widget;

import a.e;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.c;
import androidx.constraintlayout.widget.d;
import androidx.core.widget.NestedScrollView;
import c6.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import n0.q;
import q1.f0;
import s.h;
import t.a;
import t.a0;
import t.b0;
import t.c0;
import t.h0;
import t.i;
import t.n;
import t.n0;
import t.o;
import t.o0;
import t.p;
import t.r;
import t.s;
import t.t;
import t.u;
import t.v;
import t.w;
import t.x;
import t.y;
import y.f;
import y.g;
import y.j;
import y.k;
import y.l;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MotionLayout extends ConstraintLayout implements q {
    public static final /* synthetic */ int A0 = 0;
    public long A;
    public float B;
    public float C;
    public float D;
    public long E;
    public float F;
    public boolean G;
    public boolean H;
    public w I;
    public int J;
    public s K;
    public boolean L;
    public final h M;
    public final r N;
    public a O;
    public int P;
    public int Q;
    public boolean R;
    public float S;
    public float T;
    public long U;
    public float V;
    public boolean W;

    /* renamed from: b0, reason: collision with root package name */
    public ArrayList f945b0;

    /* renamed from: c0, reason: collision with root package name */
    public ArrayList f946c0;

    /* renamed from: d0, reason: collision with root package name */
    public ArrayList f947d0;

    /* renamed from: e0, reason: collision with root package name */
    public int f948e0;

    /* renamed from: f0, reason: collision with root package name */
    public long f949f0;

    /* renamed from: g0, reason: collision with root package name */
    public float f950g0;

    /* renamed from: h0, reason: collision with root package name */
    public int f951h0;
    public float i0;

    /* renamed from: j0, reason: collision with root package name */
    public boolean f952j0;

    /* renamed from: k0, reason: collision with root package name */
    public int f953k0;

    /* renamed from: l0, reason: collision with root package name */
    public int f954l0;

    /* renamed from: m0, reason: collision with root package name */
    public int f955m0;

    /* renamed from: n0, reason: collision with root package name */
    public int f956n0;

    /* renamed from: o0, reason: collision with root package name */
    public int f957o0;

    /* renamed from: p0, reason: collision with root package name */
    public int f958p0;

    /* renamed from: q, reason: collision with root package name */
    public c0 f959q;

    /* renamed from: q0, reason: collision with root package name */
    public float f960q0;

    /* renamed from: r, reason: collision with root package name */
    public Interpolator f961r;

    /* renamed from: r0, reason: collision with root package name */
    public final u f962r0;

    /* renamed from: s, reason: collision with root package name */
    public float f963s;

    /* renamed from: s0, reason: collision with root package name */
    public boolean f964s0;

    /* renamed from: t, reason: collision with root package name */
    public int f965t;

    /* renamed from: t0, reason: collision with root package name */
    public v f966t0;

    /* renamed from: u, reason: collision with root package name */
    public int f967u;

    /* renamed from: u0, reason: collision with root package name */
    public x f968u0;

    /* renamed from: v, reason: collision with root package name */
    public int f969v;

    /* renamed from: v0, reason: collision with root package name */
    public final t f970v0;

    /* renamed from: w, reason: collision with root package name */
    public int f971w;

    /* renamed from: w0, reason: collision with root package name */
    public boolean f972w0;

    /* renamed from: x, reason: collision with root package name */
    public int f973x;
    public final RectF x0;

    /* renamed from: y, reason: collision with root package name */
    public boolean f974y;

    /* renamed from: y0, reason: collision with root package name */
    public View f975y0;

    /* renamed from: z, reason: collision with root package name */
    public final HashMap f976z;

    /* renamed from: z0, reason: collision with root package name */
    public final ArrayList f977z0;

    public MotionLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f963s = 0.0f;
        this.f965t = -1;
        this.f967u = -1;
        this.f969v = -1;
        this.f971w = 0;
        this.f973x = 0;
        this.f974y = true;
        this.f976z = new HashMap();
        this.A = 0L;
        this.B = 1.0f;
        this.C = 0.0f;
        this.D = 0.0f;
        this.F = 0.0f;
        this.H = false;
        this.J = 0;
        this.L = false;
        this.M = new h();
        this.N = new r(this);
        this.R = false;
        this.W = false;
        this.f945b0 = null;
        this.f946c0 = null;
        this.f947d0 = null;
        this.f948e0 = 0;
        this.f949f0 = -1L;
        this.f950g0 = 0.0f;
        this.f951h0 = 0;
        this.i0 = 0.0f;
        this.f952j0 = false;
        this.f962r0 = new u();
        this.f964s0 = false;
        this.f968u0 = x.f10037a;
        this.f970v0 = new t(this);
        this.f972w0 = false;
        this.x0 = new RectF();
        this.f975y0 = null;
        this.f977z0 = new ArrayList();
        u(attributeSet);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A(float r12, float r13, int r14) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.A(float, float, int):void");
    }

    public final void B(int i6) {
        b bVar;
        if (!super.isAttachedToWindow()) {
            if (this.f966t0 == null) {
                this.f966t0 = new v(this);
            }
            this.f966t0.d = i6;
            return;
        }
        c0 c0Var = this.f959q;
        if (c0Var != null && (bVar = c0Var.f9910b) != null) {
            int i10 = this.f967u;
            float f = -1;
            k kVar = (k) ((SparseArray) bVar.f3391b).get(i6);
            if (kVar == null) {
                i10 = i6;
            } else {
                ArrayList arrayList = kVar.f11229b;
                int i11 = kVar.f11230c;
                if (f != -1.0f && f != -1.0f) {
                    Iterator it = arrayList.iterator();
                    l lVar = null;
                    while (true) {
                        if (it.hasNext()) {
                            l lVar2 = (l) it.next();
                            if (lVar2.a(f, f)) {
                                if (i10 == lVar2.f11234e) {
                                    break;
                                } else {
                                    lVar = lVar2;
                                }
                            }
                        } else if (lVar != null) {
                            i10 = lVar.f11234e;
                        }
                    }
                } else if (i11 != i10) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        if (i10 == ((l) it2.next()).f11234e) {
                            break;
                        }
                    }
                    i10 = i11;
                }
            }
            if (i10 != -1) {
                i6 = i10;
            }
        }
        int i12 = this.f967u;
        if (i12 == i6) {
            return;
        }
        if (this.f965t == i6) {
            o(0.0f);
            return;
        }
        if (this.f969v == i6) {
            o(1.0f);
            return;
        }
        this.f969v = i6;
        if (i12 != -1) {
            z(i12, i6);
            o(1.0f);
            this.D = 0.0f;
            o(1.0f);
            return;
        }
        this.L = false;
        this.F = 1.0f;
        this.C = 0.0f;
        this.D = 0.0f;
        this.E = getNanoTime();
        this.A = getNanoTime();
        this.G = false;
        this.f961r = null;
        c0 c0Var2 = this.f959q;
        this.B = (c0Var2.f9911c != null ? r6.f9898h : c0Var2.f9916j) / 1000.0f;
        this.f965t = -1;
        c0Var2.k(-1, this.f969v);
        this.f959q.g();
        int childCount = getChildCount();
        HashMap map = this.f976z;
        map.clear();
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            map.put(childAt, new o(childAt));
        }
        this.H = true;
        d dVarB = this.f959q.b(i6);
        t tVar = this.f970v0;
        tVar.d(null, dVarB);
        x();
        tVar.a();
        int childCount2 = getChildCount();
        for (int i14 = 0; i14 < childCount2; i14++) {
            View childAt2 = getChildAt(i14);
            o oVar = (o) map.get(childAt2);
            if (oVar != null) {
                y yVar = oVar.d;
                yVar.f10044c = 0.0f;
                yVar.d = 0.0f;
                float x10 = childAt2.getX();
                float y7 = childAt2.getY();
                float width = childAt2.getWidth();
                float height = childAt2.getHeight();
                yVar.f10045e = x10;
                yVar.f = y7;
                yVar.f10046g = width;
                yVar.f10047h = height;
                n nVar = oVar.f;
                nVar.getClass();
                childAt2.getX();
                childAt2.getY();
                childAt2.getWidth();
                childAt2.getHeight();
                nVar.f9952c = childAt2.getVisibility();
                nVar.f9950a = childAt2.getVisibility() != 0 ? 0.0f : childAt2.getAlpha();
                nVar.d = childAt2.getElevation();
                nVar.f9953e = childAt2.getRotation();
                nVar.f = childAt2.getRotationX();
                nVar.f9954g = childAt2.getRotationY();
                nVar.f9955h = childAt2.getScaleX();
                nVar.f9956i = childAt2.getScaleY();
                nVar.f9957j = childAt2.getPivotX();
                nVar.f9958k = childAt2.getPivotY();
                nVar.f9959l = childAt2.getTranslationX();
                nVar.f9960m = childAt2.getTranslationY();
                nVar.f9961n = childAt2.getTranslationZ();
            }
        }
        getWidth();
        getHeight();
        for (int i15 = 0; i15 < childCount; i15++) {
            o oVar2 = (o) map.get(getChildAt(i15));
            this.f959q.e(oVar2);
            oVar2.e(getNanoTime());
        }
        b0 b0Var = this.f959q.f9911c;
        float f3 = b0Var != null ? b0Var.f9899i : 0.0f;
        if (f3 != 0.0f) {
            float fMin = Float.MAX_VALUE;
            float fMax = -3.4028235E38f;
            for (int i16 = 0; i16 < childCount; i16++) {
                y yVar2 = ((o) map.get(getChildAt(i16))).f9969e;
                float f4 = yVar2.f + yVar2.f10045e;
                fMin = Math.min(fMin, f4);
                fMax = Math.max(fMax, f4);
            }
            for (int i17 = 0; i17 < childCount; i17++) {
                o oVar3 = (o) map.get(getChildAt(i17));
                y yVar3 = oVar3.f9969e;
                float f5 = yVar3.f10045e;
                float f10 = yVar3.f;
                oVar3.f9975l = 1.0f / (1.0f - f3);
                oVar3.f9974k = f3 - ((((f5 + f10) - fMin) * f3) / (fMax - fMin));
            }
        }
        this.C = 0.0f;
        this.D = 0.0f;
        this.H = true;
        invalidate();
    }

    @Override // n0.p
    public final void b(View view, int i6, int i10, int[] iArr, int i11) {
        b0 b0Var;
        boolean z7;
        o0 o0Var;
        float f;
        o0 o0Var2;
        o0 o0Var3;
        int i12;
        c0 c0Var = this.f959q;
        if (c0Var == null || (b0Var = c0Var.f9911c) == null || (z7 = b0Var.f9905o)) {
            return;
        }
        if (z7 || (o0Var3 = b0Var.f9902l) == null || (i12 = o0Var3.f9994e) == -1 || view.getId() == i12) {
            c0 c0Var2 = this.f959q;
            if (c0Var2 != null) {
                b0 b0Var2 = c0Var2.f9911c;
                if ((b0Var2 == null || (o0Var2 = b0Var2.f9902l) == null) ? false : o0Var2.f10006r) {
                    float f3 = this.C;
                    if ((f3 == 1.0f || f3 == 0.0f) && view.canScrollVertically(-1)) {
                        return;
                    }
                }
            }
            if (b0Var.f9902l != null) {
                o0 o0Var4 = this.f959q.f9911c.f9902l;
                if ((o0Var4.f10008t & 1) != 0) {
                    float f4 = i6;
                    float f5 = i10;
                    o0Var4.f10003o.s(o0Var4.d, o0Var4.f10003o.getProgress(), o0Var4.f9996h, o0Var4.f9995g, o0Var4.f10000l);
                    float f10 = o0Var4.f9997i;
                    float[] fArr = o0Var4.f10000l;
                    if (f10 != 0.0f) {
                        if (fArr[0] == 0.0f) {
                            fArr[0] = 1.0E-7f;
                        }
                        f = (f4 * f10) / fArr[0];
                    } else {
                        if (fArr[1] == 0.0f) {
                            fArr[1] = 1.0E-7f;
                        }
                        f = (f5 * o0Var4.f9998j) / fArr[1];
                    }
                    float f11 = this.D;
                    if ((f11 <= 0.0f && f < 0.0f) || (f11 >= 1.0f && f > 0.0f)) {
                        view.setNestedScrollingEnabled(false);
                        view.post(new t.q((ViewGroup) view));
                        return;
                    }
                }
            }
            float f12 = this.C;
            long nanoTime = getNanoTime();
            float f13 = i6;
            this.S = f13;
            float f14 = i10;
            this.T = f14;
            this.V = (float) ((nanoTime - this.U) * 1.0E-9d);
            this.U = nanoTime;
            b0 b0Var3 = this.f959q.f9911c;
            if (b0Var3 != null && (o0Var = b0Var3.f9902l) != null) {
                MotionLayout motionLayout = o0Var.f10003o;
                float progress = motionLayout.getProgress();
                if (!o0Var.f9999k) {
                    o0Var.f9999k = true;
                    motionLayout.setProgress(progress);
                }
                o0Var.f10003o.s(o0Var.d, progress, o0Var.f9996h, o0Var.f9995g, o0Var.f10000l);
                float f15 = o0Var.f9997i;
                float[] fArr2 = o0Var.f10000l;
                if (Math.abs((o0Var.f9998j * fArr2[1]) + (f15 * fArr2[0])) < 0.01d) {
                    fArr2[0] = 0.01f;
                    fArr2[1] = 0.01f;
                }
                float f16 = o0Var.f9997i;
                float fMax = Math.max(Math.min(progress + (f16 != 0.0f ? (f13 * f16) / fArr2[0] : (f14 * o0Var.f9998j) / fArr2[1]), 1.0f), 0.0f);
                if (fMax != motionLayout.getProgress()) {
                    motionLayout.setProgress(fMax);
                }
            }
            if (f12 != this.C) {
                iArr[0] = i6;
                iArr[1] = i10;
            }
            p(false);
            if (iArr[0] == 0 && iArr[1] == 0) {
                return;
            }
            this.R = true;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) throws NumberFormatException {
        int i6;
        ArrayList arrayList;
        int i10;
        Canvas canvas2;
        Iterator it;
        int i11;
        h0 h0Var;
        h0 h0Var2;
        Paint paint;
        int i12;
        h0 h0Var3;
        Paint paint2;
        double dA;
        Paint paint3;
        Canvas canvas3 = canvas;
        int i13 = 0;
        p(false);
        super.dispatchDraw(canvas);
        if (this.f959q == null) {
            return;
        }
        if ((this.J & 1) == 1 && !isInEditMode()) {
            this.f948e0++;
            long nanoTime = getNanoTime();
            long j10 = this.f949f0;
            if (j10 != -1) {
                if (nanoTime - j10 > 200000000) {
                    this.f950g0 = ((int) ((this.f948e0 / (r9 * 1.0E-9f)) * 100.0f)) / 100.0f;
                    this.f948e0 = 0;
                    this.f949f0 = nanoTime;
                }
            } else {
                this.f949f0 = nanoTime;
            }
            Paint paint4 = new Paint();
            paint4.setTextSize(42.0f);
            float progress = ((int) (getProgress() * 1000.0f)) / 10.0f;
            StringBuilder sb = new StringBuilder();
            sb.append(this.f950g0);
            sb.append(" fps ");
            int i14 = this.f965t;
            StringBuilder sbM = ea.q.m(e.t(sb, i14 == -1 ? "UNDEFINED" : getContext().getResources().getResourceEntryName(i14), " -> "));
            int i15 = this.f969v;
            sbM.append(i15 == -1 ? "UNDEFINED" : getContext().getResources().getResourceEntryName(i15));
            sbM.append(" (progress: ");
            sbM.append(progress);
            sbM.append(" ) state=");
            int i16 = this.f967u;
            sbM.append(i16 == -1 ? "undefined" : i16 != -1 ? getContext().getResources().getResourceEntryName(i16) : "UNDEFINED");
            String string = sbM.toString();
            paint4.setColor(-16777216);
            canvas3.drawText(string, 11.0f, getHeight() - 29, paint4);
            paint4.setColor(-7864184);
            canvas3.drawText(string, 10.0f, getHeight() - 30, paint4);
        }
        if (this.J > 1) {
            if (this.K == null) {
                this.K = new s(this);
            }
            s sVar = this.K;
            HashMap map = this.f976z;
            c0 c0Var = this.f959q;
            b0 b0Var = c0Var.f9911c;
            int i17 = b0Var != null ? b0Var.f9898h : c0Var.f9916j;
            int i18 = this.J;
            sVar.getClass();
            if (map == null || map.size() == 0) {
                return;
            }
            canvas.save();
            MotionLayout motionLayout = sVar.f10025n;
            boolean zIsInEditMode = motionLayout.isInEditMode();
            Paint paint5 = sVar.f10017e;
            if (!zIsInEditMode && (i18 & 1) == 2) {
                String str = motionLayout.getContext().getResources().getResourceName(motionLayout.f969v) + ":" + motionLayout.getProgress();
                canvas3.drawText(str, 10.0f, motionLayout.getHeight() - 30, sVar.f10019h);
                canvas3.drawText(str, 11.0f, motionLayout.getHeight() - 29, paint5);
            }
            Iterator it2 = map.values().iterator();
            while (it2.hasNext()) {
                o oVar = (o) it2.next();
                int iMax = oVar.d.f10043b;
                ArrayList arrayList2 = oVar.f9982s;
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    iMax = Math.max(iMax, ((y) it3.next()).f10043b);
                }
                int iMax2 = Math.max(iMax, oVar.f9969e.f10043b);
                if (i18 > 0 && iMax2 == 0) {
                    iMax2 = 1;
                }
                if (iMax2 != 0) {
                    y yVar = oVar.d;
                    float[] fArr = sVar.f10016c;
                    if (fArr != null) {
                        double[] dArrW = oVar.f9971h[i13].w();
                        int[] iArr = sVar.f10015b;
                        if (iArr != null) {
                            Iterator it4 = arrayList2.iterator();
                            int i19 = 0;
                            while (it4.hasNext()) {
                                ((y) it4.next()).getClass();
                                iArr[i19] = i13;
                                i19++;
                            }
                        }
                        int i20 = 0;
                        int i21 = 0;
                        while (i21 < dArrW.length) {
                            oVar.f9971h[0].r(dArrW[i21], oVar.f9977n);
                            yVar.c(oVar.f9976m, oVar.f9977n, fArr, i20);
                            i20 += 2;
                            i21++;
                            i18 = i18;
                            arrayList2 = arrayList2;
                        }
                        i6 = i18;
                        arrayList = arrayList2;
                        i10 = i20 / 2;
                    } else {
                        i6 = i18;
                        arrayList = arrayList2;
                        i10 = 0;
                    }
                    sVar.f10022k = i10;
                    if (iMax2 >= 1) {
                        int i22 = i17 / 16;
                        float[] fArr2 = sVar.f10014a;
                        if (fArr2 == null || fArr2.length != i22 * 2) {
                            sVar.f10014a = new float[i22 * 2];
                            sVar.d = new Path();
                        }
                        int i23 = sVar.f10024m;
                        float f = i23;
                        canvas3.translate(f, f);
                        paint5.setColor(1996488704);
                        Paint paint6 = sVar.f10020i;
                        paint6.setColor(1996488704);
                        Paint paint7 = sVar.f;
                        paint7.setColor(1996488704);
                        Paint paint8 = sVar.f10018g;
                        paint8.setColor(1996488704);
                        float[] fArr3 = sVar.f10014a;
                        float f3 = 1.0f / (i22 - 1);
                        HashMap map2 = oVar.f9986w;
                        it = it2;
                        if (map2 == null) {
                            i11 = i17;
                            h0Var = null;
                        } else {
                            h0Var = (h0) map2.get("translationX");
                            i11 = i17;
                        }
                        HashMap map3 = oVar.f9986w;
                        if (map3 == null) {
                            paint = paint8;
                            h0Var2 = null;
                        } else {
                            h0Var2 = (h0) map3.get("translationY");
                            paint = paint8;
                        }
                        HashMap map4 = oVar.f9987x;
                        i iVar = map4 == null ? null : (i) map4.get("translationX");
                        HashMap map5 = oVar.f9987x;
                        i iVar2 = map5 == null ? null : (i) map5.get("translationY");
                        int i24 = 0;
                        while (true) {
                            float f4 = Float.NaN;
                            float f5 = 0.0f;
                            if (i24 >= i22) {
                                break;
                            }
                            int i25 = i22;
                            float f10 = i24 * f3;
                            float f11 = f3;
                            float f12 = oVar.f9975l;
                            if (f12 != 1.0f) {
                                paint2 = paint6;
                                float f13 = oVar.f9974k;
                                if (f10 < f13) {
                                    f10 = 0.0f;
                                }
                                if (f10 > f13) {
                                    i12 = iMax2;
                                    h0Var3 = h0Var2;
                                    if (f10 < 1.0d) {
                                        f10 = (f10 - f13) * f12;
                                    }
                                } else {
                                    i12 = iMax2;
                                    h0Var3 = h0Var2;
                                }
                            } else {
                                i12 = iMax2;
                                h0Var3 = h0Var2;
                                paint2 = paint6;
                            }
                            double d = f10;
                            s.e eVar = yVar.f10042a;
                            Iterator it5 = arrayList.iterator();
                            while (it5.hasNext()) {
                                double d10 = d;
                                y yVar2 = (y) it5.next();
                                s.e eVar2 = yVar2.f10042a;
                                if (eVar2 != null) {
                                    float f14 = yVar2.f10044c;
                                    if (f14 < f10) {
                                        f5 = f14;
                                        eVar = eVar2;
                                    } else if (Float.isNaN(f4)) {
                                        f4 = yVar2.f10044c;
                                    }
                                }
                                d = d10;
                            }
                            double d11 = d;
                            if (eVar != null) {
                                if (Float.isNaN(f4)) {
                                    f4 = 1.0f;
                                }
                                dA = (((float) eVar.a((f10 - f5) / r25)) * (f4 - f5)) + f5;
                            } else {
                                dA = d11;
                            }
                            oVar.f9971h[0].r(dA, oVar.f9977n);
                            s.b bVar = oVar.f9972i;
                            if (bVar != null) {
                                double[] dArr = oVar.f9977n;
                                paint3 = paint7;
                                if (dArr.length > 0) {
                                    bVar.r(dA, dArr);
                                }
                            } else {
                                paint3 = paint7;
                            }
                            int i26 = i24 * 2;
                            yVar.c(oVar.f9976m, oVar.f9977n, fArr3, i26);
                            if (iVar != null) {
                                fArr3[i26] = iVar.a(f10) + fArr3[i26];
                            } else if (h0Var != null) {
                                fArr3[i26] = h0Var.a(f10) + fArr3[i26];
                            }
                            if (iVar2 != null) {
                                int i27 = i26 + 1;
                                fArr3[i27] = iVar2.a(f10) + fArr3[i27];
                            } else {
                                if (h0Var3 != null) {
                                    int i28 = i26 + 1;
                                    h0Var2 = h0Var3;
                                    fArr3[i28] = h0Var2.a(f10) + fArr3[i28];
                                }
                                i24++;
                                i22 = i25;
                                f3 = f11;
                                paint6 = paint2;
                                iMax2 = i12;
                                paint7 = paint3;
                            }
                            h0Var2 = h0Var3;
                            i24++;
                            i22 = i25;
                            f3 = f11;
                            paint6 = paint2;
                            iMax2 = i12;
                            paint7 = paint3;
                        }
                        int i29 = iMax2;
                        sVar.a(canvas3, i29, sVar.f10022k, oVar);
                        paint5.setColor(-21965);
                        paint7.setColor(-2067046);
                        paint6.setColor(-2067046);
                        paint.setColor(-13391360);
                        float f15 = -i23;
                        canvas3.translate(f15, f15);
                        sVar.a(canvas3, i29, sVar.f10022k, oVar);
                        if (i29 == 5) {
                            sVar.d.reset();
                            for (int i30 = 0; i30 <= 50; i30++) {
                                oVar.f9971h[0].r(oVar.a(null, i30 / 50), oVar.f9977n);
                                int[] iArr2 = oVar.f9976m;
                                double[] dArr2 = oVar.f9977n;
                                float f16 = yVar.f10045e;
                                float f17 = yVar.f;
                                float f18 = yVar.f10046g;
                                float f19 = yVar.f10047h;
                                for (int i31 = 0; i31 < iArr2.length; i31++) {
                                    float f20 = (float) dArr2[i31];
                                    int i32 = iArr2[i31];
                                    if (i32 == 1) {
                                        f16 = f20;
                                    } else if (i32 == 2) {
                                        f17 = f20;
                                    } else if (i32 == 3) {
                                        f18 = f20;
                                    } else if (i32 == 4) {
                                        f19 = f20;
                                    }
                                }
                                float f21 = f18 + f16;
                                float f22 = f19 + f17;
                                Float.isNaN(Float.NaN);
                                Float.isNaN(Float.NaN);
                                float f23 = f16 + 0.0f;
                                float f24 = f17 + 0.0f;
                                float f25 = f21 + 0.0f;
                                float f26 = f22 + 0.0f;
                                float[] fArr4 = sVar.f10021j;
                                fArr4[0] = f23;
                                fArr4[1] = f24;
                                fArr4[2] = f25;
                                fArr4[3] = f24;
                                fArr4[4] = f25;
                                fArr4[5] = f26;
                                fArr4[6] = f23;
                                fArr4[7] = f26;
                                sVar.d.moveTo(f23, f24);
                                sVar.d.lineTo(fArr4[2], fArr4[3]);
                                sVar.d.lineTo(fArr4[4], fArr4[5]);
                                sVar.d.lineTo(fArr4[6], fArr4[7]);
                                sVar.d.close();
                            }
                            paint5.setColor(1140850688);
                            canvas2 = canvas;
                            canvas2.translate(2.0f, 2.0f);
                            canvas2.drawPath(sVar.d, paint5);
                            canvas2.translate(-2.0f, -2.0f);
                            paint5.setColor(-65536);
                            canvas2.drawPath(sVar.d, paint5);
                            canvas3 = canvas2;
                            i18 = i6;
                            it2 = it;
                            i17 = i11;
                            i13 = 0;
                        } else {
                            canvas2 = canvas3;
                        }
                    } else {
                        canvas2 = canvas3;
                        it = it2;
                        i11 = i17;
                    }
                    canvas3 = canvas2;
                    i18 = i6;
                    it2 = it;
                    i17 = i11;
                    i13 = 0;
                }
            }
            canvas.restore();
        }
    }

    @Override // n0.p
    public final void f(int i6, View view) {
        o0 o0Var;
        c0 c0Var = this.f959q;
        if (c0Var == null) {
            return;
        }
        float f = this.S;
        float f3 = this.V;
        float f4 = f / f3;
        float f5 = this.T / f3;
        b0 b0Var = c0Var.f9911c;
        if (b0Var == null || (o0Var = b0Var.f9902l) == null) {
            return;
        }
        o0Var.f9999k = false;
        MotionLayout motionLayout = o0Var.f10003o;
        float progress = motionLayout.getProgress();
        o0Var.f10003o.s(o0Var.d, progress, o0Var.f9996h, o0Var.f9995g, o0Var.f10000l);
        float f10 = o0Var.f9997i;
        float[] fArr = o0Var.f10000l;
        float f11 = f10 != 0.0f ? (f4 * f10) / fArr[0] : (f5 * o0Var.f9998j) / fArr[1];
        if (!Float.isNaN(f11)) {
            progress += f11 / 3.0f;
        }
        if (progress != 0.0f) {
            boolean z7 = progress != 1.0f;
            int i10 = o0Var.f9993c;
            if ((i10 != 3) && z7) {
                motionLayout.A(((double) progress) >= 0.5d ? 1.0f : 0.0f, f11, i10);
            }
        }
    }

    @Override // n0.q
    public final void g(View view, int i6, int i10, int i11, int i12, int i13, int[] iArr) {
        if (this.R || i6 != 0 || i10 != 0) {
            iArr[0] = iArr[0] + i11;
            iArr[1] = iArr[1] + i12;
        }
        this.R = false;
    }

    public int[] getConstraintSetIds() {
        c0 c0Var = this.f959q;
        if (c0Var == null) {
            return null;
        }
        SparseArray sparseArray = c0Var.f9913g;
        int size = sparseArray.size();
        int[] iArr = new int[size];
        for (int i6 = 0; i6 < size; i6++) {
            iArr[i6] = sparseArray.keyAt(i6);
        }
        return iArr;
    }

    public int getCurrentState() {
        return this.f967u;
    }

    public ArrayList<b0> getDefinedTransitions() {
        c0 c0Var = this.f959q;
        if (c0Var == null) {
            return null;
        }
        return c0Var.d;
    }

    public a getDesignTool() {
        if (this.O == null) {
            this.O = new a();
        }
        return this.O;
    }

    public int getEndState() {
        return this.f969v;
    }

    public long getNanoTime() {
        return System.nanoTime();
    }

    public float getProgress() {
        return this.D;
    }

    public int getStartState() {
        return this.f965t;
    }

    public float getTargetPosition() {
        return this.F;
    }

    public Bundle getTransitionState() {
        if (this.f966t0 == null) {
            this.f966t0 = new v(this);
        }
        v vVar = this.f966t0;
        MotionLayout motionLayout = vVar.f10036e;
        vVar.d = motionLayout.f969v;
        vVar.f10035c = motionLayout.f965t;
        vVar.f10034b = motionLayout.getVelocity();
        vVar.f10033a = motionLayout.getProgress();
        v vVar2 = this.f966t0;
        vVar2.getClass();
        Bundle bundle = new Bundle();
        bundle.putFloat("motion.progress", vVar2.f10033a);
        bundle.putFloat("motion.velocity", vVar2.f10034b);
        bundle.putInt("motion.StartState", vVar2.f10035c);
        bundle.putInt("motion.EndState", vVar2.d);
        return bundle;
    }

    public long getTransitionTimeMs() {
        c0 c0Var = this.f959q;
        if (c0Var != null) {
            this.B = (c0Var.f9911c != null ? r2.f9898h : c0Var.f9916j) / 1000.0f;
        }
        return (long) (this.B * 1000.0f);
    }

    public float getVelocity() {
        return this.f963s;
    }

    @Override // n0.p
    public final boolean j(View view, View view2, int i6, int i10) {
        b0 b0Var;
        o0 o0Var;
        c0 c0Var = this.f959q;
        return (c0Var == null || (b0Var = c0Var.f9911c) == null || (o0Var = b0Var.f9902l) == null || (o0Var.f10008t & 2) != 0) ? false : true;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public final void l(int i6) {
        this.f1027k = null;
    }

    public final void o(float f) {
        c0 c0Var = this.f959q;
        if (c0Var == null) {
            return;
        }
        float f3 = this.D;
        float f4 = this.C;
        if (f3 != f4 && this.G) {
            this.D = f4;
        }
        float f5 = this.D;
        if (f5 == f) {
            return;
        }
        this.L = false;
        this.F = f;
        this.B = (c0Var.f9911c != null ? r3.f9898h : c0Var.f9916j) / 1000.0f;
        setProgress(f);
        this.f961r = this.f959q.d();
        this.G = false;
        this.A = getNanoTime();
        this.H = true;
        this.C = f5;
        this.D = f5;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        int i6;
        super.onAttachedToWindow();
        c0 c0Var = this.f959q;
        if (c0Var != null && (i6 = this.f967u) != -1) {
            d dVarB = c0Var.b(i6);
            c0 c0Var2 = this.f959q;
            int i10 = 0;
            loop0: while (true) {
                SparseArray sparseArray = c0Var2.f9913g;
                if (i10 < sparseArray.size()) {
                    int iKeyAt = sparseArray.keyAt(i10);
                    SparseIntArray sparseIntArray = c0Var2.f9915i;
                    int i11 = sparseIntArray.get(iKeyAt);
                    int size = sparseIntArray.size();
                    while (i11 > 0) {
                        if (i11 == iKeyAt) {
                            break loop0;
                        }
                        int i12 = size - 1;
                        if (size < 0) {
                            break loop0;
                        }
                        i11 = sparseIntArray.get(i11);
                        size = i12;
                    }
                    c0Var2.j(iKeyAt);
                    i10++;
                } else {
                    for (int i13 = 0; i13 < sparseArray.size(); i13++) {
                        d dVar = (d) sparseArray.valueAt(i13);
                        dVar.getClass();
                        int childCount = getChildCount();
                        for (int i14 = 0; i14 < childCount; i14++) {
                            View childAt = getChildAt(i14);
                            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                            int id = childAt.getId();
                            if (dVar.f1097b && id == -1) {
                                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                            }
                            HashMap map = dVar.f1098c;
                            if (!map.containsKey(Integer.valueOf(id))) {
                                map.put(Integer.valueOf(id), new c());
                            }
                            c cVar = (c) map.get(Integer.valueOf(id));
                            if (!cVar.d.f11156b) {
                                cVar.b(id, layoutParams);
                                boolean z7 = childAt instanceof ConstraintHelper;
                                y.d dVar2 = cVar.d;
                                if (z7) {
                                    dVar2.f11162e0 = ((ConstraintHelper) childAt).getReferencedIds();
                                    if (childAt instanceof Barrier) {
                                        Barrier barrier = (Barrier) childAt;
                                        dVar2.f11170j0 = barrier.f1012j.f10507j0;
                                        dVar2.f11157b0 = barrier.getType();
                                        dVar2.f11159c0 = barrier.getMargin();
                                    }
                                }
                                dVar2.f11156b = true;
                            }
                            f fVar = cVar.f1092b;
                            if (!fVar.f11193a) {
                                fVar.f11194b = childAt.getVisibility();
                                fVar.d = childAt.getAlpha();
                                fVar.f11193a = true;
                            }
                            g gVar = cVar.f1094e;
                            if (!gVar.f11198a) {
                                gVar.f11198a = true;
                                gVar.f11199b = childAt.getRotation();
                                gVar.f11200c = childAt.getRotationX();
                                gVar.d = childAt.getRotationY();
                                gVar.f11201e = childAt.getScaleX();
                                gVar.f = childAt.getScaleY();
                                float pivotX = childAt.getPivotX();
                                float pivotY = childAt.getPivotY();
                                if (pivotX != 0.0d || pivotY != 0.0d) {
                                    gVar.f11202g = pivotX;
                                    gVar.f11203h = pivotY;
                                }
                                gVar.f11204i = childAt.getTranslationX();
                                gVar.f11205j = childAt.getTranslationY();
                                gVar.f11206k = childAt.getTranslationZ();
                                if (gVar.f11207l) {
                                    gVar.f11208m = childAt.getElevation();
                                }
                            }
                        }
                    }
                }
            }
            Log.e("MotionScene", "Cannot be derived from yourself");
            if (dVarB != null) {
                dVarB.b(this);
            }
            this.f965t = this.f967u;
        }
        v();
        v vVar = this.f966t0;
        if (vVar != null) {
            vVar.a();
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        b0 b0Var;
        o0 o0Var;
        int i6;
        RectF rectFA;
        c0 c0Var = this.f959q;
        if (c0Var != null && this.f974y && (b0Var = c0Var.f9911c) != null && !b0Var.f9905o && (o0Var = b0Var.f9902l) != null && ((motionEvent.getAction() != 0 || (rectFA = o0Var.a(this, new RectF())) == null || rectFA.contains(motionEvent.getX(), motionEvent.getY())) && (i6 = o0Var.f9994e) != -1)) {
            View view = this.f975y0;
            if (view == null || view.getId() != i6) {
                this.f975y0 = findViewById(i6);
            }
            if (this.f975y0 != null) {
                RectF rectF = this.x0;
                rectF.set(r0.getLeft(), this.f975y0.getTop(), this.f975y0.getRight(), this.f975y0.getBottom());
                if (rectF.contains(motionEvent.getX(), motionEvent.getY()) && !t(0.0f, 0.0f, this.f975y0, motionEvent)) {
                    return onTouchEvent(motionEvent);
                }
            }
        }
        return false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        this.f964s0 = true;
        try {
            if (this.f959q == null) {
                super.onLayout(z7, i6, i10, i11, i12);
                return;
            }
            int i13 = i11 - i6;
            int i14 = i12 - i10;
            if (this.P != i13 || this.Q != i14) {
                x();
                p(true);
            }
            this.P = i13;
            this.Q = i14;
        } finally {
            this.f964s0 = false;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i6, int i10) throws Resources.NotFoundException, NumberFormatException {
        boolean z7;
        if (this.f959q == null) {
            super.onMeasure(i6, i10);
            return;
        }
        boolean z10 = true;
        boolean z11 = (this.f971w == i6 && this.f973x == i10) ? false : true;
        if (this.f972w0) {
            this.f972w0 = false;
            v();
            w();
            z11 = true;
        }
        if (this.f1024h) {
            z11 = true;
        }
        this.f971w = i6;
        this.f973x = i10;
        int iG = this.f959q.g();
        b0 b0Var = this.f959q.f9911c;
        int i11 = b0Var == null ? -1 : b0Var.f9895c;
        v.f fVar = this.f1021c;
        t tVar = this.f970v0;
        if ((!z11 && iG == tVar.f10029e && i11 == tVar.f) || this.f965t == -1) {
            z7 = true;
        } else {
            super.onMeasure(i6, i10);
            tVar.d(this.f959q.b(iG), this.f959q.b(i11));
            tVar.e();
            tVar.f10029e = iG;
            tVar.f = i11;
            z7 = false;
        }
        if (this.f952j0 || z7) {
            int paddingBottom = getPaddingBottom() + getPaddingTop();
            int iM = fVar.m() + getPaddingRight() + getPaddingLeft();
            int iJ = fVar.j() + paddingBottom;
            int i12 = this.f957o0;
            if (i12 == Integer.MIN_VALUE || i12 == 0) {
                iM = (int) ((this.f960q0 * (this.f955m0 - r1)) + this.f953k0);
                requestLayout();
            }
            int i13 = this.f958p0;
            if (i13 == Integer.MIN_VALUE || i13 == 0) {
                iJ = (int) ((this.f960q0 * (this.f956n0 - r2)) + this.f954l0);
                requestLayout();
            }
            setMeasuredDimension(iM, iJ);
        }
        float fSignum = Math.signum(this.F - this.D);
        long nanoTime = getNanoTime();
        Interpolator interpolator = this.f961r;
        float interpolation = this.D + (!(interpolator instanceof h) ? (((nanoTime - this.E) * fSignum) * 1.0E-9f) / this.B : 0.0f);
        if (this.G) {
            interpolation = this.F;
        }
        if ((fSignum <= 0.0f || interpolation < this.F) && (fSignum > 0.0f || interpolation > this.F)) {
            z10 = false;
        } else {
            interpolation = this.F;
        }
        if (interpolator != null && !z10) {
            interpolation = this.L ? interpolator.getInterpolation((nanoTime - this.A) * 1.0E-9f) : interpolator.getInterpolation(interpolation);
        }
        if ((fSignum > 0.0f && interpolation >= this.F) || (fSignum <= 0.0f && interpolation <= this.F)) {
            interpolation = this.F;
        }
        this.f960q0 = interpolation;
        int childCount = getChildCount();
        long nanoTime2 = getNanoTime();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            o oVar = (o) this.f976z.get(childAt);
            if (oVar != null) {
                oVar.c(interpolation, nanoTime2, childAt, this.f962r0);
            }
        }
        if (this.f952j0) {
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f3, boolean z7) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f3) {
        return false;
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i6) {
        o0 o0Var;
        c0 c0Var = this.f959q;
        if (c0Var != null) {
            boolean zK = k();
            c0Var.f9921o = zK;
            b0 b0Var = c0Var.f9911c;
            if (b0Var == null || (o0Var = b0Var.f9902l) == null) {
                return;
            }
            o0Var.b(zK);
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        u uVar;
        o0 o0Var;
        char c5;
        char c8;
        int i6;
        char c10;
        char c11;
        char c12;
        char c13;
        View viewFindViewById;
        RectF rectF;
        MotionEvent motionEvent2;
        b0 b0Var;
        int iC;
        o0 o0Var2;
        Iterator it;
        c0 c0Var = this.f959q;
        if (c0Var == null || !this.f974y || !c0Var.l()) {
            return super.onTouchEvent(motionEvent);
        }
        c0 c0Var2 = this.f959q;
        b0 b0Var2 = c0Var2.f9911c;
        if (b0Var2 != null && b0Var2.f9905o) {
            return super.onTouchEvent(motionEvent);
        }
        int currentState = getCurrentState();
        RectF rectF2 = new RectF();
        u uVar2 = c0Var2.f9920n;
        MotionLayout motionLayout = c0Var2.f9909a;
        if (uVar2 == null) {
            motionLayout.getClass();
            u uVar3 = u.f10031b;
            uVar3.f10032a = VelocityTracker.obtain();
            c0Var2.f9920n = uVar3;
        }
        VelocityTracker velocityTracker = (VelocityTracker) c0Var2.f9920n.f10032a;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        if (currentState != -1) {
            int action = motionEvent.getAction();
            if (action == 0) {
                c0Var2.f9922p = motionEvent.getRawX();
                c0Var2.f9923q = motionEvent.getRawY();
                c0Var2.f9918l = motionEvent;
                o0 o0Var3 = c0Var2.f9911c.f9902l;
                if (o0Var3 == null) {
                    return true;
                }
                int i10 = o0Var3.f;
                if (i10 == -1 || (viewFindViewById = motionLayout.findViewById(i10)) == null) {
                    rectF = null;
                } else {
                    rectF2.set(viewFindViewById.getLeft(), viewFindViewById.getTop(), viewFindViewById.getRight(), viewFindViewById.getBottom());
                    rectF = rectF2;
                }
                if (rectF != null && !rectF.contains(c0Var2.f9918l.getX(), c0Var2.f9918l.getY())) {
                    c0Var2.f9918l = null;
                    return true;
                }
                RectF rectFA = c0Var2.f9911c.f9902l.a(motionLayout, rectF2);
                if (rectFA == null || rectFA.contains(c0Var2.f9918l.getX(), c0Var2.f9918l.getY())) {
                    c0Var2.f9919m = false;
                } else {
                    c0Var2.f9919m = true;
                }
                o0 o0Var4 = c0Var2.f9911c.f9902l;
                float f = c0Var2.f9922p;
                float f3 = c0Var2.f9923q;
                o0Var4.f10001m = f;
                o0Var4.f10002n = f3;
                return true;
            }
            if (action == 2) {
                float rawY = motionEvent.getRawY() - c0Var2.f9923q;
                float rawX = motionEvent.getRawX() - c0Var2.f9922p;
                if ((rawX == 0.0d && rawY == 0.0d) || (motionEvent2 = c0Var2.f9918l) == null) {
                    return true;
                }
                if (currentState != -1) {
                    b bVar = c0Var2.f9910b;
                    if (bVar == null || (iC = bVar.c(currentState)) == -1) {
                        iC = currentState;
                    }
                    ArrayList arrayList = new ArrayList();
                    Iterator it2 = c0Var2.d.iterator();
                    while (it2.hasNext()) {
                        b0 b0Var3 = (b0) it2.next();
                        if (b0Var3.d == iC || b0Var3.f9895c == iC) {
                            arrayList.add(b0Var3);
                        }
                    }
                    RectF rectF3 = new RectF();
                    Iterator it3 = arrayList.iterator();
                    float f4 = 0.0f;
                    b0Var = null;
                    while (it3.hasNext()) {
                        b0 b0Var4 = (b0) it3.next();
                        if (b0Var4.f9905o || (o0Var2 = b0Var4.f9902l) == null) {
                            it = it3;
                        } else {
                            o0Var2.b(c0Var2.f9921o);
                            RectF rectFA2 = b0Var4.f9902l.a(motionLayout, rectF3);
                            if (rectFA2 != null) {
                                it = it3;
                                if (!rectFA2.contains(motionEvent2.getX(), motionEvent2.getY())) {
                                }
                            } else {
                                it = it3;
                            }
                            RectF rectFA3 = b0Var4.f9902l.a(motionLayout, rectF3);
                            if (rectFA3 == null || rectFA3.contains(motionEvent2.getX(), motionEvent2.getY())) {
                                o0 o0Var5 = b0Var4.f9902l;
                                float f5 = ((o0Var5.f9998j * rawY) + (o0Var5.f9997i * rawX)) * (b0Var4.f9895c == currentState ? -1.0f : 1.1f);
                                if (f5 > f4) {
                                    f4 = f5;
                                    b0Var = b0Var4;
                                }
                            }
                        }
                        it3 = it;
                    }
                } else {
                    b0Var = c0Var2.f9911c;
                }
                if (b0Var != null) {
                    setTransition(b0Var);
                    RectF rectFA4 = c0Var2.f9911c.f9902l.a(motionLayout, rectF2);
                    c0Var2.f9919m = (rectFA4 == null || rectFA4.contains(c0Var2.f9918l.getX(), c0Var2.f9918l.getY())) ? false : true;
                    o0 o0Var6 = c0Var2.f9911c.f9902l;
                    float f10 = c0Var2.f9922p;
                    float f11 = c0Var2.f9923q;
                    o0Var6.f10001m = f10;
                    o0Var6.f10002n = f11;
                    o0Var6.f9999k = false;
                }
            }
        }
        b0 b0Var5 = c0Var2.f9911c;
        if (b0Var5 != null && (o0Var = b0Var5.f9902l) != null && !c0Var2.f9919m) {
            u uVar4 = c0Var2.f9920n;
            VelocityTracker velocityTracker2 = (VelocityTracker) uVar4.f10032a;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            int action2 = motionEvent.getAction();
            if (action2 != 0) {
                float[] fArr = o0Var.f10000l;
                MotionLayout motionLayout2 = o0Var.f10003o;
                if (action2 == 1) {
                    o0Var.f9999k = false;
                    ((VelocityTracker) uVar4.f10032a).computeCurrentVelocity(1000);
                    float xVelocity = ((VelocityTracker) uVar4.f10032a).getXVelocity();
                    float yVelocity = ((VelocityTracker) uVar4.f10032a).getYVelocity();
                    float progress = motionLayout2.getProgress();
                    int i11 = o0Var.d;
                    if (i11 != -1) {
                        o0Var.f10003o.s(i11, progress, o0Var.f9996h, o0Var.f9995g, o0Var.f10000l);
                        c8 = 0;
                        c5 = 1;
                    } else {
                        float fMin = Math.min(motionLayout2.getWidth(), motionLayout2.getHeight());
                        c5 = 1;
                        fArr[1] = o0Var.f9998j * fMin;
                        c8 = 0;
                        fArr[0] = fMin * o0Var.f9997i;
                    }
                    float f12 = o0Var.f9997i != 0.0f ? xVelocity / fArr[c8] : yVelocity / fArr[c5];
                    float f13 = !Float.isNaN(f12) ? (f12 / 3.0f) + progress : progress;
                    x xVar = x.d;
                    if (f13 != 0.0f && f13 != 1.0f && (i6 = o0Var.f9993c) != 3) {
                        motionLayout2.A(((double) f13) < 0.5d ? 0.0f : 1.0f, f12, i6);
                        if (0.0f >= progress || 1.0f <= progress) {
                            motionLayout2.setState(xVar);
                        }
                    } else if (0.0f >= f13 || 1.0f <= f13) {
                        motionLayout2.setState(xVar);
                    }
                } else if (action2 == 2) {
                    float rawY2 = motionEvent.getRawY() - o0Var.f10002n;
                    float rawX2 = motionEvent.getRawX() - o0Var.f10001m;
                    if (Math.abs((o0Var.f9998j * rawY2) + (o0Var.f9997i * rawX2)) > o0Var.f10009u || o0Var.f9999k) {
                        float progress2 = motionLayout2.getProgress();
                        if (!o0Var.f9999k) {
                            o0Var.f9999k = true;
                            motionLayout2.setProgress(progress2);
                        }
                        int i12 = o0Var.d;
                        if (i12 != -1) {
                            o0Var.f10003o.s(i12, progress2, o0Var.f9996h, o0Var.f9995g, o0Var.f10000l);
                            c11 = 0;
                            c10 = 1;
                        } else {
                            float fMin2 = Math.min(motionLayout2.getWidth(), motionLayout2.getHeight());
                            c10 = 1;
                            fArr[1] = o0Var.f9998j * fMin2;
                            c11 = 0;
                            fArr[0] = fMin2 * o0Var.f9997i;
                        }
                        if (Math.abs(((o0Var.f9998j * fArr[c10]) + (o0Var.f9997i * fArr[c11])) * o0Var.f10007s) < 0.01d) {
                            c12 = 0;
                            fArr[0] = 0.01f;
                            c13 = 1;
                            fArr[1] = 0.01f;
                        } else {
                            c12 = 0;
                            c13 = 1;
                        }
                        float fMax = Math.max(Math.min(progress2 + (o0Var.f9997i != 0.0f ? rawX2 / fArr[c12] : rawY2 / fArr[c13]), 1.0f), 0.0f);
                        if (fMax != motionLayout2.getProgress()) {
                            motionLayout2.setProgress(fMax);
                            ((VelocityTracker) uVar4.f10032a).computeCurrentVelocity(1000);
                            motionLayout2.f963s = o0Var.f9997i != 0.0f ? ((VelocityTracker) uVar4.f10032a).getXVelocity() / fArr[0] : ((VelocityTracker) uVar4.f10032a).getYVelocity() / fArr[1];
                        } else {
                            motionLayout2.f963s = 0.0f;
                        }
                        o0Var.f10001m = motionEvent.getRawX();
                        o0Var.f10002n = motionEvent.getRawY();
                    }
                }
            } else {
                o0Var.f10001m = motionEvent.getRawX();
                o0Var.f10002n = motionEvent.getRawY();
                o0Var.f9999k = false;
            }
        }
        c0Var2.f9922p = motionEvent.getRawX();
        c0Var2.f9923q = motionEvent.getRawY();
        if (motionEvent.getAction() != 1 || (uVar = c0Var2.f9920n) == null) {
            return true;
        }
        ((VelocityTracker) uVar.f10032a).recycle();
        uVar.f10032a = null;
        c0Var2.f9920n = null;
        int i13 = this.f967u;
        if (i13 == -1) {
            return true;
        }
        c0Var2.a(this, i13);
        return true;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.f947d0 == null) {
                this.f947d0 = new ArrayList();
            }
            this.f947d0.add(motionHelper);
            if (motionHelper.f941h) {
                if (this.f945b0 == null) {
                    this.f945b0 = new ArrayList();
                }
                this.f945b0.add(motionHelper);
            }
            if (motionHelper.f942i) {
                if (this.f946c0 == null) {
                    this.f946c0 = new ArrayList();
                }
                this.f946c0.add(motionHelper);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList arrayList = this.f945b0;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList arrayList2 = this.f946c0;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    public final void p(boolean z7) {
        float f;
        boolean z10;
        int i6;
        float interpolation;
        boolean z11;
        if (this.E == -1) {
            this.E = getNanoTime();
        }
        float f3 = this.D;
        if (f3 > 0.0f && f3 < 1.0f) {
            this.f967u = -1;
        }
        boolean z12 = false;
        if (this.W || (this.H && (z7 || this.F != f3))) {
            float fSignum = Math.signum(this.F - f3);
            long nanoTime = getNanoTime();
            Interpolator interpolator = this.f961r;
            if (interpolator instanceof p) {
                f = 0.0f;
            } else {
                f = (((nanoTime - this.E) * fSignum) * 1.0E-9f) / this.B;
                this.f963s = f;
            }
            float f4 = this.D + f;
            if (this.G) {
                f4 = this.F;
            }
            if ((fSignum <= 0.0f || f4 < this.F) && (fSignum > 0.0f || f4 > this.F)) {
                z10 = false;
            } else {
                f4 = this.F;
                this.H = false;
                z10 = true;
            }
            this.D = f4;
            this.C = f4;
            this.E = nanoTime;
            if (interpolator != null && !z10) {
                if (this.L) {
                    interpolation = interpolator.getInterpolation((nanoTime - this.A) * 1.0E-9f);
                    this.D = interpolation;
                    this.E = nanoTime;
                    Interpolator interpolator2 = this.f961r;
                    if (interpolator2 instanceof p) {
                        float fA = ((p) interpolator2).a();
                        this.f963s = fA;
                        if (Math.abs(fA) * this.B <= 1.0E-5f) {
                            this.H = false;
                        }
                        if (fA > 0.0f && interpolation >= 1.0f) {
                            this.D = 1.0f;
                            this.H = false;
                            interpolation = 1.0f;
                        }
                        if (fA < 0.0f && interpolation <= 0.0f) {
                            this.D = 0.0f;
                            this.H = false;
                            f4 = 0.0f;
                        }
                    }
                } else {
                    interpolation = interpolator.getInterpolation(f4);
                    Interpolator interpolator3 = this.f961r;
                    if (interpolator3 instanceof p) {
                        this.f963s = ((p) interpolator3).a();
                    } else {
                        this.f963s = ((interpolator3.getInterpolation(f4 + f) - interpolation) * fSignum) / f;
                    }
                }
                f4 = interpolation;
            }
            if (Math.abs(this.f963s) > 1.0E-5f) {
                setState(x.f10039c);
            }
            if ((fSignum > 0.0f && f4 >= this.F) || (fSignum <= 0.0f && f4 <= this.F)) {
                f4 = this.F;
                this.H = false;
            }
            x xVar = x.d;
            if (f4 >= 1.0f || f4 <= 0.0f) {
                this.H = false;
                setState(xVar);
            }
            int childCount = getChildCount();
            this.W = false;
            long nanoTime2 = getNanoTime();
            this.f960q0 = f4;
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = getChildAt(i10);
                o oVar = (o) this.f976z.get(childAt);
                if (oVar != null) {
                    this.W = oVar.c(f4, nanoTime2, childAt, this.f962r0) | this.W;
                }
            }
            boolean z13 = (fSignum > 0.0f && f4 >= this.F) || (fSignum <= 0.0f && f4 <= this.F);
            if (!this.W && !this.H && z13) {
                setState(xVar);
            }
            if (this.f952j0) {
                requestLayout();
            }
            this.W = (!z13) | this.W;
            if (f4 > 0.0f || (i6 = this.f965t) == -1 || this.f967u == i6) {
                z12 = false;
            } else {
                this.f967u = i6;
                this.f959q.b(i6).a(this);
                setState(xVar);
                z12 = true;
            }
            if (f4 >= 1.0d) {
                int i11 = this.f967u;
                int i12 = this.f969v;
                if (i11 != i12) {
                    this.f967u = i12;
                    this.f959q.b(i12).a(this);
                    setState(xVar);
                    z12 = true;
                }
            }
            if (this.W || this.H) {
                invalidate();
            } else if ((fSignum > 0.0f && f4 == 1.0f) || (fSignum < 0.0f && f4 == 0.0f)) {
                setState(xVar);
            }
            if ((!this.W && this.H && fSignum > 0.0f && f4 == 1.0f) || (fSignum < 0.0f && f4 == 0.0f)) {
                v();
            }
        }
        float f5 = this.D;
        if (f5 < 1.0f) {
            if (f5 <= 0.0f) {
                int i13 = this.f967u;
                int i14 = this.f965t;
                z11 = i13 == i14 ? z12 : true;
                this.f967u = i14;
            }
            this.f972w0 |= z12;
            if (z12 && !this.f964s0) {
                requestLayout();
            }
            this.C = this.D;
        }
        int i15 = this.f967u;
        int i16 = this.f969v;
        z11 = i15 == i16 ? z12 : true;
        this.f967u = i16;
        z12 = z11;
        this.f972w0 |= z12;
        if (z12) {
            requestLayout();
        }
        this.C = this.D;
    }

    public final void q() {
        ArrayList arrayList;
        if ((this.I == null && ((arrayList = this.f947d0) == null || arrayList.isEmpty())) || this.i0 == this.C) {
            return;
        }
        if (this.f951h0 != -1) {
            w wVar = this.I;
            if (wVar != null) {
                wVar.getClass();
            }
            ArrayList arrayList2 = this.f947d0;
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((w) it.next()).getClass();
                }
            }
        }
        this.f951h0 = -1;
        this.i0 = this.C;
        w wVar2 = this.I;
        if (wVar2 != null) {
            wVar2.getClass();
        }
        ArrayList arrayList3 = this.f947d0;
        if (arrayList3 != null) {
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                ((w) it2.next()).getClass();
            }
        }
    }

    public final void r() {
        ArrayList arrayList;
        if ((this.I != null || ((arrayList = this.f947d0) != null && !arrayList.isEmpty())) && this.f951h0 == -1) {
            this.f951h0 = this.f967u;
            ArrayList arrayList2 = this.f977z0;
            int iIntValue = !arrayList2.isEmpty() ? ((Integer) ea.q.e(1, arrayList2)).intValue() : -1;
            int i6 = this.f967u;
            if (iIntValue != i6 && i6 != -1) {
                arrayList2.add(Integer.valueOf(i6));
            }
        }
        w();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public final void requestLayout() {
        c0 c0Var;
        b0 b0Var;
        if (this.f952j0 || this.f967u != -1 || (c0Var = this.f959q) == null || (b0Var = c0Var.f9911c) == null || b0Var.f9907q != 0) {
            super.requestLayout();
        }
    }

    public final void s(int i6, float f, float f3, float f4, float[] fArr) {
        View viewD = d(i6);
        o oVar = (o) this.f976z.get(viewD);
        if (oVar != null) {
            oVar.b(f, f3, f4, fArr);
            viewD.getY();
        } else {
            Log.w("MotionLayout", "WARNING could not find view id " + (viewD == null ? e.n(i6, "") : viewD.getContext().getResources().getResourceName(i6)));
        }
    }

    public void setDebugMode(int i6) {
        this.J = i6;
        invalidate();
    }

    public void setInteractionEnabled(boolean z7) {
        this.f974y = z7;
    }

    public void setInterpolatedProgress(float f) {
        if (this.f959q != null) {
            setState(x.f10039c);
            Interpolator interpolatorD = this.f959q.d();
            if (interpolatorD != null) {
                setProgress(interpolatorD.getInterpolation(f));
                return;
            }
        }
        setProgress(f);
    }

    public void setOnHide(float f) {
        ArrayList arrayList = this.f946c0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i6 = 0; i6 < size; i6++) {
                ((MotionHelper) this.f946c0.get(i6)).setProgress(f);
            }
        }
    }

    public void setOnShow(float f) {
        ArrayList arrayList = this.f945b0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i6 = 0; i6 < size; i6++) {
                ((MotionHelper) this.f945b0.get(i6)).setProgress(f);
            }
        }
    }

    public void setProgress(float f) {
        if (!super.isAttachedToWindow()) {
            if (this.f966t0 == null) {
                this.f966t0 = new v(this);
            }
            this.f966t0.f10033a = f;
            return;
        }
        x xVar = x.d;
        if (f <= 0.0f) {
            this.f967u = this.f965t;
            if (this.D == 0.0f) {
                setState(xVar);
            }
        } else if (f >= 1.0f) {
            this.f967u = this.f969v;
            if (this.D == 1.0f) {
                setState(xVar);
            }
        } else {
            this.f967u = -1;
            setState(x.f10039c);
        }
        if (this.f959q == null) {
            return;
        }
        this.G = true;
        this.F = f;
        this.C = f;
        this.E = -1L;
        this.A = -1L;
        this.f961r = null;
        this.H = true;
        invalidate();
    }

    public void setScene(c0 c0Var) {
        o0 o0Var;
        this.f959q = c0Var;
        boolean zK = k();
        c0Var.f9921o = zK;
        b0 b0Var = c0Var.f9911c;
        if (b0Var != null && (o0Var = b0Var.f9902l) != null) {
            o0Var.b(zK);
        }
        x();
    }

    public void setState(x xVar) {
        x xVar2 = x.d;
        if (xVar == xVar2 && this.f967u == -1) {
            return;
        }
        x xVar3 = this.f968u0;
        this.f968u0 = xVar;
        x xVar4 = x.f10039c;
        if (xVar3 == xVar4 && xVar == xVar4) {
            q();
        }
        int iOrdinal = xVar3.ordinal();
        if (iOrdinal != 0 && iOrdinal != 1) {
            if (iOrdinal == 2 && xVar == xVar2) {
                r();
                return;
            }
            return;
        }
        if (xVar == xVar4) {
            q();
        }
        if (xVar == xVar2) {
            r();
        }
    }

    public void setTransition(int i6) {
        b0 b0Var;
        c0 c0Var = this.f959q;
        if (c0Var != null) {
            Iterator it = c0Var.d.iterator();
            while (true) {
                if (!it.hasNext()) {
                    b0Var = null;
                    break;
                } else {
                    b0Var = (b0) it.next();
                    if (b0Var.f9893a == i6) {
                        break;
                    }
                }
            }
            this.f965t = b0Var.d;
            this.f969v = b0Var.f9895c;
            if (!super.isAttachedToWindow()) {
                if (this.f966t0 == null) {
                    this.f966t0 = new v(this);
                }
                v vVar = this.f966t0;
                vVar.f10035c = this.f965t;
                vVar.d = this.f969v;
                return;
            }
            int i10 = this.f967u;
            float f = i10 == this.f965t ? 0.0f : i10 == this.f969v ? 1.0f : Float.NaN;
            c0 c0Var2 = this.f959q;
            c0Var2.f9911c = b0Var;
            o0 o0Var = b0Var.f9902l;
            if (o0Var != null) {
                o0Var.b(c0Var2.f9921o);
            }
            this.f970v0.d(this.f959q.b(this.f965t), this.f959q.b(this.f969v));
            x();
            this.D = Float.isNaN(f) ? 0.0f : f;
            if (!Float.isNaN(f)) {
                setProgress(f);
                return;
            }
            Log.v("MotionLayout", a2.a.w() + " transitionToStart ");
            o(0.0f);
        }
    }

    public void setTransitionDuration(int i6) {
        c0 c0Var = this.f959q;
        if (c0Var == null) {
            Log.e("MotionLayout", "MotionScene not defined");
            return;
        }
        b0 b0Var = c0Var.f9911c;
        if (b0Var != null) {
            b0Var.f9898h = i6;
        } else {
            c0Var.f9916j = i6;
        }
    }

    public void setTransitionListener(w wVar) {
        this.I = wVar;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.f966t0 == null) {
            this.f966t0 = new v(this);
        }
        v vVar = this.f966t0;
        vVar.getClass();
        vVar.f10033a = bundle.getFloat("motion.progress");
        vVar.f10034b = bundle.getFloat("motion.velocity");
        vVar.f10035c = bundle.getInt("motion.StartState");
        vVar.d = bundle.getInt("motion.EndState");
        if (super.isAttachedToWindow()) {
            this.f966t0.a();
        }
    }

    public final boolean t(float f, float f3, View view, MotionEvent motionEvent) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                if (t(view.getLeft() + f, view.getTop() + f3, viewGroup.getChildAt(i6), motionEvent)) {
                    return true;
                }
            }
        }
        RectF rectF = this.x0;
        rectF.set(view.getLeft() + f, view.getTop() + f3, f + view.getRight(), f3 + view.getBottom());
        if (motionEvent.getAction() == 0) {
            if (rectF.contains(motionEvent.getX(), motionEvent.getY()) && view.onTouchEvent(motionEvent)) {
                return true;
            }
        } else if (view.onTouchEvent(motionEvent)) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final String toString() {
        Context context = getContext();
        return a2.a.x(context, this.f965t) + "->" + a2.a.x(context, this.f969v) + " (pos:" + this.D + " Dpos/Dt:" + this.f963s;
    }

    public final void u(AttributeSet attributeSet) {
        c0 c0Var;
        String string;
        isInEditMode();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, j.f11217k);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            boolean z7 = true;
            for (int i6 = 0; i6 < indexCount; i6++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i6);
                if (index == 2) {
                    this.f959q = new c0(getContext(), this, typedArrayObtainStyledAttributes.getResourceId(index, -1));
                } else if (index == 1) {
                    this.f967u = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                } else if (index == 4) {
                    this.F = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                    this.H = true;
                } else if (index == 0) {
                    z7 = typedArrayObtainStyledAttributes.getBoolean(index, z7);
                } else if (index == 5) {
                    if (this.J == 0) {
                        this.J = typedArrayObtainStyledAttributes.getBoolean(index, false) ? 2 : 0;
                    }
                } else if (index == 3) {
                    this.J = typedArrayObtainStyledAttributes.getInt(index, 0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            if (this.f959q == null) {
                Log.e("MotionLayout", "WARNING NO app:layoutDescription tag");
            }
            if (!z7) {
                this.f959q = null;
            }
        }
        if (this.J != 0) {
            c0 c0Var2 = this.f959q;
            if (c0Var2 == null) {
                Log.e("MotionLayout", "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\"");
            } else {
                int iG = c0Var2.g();
                c0 c0Var3 = this.f959q;
                d dVarB = c0Var3.b(c0Var3.g());
                String strX = a2.a.x(getContext(), iG);
                int childCount = getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    View childAt = getChildAt(i10);
                    int id = childAt.getId();
                    if (id == -1) {
                        StringBuilder sbX = e.x("CHECK: ", strX, " ALL VIEWS SHOULD HAVE ID's ");
                        sbX.append(childAt.getClass().getName());
                        sbX.append(" does not!");
                        Log.w("MotionLayout", sbX.toString());
                    }
                    HashMap map = dVarB.f1098c;
                    if ((map.containsKey(Integer.valueOf(id)) ? (c) map.get(Integer.valueOf(id)) : null) == null) {
                        StringBuilder sbX2 = e.x("CHECK: ", strX, " NO CONSTRAINTS for ");
                        sbX2.append(a2.a.y(childAt));
                        Log.w("MotionLayout", sbX2.toString());
                    }
                }
                Integer[] numArr = (Integer[]) dVarB.f1098c.keySet().toArray(new Integer[0]);
                int length = numArr.length;
                int[] iArr = new int[length];
                for (int i11 = 0; i11 < length; i11++) {
                    iArr[i11] = numArr[i11].intValue();
                }
                for (int i12 = 0; i12 < length; i12++) {
                    int i13 = iArr[i12];
                    String strX2 = a2.a.x(getContext(), i13);
                    if (findViewById(iArr[i12]) == null) {
                        Log.w("MotionLayout", "CHECK: " + strX + " NO View matches id " + strX2);
                    }
                    if (dVarB.g(i13).d.d == -1) {
                        Log.w("MotionLayout", "CHECK: " + strX + "(" + strX2 + ") no LAYOUT_HEIGHT");
                    }
                    if (dVarB.g(i13).d.f11158c == -1) {
                        Log.w("MotionLayout", "CHECK: " + strX + "(" + strX2 + ") no LAYOUT_HEIGHT");
                    }
                }
                SparseIntArray sparseIntArray = new SparseIntArray();
                SparseIntArray sparseIntArray2 = new SparseIntArray();
                Iterator it = this.f959q.d.iterator();
                while (it.hasNext()) {
                    b0 b0Var = (b0) it.next();
                    if (b0Var == this.f959q.f9911c) {
                        Log.v("MotionLayout", "CHECK: CURRENT");
                    }
                    StringBuilder sb = new StringBuilder("CHECK: transition = ");
                    Context context = getContext();
                    String resourceEntryName = b0Var.d == -1 ? "null" : context.getResources().getResourceEntryName(b0Var.d);
                    if (b0Var.f9895c == -1) {
                        string = ea.q.h(resourceEntryName, " -> null");
                    } else {
                        StringBuilder sbW = e.w(resourceEntryName, " -> ");
                        sbW.append(context.getResources().getResourceEntryName(b0Var.f9895c));
                        string = sbW.toString();
                    }
                    sb.append(string);
                    Log.v("MotionLayout", sb.toString());
                    Log.v("MotionLayout", "CHECK: transition.setDuration = " + b0Var.f9898h);
                    if (b0Var.d == b0Var.f9895c) {
                        Log.e("MotionLayout", "CHECK: start and end constraint set should not be the same!");
                    }
                    int i14 = b0Var.d;
                    int i15 = b0Var.f9895c;
                    String strX3 = a2.a.x(getContext(), i14);
                    String strX4 = a2.a.x(getContext(), i15);
                    if (sparseIntArray.get(i14) == i15) {
                        Log.e("MotionLayout", "CHECK: two transitions with the same start and end " + strX3 + "->" + strX4);
                    }
                    if (sparseIntArray2.get(i15) == i14) {
                        Log.e("MotionLayout", "CHECK: you can't have reverse transitions" + strX3 + "->" + strX4);
                    }
                    sparseIntArray.put(i14, i15);
                    sparseIntArray2.put(i15, i14);
                    if (this.f959q.b(i14) == null) {
                        Log.e("MotionLayout", " no such constraintSetStart " + strX3);
                    }
                    if (this.f959q.b(i15) == null) {
                        Log.e("MotionLayout", " no such constraintSetEnd " + strX3);
                    }
                }
            }
        }
        if (this.f967u != -1 || (c0Var = this.f959q) == null) {
            return;
        }
        this.f967u = c0Var.g();
        this.f965t = this.f959q.g();
        b0 b0Var2 = this.f959q.f9911c;
        this.f969v = b0Var2 != null ? b0Var2.f9895c : -1;
    }

    public final void v() {
        b0 b0Var;
        o0 o0Var;
        View viewFindViewById;
        c0 c0Var = this.f959q;
        if (c0Var == null) {
            return;
        }
        if (c0Var.a(this, this.f967u)) {
            requestLayout();
            return;
        }
        int i6 = this.f967u;
        if (i6 != -1) {
            c0 c0Var2 = this.f959q;
            ArrayList arrayList = c0Var2.d;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                b0 b0Var2 = (b0) it.next();
                if (b0Var2.f9903m.size() > 0) {
                    Iterator it2 = b0Var2.f9903m.iterator();
                    while (it2.hasNext()) {
                        ((a0) it2.next()).b(this);
                    }
                }
            }
            ArrayList arrayList2 = c0Var2.f;
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                b0 b0Var3 = (b0) it3.next();
                if (b0Var3.f9903m.size() > 0) {
                    Iterator it4 = b0Var3.f9903m.iterator();
                    while (it4.hasNext()) {
                        ((a0) it4.next()).b(this);
                    }
                }
            }
            Iterator it5 = arrayList.iterator();
            while (it5.hasNext()) {
                b0 b0Var4 = (b0) it5.next();
                if (b0Var4.f9903m.size() > 0) {
                    Iterator it6 = b0Var4.f9903m.iterator();
                    while (it6.hasNext()) {
                        ((a0) it6.next()).a(this, i6, b0Var4);
                    }
                }
            }
            Iterator it7 = arrayList2.iterator();
            while (it7.hasNext()) {
                b0 b0Var5 = (b0) it7.next();
                if (b0Var5.f9903m.size() > 0) {
                    Iterator it8 = b0Var5.f9903m.iterator();
                    while (it8.hasNext()) {
                        ((a0) it8.next()).a(this, i6, b0Var5);
                    }
                }
            }
        }
        if (!this.f959q.l() || (b0Var = this.f959q.f9911c) == null || (o0Var = b0Var.f9902l) == null) {
            return;
        }
        int i10 = o0Var.d;
        if (i10 != -1) {
            MotionLayout motionLayout = o0Var.f10003o;
            viewFindViewById = motionLayout.findViewById(i10);
            if (viewFindViewById == null) {
                Log.e("TouchResponse", "cannot find TouchAnchorId @id/" + a2.a.x(motionLayout.getContext(), o0Var.d));
            }
        } else {
            viewFindViewById = null;
        }
        if (viewFindViewById instanceof NestedScrollView) {
            NestedScrollView nestedScrollView = (NestedScrollView) viewFindViewById;
            nestedScrollView.setOnTouchListener(new n0(0));
            nestedScrollView.setOnScrollChangeListener(new f0(2));
        }
    }

    public final void w() {
        ArrayList arrayList;
        if (this.I == null && ((arrayList = this.f947d0) == null || arrayList.isEmpty())) {
            return;
        }
        ArrayList arrayList2 = this.f977z0;
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            w wVar = this.I;
            if (wVar != null) {
                num.intValue();
                wVar.getClass();
            }
            ArrayList arrayList3 = this.f947d0;
            if (arrayList3 != null) {
                Iterator it2 = arrayList3.iterator();
                while (it2.hasNext()) {
                    w wVar2 = (w) it2.next();
                    num.intValue();
                    wVar2.getClass();
                }
            }
        }
        arrayList2.clear();
    }

    public final void x() {
        this.f970v0.e();
        invalidate();
    }

    public final void y(float f, float f3) {
        if (super.isAttachedToWindow()) {
            setProgress(f);
            setState(x.f10039c);
            this.f963s = f3;
            o(1.0f);
            return;
        }
        if (this.f966t0 == null) {
            this.f966t0 = new v(this);
        }
        v vVar = this.f966t0;
        vVar.f10033a = f;
        vVar.f10034b = f3;
    }

    public final void z(int i6, int i10) {
        if (!super.isAttachedToWindow()) {
            if (this.f966t0 == null) {
                this.f966t0 = new v(this);
            }
            v vVar = this.f966t0;
            vVar.f10035c = i6;
            vVar.d = i10;
            return;
        }
        c0 c0Var = this.f959q;
        if (c0Var != null) {
            this.f965t = i6;
            this.f969v = i10;
            c0Var.k(i6, i10);
            this.f970v0.d(this.f959q.b(i6), this.f959q.b(i10));
            x();
            this.D = 0.0f;
            o(0.0f);
        }
    }

    public void setTransition(b0 b0Var) {
        o0 o0Var;
        c0 c0Var = this.f959q;
        c0Var.f9911c = b0Var;
        if (b0Var != null && (o0Var = b0Var.f9902l) != null) {
            o0Var.b(c0Var.f9921o);
        }
        setState(x.f10038b);
        int i6 = this.f967u;
        b0 b0Var2 = this.f959q.f9911c;
        if (i6 == (b0Var2 == null ? -1 : b0Var2.f9895c)) {
            this.D = 1.0f;
            this.C = 1.0f;
            this.F = 1.0f;
        } else {
            this.D = 0.0f;
            this.C = 0.0f;
            this.F = 0.0f;
        }
        this.E = (b0Var.f9908r & 1) != 0 ? -1L : getNanoTime();
        int iG = this.f959q.g();
        c0 c0Var2 = this.f959q;
        b0 b0Var3 = c0Var2.f9911c;
        int i10 = b0Var3 != null ? b0Var3.f9895c : -1;
        if (iG == this.f965t && i10 == this.f969v) {
            return;
        }
        this.f965t = iG;
        this.f969v = i10;
        c0Var2.k(iG, i10);
        d dVarB = this.f959q.b(this.f965t);
        d dVarB2 = this.f959q.b(this.f969v);
        t tVar = this.f970v0;
        tVar.d(dVarB, dVarB2);
        int i11 = this.f965t;
        int i12 = this.f969v;
        tVar.f10029e = i11;
        tVar.f = i12;
        tVar.e();
        x();
    }

    public MotionLayout(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f963s = 0.0f;
        this.f965t = -1;
        this.f967u = -1;
        this.f969v = -1;
        this.f971w = 0;
        this.f973x = 0;
        this.f974y = true;
        this.f976z = new HashMap();
        this.A = 0L;
        this.B = 1.0f;
        this.C = 0.0f;
        this.D = 0.0f;
        this.F = 0.0f;
        this.H = false;
        this.J = 0;
        this.L = false;
        this.M = new h();
        this.N = new r(this);
        this.R = false;
        this.W = false;
        this.f945b0 = null;
        this.f946c0 = null;
        this.f947d0 = null;
        this.f948e0 = 0;
        this.f949f0 = -1L;
        this.f950g0 = 0.0f;
        this.f951h0 = 0;
        this.i0 = 0.0f;
        this.f952j0 = false;
        this.f962r0 = new u();
        this.f964s0 = false;
        this.f968u0 = x.f10037a;
        this.f970v0 = new t(this);
        this.f972w0 = false;
        this.x0 = new RectF();
        this.f975y0 = null;
        this.f977z0 = new ArrayList();
        u(attributeSet);
    }

    @Override // n0.p
    public final void a(View view, View view2, int i6, int i10) {
    }

    @Override // n0.p
    public final void i(View view, int i6, int i10, int i11, int i12, int i13) {
    }
}
