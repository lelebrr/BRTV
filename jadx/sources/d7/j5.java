package d7;

import java.io.Serializable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j5 extends b5 implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public static final j5 f6188a = new j5();

    @Override // d7.b5
    public final b5 a() {
        return a5.f6089a;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    public final String toString() {
        return "Ordering.natural().reverse()";
    }
}
