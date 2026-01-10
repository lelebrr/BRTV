package f0;

import android.graphics.Path;
import android.util.Log;
import androidx.media3.container.MdtaMetadataEntry;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public char f6758a;

    /* renamed from: b, reason: collision with root package name */
    public final float[] f6759b;

    public f(char c5, float[] fArr) {
        this.f6758a = c5;
        this.f6759b = fArr;
    }

    public static void a(Path path, float f, float f3, float f4, float f5, float f10, float f11, float f12, boolean z7, boolean z10) {
        double d;
        double d10;
        double radians = Math.toRadians(f12);
        double dCos = Math.cos(radians);
        double dSin = Math.sin(radians);
        double d11 = f;
        double d12 = f3;
        double d13 = (d12 * dSin) + (d11 * dCos);
        double d14 = d11;
        double d15 = f10;
        double d16 = d13 / d15;
        double d17 = f11;
        double d18 = ((d12 * dCos) + ((-f) * dSin)) / d17;
        double d19 = d12;
        double d20 = f5;
        double d21 = ((d20 * dSin) + (f4 * dCos)) / d15;
        double d22 = ((d20 * dCos) + ((-f4) * dSin)) / d17;
        double d23 = d16 - d21;
        double d24 = d18 - d22;
        double d25 = (d16 + d21) / 2.0d;
        double d26 = (d18 + d22) / 2.0d;
        double d27 = (d24 * d24) + (d23 * d23);
        if (d27 == 0.0d) {
            Log.w("PathParser", " Points are coincident");
            return;
        }
        double d28 = (1.0d / d27) - 0.25d;
        if (d28 < 0.0d) {
            Log.w("PathParser", "Points are too far apart " + d27);
            float fSqrt = (float) (Math.sqrt(d27) / 1.99999d);
            a(path, f, f3, f4, f5, f10 * fSqrt, f11 * fSqrt, f12, z7, z10);
            return;
        }
        double dSqrt = Math.sqrt(d28);
        double d29 = d23 * dSqrt;
        double d30 = dSqrt * d24;
        if (z7 == z10) {
            d = d25 - d30;
            d10 = d26 + d29;
        } else {
            d = d25 + d30;
            d10 = d26 - d29;
        }
        double dAtan2 = Math.atan2(d18 - d10, d16 - d);
        double dAtan22 = Math.atan2(d22 - d10, d21 - d) - dAtan2;
        int i6 = 0;
        if (z10 != (dAtan22 >= 0.0d)) {
            dAtan22 = dAtan22 > 0.0d ? dAtan22 - 6.283185307179586d : dAtan22 + 6.283185307179586d;
        }
        double d31 = d * d15;
        double d32 = d10 * d17;
        double d33 = (d31 * dCos) - (d32 * dSin);
        double d34 = (d32 * dCos) + (d31 * dSin);
        int iCeil = (int) Math.ceil(Math.abs((dAtan22 * 4.0d) / 3.141592653589793d));
        double dCos2 = Math.cos(radians);
        double dSin2 = Math.sin(radians);
        double dCos3 = Math.cos(dAtan2);
        double dSin3 = Math.sin(dAtan2);
        double d35 = -d15;
        double d36 = d35 * dCos2;
        double d37 = d17 * dSin2;
        double d38 = (d36 * dSin3) - (d37 * dCos3);
        double d39 = d35 * dSin2;
        double d40 = d17 * dCos2;
        double d41 = (dCos3 * d40) + (dSin3 * d39);
        double d42 = dAtan22 / iCeil;
        double d43 = dAtan2;
        while (i6 < iCeil) {
            double d44 = d43 + d42;
            double dSin4 = Math.sin(d44);
            double dCos4 = Math.cos(d44);
            double d45 = d42;
            double d46 = (((d15 * dCos2) * dCos4) + d33) - (d37 * dSin4);
            double d47 = d33;
            double d48 = (d40 * dSin4) + (d15 * dSin2 * dCos4) + d34;
            double d49 = (d36 * dSin4) - (d37 * dCos4);
            double d50 = (dCos4 * d40) + (dSin4 * d39);
            double d51 = d44 - d43;
            double dTan = Math.tan(d51 / 2.0d);
            double dSqrt2 = ((Math.sqrt(((dTan * 3.0d) * dTan) + 4.0d) - 1.0d) * Math.sin(d51)) / 3.0d;
            path.rLineTo(0.0f, 0.0f);
            path.cubicTo((float) ((d38 * dSqrt2) + d14), (float) ((d41 * dSqrt2) + d19), (float) (d46 - (dSqrt2 * d49)), (float) (d48 - (dSqrt2 * d50)), (float) d46, (float) d48);
            i6++;
            d40 = d40;
            d39 = d39;
            iCeil = iCeil;
            dCos2 = dCos2;
            d43 = d44;
            d15 = d15;
            d41 = d50;
            d38 = d49;
            d14 = d46;
            d19 = d48;
            d42 = d45;
            d33 = d47;
        }
    }

    public static void b(f[] fVarArr, Path path) {
        int i6;
        int i10;
        char c5;
        int i11;
        int i12;
        f fVar;
        float f;
        float f3;
        float f4;
        float f5;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        f[] fVarArr2 = fVarArr;
        float[] fArr = new float[6];
        int length = fVarArr2.length;
        char c8 = 'm';
        int i13 = 0;
        while (i13 < length) {
            f fVar2 = fVarArr2[i13];
            char c10 = fVar2.f6758a;
            float f18 = fArr[0];
            float f19 = fArr[1];
            float f20 = fArr[2];
            float f21 = fArr[3];
            float f22 = fArr[4];
            float f23 = fArr[5];
            switch (c10) {
                case 'A':
                case 'a':
                    i6 = 7;
                    break;
                case MdtaMetadataEntry.TYPE_INDICATOR_INT32 /* 67 */:
                case 'c':
                    i6 = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i6 = 1;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i6 = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f22, f23);
                    f18 = f22;
                    f20 = f18;
                    f19 = f23;
                    f21 = f19;
                default:
                    i6 = 2;
                    break;
            }
            float f24 = f22;
            float f25 = f23;
            float f26 = f18;
            float f27 = f19;
            int i14 = 0;
            while (true) {
                float[] fArr2 = fVar2.f6759b;
                if (i14 < fArr2.length) {
                    if (c10 != 'A') {
                        if (c10 != 'C') {
                            if (c10 == 'H') {
                                i10 = i14;
                                c5 = c10;
                                i11 = i13;
                                i12 = length;
                                fVar = fVar2;
                                path.lineTo(fArr2[i10], f27);
                                f26 = fArr2[i10];
                            } else if (c10 == 'Q') {
                                i10 = i14;
                                c5 = c10;
                                i11 = i13;
                                i12 = length;
                                fVar = fVar2;
                                float f28 = fArr2[i10];
                                int i15 = i10 + 1;
                                float f29 = fArr2[i15];
                                int i16 = i10 + 2;
                                int i17 = i10 + 3;
                                path.quadTo(f28, f29, fArr2[i16], fArr2[i17]);
                                f = fArr2[i10];
                                f3 = fArr2[i15];
                                f26 = fArr2[i16];
                                f27 = fArr2[i17];
                            } else if (c10 == 'V') {
                                i10 = i14;
                                c5 = c10;
                                i11 = i13;
                                i12 = length;
                                fVar = fVar2;
                                path.lineTo(f26, fArr2[i10]);
                                f27 = fArr2[i10];
                            } else if (c10 != 'a') {
                                if (c10 != 'c') {
                                    if (c10 != 'h') {
                                        if (c10 == 'q') {
                                            i10 = i14;
                                            float f30 = f27;
                                            float f31 = f26;
                                            int i18 = i10 + 1;
                                            int i19 = i10 + 2;
                                            int i20 = i10 + 3;
                                            path.rQuadTo(fArr2[i10], fArr2[i18], fArr2[i19], fArr2[i20]);
                                            float f32 = f31 + fArr2[i10];
                                            float f33 = fArr2[i18] + f30;
                                            float f34 = f31 + fArr2[i19];
                                            f27 = f30 + fArr2[i20];
                                            f21 = f33;
                                            f20 = f32;
                                            c5 = c10;
                                            i11 = i13;
                                            i12 = length;
                                            f26 = f34;
                                        } else if (c10 == 'v') {
                                            i10 = i14;
                                            path.rLineTo(0.0f, fArr2[i10]);
                                            f27 += fArr2[i10];
                                        } else if (c10 == 'L') {
                                            i10 = i14;
                                            int i21 = i10 + 1;
                                            path.lineTo(fArr2[i10], fArr2[i21]);
                                            f26 = fArr2[i10];
                                            f27 = fArr2[i21];
                                        } else if (c10 == 'M') {
                                            i10 = i14;
                                            f26 = fArr2[i10];
                                            f27 = fArr2[i10 + 1];
                                            if (i10 > 0) {
                                                path.lineTo(f26, f27);
                                            } else {
                                                path.moveTo(f26, f27);
                                                f25 = f27;
                                                f24 = f26;
                                            }
                                        } else if (c10 == 'S') {
                                            i10 = i14;
                                            float f35 = f27;
                                            float f36 = f26;
                                            if (c8 == 'c' || c8 == 's' || c8 == 'C' || c8 == 'S') {
                                                f12 = (f35 * 2.0f) - f21;
                                                f13 = (f36 * 2.0f) - f20;
                                            } else {
                                                f13 = f36;
                                                f12 = f35;
                                            }
                                            int i22 = i10 + 1;
                                            int i23 = i10 + 2;
                                            int i24 = i10 + 3;
                                            path.cubicTo(f13, f12, fArr2[i10], fArr2[i22], fArr2[i23], fArr2[i24]);
                                            float f37 = fArr2[i10];
                                            float f38 = fArr2[i22];
                                            f26 = fArr2[i23];
                                            f27 = fArr2[i24];
                                            f21 = f38;
                                            f20 = f37;
                                        } else if (c10 == 'T') {
                                            i10 = i14;
                                            float f39 = f27;
                                            float f40 = f26;
                                            if (c8 == 'q' || c8 == 't' || c8 == 'Q' || c8 == 'T') {
                                                f4 = (f40 * 2.0f) - f20;
                                                f5 = (f39 * 2.0f) - f21;
                                            } else {
                                                f4 = f40;
                                                f5 = f39;
                                            }
                                            int i25 = i10 + 1;
                                            path.quadTo(f4, f5, fArr2[i10], fArr2[i25]);
                                            f10 = fArr2[i10];
                                            f11 = fArr2[i25];
                                        } else if (c10 == 'l') {
                                            i10 = i14;
                                            int i26 = i10 + 1;
                                            path.rLineTo(fArr2[i10], fArr2[i26]);
                                            f26 += fArr2[i10];
                                            f27 += fArr2[i26];
                                        } else if (c10 == 'm') {
                                            i10 = i14;
                                            float f41 = fArr2[i10];
                                            f26 += f41;
                                            float f42 = fArr2[i10 + 1];
                                            f27 += f42;
                                            if (i10 > 0) {
                                                path.rLineTo(f41, f42);
                                            } else {
                                                path.rMoveTo(f41, f42);
                                                f25 = f27;
                                                f24 = f26;
                                            }
                                        } else if (c10 == 's') {
                                            if (c8 == 'c' || c8 == 's' || c8 == 'C' || c8 == 'S') {
                                                float f43 = f26 - f20;
                                                f14 = f27 - f21;
                                                f15 = f43;
                                            } else {
                                                f14 = 0.0f;
                                                f15 = 0.0f;
                                            }
                                            int i27 = i14 + 1;
                                            int i28 = i14 + 2;
                                            int i29 = i14 + 3;
                                            i10 = i14;
                                            float f44 = f27;
                                            float f45 = f26;
                                            path.rCubicTo(f15, f14, fArr2[i14], fArr2[i27], fArr2[i28], fArr2[i29]);
                                            f4 = f45 + fArr2[i10];
                                            f5 = f44 + fArr2[i27];
                                            f10 = f45 + fArr2[i28];
                                            f11 = fArr2[i29] + f44;
                                        } else if (c10 != 't') {
                                            i10 = i14;
                                        } else {
                                            if (c8 == 'q' || c8 == 't' || c8 == 'Q' || c8 == 'T') {
                                                f16 = f26 - f20;
                                                f17 = f27 - f21;
                                            } else {
                                                f17 = 0.0f;
                                                f16 = 0.0f;
                                            }
                                            int i30 = i14 + 1;
                                            path.rQuadTo(f16, f17, fArr2[i14], fArr2[i30]);
                                            float f46 = f16 + f26;
                                            float f47 = f17 + f27;
                                            f26 += fArr2[i14];
                                            f27 += fArr2[i30];
                                            f21 = f47;
                                            i10 = i14;
                                            c5 = c10;
                                            i11 = i13;
                                            i12 = length;
                                            f20 = f46;
                                        }
                                        fVar = fVar2;
                                    } else {
                                        i10 = i14;
                                        path.rLineTo(fArr2[i10], 0.0f);
                                        f26 += fArr2[i10];
                                    }
                                    c5 = c10;
                                    i11 = i13;
                                    i12 = length;
                                    fVar = fVar2;
                                } else {
                                    i10 = i14;
                                    float f48 = f27;
                                    float f49 = f26;
                                    int i31 = i10 + 2;
                                    int i32 = i10 + 3;
                                    int i33 = i10 + 4;
                                    int i34 = i10 + 5;
                                    path.rCubicTo(fArr2[i10], fArr2[i10 + 1], fArr2[i31], fArr2[i32], fArr2[i33], fArr2[i34]);
                                    f4 = f49 + fArr2[i31];
                                    f5 = f48 + fArr2[i32];
                                    f10 = f49 + fArr2[i33];
                                    f11 = fArr2[i34] + f48;
                                }
                                f21 = f5;
                                f20 = f4;
                                c5 = c10;
                                i11 = i13;
                                i12 = length;
                                f26 = f10;
                                f27 = f11;
                                fVar = fVar2;
                            } else {
                                i10 = i14;
                                float f50 = f27;
                                float f51 = f26;
                                int i35 = i10 + 5;
                                int i36 = i10 + 6;
                                c5 = c10;
                                i12 = length;
                                fVar = fVar2;
                                i11 = i13;
                                a(path, f51, f50, fArr2[i35] + f51, fArr2[i36] + f50, fArr2[i10], fArr2[i10 + 1], fArr2[i10 + 2], fArr2[i10 + 3] != 0.0f, fArr2[i10 + 4] != 0.0f);
                                f26 = f51 + fArr2[i35];
                                f27 = f50 + fArr2[i36];
                            }
                            i14 = i10 + i6;
                            fVar2 = fVar;
                            length = i12;
                            c8 = c5;
                            c10 = c8;
                            i13 = i11;
                        } else {
                            i10 = i14;
                            c5 = c10;
                            i11 = i13;
                            i12 = length;
                            fVar = fVar2;
                            int i37 = i10 + 2;
                            int i38 = i10 + 3;
                            int i39 = i10 + 4;
                            int i40 = i10 + 5;
                            path.cubicTo(fArr2[i10], fArr2[i10 + 1], fArr2[i37], fArr2[i38], fArr2[i39], fArr2[i40]);
                            f26 = fArr2[i39];
                            f27 = fArr2[i40];
                            f = fArr2[i37];
                            f3 = fArr2[i38];
                        }
                        f20 = f;
                        f21 = f3;
                        i14 = i10 + i6;
                        fVar2 = fVar;
                        length = i12;
                        c8 = c5;
                        c10 = c8;
                        i13 = i11;
                    } else {
                        i10 = i14;
                        c5 = c10;
                        i11 = i13;
                        i12 = length;
                        fVar = fVar2;
                        int i41 = i10 + 5;
                        int i42 = i10 + 6;
                        a(path, f26, f27, fArr2[i41], fArr2[i42], fArr2[i10], fArr2[i10 + 1], fArr2[i10 + 2], fArr2[i10 + 3] != 0.0f, fArr2[i10 + 4] != 0.0f);
                        f26 = fArr2[i41];
                        f27 = fArr2[i42];
                    }
                    f21 = f27;
                    f20 = f26;
                    i14 = i10 + i6;
                    fVar2 = fVar;
                    length = i12;
                    c8 = c5;
                    c10 = c8;
                    i13 = i11;
                }
            }
            fArr[0] = f26;
            fArr[1] = f27;
            fArr[2] = f20;
            fArr[3] = f21;
            fArr[4] = f24;
            fArr[5] = f25;
            c8 = fVar2.f6758a;
            i13++;
            fVarArr2 = fVarArr;
            length = length;
        }
    }

    public f(f fVar) {
        this.f6758a = fVar.f6758a;
        float[] fArr = fVar.f6759b;
        this.f6759b = com.bumptech.glide.d.e(fArr, fArr.length);
    }
}
