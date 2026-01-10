package z3;

import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class k extends r {

    /* renamed from: a, reason: collision with root package name */
    public final long f11567a;

    /* renamed from: b, reason: collision with root package name */
    public final Integer f11568b;

    /* renamed from: c, reason: collision with root package name */
    public final long f11569c;
    public final byte[] d;

    /* renamed from: e, reason: collision with root package name */
    public final String f11570e;
    public final long f;

    /* renamed from: g, reason: collision with root package name */
    public final n f11571g;

    public k(long j10, Integer num, long j11, byte[] bArr, String str, long j12, n nVar) {
        this.f11567a = j10;
        this.f11568b = num;
        this.f11569c = j11;
        this.d = bArr;
        this.f11570e = str;
        this.f = j12;
        this.f11571g = nVar;
    }

    public final boolean equals(Object obj) {
        Integer num;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        k kVar = (k) rVar;
        if (this.f11567a == kVar.f11567a && ((num = this.f11568b) != null ? num.equals(kVar.f11568b) : kVar.f11568b == null)) {
            if (this.f11569c == kVar.f11569c) {
                if (Arrays.equals(this.d, rVar instanceof k ? ((k) rVar).d : kVar.d)) {
                    String str = kVar.f11570e;
                    String str2 = this.f11570e;
                    if (str2 != null ? str2.equals(str) : str == null) {
                        if (this.f == kVar.f) {
                            n nVar = kVar.f11571g;
                            n nVar2 = this.f11571g;
                            if (nVar2 == null) {
                                if (nVar == null) {
                                    return true;
                                }
                            } else if (nVar2.equals(nVar)) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.f11567a;
        int i6 = (((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f11568b;
        int iHashCode = (i6 ^ (num == null ? 0 : num.hashCode())) * 1000003;
        long j11 = this.f11569c;
        int iHashCode2 = (((iHashCode ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.d)) * 1000003;
        String str = this.f11570e;
        int iHashCode3 = (iHashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j12 = this.f;
        int i10 = (iHashCode3 ^ ((int) (j12 ^ (j12 >>> 32)))) * 1000003;
        n nVar = this.f11571g;
        return i10 ^ (nVar != null ? nVar.hashCode() : 0);
    }

    public final String toString() {
        return "LogEvent{eventTimeMs=" + this.f11567a + ", eventCode=" + this.f11568b + ", eventUptimeMs=" + this.f11569c + ", sourceExtension=" + Arrays.toString(this.d) + ", sourceExtensionJsonProto3=" + this.f11570e + ", timezoneOffsetSeconds=" + this.f + ", networkConnectionInfo=" + this.f11571g + "}";
    }
}
