package u4;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final int f10330a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10331b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f10332c;

    public a(int i6, int i10, boolean z7) {
        this.f10330a = i6;
        this.f10331b = i10;
        this.f10332c = z7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && this.f10330a == ((a) obj).f10330a;
    }

    public final int hashCode() {
        return Integer.valueOf(this.f10330a).hashCode();
    }
}
