package b7;

import java.io.Serializable;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o implements n, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final List f3312a;

    public o(List list) {
        this.f3312a = list;
    }

    @Override // b7.n
    public final boolean apply(Object obj) {
        int i6 = 0;
        while (true) {
            List list = this.f3312a;
            if (i6 >= list.size()) {
                return true;
            }
            if (!((n) list.get(i6)).apply(obj)) {
                return false;
            }
            i6++;
        }
    }

    @Override // b7.n
    public final boolean equals(Object obj) {
        if (obj instanceof o) {
            return this.f3312a.equals(((o) obj).f3312a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f3312a.hashCode() + 306654252;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Predicates.and(");
        boolean z7 = true;
        for (Object obj : this.f3312a) {
            if (!z7) {
                sb.append(',');
            }
            sb.append(obj);
            z7 = false;
        }
        sb.append(')');
        return sb.toString();
    }
}
