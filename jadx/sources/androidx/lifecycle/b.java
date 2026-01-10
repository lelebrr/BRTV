package androidx.lifecycle;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f1939a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f1940b;

    public b(HashMap map) {
        this.f1940b = map;
        for (Map.Entry entry : map.entrySet()) {
            n nVar = (n) entry.getValue();
            List arrayList = (List) this.f1939a.get(nVar);
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.f1939a.put(nVar, arrayList);
            }
            arrayList.add((c) entry.getKey());
        }
    }

    public static void a(List list, w wVar, n nVar, v vVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                c cVar = (c) list.get(size);
                cVar.getClass();
                try {
                    int i6 = cVar.f1942a;
                    Method method = cVar.f1943b;
                    if (i6 == 0) {
                        method.invoke(vVar, null);
                    } else if (i6 == 1) {
                        method.invoke(vVar, wVar);
                    } else if (i6 == 2) {
                        method.invoke(vVar, wVar, nVar);
                    }
                } catch (IllegalAccessException e5) {
                    throw new RuntimeException(e5);
                } catch (InvocationTargetException e10) {
                    throw new RuntimeException("Failed to call observer method", e10.getCause());
                }
            }
        }
    }
}
