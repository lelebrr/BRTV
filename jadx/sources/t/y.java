package t;

import java.util.LinkedHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y implements Comparable {

    /* renamed from: n, reason: collision with root package name */
    public static final String[] f10041n = {"position", "x", "y", "width", "height", "pathRotate"};

    /* renamed from: a, reason: collision with root package name */
    public s.e f10042a;

    /* renamed from: c, reason: collision with root package name */
    public float f10044c;
    public float d;

    /* renamed from: e, reason: collision with root package name */
    public float f10045e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f10046g;

    /* renamed from: h, reason: collision with root package name */
    public float f10047h;

    /* renamed from: b, reason: collision with root package name */
    public int f10043b = 0;

    /* renamed from: i, reason: collision with root package name */
    public float f10048i = Float.NaN;

    /* renamed from: j, reason: collision with root package name */
    public int f10049j = -1;

    /* renamed from: k, reason: collision with root package name */
    public final LinkedHashMap f10050k = new LinkedHashMap();

    /* renamed from: l, reason: collision with root package name */
    public double[] f10051l = new double[18];

    /* renamed from: m, reason: collision with root package name */
    public double[] f10052m = new double[18];

    public static boolean b(float f, float f3) {
        return (Float.isNaN(f) || Float.isNaN(f3)) ? Float.isNaN(f) != Float.isNaN(f3) : Math.abs(f - f3) > 1.0E-6f;
    }

    public static void d(float f, float f3, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f10 = 0.0f;
        float f11 = 0.0f;
        for (int i6 = 0; i6 < iArr.length; i6++) {
            float f12 = (float) dArr[i6];
            double d = dArr2[i6];
            int i10 = iArr[i6];
            if (i10 == 1) {
                f4 = f12;
            } else if (i10 == 2) {
                f10 = f12;
            } else if (i10 == 3) {
                f5 = f12;
            } else if (i10 == 4) {
                f11 = f12;
            }
        }
        float f13 = f4 - ((0.0f * f5) / 2.0f);
        float f14 = f10 - ((0.0f * f11) / 2.0f);
        fArr[0] = (((f5 * 1.0f) + f13) * f) + ((1.0f - f) * f13) + 0.0f;
        fArr[1] = (((f11 * 1.0f) + f14) * f3) + ((1.0f - f3) * f14) + 0.0f;
    }

    public final void a(androidx.constraintlayout.widget.c cVar) {
        this.f10042a = s.e.c(cVar.f1093c.f11190c);
        y.e eVar = cVar.f1093c;
        this.f10049j = eVar.d;
        this.f10048i = eVar.f11192g;
        this.f10043b = eVar.f11191e;
        for (String str : cVar.f.keySet()) {
            y.a aVar = (y.a) cVar.f.get(str);
            if (aVar.f11142b != 5) {
                this.f10050k.put(str, aVar);
            }
        }
    }

    public final void c(int[] iArr, double[] dArr, float[] fArr, int i6) {
        float f = this.f10045e;
        float f3 = this.f;
        float f4 = this.f10046g;
        float f5 = this.f10047h;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f10 = (float) dArr[i10];
            int i11 = iArr[i10];
            if (i11 == 1) {
                f = f10;
            } else if (i11 == 2) {
                f3 = f10;
            } else if (i11 == 3) {
                f4 = f10;
            } else if (i11 == 4) {
                f5 = f10;
            }
        }
        fArr[i6] = (f4 / 2.0f) + f + 0.0f;
        fArr[i6 + 1] = (f5 / 2.0f) + f3 + 0.0f;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Float.compare(this.d, ((y) obj).d);
    }
}
