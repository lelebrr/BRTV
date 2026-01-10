package a4;

import java.util.Collections;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g implements h7.d {

    /* renamed from: a, reason: collision with root package name */
    public static final g f118a = new g();

    /* renamed from: b, reason: collision with root package name */
    public static final h7.c f119b;

    /* renamed from: c, reason: collision with root package name */
    public static final h7.c f120c;

    static {
        k7.a aVar = new k7.a(1);
        HashMap map = new HashMap();
        map.put(k7.d.class, aVar);
        f119b = new h7.c("startMs", Collections.unmodifiableMap(new HashMap(map)));
        k7.a aVar2 = new k7.a(2);
        HashMap map2 = new HashMap();
        map2.put(k7.d.class, aVar2);
        f120c = new h7.c("endMs", Collections.unmodifiableMap(new HashMap(map2)));
    }

    @Override // h7.a
    public final void a(Object obj, Object obj2) {
        e4.g gVar = (e4.g) obj;
        h7.e eVar = (h7.e) obj2;
        eVar.a(f119b, gVar.f6565a);
        eVar.a(f120c, gVar.f6566b);
    }
}
