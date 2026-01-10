package s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends e {
    public final double d;

    /* renamed from: e, reason: collision with root package name */
    public final double f9680e;
    public final double f;

    /* renamed from: g, reason: collision with root package name */
    public final double f9681g;

    public d(String str) {
        this.f9684a = str;
        int iIndexOf = str.indexOf(40);
        int iIndexOf2 = str.indexOf(44, iIndexOf);
        this.d = Double.parseDouble(str.substring(iIndexOf + 1, iIndexOf2).trim());
        int i6 = iIndexOf2 + 1;
        int iIndexOf3 = str.indexOf(44, i6);
        this.f9680e = Double.parseDouble(str.substring(i6, iIndexOf3).trim());
        int i10 = iIndexOf3 + 1;
        int iIndexOf4 = str.indexOf(44, i10);
        this.f = Double.parseDouble(str.substring(i10, iIndexOf4).trim());
        int i11 = iIndexOf4 + 1;
        this.f9681g = Double.parseDouble(str.substring(i11, str.indexOf(41, i11)).trim());
    }

    @Override // s.e
    public final double a(double d) {
        if (d <= 0.0d) {
            return 0.0d;
        }
        if (d >= 1.0d) {
            return 1.0d;
        }
        double d10 = 0.5d;
        double d11 = 0.5d;
        while (d10 > 0.01d) {
            d10 *= 0.5d;
            d11 = d(d11) < d ? d11 + d10 : d11 - d10;
        }
        double d12 = d11 - d10;
        double d13 = d(d12);
        double d14 = d11 + d10;
        double d15 = d(d14);
        double dE = e(d12);
        return (((d - d13) * (e(d14) - dE)) / (d15 - d13)) + dE;
    }

    @Override // s.e
    public final double b(double d) {
        double d10 = 0.5d;
        double d11 = 0.5d;
        while (d10 > 1.0E-4d) {
            d10 *= 0.5d;
            d11 = d(d11) < d ? d11 + d10 : d11 - d10;
        }
        double d12 = d11 - d10;
        double d13 = d11 + d10;
        return (e(d13) - e(d12)) / (d(d13) - d(d12));
    }

    public final double d(double d) {
        double d10 = 1.0d - d;
        double d11 = 3.0d * d10;
        double d12 = d10 * d11 * d;
        double d13 = d11 * d * d;
        return (this.f * d13) + (this.d * d12) + (d * d * d);
    }

    public final double e(double d) {
        double d10 = 1.0d - d;
        double d11 = 3.0d * d10;
        double d12 = d10 * d11 * d;
        double d13 = d11 * d * d;
        return (this.f9681g * d13) + (this.f9680e * d12) + (d * d * d);
    }
}
