package s;

import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends r4.b {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f9677c = 1;
    public double[] d;

    /* renamed from: e, reason: collision with root package name */
    public Object[] f9678e;

    public /* synthetic */ b() {
    }

    @Override // r4.b
    public final double q(double d) {
        switch (this.f9677c) {
            case 0:
                a[] aVarArr = (a[]) this.f9678e;
                double d10 = aVarArr[0].f9663c;
                if (d < d10) {
                    d = d10;
                } else if (d > aVarArr[aVarArr.length - 1].d) {
                    d = aVarArr[aVarArr.length - 1].d;
                }
                for (int i6 = 0; i6 < aVarArr.length; i6++) {
                    a aVar = aVarArr[i6];
                    if (d <= aVar.d) {
                        if (aVar.f9676r) {
                            return aVar.b(d);
                        }
                        aVar.d(d);
                        a aVar2 = aVarArr[i6];
                        return aVar2.f9670l + (aVar2.f9668j * aVar2.f9673o);
                    }
                }
                return Double.NaN;
            default:
                double[] dArr = this.d;
                int length = dArr.length;
                double d11 = dArr[0];
                double[][] dArr2 = (double[][]) this.f9678e;
                if (d <= d11) {
                    return dArr2[0][0];
                }
                int i10 = length - 1;
                if (d >= dArr[i10]) {
                    return dArr2[i10][0];
                }
                int i11 = 0;
                while (i11 < i10) {
                    double d12 = dArr[i11];
                    if (d == d12) {
                        return dArr2[i11][0];
                    }
                    int i12 = i11 + 1;
                    double d13 = dArr[i12];
                    if (d < d13) {
                        double d14 = (d - d12) / (d13 - d12);
                        return (dArr2[i12][0] * d14) + ((1.0d - d14) * dArr2[i11][0]);
                    }
                    i11 = i12;
                }
                return 0.0d;
        }
    }

    @Override // r4.b
    public final void r(double d, double[] dArr) {
        switch (this.f9677c) {
            case 0:
                a[] aVarArr = (a[]) this.f9678e;
                double d10 = aVarArr[0].f9663c;
                if (d < d10) {
                    d = d10;
                }
                if (d > aVarArr[aVarArr.length - 1].d) {
                    d = aVarArr[aVarArr.length - 1].d;
                }
                for (int i6 = 0; i6 < aVarArr.length; i6++) {
                    a aVar = aVarArr[i6];
                    if (d <= aVar.d) {
                        if (aVar.f9676r) {
                            dArr[0] = aVar.b(d);
                            dArr[1] = aVarArr[i6].c(d);
                            break;
                        } else {
                            aVar.d(d);
                            a aVar2 = aVarArr[i6];
                            dArr[0] = (aVar2.f9668j * aVar2.f9673o) + aVar2.f9670l;
                            dArr[1] = (aVar2.f9669k * aVar2.f9674p) + aVar2.f9671m;
                            break;
                        }
                    }
                }
                break;
            default:
                double[] dArr2 = this.d;
                int length = dArr2.length;
                double[][] dArr3 = (double[][]) this.f9678e;
                int i10 = 0;
                int length2 = dArr3[0].length;
                if (d <= dArr2[0]) {
                    for (int i11 = 0; i11 < length2; i11++) {
                        dArr[i11] = dArr3[0][i11];
                    }
                    break;
                } else {
                    int i12 = length - 1;
                    if (d >= dArr2[i12]) {
                        while (i10 < length2) {
                            dArr[i10] = dArr3[i12][i10];
                            i10++;
                        }
                        break;
                    } else {
                        int i13 = 0;
                        while (i13 < i12) {
                            if (d == dArr2[i13]) {
                                for (int i14 = 0; i14 < length2; i14++) {
                                    dArr[i14] = dArr3[i13][i14];
                                }
                            }
                            int i15 = i13 + 1;
                            double d11 = dArr2[i15];
                            if (d < d11) {
                                double d12 = dArr2[i13];
                                double d13 = (d - d12) / (d11 - d12);
                                while (i10 < length2) {
                                    dArr[i10] = (dArr3[i15][i10] * d13) + ((1.0d - d13) * dArr3[i13][i10]);
                                    i10++;
                                }
                                break;
                            } else {
                                i13 = i15;
                            }
                        }
                        break;
                    }
                }
        }
    }

    @Override // r4.b
    public final void s(double d, float[] fArr) {
        switch (this.f9677c) {
            case 0:
                a[] aVarArr = (a[]) this.f9678e;
                double d10 = aVarArr[0].f9663c;
                if (d < d10) {
                    d = d10;
                } else if (d > aVarArr[aVarArr.length - 1].d) {
                    d = aVarArr[aVarArr.length - 1].d;
                }
                for (int i6 = 0; i6 < aVarArr.length; i6++) {
                    a aVar = aVarArr[i6];
                    if (d <= aVar.d) {
                        if (aVar.f9676r) {
                            fArr[0] = (float) aVar.b(d);
                            fArr[1] = (float) aVarArr[i6].c(d);
                            break;
                        } else {
                            aVar.d(d);
                            a aVar2 = aVarArr[i6];
                            fArr[0] = (float) ((aVar2.f9668j * aVar2.f9673o) + aVar2.f9670l);
                            fArr[1] = (float) ((aVar2.f9669k * aVar2.f9674p) + aVar2.f9671m);
                            break;
                        }
                    }
                }
                break;
            default:
                double[] dArr = this.d;
                int length = dArr.length;
                double[][] dArr2 = (double[][]) this.f9678e;
                int i10 = 0;
                int length2 = dArr2[0].length;
                if (d <= dArr[0]) {
                    for (int i11 = 0; i11 < length2; i11++) {
                        fArr[i11] = (float) dArr2[0][i11];
                    }
                    break;
                } else {
                    int i12 = length - 1;
                    if (d >= dArr[i12]) {
                        while (i10 < length2) {
                            fArr[i10] = (float) dArr2[i12][i10];
                            i10++;
                        }
                        break;
                    } else {
                        int i13 = 0;
                        while (i13 < i12) {
                            if (d == dArr[i13]) {
                                for (int i14 = 0; i14 < length2; i14++) {
                                    fArr[i14] = (float) dArr2[i13][i14];
                                }
                            }
                            int i15 = i13 + 1;
                            double d11 = dArr[i15];
                            if (d < d11) {
                                double d12 = dArr[i13];
                                double d13 = (d - d12) / (d11 - d12);
                                while (i10 < length2) {
                                    fArr[i10] = (float) ((dArr2[i15][i10] * d13) + ((1.0d - d13) * dArr2[i13][i10]));
                                    i10++;
                                }
                                break;
                            } else {
                                i13 = i15;
                            }
                        }
                        break;
                    }
                }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000f A[PHI: r3
  0x000f: PHI (r3v8 double) = (r3v2 double), (r3v4 double) binds: [B:5:0x000d, B:8:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // r4.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final double u(double r9) {
        /*
            r8 = this;
            int r0 = r8.f9677c
            switch(r0) {
                case 0: goto L3e;
                default: goto L5;
            }
        L5:
            double[] r0 = r8.d
            int r1 = r0.length
            r2 = 0
            r3 = r0[r2]
            int r5 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r5 >= 0) goto L11
        Lf:
            r9 = r3
            goto L1a
        L11:
            int r3 = r1 + (-1)
            r3 = r0[r3]
            int r5 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r5 < 0) goto L1a
            goto Lf
        L1a:
            r3 = 0
        L1b:
            int r4 = r1 + (-1)
            if (r3 >= r4) goto L3b
            int r4 = r3 + 1
            r5 = r0[r4]
            int r7 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r7 > 0) goto L39
            r9 = r0[r3]
            double r5 = r5 - r9
            java.lang.Object[] r9 = r8.f9678e
            double[][] r9 = (double[][]) r9
            r10 = r9[r3]
            r0 = r10[r2]
            r9 = r9[r4]
            r2 = r9[r2]
            double r2 = r2 - r0
            double r2 = r2 / r5
            goto L3d
        L39:
            r3 = r4
            goto L1b
        L3b:
            r2 = 0
        L3d:
            return r2
        L3e:
            java.lang.Object[] r0 = r8.f9678e
            s.a[] r0 = (s.a[]) r0
            r1 = 0
            r2 = r0[r1]
            double r2 = r2.f9663c
            int r4 = (r9 > r2 ? 1 : (r9 == r2 ? 0 : -1))
            if (r4 >= 0) goto L4c
            r9 = r2
        L4c:
            int r2 = r0.length
            int r2 = r2 + (-1)
            r2 = r0[r2]
            double r2 = r2.d
            int r4 = (r9 > r2 ? 1 : (r9 == r2 ? 0 : -1))
            if (r4 <= 0) goto L5e
            int r9 = r0.length
            int r9 = r9 + (-1)
            r9 = r0[r9]
            double r9 = r9.d
        L5e:
            int r2 = r0.length
            if (r1 >= r2) goto L7d
            r2 = r0[r1]
            double r3 = r2.d
            int r5 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r5 > 0) goto L7a
            boolean r3 = r2.f9676r
            if (r3 == 0) goto L70
            double r9 = r2.f9670l
            goto L7f
        L70:
            r2.d(r9)
            r9 = r0[r1]
            double r9 = r9.a()
            goto L7f
        L7a:
            int r1 = r1 + 1
            goto L5e
        L7d:
            r9 = 9221120237041090560(0x7ff8000000000000, double:NaN)
        L7f:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: s.b.u(double):double");
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0016 A[PHI: r5
  0x0016: PHI (r5v13 double) = (r5v7 double), (r5v9 double) binds: [B:5:0x0014, B:8:0x001e] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // r4.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void v(double r12, double[] r14) {
        /*
            Method dump skipped, instructions count: 182
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: s.b.v(double, double[]):void");
    }

    @Override // r4.b
    public final double[] w() {
        switch (this.f9677c) {
        }
        return this.d;
    }

    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v9 */
    public b(int[] iArr, double[] dArr, double[][] dArr2) {
        double[] dArr3;
        double d;
        b bVar = this;
        double[] dArr4 = dArr;
        bVar.d = dArr4;
        int i6 = 1;
        bVar.f9678e = new a[dArr4.length - 1];
        ?? r22 = 0;
        int i10 = 0;
        int i11 = 1;
        int i12 = 1;
        while (true) {
            a[] aVarArr = (a[]) bVar.f9678e;
            if (i10 >= aVarArr.length) {
                return;
            }
            int i13 = iArr[i10];
            if (i13 == 0) {
                i12 = 3;
            } else if (i13 == i6) {
                i11 = 1;
                i12 = 1;
            } else if (i13 == 2) {
                i11 = 2;
                i12 = 2;
            } else if (i13 == 3) {
                i11 = i11 == i6 ? 2 : 1;
                i12 = i11;
            }
            double d10 = dArr4[i10];
            int i14 = i10 + 1;
            double d11 = dArr4[i14];
            double[] dArr5 = dArr2[i10];
            double d12 = dArr5[r22];
            double d13 = dArr5[i6];
            double[] dArr6 = dArr2[i14];
            int i15 = i10;
            int i16 = i11;
            double d14 = dArr6[r22];
            double d15 = dArr6[i6];
            a aVar = new a();
            aVar.f9676r = r22;
            boolean z7 = i12 == i6;
            aVar.f9675q = z7;
            aVar.f9663c = d10;
            aVar.d = d11;
            double d16 = d11 - d10;
            double d17 = 1.0d / d16;
            aVar.f9667i = d17;
            if (3 == i12) {
                aVar.f9676r = true;
            }
            int i17 = i12;
            double d18 = d14 - d12;
            double d19 = d15 - d13;
            if (aVar.f9676r || Math.abs(d18) < 0.001d || Math.abs(d19) < 0.001d) {
                aVar.f9676r = true;
                aVar.f9664e = d12;
                aVar.f = d14;
                aVar.f9665g = d13;
                aVar.f9666h = d15;
                double dHypot = Math.hypot(d19, d18);
                aVar.f9662b = dHypot;
                aVar.f9672n = dHypot * d17;
                aVar.f9670l = d18 / d16;
                aVar.f9671m = d19 / d16;
            } else {
                aVar.f9661a = new double[101];
                aVar.f9668j = (z7 ? -1 : 1) * d18;
                aVar.f9669k = d19 * (z7 ? 1 : -1);
                aVar.f9670l = z7 ? d14 : d12;
                aVar.f9671m = z7 ? d13 : d15;
                double d20 = d13 - d15;
                int i18 = 0;
                double dHypot2 = 0.0d;
                double d21 = 0.0d;
                double d22 = 0.0d;
                while (true) {
                    dArr3 = a.f9660s;
                    if (i18 >= 91) {
                        break;
                    }
                    double radians = Math.toRadians((i18 * 90.0d) / 90);
                    double dSin = Math.sin(radians) * d18;
                    double dCos = Math.cos(radians) * d20;
                    if (i18 > 0) {
                        d = d20;
                        dHypot2 += Math.hypot(dSin - d21, dCos - d22);
                        dArr3[i18] = dHypot2;
                    } else {
                        d = d20;
                    }
                    i18++;
                    d22 = dCos;
                    d21 = dSin;
                    d20 = d;
                }
                aVar.f9662b = dHypot2;
                for (int i19 = 0; i19 < 91; i19++) {
                    dArr3[i19] = dArr3[i19] / dHypot2;
                }
                int i20 = 0;
                while (true) {
                    double[] dArr7 = aVar.f9661a;
                    if (i20 >= dArr7.length) {
                        break;
                    }
                    double length = i20 / (dArr7.length - 1);
                    int iBinarySearch = Arrays.binarySearch(dArr3, length);
                    if (iBinarySearch >= 0) {
                        dArr7[i20] = iBinarySearch / 90;
                    } else if (iBinarySearch == -1) {
                        dArr7[i20] = 0.0d;
                    } else {
                        int i21 = -iBinarySearch;
                        int i22 = i21 - 2;
                        double d23 = dArr3[i22];
                        dArr7[i20] = (((length - d23) / (dArr3[i21 - 1] - d23)) + i22) / 90;
                    }
                    i20++;
                }
                aVar.f9672n = aVar.f9662b * aVar.f9667i;
            }
            aVarArr[i15] = aVar;
            bVar = this;
            dArr4 = dArr;
            i12 = i17;
            i10 = i14;
            i11 = i16;
            r22 = 0;
            i6 = 1;
        }
    }
}
