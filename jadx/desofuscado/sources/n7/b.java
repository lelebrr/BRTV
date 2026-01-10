package n7;

import java.io.Serializable;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements ParameterizedType, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Type f8466a;

    /* renamed from: b, reason: collision with root package name */
    public final Type f8467b;

    /* renamed from: c, reason: collision with root package name */
    public final Type[] f8468c;

    public b(Type type, Type type2, Type... typeArr) {
        if (type2 instanceof Class) {
            Class cls = (Class) type2;
            boolean z7 = true;
            boolean z10 = Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null;
            if (type == null && !z10) {
                z7 = false;
            }
            d.c(z7);
        }
        this.f8466a = type == null ? null : d.b(type);
        this.f8467b = d.b(type2);
        Type[] typeArr2 = (Type[]) typeArr.clone();
        this.f8468c = typeArr2;
        int length = typeArr2.length;
        for (int i6 = 0; i6 < length; i6++) {
            this.f8468c[i6].getClass();
            d.d(this.f8468c[i6]);
            Type[] typeArr3 = this.f8468c;
            typeArr3[i6] = d.b(typeArr3[i6]);
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ParameterizedType) && d.f(this, (ParameterizedType) obj);
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type[] getActualTypeArguments() {
        return (Type[]) this.f8468c.clone();
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getOwnerType() {
        return this.f8466a;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getRawType() {
        return this.f8467b;
    }

    public final int hashCode() {
        int iHashCode = Arrays.hashCode(this.f8468c) ^ this.f8467b.hashCode();
        Type type = this.f8466a;
        return iHashCode ^ (type != null ? type.hashCode() : 0);
    }

    public final String toString() {
        Type[] typeArr = this.f8468c;
        int length = typeArr.length;
        Type type = this.f8467b;
        if (length == 0) {
            return d.k(type);
        }
        StringBuilder sb = new StringBuilder((length + 1) * 30);
        sb.append(d.k(type));
        sb.append("<");
        sb.append(d.k(typeArr[0]));
        for (int i6 = 1; i6 < length; i6++) {
            sb.append(", ");
            sb.append(d.k(typeArr[i6]));
        }
        sb.append(">");
        return sb.toString();
    }
}
