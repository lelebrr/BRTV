package o7;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Date;
import l7.r;
import l7.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements s {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8567a;

    public /* synthetic */ a(int i6) {
        this.f8567a = i6;
    }

    @Override // l7.s
    public final r a(l7.k kVar, s7.a aVar) {
        switch (this.f8567a) {
            case 0:
                Type type = aVar.f9828b;
                boolean z7 = type instanceof GenericArrayType;
                if (!z7 && (!(type instanceof Class) || !((Class) type).isArray())) {
                    return null;
                }
                Type genericComponentType = z7 ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
                return new b(kVar, kVar.c(new s7.a(genericComponentType)), n7.d.h(genericComponentType));
            case 1:
                if (aVar.f9827a == Date.class) {
                    return new d();
                }
                return null;
            case 2:
                if (aVar.f9827a == Object.class) {
                    return new h(kVar);
                }
                return null;
            case 3:
                Class superclass = aVar.f9827a;
                if (!Enum.class.isAssignableFrom(superclass) || superclass == Enum.class) {
                    return null;
                }
                if (!superclass.isEnum()) {
                    superclass = superclass.getSuperclass();
                }
                return new b(superclass);
            case 4:
                if (aVar.f9827a == java.sql.Date.class) {
                    return new r7.a(0);
                }
                return null;
            case 5:
                if (aVar.f9827a == Time.class) {
                    return new r7.a(1);
                }
                return null;
            default:
                if (aVar.f9827a != Timestamp.class) {
                    return null;
                }
                kVar.getClass();
                return new r7.a(kVar.c(new s7.a(Date.class)));
        }
    }
}
