package o9;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends a {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f8639c = 0;

    static {
        new c();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof c) {
            char c5 = this.f8634a;
            if (j9.i.h(1, c5) > 0 && j9.i.h(1, ((c) obj).f8634a) > 0) {
                return true;
            }
            c cVar = (c) obj;
            cVar.getClass();
            if (c5 == cVar.f8634a) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        char c5 = this.f8634a;
        if (j9.i.h(1, c5) > 0) {
            return -1;
        }
        return 31 + c5;
    }

    public final String toString() {
        return "\u0001.." + this.f8634a;
    }
}
