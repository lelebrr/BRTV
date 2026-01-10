package e0;

import android.graphics.Color;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public float f6371a;

    /* renamed from: b, reason: collision with root package name */
    public float f6372b;

    /* renamed from: c, reason: collision with root package name */
    public float f6373c;
    public float d;

    /* renamed from: e, reason: collision with root package name */
    public float f6374e;
    public float f;

    public a(float f, float f3, float f4, float f5, float f10, float f11) {
        this.f6371a = f;
        this.f6372b = f3;
        this.f6373c = f4;
        this.d = f5;
        this.f6374e = f10;
        this.f = f11;
    }

    public static a b(int i6) {
        o oVar = o.f6397k;
        float fG = b.g(Color.red(i6));
        float fG2 = b.g(Color.green(i6));
        float fG3 = b.g(Color.blue(i6));
        float[][] fArr = b.d;
        float[] fArr2 = fArr[0];
        float f = (fArr2[2] * fG3) + (fArr2[1] * fG2) + (fArr2[0] * fG);
        float[] fArr3 = fArr[1];
        float f3 = (fArr3[2] * fG3) + (fArr3[1] * fG2) + (fArr3[0] * fG);
        float[] fArr4 = fArr[2];
        float f4 = (fG3 * fArr4[2]) + (fG2 * fArr4[1]) + (fG * fArr4[0]);
        float[][] fArr5 = b.f6375a;
        float[] fArr6 = fArr5[0];
        float f5 = (fArr6[2] * f4) + (fArr6[1] * f3) + (fArr6[0] * f);
        float[] fArr7 = fArr5[1];
        float f10 = (fArr7[2] * f4) + (fArr7[1] * f3) + (fArr7[0] * f);
        float[] fArr8 = fArr5[2];
        float f11 = (f4 * fArr8[2]) + (f3 * fArr8[1]) + (f * fArr8[0]);
        float[] fArr9 = oVar.f6402g;
        float f12 = fArr9[0] * f5;
        float f13 = fArr9[1] * f10;
        float f14 = fArr9[2] * f11;
        float fAbs = Math.abs(f12);
        float f15 = oVar.f6403h;
        float fPow = (float) Math.pow((fAbs * f15) / 100.0d, 0.42d);
        float fPow2 = (float) Math.pow((Math.abs(f13) * f15) / 100.0d, 0.42d);
        float fPow3 = (float) Math.pow((Math.abs(f14) * f15) / 100.0d, 0.42d);
        float fSignum = ((Math.signum(f12) * 400.0f) * fPow) / (fPow + 27.13f);
        float fSignum2 = ((Math.signum(f13) * 400.0f) * fPow2) / (fPow2 + 27.13f);
        float fSignum3 = ((Math.signum(f14) * 400.0f) * fPow3) / (fPow3 + 27.13f);
        double d = fSignum3;
        float f16 = ((float) (((fSignum2 * (-12.0d)) + (fSignum * 11.0d)) + d)) / 11.0f;
        float f17 = ((float) ((fSignum + fSignum2) - (d * 2.0d))) / 9.0f;
        float f18 = fSignum2 * 20.0f;
        float f19 = ((21.0f * fSignum3) + ((fSignum * 20.0f) + f18)) / 20.0f;
        float f20 = (((fSignum * 40.0f) + f18) + fSignum3) / 20.0f;
        float fAtan2 = (((float) Math.atan2(f17, f16)) * 180.0f) / 3.1415927f;
        if (fAtan2 < 0.0f) {
            fAtan2 += 360.0f;
        } else if (fAtan2 >= 360.0f) {
            fAtan2 -= 360.0f;
        }
        float f21 = fAtan2;
        float f22 = (3.1415927f * f21) / 180.0f;
        float f23 = f20 * oVar.f6399b;
        float f24 = oVar.f6398a;
        float f25 = oVar.d;
        float fPow4 = ((float) Math.pow(f23 / f24, oVar.f6405j * f25)) * 100.0f;
        Math.sqrt(fPow4 / 100.0f);
        float f26 = f24 + 4.0f;
        float fPow5 = ((float) Math.pow(1.64d - Math.pow(0.29d, oVar.f), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos((((((double) f21) < 20.14d ? 360.0f + f21 : f21) * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * oVar.f6401e) * oVar.f6400c) * ((float) Math.sqrt((f17 * f17) + (f16 * f16)))) / (f19 + 0.305f), 0.9d)) * ((float) Math.sqrt(fPow4 / 100.0d));
        float f27 = oVar.f6404i * fPow5;
        Math.sqrt((r3 * f25) / f26);
        float f28 = (1.7f * fPow4) / ((0.007f * fPow4) + 1.0f);
        float fLog = ((float) Math.log((f27 * 0.0228f) + 1.0f)) * 43.85965f;
        double d10 = f22;
        return new a(f21, fPow5, fPow4, f28, fLog * ((float) Math.cos(d10)), fLog * ((float) Math.sin(d10)));
    }

    public static a c(float f, float f3, float f4) {
        o oVar = o.f6397k;
        float f5 = oVar.d;
        Math.sqrt(f / 100.0d);
        float f10 = oVar.f6398a + 4.0f;
        float f11 = oVar.f6404i * f3;
        Math.sqrt(((f3 / ((float) Math.sqrt(r1))) * oVar.d) / f10);
        float f12 = (1.7f * f) / ((0.007f * f) + 1.0f);
        float fLog = ((float) Math.log((f11 * 0.0228d) + 1.0d)) * 43.85965f;
        double d = (3.1415927f * f4) / 180.0f;
        return new a(f4, f3, f, f12, fLog * ((float) Math.cos(d)), fLog * ((float) Math.sin(d)));
    }

    public void a(float f, float f3, int i6, int i10, float[] fArr) {
        float f4 = fArr[0];
        float f5 = fArr[1];
        float f10 = (f3 - 0.5f) * 2.0f;
        float f11 = f4 + this.f6373c;
        float f12 = f5 + this.d;
        float f13 = (this.f6371a * (f - 0.5f) * 2.0f) + f11;
        float f14 = (this.f6372b * f10) + f12;
        float radians = (float) Math.toRadians(this.f);
        float radians2 = (float) Math.toRadians(this.f6374e);
        double d = radians;
        double d10 = i10 * f10;
        float fSin = (((float) ((Math.sin(d) * ((-i6) * r7)) - (Math.cos(d) * d10))) * radians2) + f13;
        float fCos = (radians2 * ((float) ((Math.cos(d) * (i6 * r7)) - (Math.sin(d) * d10)))) + f14;
        fArr[0] = fSin;
        fArr[1] = fCos;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int d(e0.o r17) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: e0.a.d(e0.o):int");
    }
}
