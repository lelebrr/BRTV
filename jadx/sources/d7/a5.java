package d7;

import java.io.Serializable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a5 extends b5 implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public static final a5 f6089a = new a5();

    @Override // d7.b5
    public final b5 a() {
        return j5.f6188a;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        return comparable.compareTo(comparable2);
    }

    public final String toString() {
        return "Ordering.natural()";
    }
}
