package t;

import android.view.View;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class i {

    /* renamed from: a, reason: collision with root package name */
    public f f9935a;

    /* renamed from: b, reason: collision with root package name */
    public String f9936b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f9937c = new ArrayList();

    public final float a(float f) {
        f fVar = this.f9935a;
        r4.b bVar = fVar.f;
        if (bVar != null) {
            bVar.r(f, fVar.f9929g);
        } else {
            double[] dArr = fVar.f9929g;
            dArr[0] = fVar.f9928e[0];
            dArr[1] = fVar.f9926b[0];
        }
        return (float) ((fVar.f9925a.i(f) * fVar.f9929g[1]) + fVar.f9929g[0]);
    }

    public final float b(float f) {
        f fVar = this.f9935a;
        r4.b bVar = fVar.f;
        if (bVar != null) {
            double d = f;
            bVar.v(d, fVar.f9930h);
            fVar.f.r(d, fVar.f9929g);
        } else {
            double[] dArr = fVar.f9930h;
            dArr[0] = 0.0d;
            dArr[1] = 0.0d;
        }
        double d10 = f;
        s.g gVar = fVar.f9925a;
        double dI = gVar.i(d10);
        gVar.getClass();
        double d11 = 0.0d;
        double d12 = d10 <= 0.0d ? 1.0E-5d : d10 >= 1.0d ? 0.999999d : d10;
        int iBinarySearch = Arrays.binarySearch((double[]) gVar.f9689c, d12);
        if (iBinarySearch <= 0 && iBinarySearch != 0) {
            int i6 = -iBinarySearch;
            int i10 = i6 - 1;
            float[] fArr = (float[]) gVar.f9688b;
            float f3 = fArr[i10];
            int i11 = i6 - 2;
            float f4 = fArr[i11];
            double[] dArr2 = (double[]) gVar.f9689c;
            double d13 = dArr2[i10];
            double d14 = dArr2[i11];
            double d15 = (f3 - f4) / (d13 - d14);
            d11 = (f4 - (d15 * d14)) + (d12 * d15);
        }
        double dCos = Math.cos(gVar.h(d10) * 6.283185307179586d) * d11 * 6.283185307179586d;
        double[] dArr3 = fVar.f9930h;
        return (float) ((dCos * fVar.f9929g[1]) + (dI * dArr3[1]) + dArr3[0]);
    }

    public abstract void c(View view, float f);

    public final String toString() {
        String str = this.f9936b;
        new DecimalFormat("##.##");
        Iterator it = this.f9937c.iterator();
        if (it.hasNext()) {
            throw a.e.l(it);
        }
        return str;
    }
}
