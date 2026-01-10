package a4;

import java.util.Collections;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f implements h7.d {

    /* renamed from: a, reason: collision with root package name */
    public static final f f115a = new f();

    /* renamed from: b, reason: collision with root package name */
    public static final h7.c f116b;

    /* renamed from: c, reason: collision with root package name */
    public static final h7.c f117c;

    static {
        k7.a aVar = new k7.a(1);
        HashMap map = new HashMap();
        map.put(k7.d.class, aVar);
        f116b = new h7.c("currentCacheSizeBytes", Collections.unmodifiableMap(new HashMap(map)));
        k7.a aVar2 = new k7.a(2);
        HashMap map2 = new HashMap();
        map2.put(k7.d.class, aVar2);
        f117c = new h7.c("maxCacheSizeBytes", Collections.unmodifiableMap(new HashMap(map2)));
    }

    @Override // h7.a
    public final void a(Object obj, Object obj2) {
        e4.f fVar = (e4.f) obj;
        h7.e eVar = (h7.e) obj2;
        eVar.a(f116b, fVar.f6563a);
        eVar.a(f117c, fVar.f6564b);
    }
}
