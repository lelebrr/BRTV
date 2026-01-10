package i4;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {
    public static final a f = new a(10485760, 200, 10000, 604800000, 81920);

    /* renamed from: a, reason: collision with root package name */
    public final long f7340a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7341b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7342c;
    public final long d;

    /* renamed from: e, reason: collision with root package name */
    public final int f7343e;

    public a(long j10, int i6, int i10, long j11, int i11) {
        this.f7340a = j10;
        this.f7341b = i6;
        this.f7342c = i10;
        this.d = j11;
        this.f7343e = i11;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f7340a == aVar.f7340a && this.f7341b == aVar.f7341b && this.f7342c == aVar.f7342c && this.d == aVar.d && this.f7343e == aVar.f7343e;
    }

    public final int hashCode() {
        long j10 = this.f7340a;
        int i6 = (((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f7341b) * 1000003) ^ this.f7342c) * 1000003;
        long j11 = this.d;
        return this.f7343e ^ ((i6 ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003);
    }

    public final String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.f7340a + ", loadBatchSize=" + this.f7341b + ", criticalSectionEnterTimeoutMs=" + this.f7342c + ", eventCleanUpAge=" + this.d + ", maxBlobByteSizePerRow=" + this.f7343e + "}";
    }
}
