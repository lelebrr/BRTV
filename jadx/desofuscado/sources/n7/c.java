package n7;

import java.io.Serializable;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements WildcardType, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Type f8469a;

    /* renamed from: b, reason: collision with root package name */
    public final Type f8470b;

    public c(Type[] typeArr, Type[] typeArr2) {
        d.c(typeArr2.length <= 1);
        d.c(typeArr.length == 1);
        if (typeArr2.length != 1) {
            typeArr[0].getClass();
            d.d(typeArr[0]);
            this.f8470b = null;
            this.f8469a = d.b(typeArr[0]);
            return;
        }
        typeArr2[0].getClass();
        d.d(typeArr2[0]);
        d.c(typeArr[0] == Object.class);
        this.f8470b = d.b(typeArr2[0]);
        this.f8469a = Object.class;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof WildcardType) && d.f(this, (WildcardType) obj);
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getLowerBounds() {
        Type type = this.f8470b;
        return type != null ? new Type[]{type} : d.f8471a;
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getUpperBounds() {
        return new Type[]{this.f8469a};
    }

    public final int hashCode() {
        Type type = this.f8470b;
        return (type != null ? type.hashCode() + 31 : 1) ^ (this.f8469a.hashCode() + 31);
    }

    public final String toString() {
        Type type = this.f8470b;
        if (type != null) {
            return "? super " + d.k(type);
        }
        Type type2 = this.f8469a;
        if (type2 == Object.class) {
            return "?";
        }
        return "? extends " + d.k(type2);
    }
}
