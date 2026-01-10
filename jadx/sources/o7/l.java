package o7;

import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import l7.r;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l extends r {

    /* renamed from: a, reason: collision with root package name */
    public final l7.k f8597a;

    /* renamed from: b, reason: collision with root package name */
    public final r f8598b;

    /* renamed from: c, reason: collision with root package name */
    public final Type f8599c;

    public l(l7.k kVar, r rVar, Type type) {
        this.f8597a = kVar;
        this.f8598b = rVar;
        this.f8599c = type;
    }

    @Override // l7.r
    public final Object a(t7.a aVar) {
        return this.f8598b.a(aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.reflect.Type] */
    @Override // l7.r
    public final void b(t7.b bVar, Object obj) {
        ?? r02 = this.f8599c;
        Class<?> cls = (obj == null || !(r02 == Object.class || (r02 instanceof TypeVariable) || (r02 instanceof Class))) ? r02 : obj.getClass();
        r rVar = this.f8598b;
        if (cls != r02) {
            r rVarC = this.f8597a.c(new s7.a(cls));
            if (!(rVarC instanceof j) || (rVar instanceof j)) {
                rVar = rVarC;
            }
        }
        rVar.b(bVar, obj);
    }
}
