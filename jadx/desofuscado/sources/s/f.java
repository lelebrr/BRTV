package s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends r4.b {

    /* renamed from: c, reason: collision with root package name */
    public double[] f9685c;
    public double[][] d;

    /* renamed from: e, reason: collision with root package name */
    public double[][] f9686e;

    public static double R(double d, double d10, double d11, double d12, double d13, double d14) {
        double d15 = d10 * d10;
        double d16 = d10 * 6.0d;
        double d17 = 6.0d * d15 * d11;
        double d18 = 3.0d * d;
        return (d * d13) + (((((d18 * d13) * d15) + (((d18 * d14) * d15) + ((d17 + ((d16 * d12) + (((-6.0d) * d15) * d12))) - (d16 * d11)))) - (((2.0d * d) * d14) * d10)) - (((4.0d * d) * d13) * d10));
    }

    public static double S(double d, double d10, double d11, double d12, double d13, double d14) {
        double d15 = d10 * d10;
        double d16 = d15 * d10;
        double d17 = 3.0d * d15;
        double d18 = d16 * 2.0d * d11;
        double d19 = ((d18 + ((d17 * d12) + (((-2.0d) * d16) * d12))) - (d17 * d11)) + d11;
        double d20 = d * d14;
        double d21 = (d20 * d16) + d19;
        double d22 = d * d13;
        return (d22 * d10) + ((((d16 * d22) + d21) - (d20 * d15)) - (((2.0d * d) * d13) * d15));
    }

    @Override // r4.b
    public final double q(double d) {
        double[] dArr = this.f9685c;
        int length = dArr.length;
        double d10 = dArr[0];
        double[][] dArr2 = this.d;
        if (d <= d10) {
            return dArr2[0][0];
        }
        int i6 = length - 1;
        if (d >= dArr[i6]) {
            return dArr2[i6][0];
        }
        int i10 = 0;
        while (i10 < i6) {
            double d11 = dArr[i10];
            if (d == d11) {
                return dArr2[i10][0];
            }
            int i11 = i10 + 1;
            double d12 = dArr[i11];
            if (d < d12) {
                double d13 = d12 - d11;
                double d14 = (d - d11) / d13;
                double d15 = dArr2[i10][0];
                double d16 = dArr2[i11][0];
                double[][] dArr3 = this.f9686e;
                return S(d13, d14, d15, d16, dArr3[i10][0], dArr3[i11][0]);
            }
            i10 = i11;
        }
        return 0.0d;
    }

    @Override // r4.b
    public final void r(double d, double[] dArr) {
        double[] dArr2 = this.f9685c;
        int length = dArr2.length;
        double[][] dArr3 = this.d;
        int i6 = 0;
        int length2 = dArr3[0].length;
        if (d <= dArr2[0]) {
            for (int i10 = 0; i10 < length2; i10++) {
                dArr[i10] = dArr3[0][i10];
            }
            return;
        }
        int i11 = length - 1;
        if (d >= dArr2[i11]) {
            while (i6 < length2) {
                dArr[i6] = dArr3[i11][i6];
                i6++;
            }
            return;
        }
        int i12 = 0;
        while (i12 < i11) {
            if (d == dArr2[i12]) {
                for (int i13 = 0; i13 < length2; i13++) {
                    dArr[i13] = dArr3[i12][i13];
                }
            }
            int i14 = i12 + 1;
            double d10 = dArr2[i14];
            if (d < d10) {
                double d11 = dArr2[i12];
                double d12 = d10 - d11;
                double d13 = (d - d11) / d12;
                while (i6 < length2) {
                    double d14 = dArr3[i12][i6];
                    double d15 = dArr3[i14][i6];
                    double[][] dArr4 = this.f9686e;
                    dArr[i6] = S(d12, d13, d14, d15, dArr4[i12][i6], dArr4[i14][i6]);
                    i6++;
                }
                return;
            }
            i12 = i14;
        }
    }

    @Override // r4.b
    public final void s(double d, float[] fArr) {
        double[] dArr = this.f9685c;
        int length = dArr.length;
        double[][] dArr2 = this.d;
        int i6 = 0;
        int length2 = dArr2[0].length;
        if (d <= dArr[0]) {
            for (int i10 = 0; i10 < length2; i10++) {
                fArr[i10] = (float) dArr2[0][i10];
            }
            return;
        }
        int i11 = length - 1;
        if (d >= dArr[i11]) {
            while (i6 < length2) {
                fArr[i6] = (float) dArr2[i11][i6];
                i6++;
            }
            return;
        }
        int i12 = 0;
        while (i12 < i11) {
            if (d == dArr[i12]) {
                for (int i13 = 0; i13 < length2; i13++) {
                    fArr[i13] = (float) dArr2[i12][i13];
                }
            }
            int i14 = i12 + 1;
            double d10 = dArr[i14];
            if (d < d10) {
                double d11 = dArr[i12];
                double d12 = d10 - d11;
                double d13 = (d - d11) / d12;
                while (i6 < length2) {
                    double d14 = dArr2[i12][i6];
                    double d15 = dArr2[i14][i6];
                    double[][] dArr3 = this.f9686e;
                    fArr[i6] = (float) S(d12, d13, d14, d15, dArr3[i12][i6], dArr3[i14][i6]);
                    i6++;
                }
                return;
            }
            i12 = i14;
        }
    }

    @Override // r4.b
    public final double u(double d) {
        double[] dArr = this.f9685c;
        int length = dArr.length;
        double d10 = dArr[0];
        if (d >= d10) {
            d10 = dArr[length - 1];
            if (d < d10) {
                d10 = d;
            }
        }
        int i6 = 0;
        while (i6 < length - 1) {
            int i10 = i6 + 1;
            double d11 = dArr[i10];
            if (d10 <= d11) {
                double d12 = dArr[i6];
                double d13 = d11 - d12;
                double[][] dArr2 = this.d;
                double d14 = dArr2[i6][0];
                double d15 = dArr2[i10][0];
                double[][] dArr3 = this.f9686e;
                return R(d13, (d10 - d12) / d13, d14, d15, dArr3[i6][0], dArr3[i10][0]) / d13;
            }
            i6 = i10;
        }
        return 0.0d;
    }

    @Override // r4.b
    public final void v(double d, double[] dArr) {
        double[] dArr2 = this.f9685c;
        int length = dArr2.length;
        double[][] dArr3 = this.d;
        int length2 = dArr3[0].length;
        double d10 = dArr2[0];
        if (d > d10) {
            d10 = dArr2[length - 1];
            if (d < d10) {
                d10 = d;
            }
        }
        int i6 = 0;
        while (i6 < length - 1) {
            int i10 = i6 + 1;
            double d11 = dArr2[i10];
            if (d10 <= d11) {
                double d12 = dArr2[i6];
                double d13 = d11 - d12;
                double d14 = (d10 - d12) / d13;
                for (int i11 = 0; i11 < length2; i11++) {
                    double d15 = dArr3[i6][i11];
                    double d16 = dArr3[i10][i11];
                    double[][] dArr4 = this.f9686e;
                    dArr[i11] = R(d13, d14, d15, d16, dArr4[i6][i11], dArr4[i10][i11]) / d13;
                }
                return;
            }
            i6 = i10;
        }
    }

    @Override // r4.b
    public final double[] w() {
        return this.f9685c;
    }
}
