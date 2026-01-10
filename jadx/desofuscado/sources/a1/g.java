package a1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public double f72a;

    /* renamed from: b, reason: collision with root package name */
    public double f73b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f74c;
    public double d;

    /* renamed from: e, reason: collision with root package name */
    public double f75e;
    public double f;

    /* renamed from: g, reason: collision with root package name */
    public double f76g;

    /* renamed from: h, reason: collision with root package name */
    public double f77h;

    /* renamed from: i, reason: collision with root package name */
    public double f78i;

    /* renamed from: j, reason: collision with root package name */
    public final e f79j;

    public g() {
        this.f72a = Math.sqrt(1500.0d);
        this.f73b = 0.5d;
        this.f74c = false;
        this.f78i = Double.MAX_VALUE;
        this.f79j = new e();
    }

    public final e a(double d, double d10, long j10) {
        double dCos;
        double dPow;
        if (!this.f74c) {
            if (this.f78i == Double.MAX_VALUE) {
                throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
            }
            double d11 = this.f73b;
            if (d11 > 1.0d) {
                double d12 = this.f72a;
                this.f = (Math.sqrt((d11 * d11) - 1.0d) * d12) + ((-d11) * d12);
                double d13 = this.f73b;
                double d14 = this.f72a;
                this.f76g = ((-d13) * d14) - (Math.sqrt((d13 * d13) - 1.0d) * d14);
            } else if (d11 >= 0.0d && d11 < 1.0d) {
                this.f77h = Math.sqrt(1.0d - (d11 * d11)) * this.f72a;
            }
            this.f74c = true;
        }
        double d15 = j10 / 1000.0d;
        double d16 = d - this.f78i;
        double d17 = this.f73b;
        if (d17 > 1.0d) {
            double d18 = this.f76g;
            double d19 = ((d18 * d16) - d10) / (d18 - this.f);
            double d20 = d16 - d19;
            dPow = (Math.pow(2.718281828459045d, this.f * d15) * d19) + (Math.pow(2.718281828459045d, d18 * d15) * d20);
            double d21 = this.f76g;
            double dPow2 = Math.pow(2.718281828459045d, d21 * d15) * d20 * d21;
            double d22 = this.f;
            dCos = (Math.pow(2.718281828459045d, d22 * d15) * d19 * d22) + dPow2;
        } else if (d17 == 1.0d) {
            double d23 = this.f72a;
            double d24 = (d23 * d16) + d10;
            double d25 = (d24 * d15) + d16;
            double dPow3 = Math.pow(2.718281828459045d, (-d23) * d15) * d25;
            double dPow4 = Math.pow(2.718281828459045d, (-this.f72a) * d15) * d25;
            double d26 = -this.f72a;
            dCos = (Math.pow(2.718281828459045d, d26 * d15) * d24) + (dPow4 * d26);
            dPow = dPow3;
        } else {
            double d27 = 1.0d / this.f77h;
            double d28 = this.f72a;
            double d29 = ((d17 * d28 * d16) + d10) * d27;
            double dSin = ((Math.sin(this.f77h * d15) * d29) + (Math.cos(this.f77h * d15) * d16)) * Math.pow(2.718281828459045d, (-d17) * d28 * d15);
            double d30 = this.f72a;
            double d31 = this.f73b;
            double d32 = (-d30) * dSin * d31;
            double dPow5 = Math.pow(2.718281828459045d, (-d31) * d30 * d15);
            double d33 = this.f77h;
            double dSin2 = Math.sin(d33 * d15) * (-d33) * d16;
            double d34 = this.f77h;
            dCos = (((Math.cos(d34 * d15) * d29 * d34) + dSin2) * dPow5) + d32;
            dPow = dSin;
        }
        float f = (float) (dPow + this.f78i);
        e eVar = this.f79j;
        eVar.f53a = f;
        eVar.f54b = (float) dCos;
        return eVar;
    }

    public g(float f) {
        this.f72a = Math.sqrt(1500.0d);
        this.f73b = 0.5d;
        this.f74c = false;
        this.f79j = new e();
        this.f78i = f;
    }
}
