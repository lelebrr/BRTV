package t;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public final View f9966a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9967b;

    /* renamed from: h, reason: collision with root package name */
    public r4.b[] f9971h;

    /* renamed from: i, reason: collision with root package name */
    public s.b f9972i;

    /* renamed from: m, reason: collision with root package name */
    public int[] f9976m;

    /* renamed from: n, reason: collision with root package name */
    public double[] f9977n;

    /* renamed from: o, reason: collision with root package name */
    public double[] f9978o;

    /* renamed from: p, reason: collision with root package name */
    public String[] f9979p;

    /* renamed from: q, reason: collision with root package name */
    public int[] f9980q;

    /* renamed from: v, reason: collision with root package name */
    public HashMap f9985v;

    /* renamed from: w, reason: collision with root package name */
    public HashMap f9986w;

    /* renamed from: x, reason: collision with root package name */
    public HashMap f9987x;

    /* renamed from: c, reason: collision with root package name */
    public int f9968c = -1;
    public final y d = new y();

    /* renamed from: e, reason: collision with root package name */
    public final y f9969e = new y();
    public final n f = new n();

    /* renamed from: g, reason: collision with root package name */
    public final n f9970g = new n();

    /* renamed from: j, reason: collision with root package name */
    public float f9973j = Float.NaN;

    /* renamed from: k, reason: collision with root package name */
    public float f9974k = 0.0f;

    /* renamed from: l, reason: collision with root package name */
    public float f9975l = 1.0f;

    /* renamed from: r, reason: collision with root package name */
    public final float[] f9981r = new float[4];

    /* renamed from: s, reason: collision with root package name */
    public final ArrayList f9982s = new ArrayList();

    /* renamed from: t, reason: collision with root package name */
    public final float[] f9983t = new float[1];

    /* renamed from: u, reason: collision with root package name */
    public final ArrayList f9984u = new ArrayList();

    /* renamed from: y, reason: collision with root package name */
    public int f9988y = -1;

    public o(View view) {
        this.f9966a = view;
        this.f9967b = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            ((ConstraintLayout.LayoutParams) layoutParams).getClass();
        }
    }

    public final float a(float[] fArr, float f) {
        float f3 = 0.0f;
        if (fArr != null) {
            fArr[0] = 1.0f;
        } else {
            float f4 = this.f9975l;
            if (f4 != 1.0d) {
                float f5 = this.f9974k;
                if (f < f5) {
                    f = 0.0f;
                }
                if (f > f5 && f < 1.0d) {
                    f = (f - f5) * f4;
                }
            }
        }
        s.e eVar = this.d.f10042a;
        Iterator it = this.f9982s.iterator();
        float f10 = Float.NaN;
        while (it.hasNext()) {
            y yVar = (y) it.next();
            s.e eVar2 = yVar.f10042a;
            if (eVar2 != null) {
                float f11 = yVar.f10044c;
                if (f11 < f) {
                    eVar = eVar2;
                    f3 = f11;
                } else if (Float.isNaN(f10)) {
                    f10 = yVar.f10044c;
                }
            }
        }
        if (eVar != null) {
            float f12 = (Float.isNaN(f10) ? 1.0f : f10) - f3;
            double d = (f - f3) / f12;
            f = (((float) eVar.a(d)) * f12) + f3;
            if (fArr != null) {
                fArr[0] = (float) eVar.b(d);
            }
        }
        return f;
    }

    public final void b(float f, float f3, float f4, float[] fArr) {
        double[] dArr;
        float[] fArr2 = this.f9983t;
        float fA = a(fArr2, f);
        r4.b[] bVarArr = this.f9971h;
        int i6 = 0;
        if (bVarArr == null) {
            y yVar = this.f9969e;
            float f5 = yVar.f10045e;
            y yVar2 = this.d;
            float f10 = f5 - yVar2.f10045e;
            float f11 = yVar.f - yVar2.f;
            float f12 = yVar.f10046g - yVar2.f10046g;
            float f13 = (yVar.f10047h - yVar2.f10047h) + f11;
            fArr[0] = ((f12 + f10) * f3) + ((1.0f - f3) * f10);
            fArr[1] = (f13 * f4) + ((1.0f - f4) * f11);
            return;
        }
        double d = fA;
        bVarArr[0].v(d, this.f9978o);
        this.f9971h[0].r(d, this.f9977n);
        float f14 = fArr2[0];
        while (true) {
            dArr = this.f9978o;
            if (i6 >= dArr.length) {
                break;
            }
            dArr[i6] = dArr[i6] * f14;
            i6++;
        }
        s.b bVar = this.f9972i;
        if (bVar == null) {
            int[] iArr = this.f9976m;
            double[] dArr2 = this.f9977n;
            this.d.getClass();
            y.d(f3, f4, fArr, iArr, dArr, dArr2);
            return;
        }
        double[] dArr3 = this.f9977n;
        if (dArr3.length > 0) {
            bVar.r(d, dArr3);
            this.f9972i.v(d, this.f9978o);
            int[] iArr2 = this.f9976m;
            double[] dArr4 = this.f9978o;
            double[] dArr5 = this.f9977n;
            this.d.getClass();
            y.d(f3, f4, fArr, iArr2, dArr4, dArr5);
        }
    }

    public final boolean c(float f, long j10, View view, u uVar) {
        k0 k0Var;
        boolean zB;
        boolean z7;
        float f3;
        boolean z10;
        y yVar;
        k0 k0Var2;
        float fA = a(null, f);
        HashMap map = this.f9986w;
        if (map != null) {
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                ((h0) it.next()).c(view, fA);
            }
        }
        HashMap map2 = this.f9985v;
        if (map2 != null) {
            k0Var = null;
            zB = false;
            for (m0 m0Var : map2.values()) {
                if (m0Var instanceof k0) {
                    k0Var = (k0) m0Var;
                } else {
                    zB |= m0Var.b(fA, j10, view, uVar);
                }
            }
        } else {
            k0Var = null;
            zB = false;
        }
        r4.b[] bVarArr = this.f9971h;
        y yVar2 = this.d;
        if (bVarArr != null) {
            double d = fA;
            bVarArr[0].r(d, this.f9977n);
            this.f9971h[0].v(d, this.f9978o);
            s.b bVar = this.f9972i;
            if (bVar != null) {
                double[] dArr = this.f9977n;
                if (dArr.length > 0) {
                    bVar.r(d, dArr);
                    this.f9972i.v(d, this.f9978o);
                }
            }
            int[] iArr = this.f9976m;
            double[] dArr2 = this.f9977n;
            double[] dArr3 = this.f9978o;
            float f4 = yVar2.f10045e;
            float f5 = yVar2.f;
            float f10 = yVar2.f10046g;
            float f11 = yVar2.f10047h;
            if (iArr.length != 0) {
                f3 = f10;
                if (yVar2.f10051l.length <= iArr[iArr.length - 1]) {
                    int i6 = iArr[iArr.length - 1] + 1;
                    yVar2.f10051l = new double[i6];
                    yVar2.f10052m = new double[i6];
                }
            } else {
                f3 = f10;
            }
            Arrays.fill(yVar2.f10051l, Double.NaN);
            for (int i10 = 0; i10 < iArr.length; i10++) {
                double[] dArr4 = yVar2.f10051l;
                int i11 = iArr[i10];
                dArr4[i11] = dArr2[i10];
                yVar2.f10052m[i11] = dArr3[i10];
            }
            int i12 = 0;
            float f12 = Float.NaN;
            float f13 = 0.0f;
            float f14 = 0.0f;
            float f15 = 0.0f;
            float f16 = 0.0f;
            while (true) {
                double[] dArr5 = yVar2.f10051l;
                if (i12 >= dArr5.length) {
                    break;
                }
                if (Double.isNaN(dArr5[i12])) {
                    yVar = yVar2;
                    k0Var2 = k0Var;
                    z10 = zB;
                } else {
                    z10 = zB;
                    float f17 = (float) (Double.isNaN(yVar2.f10051l[i12]) ? 0.0d : yVar2.f10051l[i12] + 0.0d);
                    yVar = yVar2;
                    k0Var2 = k0Var;
                    float f18 = (float) yVar2.f10052m[i12];
                    if (i12 == 1) {
                        f4 = f17;
                        f13 = f18;
                    } else if (i12 == 2) {
                        f5 = f17;
                        f15 = f18;
                    } else if (i12 == 3) {
                        f3 = f17;
                        f14 = f18;
                    } else if (i12 == 4) {
                        f11 = f17;
                        f16 = f18;
                    } else if (i12 == 5) {
                        f12 = f17;
                    }
                }
                i12++;
                k0Var = k0Var2;
                yVar2 = yVar;
                zB = z10;
            }
            y yVar3 = yVar2;
            k0 k0Var3 = k0Var;
            boolean z11 = zB;
            if (!Float.isNaN(f12)) {
                view.setRotation((float) (Math.toDegrees(Math.atan2((f16 / 2.0f) + f15, (f14 / 2.0f) + f13)) + f12 + (Float.isNaN(Float.NaN) ? 0.0f : Float.NaN)));
            } else if (!Float.isNaN(Float.NaN)) {
                view.setRotation(Float.NaN);
            }
            float f19 = f4 + 0.5f;
            int i13 = (int) f19;
            float f20 = f5 + 0.5f;
            int i14 = (int) f20;
            int i15 = (int) (f19 + f3);
            int i16 = (int) (f20 + f11);
            int i17 = i15 - i13;
            int i18 = i16 - i14;
            if (i17 != view.getMeasuredWidth() || i18 != view.getMeasuredHeight()) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i17, 1073741824), View.MeasureSpec.makeMeasureSpec(i18, 1073741824));
            }
            view.layout(i13, i14, i15, i16);
            HashMap map3 = this.f9986w;
            if (map3 != null) {
                for (h0 h0Var : map3.values()) {
                    if (h0Var instanceof f0) {
                        double[] dArr6 = this.f9978o;
                        view.setRotation(((f0) h0Var).a(fA) + ((float) Math.toDegrees(Math.atan2(dArr6[1], dArr6[0]))));
                    }
                }
            }
            if (k0Var3 != null) {
                double[] dArr7 = this.f9978o;
                view.setRotation(k0Var3.a(fA, j10, view, uVar) + ((float) Math.toDegrees(Math.atan2(dArr7[1], dArr7[0]))));
                z7 = z11 | k0Var3.d;
            } else {
                z7 = z11;
            }
            int i19 = 1;
            while (true) {
                r4.b[] bVarArr2 = this.f9971h;
                if (i19 >= bVarArr2.length) {
                    break;
                }
                r4.b bVar2 = bVarArr2[i19];
                float[] fArr = this.f9981r;
                bVar2.s(d, fArr);
                ((y.a) yVar3.f10050k.get(this.f9979p[i19 - 1])).g(view, fArr);
                i19++;
            }
            n nVar = this.f;
            if (nVar.f9951b == 0) {
                if (fA <= 0.0f) {
                    view.setVisibility(nVar.f9952c);
                } else {
                    n nVar2 = this.f9970g;
                    if (fA >= 1.0f) {
                        view.setVisibility(nVar2.f9952c);
                    } else if (nVar2.f9952c != nVar.f9952c) {
                        view.setVisibility(0);
                    }
                }
            }
        } else {
            boolean z12 = zB;
            float f21 = yVar2.f10045e;
            y yVar4 = this.f9969e;
            float fD = ea.q.d(yVar4.f10045e, f21, fA, f21);
            float f22 = yVar2.f;
            float fD2 = ea.q.d(yVar4.f, f22, fA, f22);
            float f23 = yVar2.f10046g;
            float f24 = yVar4.f10046g;
            float fD3 = ea.q.d(f24, f23, fA, f23);
            float f25 = yVar2.f10047h;
            float f26 = yVar4.f10047h;
            float f27 = fD + 0.5f;
            int i20 = (int) f27;
            float f28 = fD2 + 0.5f;
            int i21 = (int) f28;
            int i22 = (int) (f27 + fD3);
            int iD = (int) (f28 + ea.q.d(f26, f25, fA, f25));
            int i23 = i22 - i20;
            int i24 = iD - i21;
            if (f24 != f23 || f26 != f25) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i23, 1073741824), View.MeasureSpec.makeMeasureSpec(i24, 1073741824));
            }
            view.layout(i20, i21, i22, iD);
            z7 = z12;
        }
        HashMap map4 = this.f9987x;
        if (map4 != null) {
            for (i iVar : map4.values()) {
                if (iVar instanceof g) {
                    double[] dArr8 = this.f9978o;
                    view.setRotation(((g) iVar).a(fA) + ((float) Math.toDegrees(Math.atan2(dArr8[1], dArr8[0]))));
                } else {
                    iVar.c(view, fA);
                }
            }
        }
        return z7;
    }

    public final void d(y yVar) {
        float x10 = (int) this.f9966a.getX();
        float y7 = (int) this.f9966a.getY();
        float width = this.f9966a.getWidth();
        float height = this.f9966a.getHeight();
        yVar.f10045e = x10;
        yVar.f = y7;
        yVar.f10046g = width;
        yVar.f10047h = height;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:258:0x04cb. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:276:0x053b  */
    /* JADX WARN: Removed duplicated region for block: B:480:0x0c0b  */
    /* JADX WARN: Removed duplicated region for block: B:587:0x0bf2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01a2 A[PHI: r12
  0x01a2: PHI (r12v72 java.lang.Object) = 
  (r12v48 java.lang.Object)
  (r12v49 java.lang.Object)
  (r12v50 java.lang.Object)
  (r12v51 java.lang.Object)
  (r12v52 java.lang.Object)
  (r12v53 java.lang.Object)
  (r12v54 java.lang.Object)
  (r12v55 java.lang.Object)
  (r12v56 java.lang.Object)
  (r12v57 java.lang.Object)
  (r12v58 java.lang.Object)
  (r12v59 java.lang.Object)
  (r12v60 java.lang.Object)
  (r12v73 java.lang.Object)
 binds: [B:142:0x0275, B:138:0x026a, B:134:0x025f, B:130:0x0254, B:126:0x0249, B:122:0x023c, B:118:0x0231, B:114:0x0226, B:110:0x0218, B:106:0x0208, B:102:0x01f8, B:98:0x01e8, B:94:0x01da, B:79:0x01a0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r10v83, types: [t.l0, t.m0] */
    /* JADX WARN: Type inference failed for: r10v88, types: [t.m0] */
    /* JADX WARN: Type inference failed for: r14v113, types: [t.e0, t.h0] */
    /* JADX WARN: Type inference failed for: r15v92, types: [t.j0, t.m0] */
    /* JADX WARN: Type inference failed for: r3v24, types: [t.h, t.i] */
    /* JADX WARN: Type inference failed for: r3v30, types: [t.i] */
    /* JADX WARN: Type inference failed for: r4v44, types: [t.e, t.i] */
    /* JADX WARN: Type inference failed for: r6v154, types: [t.g0, t.h0] */
    /* JADX WARN: Type inference failed for: r6v163, types: [t.h0] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void e(long r38) {
        /*
            Method dump skipped, instructions count: 3786
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: t.o.e(long):void");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(" start: x: ");
        y yVar = this.d;
        sb.append(yVar.f10045e);
        sb.append(" y: ");
        sb.append(yVar.f);
        sb.append(" end: x: ");
        y yVar2 = this.f9969e;
        sb.append(yVar2.f10045e);
        sb.append(" y: ");
        sb.append(yVar2.f);
        return sb.toString();
    }
}
