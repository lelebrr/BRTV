package q9;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import x8.r;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class f extends h {
    public static List p(c cVar) {
        Iterator it = cVar.iterator();
        if (!it.hasNext()) {
            return r.f11098a;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return a2.a.F(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }
}
