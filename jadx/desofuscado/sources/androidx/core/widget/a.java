package androidx.core.widget;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public int f1289a;

    /* renamed from: b, reason: collision with root package name */
    public int f1290b;

    /* renamed from: c, reason: collision with root package name */
    public float f1291c;
    public float d;

    /* renamed from: e, reason: collision with root package name */
    public long f1292e;
    public long f;

    /* renamed from: g, reason: collision with root package name */
    public long f1293g;

    /* renamed from: h, reason: collision with root package name */
    public float f1294h;

    /* renamed from: i, reason: collision with root package name */
    public int f1295i;

    public final float a(long j10) {
        if (j10 < this.f1292e) {
            return 0.0f;
        }
        long j11 = this.f1293g;
        if (j11 < 0 || j10 < j11) {
            return h.b((j10 - r0) / this.f1289a, 0.0f, 1.0f) * 0.5f;
        }
        float f = this.f1294h;
        return (h.b((j10 - j11) / this.f1295i, 0.0f, 1.0f) * f) + (1.0f - f);
    }
}
