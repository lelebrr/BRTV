package q1;

import java.util.List;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r1 {

    /* renamed from: a, reason: collision with root package name */
    public final List f9126a;

    public r1(j7.c cVar) {
        this.f9126a = (List) cVar.f7444b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r1)) {
            return false;
        }
        return this.f9126a.equals(((r1) obj).f9126a);
    }

    public final int hashCode() {
        return Objects.hash(this.f9126a, Boolean.TRUE, null);
    }
}
