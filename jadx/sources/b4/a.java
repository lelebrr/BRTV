package b4;

import u.h;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final int f3230a;

    /* renamed from: b, reason: collision with root package name */
    public final long f3231b;

    public a(int i6, long j10) {
        if (i6 == 0) {
            throw new NullPointerException("Null status");
        }
        this.f3230a = i6;
        this.f3231b = j10;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        int i6 = aVar.f3230a;
        int i10 = this.f3230a;
        if (i10 != 0) {
            return (i10 == i6) && this.f3231b == aVar.f3231b;
        }
        throw null;
    }

    public final int hashCode() {
        int iA = (h.a(this.f3230a) ^ 1000003) * 1000003;
        long j10 = this.f3231b;
        return iA ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BackendResponse{status=");
        int i6 = this.f3230a;
        sb.append(i6 != 1 ? i6 != 2 ? i6 != 3 ? i6 != 4 ? "null" : "INVALID_PAYLOAD" : "FATAL_ERROR" : "TRANSIENT_ERROR" : "OK");
        sb.append(", nextRequestWaitMillis=");
        return a.e.s(sb, this.f3231b, "}");
    }
}
