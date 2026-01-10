package o7;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.LinkedHashMap;
import l7.r;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j extends r {

    /* renamed from: a, reason: collision with root package name */
    public final n7.m f8591a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f8592b;

    public j(n7.m mVar, LinkedHashMap linkedHashMap) {
        this.f8591a = mVar;
        this.f8592b = linkedHashMap;
    }

    @Override // l7.r
    public final Object a(t7.a aVar) throws IllegalAccessException, IOException, IllegalArgumentException {
        if (aVar.u() == 9) {
            aVar.q();
            return null;
        }
        Object objO = this.f8591a.o();
        try {
            aVar.b();
            while (aVar.h()) {
                i iVar = (i) this.f8592b.get(aVar.o());
                if (iVar == null || !iVar.f8586c) {
                    aVar.z();
                } else {
                    Object objA = iVar.f.a(aVar);
                    if (objA != null || !iVar.f8590i) {
                        iVar.d.set(objO, objA);
                    }
                }
            }
            aVar.f();
            return objO;
        } catch (IllegalAccessException e5) {
            throw new AssertionError(e5);
        } catch (IllegalStateException e10) {
            throw new l7.n(e10);
        }
    }

    @Override // l7.r
    public final void b(t7.b bVar, Object obj) throws IllegalAccessException, IOException, IllegalArgumentException {
        if (obj == null) {
            bVar.i();
            return;
        }
        bVar.c();
        try {
            for (i iVar : this.f8592b.values()) {
                boolean z7 = iVar.f8585b;
                Field field = iVar.d;
                if (z7 && field.get(obj) != obj) {
                    bVar.g(iVar.f8584a);
                    Object obj2 = field.get(obj);
                    boolean z10 = iVar.f8587e;
                    r lVar = iVar.f;
                    if (!z10) {
                        lVar = new l(iVar.f8588g, lVar, iVar.f8589h.f9828b);
                    }
                    lVar.b(bVar, obj2);
                }
            }
            bVar.f();
        } catch (IllegalAccessException e5) {
            throw new AssertionError(e5);
        }
    }
}
