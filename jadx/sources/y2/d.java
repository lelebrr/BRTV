package y2;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class d implements h {

    /* renamed from: a, reason: collision with root package name */
    public final e f11350a;

    /* renamed from: b, reason: collision with root package name */
    public int f11351b;

    /* renamed from: c, reason: collision with root package name */
    public Class f11352c;

    public d(e eVar) {
        this.f11350a = eVar;
    }

    @Override // y2.h
    public final void a() {
        this.f11350a.c(this);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f11351b == dVar.f11351b && this.f11352c == dVar.f11352c;
    }

    public final int hashCode() {
        int i6 = this.f11351b * 31;
        Class cls = this.f11352c;
        return i6 + (cls != null ? cls.hashCode() : 0);
    }

    public final String toString() {
        return "Key{size=" + this.f11351b + "array=" + this.f11352c + '}';
    }
}
