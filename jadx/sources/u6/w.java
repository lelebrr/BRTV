package u6;

import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    public float f10435a;

    /* renamed from: b, reason: collision with root package name */
    public float f10436b;

    /* renamed from: c, reason: collision with root package name */
    public float f10437c;
    public float d;

    /* renamed from: e, reason: collision with root package name */
    public float f10438e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f10439g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f10440h = new ArrayList();

    public w() {
        e(0.0f, 0.0f, 270.0f, 0.0f);
    }

    public final void a(float f, float f3, float f4, float f5, float f10, float f11) {
        s sVar = new s(f, f3, f4, f5);
        sVar.f = f10;
        sVar.f10430g = f11;
        this.f10439g.add(sVar);
        q qVar = new q(sVar);
        float f12 = f10 + f11;
        boolean z7 = f11 < 0.0f;
        if (z7) {
            f10 = (f10 + 180.0f) % 360.0f;
        }
        float f13 = z7 ? (180.0f + f12) % 360.0f : f12;
        b(f10);
        this.f10440h.add(qVar);
        this.f10438e = f13;
        double d = f12;
        this.f10437c = (((f4 - f) / 2.0f) * ((float) Math.cos(Math.toRadians(d)))) + ((f + f4) * 0.5f);
        this.d = (((f5 - f3) / 2.0f) * ((float) Math.sin(Math.toRadians(d)))) + ((f3 + f5) * 0.5f);
    }

    public final void b(float f) {
        float f3 = this.f10438e;
        if (f3 == f) {
            return;
        }
        float f4 = ((f - f3) + 360.0f) % 360.0f;
        if (f4 > 180.0f) {
            return;
        }
        float f5 = this.f10437c;
        float f10 = this.d;
        s sVar = new s(f5, f10, f5, f10);
        sVar.f = this.f10438e;
        sVar.f10430g = f4;
        this.f10440h.add(new q(sVar));
        this.f10438e = f;
    }

    public final void c(Matrix matrix, Path path) {
        ArrayList arrayList = this.f10439g;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            ((u) arrayList.get(i6)).a(matrix, path);
        }
    }

    public final void d(float f, float f3) {
        t tVar = new t();
        tVar.f10431b = f;
        tVar.f10432c = f3;
        this.f10439g.add(tVar);
        r rVar = new r(tVar, this.f10437c, this.d);
        float fB = rVar.b() + 270.0f;
        float fB2 = rVar.b() + 270.0f;
        b(fB);
        this.f10440h.add(rVar);
        this.f10438e = fB2;
        this.f10437c = f;
        this.d = f3;
    }

    public final void e(float f, float f3, float f4, float f5) {
        this.f10435a = f;
        this.f10436b = f3;
        this.f10437c = f;
        this.d = f3;
        this.f10438e = f4;
        this.f = (f4 + f5) % 360.0f;
        this.f10439g.clear();
        this.f10440h.clear();
    }
}
