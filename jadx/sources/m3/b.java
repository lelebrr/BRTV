package m3;

import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
import p.e;
import r3.l;
import x2.j;
import x2.v;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: c, reason: collision with root package name */
    public static final v f8263c = new v(Object.class, Object.class, Object.class, Collections.singletonList(new j(Object.class, Object.class, Object.class, Collections.emptyList(), new j3.d(0), null)), null);

    /* renamed from: a, reason: collision with root package name */
    public final e f8264a = new e(0);

    /* renamed from: b, reason: collision with root package name */
    public final AtomicReference f8265b = new AtomicReference();

    public final void a(Class cls, Class cls2, Class cls3, v vVar) {
        synchronized (this.f8264a) {
            e eVar = this.f8264a;
            l lVar = new l(cls, cls2, cls3);
            if (vVar == null) {
                vVar = f8263c;
            }
            eVar.put(lVar, vVar);
        }
    }
}
