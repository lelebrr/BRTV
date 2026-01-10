package o7;

import java.io.IOException;
import java.util.ArrayList;
import l7.r;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends r {

    /* renamed from: b, reason: collision with root package name */
    public static final a f8582b = new a(2);

    /* renamed from: a, reason: collision with root package name */
    public final l7.k f8583a;

    public h(l7.k kVar) {
        this.f8583a = kVar;
    }

    @Override // l7.r
    public final Object a(t7.a aVar) throws IOException {
        int iA = u.h.a(aVar.u());
        if (iA == 0) {
            ArrayList arrayList = new ArrayList();
            aVar.a();
            while (aVar.h()) {
                arrayList.add(a(aVar));
            }
            aVar.e();
            return arrayList;
        }
        if (iA == 2) {
            n7.l lVar = new n7.l();
            aVar.b();
            while (aVar.h()) {
                lVar.put(aVar.o(), a(aVar));
            }
            aVar.f();
            return lVar;
        }
        if (iA == 5) {
            return aVar.s();
        }
        if (iA == 6) {
            return Double.valueOf(aVar.l());
        }
        if (iA == 7) {
            return Boolean.valueOf(aVar.k());
        }
        if (iA != 8) {
            throw new IllegalStateException();
        }
        aVar.q();
        return null;
    }

    @Override // l7.r
    public final void b(t7.b bVar, Object obj) throws IOException {
        if (obj == null) {
            bVar.i();
            return;
        }
        Class<?> cls = obj.getClass();
        l7.k kVar = this.f8583a;
        kVar.getClass();
        r rVarC = kVar.c(new s7.a(cls));
        if (!(rVarC instanceof h)) {
            rVarC.b(bVar, obj);
        } else {
            bVar.c();
            bVar.f();
        }
    }
}
