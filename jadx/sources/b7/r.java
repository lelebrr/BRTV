package b7;

import java.io.Serializable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r implements n, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Class f3316a;

    public r(Class cls) {
        this.f3316a = cls;
    }

    @Override // b7.n
    public final boolean apply(Object obj) {
        return this.f3316a.isInstance(obj);
    }

    @Override // b7.n
    public final boolean equals(Object obj) {
        return (obj instanceof r) && this.f3316a == ((r) obj).f3316a;
    }

    public final int hashCode() {
        return this.f3316a.hashCode();
    }

    public final String toString() {
        return "Predicates.instanceOf(" + this.f3316a.getName() + ")";
    }
}
