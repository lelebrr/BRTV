package b7;

import com.google.common.util.concurrent.Service;
import java.io.Serializable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s implements n, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Service.State f3317a;

    public s(Service.State state) {
        this.f3317a = state;
    }

    @Override // b7.n
    public final boolean apply(Object obj) {
        return this.f3317a.equals(obj);
    }

    @Override // b7.n
    public final boolean equals(Object obj) {
        if (obj instanceof s) {
            return this.f3317a.equals(((s) obj).f3317a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f3317a.hashCode();
    }

    public final String toString() {
        return "Predicates.equalTo(" + this.f3317a + ")";
    }
}
