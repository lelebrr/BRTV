package a4;

import java.util.Collections;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements h7.d {

    /* renamed from: a, reason: collision with root package name */
    public static final d f111a = new d();

    /* renamed from: b, reason: collision with root package name */
    public static final h7.c f112b;

    /* renamed from: c, reason: collision with root package name */
    public static final h7.c f113c;

    static {
        k7.a aVar = new k7.a(1);
        HashMap map = new HashMap();
        map.put(k7.d.class, aVar);
        f112b = new h7.c("logSource", Collections.unmodifiableMap(new HashMap(map)));
        k7.a aVar2 = new k7.a(2);
        HashMap map2 = new HashMap();
        map2.put(k7.d.class, aVar2);
        f113c = new h7.c("logEventDropped", Collections.unmodifiableMap(new HashMap(map2)));
    }

    @Override // h7.a
    public final void a(Object obj, Object obj2) {
        e4.e eVar = (e4.e) obj;
        h7.e eVar2 = (h7.e) obj2;
        eVar2.d(f112b, eVar.f6561a);
        eVar2.d(f113c, eVar.f6562b);
    }
}
