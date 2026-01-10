package s;

import t.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends p {

    /* renamed from: a, reason: collision with root package name */
    public float f9690a;

    /* renamed from: b, reason: collision with root package name */
    public float f9691b;

    /* renamed from: c, reason: collision with root package name */
    public float f9692c;
    public float d;

    /* renamed from: e, reason: collision with root package name */
    public float f9693e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f9694g;

    /* renamed from: h, reason: collision with root package name */
    public float f9695h;

    /* renamed from: i, reason: collision with root package name */
    public float f9696i;

    /* renamed from: j, reason: collision with root package name */
    public int f9697j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f9698k = false;

    /* renamed from: l, reason: collision with root package name */
    public float f9699l;

    /* renamed from: m, reason: collision with root package name */
    public float f9700m;

    @Override // t.p
    public final float a() {
        return this.f9698k ? -b(this.f9700m) : b(this.f9700m);
    }

    public final float b(float f) {
        float f3;
        float f4;
        float f5 = this.d;
        if (f <= f5) {
            f3 = this.f9690a;
            f4 = this.f9691b;
        } else {
            int i6 = this.f9697j;
            if (i6 == 1) {
                return 0.0f;
            }
            f -= f5;
            f5 = this.f9693e;
            if (f >= f5) {
                if (i6 == 2) {
                    return this.f9695h;
                }
                float f10 = f - f5;
                float f11 = this.f;
                if (f10 >= f11) {
                    return this.f9696i;
                }
                float f12 = this.f9692c;
                return f12 - ((f10 * f12) / f11);
            }
            f3 = this.f9691b;
            f4 = this.f9692c;
        }
        return (((f4 - f3) * f) / f5) + f3;
    }

    public final void c(float f, float f3, float f4, float f5, float f10) {
        if (f == 0.0f) {
            f = 1.0E-4f;
        }
        this.f9690a = f;
        float f11 = f / f4;
        float f12 = (f11 * f) / 2.0f;
        if (f < 0.0f) {
            float fSqrt = (float) Math.sqrt((f3 - ((((-f) / f4) * f) / 2.0f)) * f4);
            if (fSqrt < f5) {
                this.f9697j = 2;
                this.f9690a = f;
                this.f9691b = fSqrt;
                this.f9692c = 0.0f;
                float f13 = (fSqrt - f) / f4;
                this.d = f13;
                this.f9693e = fSqrt / f4;
                this.f9694g = ((f + fSqrt) * f13) / 2.0f;
                this.f9695h = f3;
                this.f9696i = f3;
                return;
            }
            this.f9697j = 3;
            this.f9690a = f;
            this.f9691b = f5;
            this.f9692c = f5;
            float f14 = (f5 - f) / f4;
            this.d = f14;
            float f15 = f5 / f4;
            this.f = f15;
            float f16 = ((f + f5) * f14) / 2.0f;
            float f17 = (f15 * f5) / 2.0f;
            this.f9693e = ((f3 - f16) - f17) / f5;
            this.f9694g = f16;
            this.f9695h = f3 - f17;
            this.f9696i = f3;
            return;
        }
        if (f12 >= f3) {
            this.f9697j = 1;
            this.f9690a = f;
            this.f9691b = 0.0f;
            this.f9694g = f3;
            this.d = (2.0f * f3) / f;
            return;
        }
        float f18 = f3 - f12;
        float f19 = f18 / f;
        if (f19 + f11 < f10) {
            this.f9697j = 2;
            this.f9690a = f;
            this.f9691b = f;
            this.f9692c = 0.0f;
            this.f9694g = f18;
            this.f9695h = f3;
            this.d = f19;
            this.f9693e = f11;
            return;
        }
        float fSqrt2 = (float) Math.sqrt(((f * f) / 2.0f) + (f4 * f3));
        float f20 = (fSqrt2 - f) / f4;
        this.d = f20;
        float f21 = fSqrt2 / f4;
        this.f9693e = f21;
        if (fSqrt2 < f5) {
            this.f9697j = 2;
            this.f9690a = f;
            this.f9691b = fSqrt2;
            this.f9692c = 0.0f;
            this.d = f20;
            this.f9693e = f21;
            this.f9694g = ((f + fSqrt2) * f20) / 2.0f;
            this.f9695h = f3;
            return;
        }
        this.f9697j = 3;
        this.f9690a = f;
        this.f9691b = f5;
        this.f9692c = f5;
        float f22 = (f5 - f) / f4;
        this.d = f22;
        float f23 = f5 / f4;
        this.f = f23;
        float f24 = ((f + f5) * f22) / 2.0f;
        float f25 = (f23 * f5) / 2.0f;
        this.f9693e = ((f3 - f24) - f25) / f5;
        this.f9694g = f24;
        this.f9695h = f3 - f25;
        this.f9696i = f3;
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        float f3;
        float f4 = this.d;
        if (f <= f4) {
            float f5 = this.f9690a;
            f3 = ((((this.f9691b - f5) * f) * f) / (f4 * 2.0f)) + (f5 * f);
        } else {
            int i6 = this.f9697j;
            if (i6 == 1) {
                f3 = this.f9694g;
            } else {
                float f10 = f - f4;
                float f11 = this.f9693e;
                if (f10 < f11) {
                    float f12 = this.f9694g;
                    float f13 = this.f9691b;
                    f3 = ((((this.f9692c - f13) * f10) * f10) / (f11 * 2.0f)) + (f13 * f10) + f12;
                } else if (i6 == 2) {
                    f3 = this.f9695h;
                } else {
                    float f14 = f10 - f11;
                    float f15 = this.f;
                    if (f14 < f15) {
                        float f16 = this.f9695h;
                        float f17 = this.f9692c * f14;
                        f3 = (f16 + f17) - ((f17 * f14) / (f15 * 2.0f));
                    } else {
                        f3 = this.f9696i;
                    }
                }
            }
        }
        this.f9700m = f;
        return this.f9698k ? this.f9699l - f3 : this.f9699l + f3;
    }
}
