package com.google.android.material.bottomappbar;

import ea.q;
import u6.w;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i extends u6.e implements Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public float f4677c;
    public float d;

    /* renamed from: e, reason: collision with root package name */
    public float f4678e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f4679g;

    /* renamed from: h, reason: collision with root package name */
    public float f4680h;

    @Override // u6.e
    public final void g(float f, float f3, float f4, w wVar) {
        float f5;
        float f10;
        float f11 = this.f4678e;
        if (f11 == 0.0f) {
            wVar.d(f, 0.0f);
            return;
        }
        float f12 = ((this.d * 2.0f) + f11) / 2.0f;
        float f13 = f4 * this.f4677c;
        float f14 = f3 + this.f4679g;
        float fD = q.d(1.0f, f4, f12, this.f * f4);
        if (fD / f12 >= 1.0f) {
            wVar.d(f, 0.0f);
            return;
        }
        float f15 = this.f4680h;
        float f16 = f15 * f4;
        boolean z7 = f15 == -1.0f || Math.abs((f15 * 2.0f) - f11) < 0.1f;
        if (z7) {
            f5 = fD;
            f10 = 0.0f;
        } else {
            f10 = 1.75f;
            f5 = 0.0f;
        }
        float f17 = f12 + f13;
        float f18 = f5 + f13;
        float fSqrt = (float) Math.sqrt((f17 * f17) - (f18 * f18));
        float f19 = f14 - fSqrt;
        float f20 = f14 + fSqrt;
        float degrees = (float) Math.toDegrees(Math.atan(fSqrt / f18));
        float f21 = (90.0f - degrees) + f10;
        wVar.d(f19, 0.0f);
        float f22 = f13 * 2.0f;
        wVar.a(f19 - f13, 0.0f, f19 + f13, f22, 270.0f, degrees);
        if (z7) {
            wVar.a(f14 - f12, (-f12) - f5, f14 + f12, f12 - f5, 180.0f - f21, (f21 * 2.0f) - 180.0f);
        } else {
            float f23 = this.d;
            float f24 = f16 * 2.0f;
            float f25 = f14 - f12;
            wVar.a(f25, -(f16 + f23), f25 + f23 + f24, f23 + f16, 180.0f - f21, ((f21 * 2.0f) - 180.0f) / 2.0f);
            float f26 = f14 + f12;
            float f27 = this.d;
            wVar.d(f26 - ((f27 / 2.0f) + f16), f27 + f16);
            float f28 = this.d;
            wVar.a(f26 - (f24 + f28), -(f16 + f28), f26, f28 + f16, 90.0f, f21 - 90.0f);
        }
        wVar.a(f20 - f13, 0.0f, f20 + f13, f22, 270.0f - degrees, degrees);
        wVar.d(f, 0.0f);
    }

    public final void k(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
        }
        this.f = f;
    }
}
