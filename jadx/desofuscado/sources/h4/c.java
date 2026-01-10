package h4;

import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final long f7239a;

    /* renamed from: b, reason: collision with root package name */
    public final long f7240b;

    /* renamed from: c, reason: collision with root package name */
    public final Set f7241c;

    public c(long j10, long j11, Set set) {
        this.f7239a = j10;
        this.f7240b = j11;
        this.f7241c = set;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f7239a == cVar.f7239a && this.f7240b == cVar.f7240b && this.f7241c.equals(cVar.f7241c);
    }

    public final int hashCode() {
        long j10 = this.f7239a;
        int i6 = (((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003;
        long j11 = this.f7240b;
        return this.f7241c.hashCode() ^ ((i6 ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003);
    }

    public final String toString() {
        return "ConfigValue{delta=" + this.f7239a + ", maxAllowedDelay=" + this.f7240b + ", flags=" + this.f7241c + "}";
    }
}
