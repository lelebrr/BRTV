package androidx.appcompat.app;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t0 {
    public static t0 d;

    /* renamed from: a, reason: collision with root package name */
    public int f366a;

    /* renamed from: b, reason: collision with root package name */
    public long f367b;

    /* renamed from: c, reason: collision with root package name */
    public long f368c;

    public void a(double d10, double d11, long j10) {
        double d12 = (0.01720197f * ((j10 - 946728000000L) / 8.64E7f)) + 6.24006f;
        double dSin = (Math.sin(r4 * 3.0f) * 5.236000106378924E-6d) + (Math.sin(2.0f * r4) * 3.4906598739326E-4d) + (Math.sin(d12) * 0.03341960161924362d) + d12 + 1.796593063d + 3.141592653589793d;
        double dSin2 = (Math.sin(2.0d * dSin) * (-0.0069d)) + (Math.sin(d12) * 0.0053d) + Math.round((r3 - 9.0E-4f) - r7) + 9.0E-4f + ((-d11) / 360.0d);
        double dAsin = Math.asin(Math.sin(0.4092797040939331d) * Math.sin(dSin));
        double d13 = 0.01745329238474369d * d10;
        double dSin3 = (Math.sin(-0.10471975803375244d) - (Math.sin(dAsin) * Math.sin(d13))) / (Math.cos(dAsin) * Math.cos(d13));
        if (dSin3 >= 1.0d) {
            this.f366a = 1;
            this.f367b = -1L;
            this.f368c = -1L;
        } else {
            if (dSin3 <= -1.0d) {
                this.f366a = 0;
                this.f367b = -1L;
                this.f368c = -1L;
                return;
            }
            double dAcos = (float) (Math.acos(dSin3) / 6.283185307179586d);
            this.f367b = Math.round((dSin2 + dAcos) * 8.64E7d) + 946728000000L;
            long jRound = Math.round((dSin2 - dAcos) * 8.64E7d) + 946728000000L;
            this.f368c = jRound;
            if (jRound >= j10 || this.f367b <= j10) {
                this.f366a = 1;
            } else {
                this.f366a = 0;
            }
        }
    }
}
