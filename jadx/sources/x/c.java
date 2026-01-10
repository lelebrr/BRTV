package x;

import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.widget.ImageView;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f10842a = new float[20];

    /* renamed from: b, reason: collision with root package name */
    public final ColorMatrix f10843b = new ColorMatrix();

    /* renamed from: c, reason: collision with root package name */
    public final ColorMatrix f10844c = new ColorMatrix();
    public float d = 1.0f;

    /* renamed from: e, reason: collision with root package name */
    public float f10845e = 1.0f;
    public float f = 1.0f;

    /* renamed from: g, reason: collision with root package name */
    public float f10846g = 1.0f;

    public final void a(ImageView imageView) {
        boolean z7;
        ColorMatrix colorMatrix;
        float fLog;
        float fPow;
        ColorMatrix colorMatrix2;
        float fLog2;
        ColorMatrix colorMatrix3 = this.f10843b;
        colorMatrix3.reset();
        float f = this.f10845e;
        float[] fArr = this.f10842a;
        boolean z10 = true;
        float f3 = 1.0f;
        if (f != 1.0f) {
            float f4 = 1.0f - f;
            float f5 = 0.2999f * f4;
            float f10 = 0.587f * f4;
            float f11 = f4 * 0.114f;
            fArr[0] = f5 + f;
            fArr[1] = f10;
            fArr[2] = f11;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = f5;
            fArr[6] = f10 + f;
            fArr[7] = f11;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = f5;
            fArr[11] = f10;
            fArr[12] = f11 + f;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
            colorMatrix3.set(fArr);
            z7 = true;
        } else {
            z7 = false;
        }
        float f12 = this.f;
        ColorMatrix colorMatrix4 = this.f10844c;
        if (f12 != 1.0f) {
            colorMatrix4.setScale(f12, f12, f12, 1.0f);
            colorMatrix3.postConcat(colorMatrix4);
            z7 = true;
        }
        float f13 = this.f10846g;
        if (f13 != 1.0f) {
            if (f13 <= 0.0f) {
                f13 = 0.01f;
            }
            float f14 = (5000.0f / f13) / 100.0f;
            if (f14 > 66.0f) {
                double d = f14 - 60.0f;
                fPow = ((float) Math.pow(d, -0.13320475816726685d)) * 329.69873f;
                fLog = ((float) Math.pow(d, 0.07551484555006027d)) * 288.12216f;
            } else {
                fLog = (((float) Math.log(f14)) * 99.4708f) - 161.11957f;
                fPow = 255.0f;
            }
            if (f14 >= 66.0f) {
                colorMatrix2 = colorMatrix4;
                fLog2 = 255.0f;
            } else if (f14 > 19.0f) {
                colorMatrix2 = colorMatrix4;
                fLog2 = (((float) Math.log(f14 - 10.0f)) * 138.51773f) - 305.0448f;
            } else {
                colorMatrix2 = colorMatrix4;
                fLog2 = 0.0f;
            }
            float fMin = Math.min(255.0f, Math.max(fPow, 0.0f));
            float fMin2 = Math.min(255.0f, Math.max(fLog, 0.0f));
            float fMin3 = Math.min(255.0f, Math.max(fLog2, 0.0f));
            float fLog3 = (((float) Math.log(50.0f)) * 99.4708f) - 161.11957f;
            float fLog4 = (((float) Math.log(40.0f)) * 138.51773f) - 305.0448f;
            float fMin4 = Math.min(255.0f, Math.max(255.0f, 0.0f));
            float fMin5 = Math.min(255.0f, Math.max(fLog3, 0.0f));
            float fMin6 = fMin3 / Math.min(255.0f, Math.max(fLog4, 0.0f));
            fArr[0] = fMin / fMin4;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = 0.0f;
            fArr[6] = fMin2 / fMin5;
            fArr[7] = 0.0f;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = 0.0f;
            fArr[11] = 0.0f;
            fArr[12] = fMin6;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            f3 = 1.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
            colorMatrix = colorMatrix2;
            colorMatrix.set(fArr);
            colorMatrix3.postConcat(colorMatrix);
            z7 = true;
        } else {
            colorMatrix = colorMatrix4;
        }
        float f15 = this.d;
        if (f15 != f3) {
            fArr[0] = f15;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = 0.0f;
            fArr[6] = f15;
            fArr[7] = 0.0f;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = 0.0f;
            fArr[11] = 0.0f;
            fArr[12] = f15;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
            colorMatrix.set(fArr);
            colorMatrix3.postConcat(colorMatrix);
        } else {
            z10 = z7;
        }
        if (z10) {
            imageView.setColorFilter(new ColorMatrixColorFilter(colorMatrix3));
        } else {
            imageView.clearColorFilter();
        }
    }
}
