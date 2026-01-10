package a4;

import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final String f125a;

    /* renamed from: b, reason: collision with root package name */
    public final Integer f126b;

    /* renamed from: c, reason: collision with root package name */
    public final n f127c;
    public final long d;

    /* renamed from: e, reason: collision with root package name */
    public final long f128e;
    public final HashMap f;

    public i(String str, Integer num, n nVar, long j10, long j11, HashMap map) {
        this.f125a = str;
        this.f126b = num;
        this.f127c = nVar;
        this.d = j10;
        this.f128e = j11;
        this.f = map;
    }

    public final String a(String str) {
        String str2 = (String) this.f.get(str);
        return str2 == null ? "" : str2;
    }

    public final int b(String str) {
        String str2 = (String) this.f.get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    public final h c() {
        h hVar = new h();
        String str = this.f125a;
        if (str == null) {
            throw new NullPointerException("Null transportName");
        }
        hVar.f121a = str;
        hVar.f122b = this.f126b;
        n nVar = this.f127c;
        if (nVar == null) {
            throw new NullPointerException("Null encodedPayload");
        }
        hVar.f123c = nVar;
        hVar.d = Long.valueOf(this.d);
        hVar.f124e = Long.valueOf(this.f128e);
        hVar.f = new HashMap(this.f);
        return hVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (this.f125a.equals(iVar.f125a)) {
            Integer num = iVar.f126b;
            Integer num2 = this.f126b;
            if (num2 != null ? num2.equals(num) : num == null) {
                if (this.f127c.equals(iVar.f127c) && this.d == iVar.d && this.f128e == iVar.f128e && this.f.equals(iVar.f)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f125a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f126b;
        int iHashCode2 = (((iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.f127c.hashCode()) * 1000003;
        long j10 = this.d;
        int i6 = (iHashCode2 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.f128e;
        return ((i6 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ this.f.hashCode();
    }

    public final String toString() {
        return "EventInternal{transportName=" + this.f125a + ", code=" + this.f126b + ", encodedPayload=" + this.f127c + ", eventMillis=" + this.d + ", uptimeMillis=" + this.f128e + ", autoMetadata=" + this.f + "}";
    }
}
