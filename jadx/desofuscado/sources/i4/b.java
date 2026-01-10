package i4;

import a4.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final long f7344a;

    /* renamed from: b, reason: collision with root package name */
    public final j f7345b;

    /* renamed from: c, reason: collision with root package name */
    public final a4.i f7346c;

    public b(long j10, j jVar, a4.i iVar) {
        this.f7344a = j10;
        this.f7345b = jVar;
        this.f7346c = iVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f7344a == bVar.f7344a && this.f7345b.equals(bVar.f7345b) && this.f7346c.equals(bVar.f7346c);
    }

    public final int hashCode() {
        long j10 = this.f7344a;
        return this.f7346c.hashCode() ^ ((((((int) ((j10 >>> 32) ^ j10)) ^ 1000003) * 1000003) ^ this.f7345b.hashCode()) * 1000003);
    }

    public final String toString() {
        return "PersistedEvent{id=" + this.f7344a + ", transportContext=" + this.f7345b + ", event=" + this.f7346c + "}";
    }
}
