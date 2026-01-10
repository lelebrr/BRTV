package m2;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o implements Iterable, k9.a {

    /* renamed from: b, reason: collision with root package name */
    public static final o f8243b = new o(x8.s.f11099a);

    /* renamed from: a, reason: collision with root package name */
    public final Map f8244a;

    public o(Map map) {
        this.f8244a = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof o) {
            if (j9.i.a(this.f8244a, ((o) obj).f8244a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f8244a.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Map map = this.f8244a;
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            if (entry.getValue() != null) {
                throw new ClassCastException();
            }
            arrayList.add(new w8.f(str, null));
        }
        return arrayList.iterator();
    }

    public final String toString() {
        return "Parameters(entries=" + this.f8244a + ')';
    }
}
