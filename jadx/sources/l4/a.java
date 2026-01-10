package l4;

import a.e;
import android.util.SparseArray;
import java.util.HashMap;
import x3.c;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final SparseArray f7968a = new SparseArray();

    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f7969b;

    static {
        HashMap map = new HashMap();
        f7969b = map;
        map.put(c.f10991a, 0);
        map.put(c.f10992b, 1);
        map.put(c.f10993c, 2);
        for (c cVar : map.keySet()) {
            f7968a.append(((Integer) f7969b.get(cVar)).intValue(), cVar);
        }
    }

    public static int a(c cVar) {
        Integer num = (Integer) f7969b.get(cVar);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + cVar);
    }

    public static c b(int i6) {
        c cVar = (c) f7968a.get(i6);
        if (cVar != null) {
            return cVar;
        }
        throw new IllegalArgumentException(e.n(i6, "Unknown Priority for value "));
    }
}
