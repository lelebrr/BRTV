package z3;

import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class i extends o {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f11565a;

    public i(ArrayList arrayList) {
        this.f11565a = arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        return this.f11565a.equals(((i) ((o) obj)).f11565a);
    }

    public final int hashCode() {
        return this.f11565a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "BatchedLogRequest{logRequests=" + this.f11565a + "}";
    }
}
