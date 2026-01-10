package s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends r4.b {

    /* renamed from: c, reason: collision with root package name */
    public double f9679c;
    public double[] d;

    @Override // r4.b
    public final double q(double d) {
        return this.d[0];
    }

    @Override // r4.b
    public final void r(double d, double[] dArr) {
        double[] dArr2 = this.d;
        System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
    }

    @Override // r4.b
    public final void s(double d, float[] fArr) {
        int i6 = 0;
        while (true) {
            double[] dArr = this.d;
            if (i6 >= dArr.length) {
                return;
            }
            fArr[i6] = (float) dArr[i6];
            i6++;
        }
    }

    @Override // r4.b
    public final double u(double d) {
        return 0.0d;
    }

    @Override // r4.b
    public final void v(double d, double[] dArr) {
        for (int i6 = 0; i6 < this.d.length; i6++) {
            dArr[i6] = 0.0d;
        }
    }

    @Override // r4.b
    public final double[] w() {
        return new double[]{this.f9679c};
    }
}
