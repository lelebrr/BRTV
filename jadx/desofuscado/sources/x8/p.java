package x8;

import java.util.Collection;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class p extends o {
    public static void S(Collection collection, Iterable iterable) {
        j9.i.f(collection, "<this>");
        j9.i.f(iterable, "elements");
        if (iterable instanceof Collection) {
            collection.addAll((Collection) iterable);
            return;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            collection.add(it.next());
        }
    }
}
