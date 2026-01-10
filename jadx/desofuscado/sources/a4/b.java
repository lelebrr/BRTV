package a4;

import java.util.Collections;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements h7.d {

    /* renamed from: a, reason: collision with root package name */
    public static final b f106a = new b();

    /* renamed from: b, reason: collision with root package name */
    public static final h7.c f107b;

    static {
        k7.a aVar = new k7.a(1);
        HashMap map = new HashMap();
        map.put(k7.d.class, aVar);
        f107b = new h7.c("storageMetrics", Collections.unmodifiableMap(new HashMap(map)));
    }

    @Override // h7.a
    public final void a(Object obj, Object obj2) {
        ((h7.e) obj2).d(f107b, ((e4.b) obj).f6550a);
    }
}
