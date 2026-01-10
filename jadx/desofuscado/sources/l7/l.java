package l7;

import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l extends m implements Iterable {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f8073a = new ArrayList();

    public final boolean equals(Object obj) {
        return obj == this || ((obj instanceof l) && ((l) obj).f8073a.equals(this.f8073a));
    }

    public final int hashCode() {
        return this.f8073a.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f8073a.iterator();
    }
}
