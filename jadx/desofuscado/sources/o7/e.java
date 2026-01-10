package o7;

import ea.q;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Map;
import l7.r;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends r {

    /* renamed from: a, reason: collision with root package name */
    public final l f8575a;

    /* renamed from: b, reason: collision with root package name */
    public final l f8576b;

    /* renamed from: c, reason: collision with root package name */
    public final n7.m f8577c;
    public final /* synthetic */ c d;

    public e(c cVar, l7.k kVar, Type type, r rVar, Type type2, r rVar2, n7.m mVar) {
        this.d = cVar;
        this.f8575a = new l(kVar, rVar, type);
        this.f8576b = new l(kVar, rVar2, type2);
        this.f8577c = mVar;
    }

    @Override // l7.r
    public final Object a(t7.a aVar) throws IOException {
        int iU = aVar.u();
        if (iU == 9) {
            aVar.q();
            return null;
        }
        Map map = (Map) this.f8577c.o();
        l lVar = this.f8576b;
        l lVar2 = this.f8575a;
        r rVar = lVar.f8598b;
        r rVar2 = lVar2.f8598b;
        if (iU == 1) {
            aVar.a();
            while (aVar.h()) {
                aVar.a();
                Object objA = rVar2.a(aVar);
                if (map.put(objA, rVar.a(aVar)) != null) {
                    throw new l7.n(q.g(objA, "duplicate key: "));
                }
                aVar.e();
            }
            aVar.e();
        } else {
            aVar.b();
            while (aVar.h()) {
                q.b.f8931b.getClass();
                int iD = aVar.f10160h;
                if (iD == 0) {
                    iD = aVar.d();
                }
                if (iD == 13) {
                    aVar.f10160h = 9;
                } else if (iD == 12) {
                    aVar.f10160h = 8;
                } else {
                    if (iD != 14) {
                        throw new IllegalStateException("Expected a name but was " + q.r(aVar.u()) + aVar.j());
                    }
                    aVar.f10160h = 10;
                }
                Object objA2 = rVar2.a(aVar);
                if (map.put(objA2, rVar.a(aVar)) != null) {
                    throw new l7.n(q.g(objA2, "duplicate key: "));
                }
            }
            aVar.f();
        }
        return map;
    }

    @Override // l7.r
    public final void b(t7.b bVar, Object obj) throws IOException {
        Map map = (Map) obj;
        if (map == null) {
            bVar.i();
            return;
        }
        this.d.getClass();
        l lVar = this.f8576b;
        bVar.c();
        for (Map.Entry entry : map.entrySet()) {
            bVar.g(String.valueOf(entry.getKey()));
            lVar.b(bVar, entry.getValue());
        }
        bVar.f();
    }
}
