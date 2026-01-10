package a4;

import java.util.Collections;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements h7.d {

    /* renamed from: a, reason: collision with root package name */
    public static final c f108a = new c();

    /* renamed from: b, reason: collision with root package name */
    public static final h7.c f109b;

    /* renamed from: c, reason: collision with root package name */
    public static final h7.c f110c;

    static {
        k7.a aVar = new k7.a(1);
        HashMap map = new HashMap();
        map.put(k7.d.class, aVar);
        f109b = new h7.c("eventsDroppedCount", Collections.unmodifiableMap(new HashMap(map)));
        k7.a aVar2 = new k7.a(3);
        HashMap map2 = new HashMap();
        map2.put(k7.d.class, aVar2);
        f110c = new h7.c("reason", Collections.unmodifiableMap(new HashMap(map2)));
    }

    @Override // h7.a
    public final void a(Object obj, Object obj2) {
        e4.d dVar = (e4.d) obj;
        h7.e eVar = (h7.e) obj2;
        eVar.a(f109b, dVar.f6558a);
        eVar.d(f110c, dVar.f6559b);
    }
}
