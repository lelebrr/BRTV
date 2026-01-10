package u6;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class f extends e {

    /* renamed from: c, reason: collision with root package name */
    public final float f10349c;

    public f(float f) {
        super(0);
        this.f10349c = f - 0.001f;
    }

    @Override // u6.e
    public final void g(float f, float f3, float f4, w wVar) {
        double d = this.f10349c;
        float fSqrt = (float) ((Math.sqrt(2.0d) * d) / 2.0d);
        float fSqrt2 = (float) Math.sqrt(Math.pow(d, 2.0d) - Math.pow(fSqrt, 2.0d));
        wVar.e(f3 - fSqrt, ((float) (-((Math.sqrt(2.0d) * d) - d))) + fSqrt2, 270.0f, 0.0f);
        wVar.d(f3, (float) (-((Math.sqrt(2.0d) * d) - d)));
        wVar.d(f3 + fSqrt, ((float) (-((Math.sqrt(2.0d) * d) - d))) + fSqrt2);
    }
}
