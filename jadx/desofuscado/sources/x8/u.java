package x8;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class u extends com.bumptech.glide.c {
    public static int p(int i6) {
        if (i6 < 0) {
            return i6;
        }
        if (i6 < 3) {
            return i6 + 1;
        }
        if (i6 < 1073741824) {
            return (int) ((i6 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static Map q(ArrayList arrayList) {
        s sVar = s.f11099a;
        int size = arrayList.size();
        if (size == 0) {
            return sVar;
        }
        if (size == 1) {
            w8.f fVar = (w8.f) arrayList.get(0);
            j9.i.f(fVar, "pair");
            Map mapSingletonMap = Collections.singletonMap(fVar.f10825a, fVar.f10826b);
            j9.i.e(mapSingletonMap, "singletonMap(...)");
            return mapSingletonMap;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(p(arrayList.size()));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            w8.f fVar2 = (w8.f) it.next();
            linkedHashMap.put(fVar2.f10825a, fVar2.f10826b);
        }
        return linkedHashMap;
    }

    public static Map r(Map map) {
        j9.i.f(map, "<this>");
        int size = map.size();
        if (size == 0) {
            return s.f11099a;
        }
        if (size != 1) {
            return s(map);
        }
        j9.i.f(map, "<this>");
        Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
        Map mapSingletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        j9.i.e(mapSingletonMap, "with(...)");
        return mapSingletonMap;
    }

    public static LinkedHashMap s(Map map) {
        j9.i.f(map, "<this>");
        return new LinkedHashMap(map);
    }
}
