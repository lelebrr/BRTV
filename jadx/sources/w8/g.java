package w8;

import java.io.Serializable;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class g implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Throwable f10827a;

    public g(Throwable th) {
        j9.i.f(th, "exception");
        this.f10827a = th;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof g) {
            if (j9.i.a(this.f10827a, ((g) obj).f10827a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f10827a.hashCode();
    }

    public final String toString() {
        return "Failure(" + this.f10827a + ')';
    }
}
