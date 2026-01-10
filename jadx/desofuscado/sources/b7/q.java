package b7;

import java.io.Serializable;
import java.util.Collection;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q implements n, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Collection f3315a;

    public q(Collection collection) {
        collection.getClass();
        this.f3315a = collection;
    }

    @Override // b7.n
    public final boolean apply(Object obj) {
        try {
            return this.f3315a.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // b7.n
    public final boolean equals(Object obj) {
        if (obj instanceof q) {
            return this.f3315a.equals(((q) obj).f3315a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f3315a.hashCode();
    }

    public final String toString() {
        return "Predicates.in(" + this.f3315a + ")";
    }
}
