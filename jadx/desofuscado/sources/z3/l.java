package z3;

import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class l extends s {

    /* renamed from: a, reason: collision with root package name */
    public final long f11572a;

    /* renamed from: b, reason: collision with root package name */
    public final long f11573b;

    /* renamed from: c, reason: collision with root package name */
    public final j f11574c;
    public final Integer d;

    /* renamed from: e, reason: collision with root package name */
    public final String f11575e;
    public final ArrayList f;

    public l(long j10, long j11, j jVar, Integer num, String str, ArrayList arrayList) {
        w wVar = w.f11585a;
        this.f11572a = j10;
        this.f11573b = j11;
        this.f11574c = jVar;
        this.d = num;
        this.f11575e = str;
        this.f = arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        l lVar = (l) ((s) obj);
        if (this.f11572a == lVar.f11572a) {
            if (this.f11573b == lVar.f11573b) {
                if (this.f11574c.equals(lVar.f11574c)) {
                    Integer num = lVar.d;
                    Integer num2 = this.d;
                    if (num2 != null ? num2.equals(num) : num == null) {
                        String str = lVar.f11575e;
                        String str2 = this.f11575e;
                        if (str2 != null ? str2.equals(str) : str == null) {
                            if (this.f.equals(lVar.f)) {
                                Object obj2 = w.f11585a;
                                if (obj2.equals(obj2)) {
                                    return true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.f11572a;
        long j11 = this.f11573b;
        int iHashCode = (((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003) ^ this.f11574c.hashCode()) * 1000003;
        Integer num = this.d;
        int iHashCode2 = (iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f11575e;
        return w.f11585a.hashCode() ^ ((((iHashCode2 ^ (str != null ? str.hashCode() : 0)) * 1000003) ^ this.f.hashCode()) * 1000003);
    }

    public final String toString() {
        return "LogRequest{requestTimeMs=" + this.f11572a + ", requestUptimeMs=" + this.f11573b + ", clientInfo=" + this.f11574c + ", logSource=" + this.d + ", logSourceName=" + this.f11575e + ", logEvents=" + this.f + ", qosTier=" + w.f11585a + "}";
    }
}
