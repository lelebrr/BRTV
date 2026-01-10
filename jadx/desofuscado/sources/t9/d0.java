package t9;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class d0 implements k0 {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f10183a;

    public d0(boolean z7) {
        this.f10183a = z7;
    }

    @Override // t9.k0
    public final z0 c() {
        return null;
    }

    @Override // t9.k0
    public final boolean isActive() {
        return this.f10183a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Empty{");
        sb.append(this.f10183a ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
