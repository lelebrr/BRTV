package e1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final long f6418a;

    /* renamed from: b, reason: collision with root package name */
    public final long f6419b;

    public e(long j10, long j11) {
        if (j11 == 0) {
            this.f6418a = 0L;
            this.f6419b = 1L;
        } else {
            this.f6418a = j10;
            this.f6419b = j11;
        }
    }

    public final String toString() {
        return this.f6418a + "/" + this.f6419b;
    }
}
