package x8;

import java.util.Collection;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class l extends k {
    public static int Q(Iterable iterable) {
        j9.i.f(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        return 10;
    }
}
