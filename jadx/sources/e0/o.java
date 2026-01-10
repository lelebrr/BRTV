package e0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o {

    /* renamed from: k, reason: collision with root package name */
    public static final o f6397k;

    /* renamed from: a, reason: collision with root package name */
    public final float f6398a;

    /* renamed from: b, reason: collision with root package name */
    public final float f6399b;

    /* renamed from: c, reason: collision with root package name */
    public final float f6400c;
    public final float d;

    /* renamed from: e, reason: collision with root package name */
    public final float f6401e;
    public final float f;

    /* renamed from: g, reason: collision with root package name */
    public final float[] f6402g;

    /* renamed from: h, reason: collision with root package name */
    public final float f6403h;

    /* renamed from: i, reason: collision with root package name */
    public final float f6404i;

    /* renamed from: j, reason: collision with root package name */
    public final float f6405j;

    static {
        float[] fArr = b.f6377c;
        float fO = (float) ((b.o() * 63.66197723675813d) / 100.0d);
        float[][] fArr2 = b.f6375a;
        float f = fArr[0];
        float[] fArr3 = fArr2[0];
        float f3 = fArr3[0] * f;
        float f4 = fArr[1];
        float f5 = (fArr3[1] * f4) + f3;
        float f10 = fArr[2];
        float f11 = (fArr3[2] * f10) + f5;
        float[] fArr4 = fArr2[1];
        float f12 = (fArr4[2] * f10) + (fArr4[1] * f4) + (fArr4[0] * f);
        float[] fArr5 = fArr2[2];
        float f13 = (f10 * fArr5[2]) + (f4 * fArr5[1]) + (f * fArr5[0]);
        float f14 = ((double) 1.0f) >= 0.9d ? 0.69f : 0.655f;
        float fExp = (1.0f - (((float) Math.exp(((-fO) - 42.0f) / 92.0f)) * 0.2777778f)) * 1.0f;
        double d = fExp;
        if (d > 1.0d) {
            fExp = 1.0f;
        } else if (d < 0.0d) {
            fExp = 0.0f;
        }
        float[] fArr6 = {(((100.0f / f11) * fExp) + 1.0f) - fExp, (((100.0f / f12) * fExp) + 1.0f) - fExp, (((100.0f / f13) * fExp) + 1.0f) - fExp};
        float f15 = 1.0f / ((5.0f * fO) + 1.0f);
        float f16 = f15 * f15 * f15 * f15;
        float f17 = 1.0f - f16;
        float fCbrt = (0.1f * f17 * f17 * ((float) Math.cbrt(fO * 5.0d))) + (f16 * fO);
        float fO2 = b.o() / fArr[1];
        double d10 = fO2;
        float fSqrt = ((float) Math.sqrt(d10)) + 1.48f;
        float fPow = 0.725f / ((float) Math.pow(d10, 0.2d));
        float[] fArr7 = {(float) Math.pow(((fArr6[0] * fCbrt) * f11) / 100.0d, 0.42d), (float) Math.pow(((fArr6[1] * fCbrt) * f12) / 100.0d, 0.42d), (float) Math.pow(((fArr6[2] * fCbrt) * f13) / 100.0d, 0.42d)};
        float f18 = fArr7[0];
        float f19 = (f18 * 400.0f) / (f18 + 27.13f);
        float f20 = fArr7[1];
        float f21 = (f20 * 400.0f) / (f20 + 27.13f);
        float f22 = fArr7[2];
        float[] fArr8 = {f19, f21, (400.0f * f22) / (f22 + 27.13f)};
        f6397k = new o(fO2, ((fArr8[2] * 0.05f) + (fArr8[0] * 2.0f) + fArr8[1]) * fPow, fPow, fPow, f14, 1.0f, fArr6, fCbrt, (float) Math.pow(fCbrt, 0.25d), fSqrt);
    }

    public o(float f, float f3, float f4, float f5, float f10, float f11, float[] fArr, float f12, float f13, float f14) {
        this.f = f;
        this.f6398a = f3;
        this.f6399b = f4;
        this.f6400c = f5;
        this.d = f10;
        this.f6401e = f11;
        this.f6402g = fArr;
        this.f6403h = f12;
        this.f6404i = f13;
        this.f6405j = f14;
    }
}
