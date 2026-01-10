package s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: s, reason: collision with root package name */
    public static final double[] f9660s = new double[91];

    /* renamed from: a, reason: collision with root package name */
    public double[] f9661a;

    /* renamed from: b, reason: collision with root package name */
    public double f9662b;

    /* renamed from: c, reason: collision with root package name */
    public double f9663c;
    public double d;

    /* renamed from: e, reason: collision with root package name */
    public double f9664e;
    public double f;

    /* renamed from: g, reason: collision with root package name */
    public double f9665g;

    /* renamed from: h, reason: collision with root package name */
    public double f9666h;

    /* renamed from: i, reason: collision with root package name */
    public double f9667i;

    /* renamed from: j, reason: collision with root package name */
    public double f9668j;

    /* renamed from: k, reason: collision with root package name */
    public double f9669k;

    /* renamed from: l, reason: collision with root package name */
    public double f9670l;

    /* renamed from: m, reason: collision with root package name */
    public double f9671m;

    /* renamed from: n, reason: collision with root package name */
    public double f9672n;

    /* renamed from: o, reason: collision with root package name */
    public double f9673o;

    /* renamed from: p, reason: collision with root package name */
    public double f9674p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f9675q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f9676r;

    public final double a() {
        double d = this.f9668j * this.f9674p;
        double dHypot = this.f9672n / Math.hypot(d, (-this.f9669k) * this.f9673o);
        if (this.f9675q) {
            d = -d;
        }
        return d * dHypot;
    }

    public final double b(double d) {
        double d10 = (d - this.f9663c) * this.f9667i;
        double d11 = this.f;
        double d12 = this.f9664e;
        return ((d11 - d12) * d10) + d12;
    }

    public final double c(double d) {
        double d10 = (d - this.f9663c) * this.f9667i;
        double d11 = this.f9666h;
        double d12 = this.f9665g;
        return ((d11 - d12) * d10) + d12;
    }

    public final void d(double d) {
        double d10 = (this.f9675q ? this.d - d : d - this.f9663c) * this.f9667i;
        double d11 = 0.0d;
        if (d10 > 0.0d) {
            d11 = 1.0d;
            if (d10 < 1.0d) {
                double[] dArr = this.f9661a;
                double length = d10 * (dArr.length - 1);
                int i6 = (int) length;
                double d12 = dArr[i6];
                d11 = ((dArr[i6 + 1] - d12) * (length - i6)) + d12;
            }
        }
        double d13 = d11 * 1.5707963267948966d;
        this.f9673o = Math.sin(d13);
        this.f9674p = Math.cos(d13);
    }
}
