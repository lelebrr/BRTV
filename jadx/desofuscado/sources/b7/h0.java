package b7;

import java.io.Serializable;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h0 implements e0, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final x4.e f3308a;

    public h0(x4.e eVar) {
        this.f3308a = eVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof h0) {
            return b.p(this.f3308a, ((h0) obj).f3308a);
        }
        return false;
    }

    @Override // b7.e0
    public final Object get() {
        return this.f3308a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3308a});
    }

    public final String toString() {
        return "Suppliers.ofInstance(" + this.f3308a + ")";
    }
}
