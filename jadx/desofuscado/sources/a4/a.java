package a4;

import java.util.Collections;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements h7.d {

    /* renamed from: a, reason: collision with root package name */
    public static final a f102a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final h7.c f103b;

    /* renamed from: c, reason: collision with root package name */
    public static final h7.c f104c;
    public static final h7.c d;

    /* renamed from: e, reason: collision with root package name */
    public static final h7.c f105e;

    static {
        k7.a aVar = new k7.a(1);
        HashMap map = new HashMap();
        map.put(k7.d.class, aVar);
        f103b = new h7.c("window", Collections.unmodifiableMap(new HashMap(map)));
        k7.a aVar2 = new k7.a(2);
        HashMap map2 = new HashMap();
        map2.put(k7.d.class, aVar2);
        f104c = new h7.c("logSourceMetrics", Collections.unmodifiableMap(new HashMap(map2)));
        k7.a aVar3 = new k7.a(3);
        HashMap map3 = new HashMap();
        map3.put(k7.d.class, aVar3);
        d = new h7.c("globalMetrics", Collections.unmodifiableMap(new HashMap(map3)));
        k7.a aVar4 = new k7.a(4);
        HashMap map4 = new HashMap();
        map4.put(k7.d.class, aVar4);
        f105e = new h7.c("appNamespace", Collections.unmodifiableMap(new HashMap(map4)));
    }

    @Override // h7.a
    public final void a(Object obj, Object obj2) {
        e4.a aVar = (e4.a) obj;
        h7.e eVar = (h7.e) obj2;
        eVar.d(f103b, aVar.f6547a);
        eVar.d(f104c, aVar.f6548b);
        eVar.d(d, aVar.f6549c);
        eVar.d(f105e, aVar.d);
    }
}
