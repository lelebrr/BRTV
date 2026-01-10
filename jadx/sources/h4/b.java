package h4;

import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final k4.a f7237a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f7238b;

    public b(k4.a aVar, HashMap map) {
        this.f7237a = aVar;
        this.f7238b = map;
    }

    public final long a(x3.c cVar, long j10, int i6) {
        long jC = j10 - this.f7237a.c();
        c cVar2 = (c) this.f7238b.get(cVar);
        long j11 = cVar2.f7239a;
        return Math.min(Math.max((long) (Math.pow(3.0d, i6 - 1) * j11 * Math.max(1.0d, Math.log(10000.0d) / Math.log((j11 > 1 ? j11 : 2L) * r12))), jC), cVar2.f7240b);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f7237a.equals(bVar.f7237a) && this.f7238b.equals(bVar.f7238b);
    }

    public final int hashCode() {
        return ((this.f7237a.hashCode() ^ 1000003) * 1000003) ^ this.f7238b.hashCode();
    }

    public final String toString() {
        return "SchedulerConfig{clock=" + this.f7237a + ", values=" + this.f7238b + "}";
    }
}
