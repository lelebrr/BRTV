package o7;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import l7.r;
import l7.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements s {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8571a;

    /* renamed from: b, reason: collision with root package name */
    public final l6.h f8572b;

    public /* synthetic */ c(l6.h hVar, int i6) {
        this.f8571a = i6;
        this.f8572b = hVar;
    }

    public static r b(l6.h hVar, l7.k kVar, s7.a aVar, m7.a aVar2) {
        r rVarA;
        Object objO = hVar.i(new s7.a(aVar2.value())).o();
        if (objO instanceof r) {
            rVarA = (r) objO;
        } else {
            if (!(objO instanceof s)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + objO.getClass().getName() + " as a @JsonAdapter for " + n7.d.k(aVar.f9828b) + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            rVarA = ((s) objO).a(kVar, aVar);
        }
        return (rVarA == null || !aVar2.nullSafe()) ? rVarA : new l7.i(rVarA, 2);
    }

    @Override // l7.s
    public final r a(l7.k kVar, s7.a aVar) {
        Class cls;
        Type[] actualTypeArguments;
        cls = Object.class;
        l6.h hVar = this.f8572b;
        switch (this.f8571a) {
            case 0:
                Class cls2 = aVar.f9827a;
                if (!Collection.class.isAssignableFrom(cls2)) {
                    return null;
                }
                Type type = aVar.f9828b;
                if (type instanceof WildcardType) {
                    type = ((WildcardType) type).getUpperBounds()[0];
                }
                n7.d.c(Collection.class.isAssignableFrom(cls2));
                Type typeJ = n7.d.j(type, cls2, n7.d.g(type, cls2, Collection.class), new HashMap());
                if (typeJ instanceof WildcardType) {
                    typeJ = ((WildcardType) typeJ).getUpperBounds()[0];
                }
                cls = typeJ instanceof ParameterizedType ? ((ParameterizedType) typeJ).getActualTypeArguments()[0] : Object.class;
                return new b(kVar, cls, kVar.c(new s7.a(cls)), hVar.i(aVar));
            case 1:
                m7.a aVar2 = (m7.a) aVar.f9827a.getAnnotation(m7.a.class);
                if (aVar2 == null) {
                    return null;
                }
                return b(hVar, kVar, aVar, aVar2);
            default:
                if (!Map.class.isAssignableFrom(aVar.f9827a)) {
                    return null;
                }
                Type type2 = aVar.f9828b;
                Class clsH = n7.d.h(type2);
                if (type2 == Properties.class) {
                    actualTypeArguments = new Type[]{String.class, String.class};
                } else {
                    if (type2 instanceof WildcardType) {
                        type2 = ((WildcardType) type2).getUpperBounds()[0];
                    }
                    n7.d.c(Map.class.isAssignableFrom(clsH));
                    Type typeJ2 = n7.d.j(type2, clsH, n7.d.g(type2, clsH, Map.class), new HashMap());
                    actualTypeArguments = typeJ2 instanceof ParameterizedType ? ((ParameterizedType) typeJ2).getActualTypeArguments() : new Type[]{cls, cls};
                }
                Type type3 = actualTypeArguments[0];
                return new e(this, kVar, actualTypeArguments[0], (type3 == Boolean.TYPE || type3 == Boolean.class) ? p.f8609c : kVar.c(new s7.a(type3)), actualTypeArguments[1], kVar.c(new s7.a(actualTypeArguments[1])), hVar.i(aVar));
        }
    }
}
