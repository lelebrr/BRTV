package z1;

import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: p, reason: collision with root package name */
    public static final Matrix f11478p = new Matrix();

    /* renamed from: a, reason: collision with root package name */
    public final Path f11479a;

    /* renamed from: b, reason: collision with root package name */
    public final Path f11480b;

    /* renamed from: c, reason: collision with root package name */
    public final Matrix f11481c;
    public Paint d;

    /* renamed from: e, reason: collision with root package name */
    public Paint f11482e;
    public PathMeasure f;

    /* renamed from: g, reason: collision with root package name */
    public final h f11483g;

    /* renamed from: h, reason: collision with root package name */
    public float f11484h;

    /* renamed from: i, reason: collision with root package name */
    public float f11485i;

    /* renamed from: j, reason: collision with root package name */
    public float f11486j;

    /* renamed from: k, reason: collision with root package name */
    public float f11487k;

    /* renamed from: l, reason: collision with root package name */
    public int f11488l;

    /* renamed from: m, reason: collision with root package name */
    public String f11489m;

    /* renamed from: n, reason: collision with root package name */
    public Boolean f11490n;

    /* renamed from: o, reason: collision with root package name */
    public final p.e f11491o;

    public k() {
        this.f11481c = new Matrix();
        this.f11484h = 0.0f;
        this.f11485i = 0.0f;
        this.f11486j = 0.0f;
        this.f11487k = 0.0f;
        this.f11488l = 255;
        this.f11489m = null;
        this.f11490n = null;
        this.f11491o = new p.e(0);
        this.f11483g = new h();
        this.f11479a = new Path();
        this.f11480b = new Path();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01eb  */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v18 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(z1.h r19, android.graphics.Matrix r20, android.graphics.Canvas r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 560
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: z1.k.a(z1.h, android.graphics.Matrix, android.graphics.Canvas, int, int):void");
    }

    public float getAlpha() {
        return getRootAlpha() / 255.0f;
    }

    public int getRootAlpha() {
        return this.f11488l;
    }

    public void setAlpha(float f) {
        setRootAlpha((int) (f * 255.0f));
    }

    public void setRootAlpha(int i6) {
        this.f11488l = i6;
    }

    public k(k kVar) {
        this.f11481c = new Matrix();
        this.f11484h = 0.0f;
        this.f11485i = 0.0f;
        this.f11486j = 0.0f;
        this.f11487k = 0.0f;
        this.f11488l = 255;
        this.f11489m = null;
        this.f11490n = null;
        p.e eVar = new p.e(0);
        this.f11491o = eVar;
        this.f11483g = new h(kVar.f11483g, eVar);
        this.f11479a = new Path(kVar.f11479a);
        this.f11480b = new Path(kVar.f11480b);
        this.f11484h = kVar.f11484h;
        this.f11485i = kVar.f11485i;
        this.f11486j = kVar.f11486j;
        this.f11487k = kVar.f11487k;
        this.f11488l = kVar.f11488l;
        this.f11489m = kVar.f11489m;
        String str = kVar.f11489m;
        if (str != null) {
            eVar.put(str, this);
        }
        this.f11490n = kVar.f11490n;
    }
}
