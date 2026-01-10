package n7;

import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import okhttp3.HttpUrl;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements GenericArrayType, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Type f8465a;

    public a(Type type) {
        this.f8465a = d.b(type);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof GenericArrayType) && d.f(this, (GenericArrayType) obj);
    }

    @Override // java.lang.reflect.GenericArrayType
    public final Type getGenericComponentType() {
        return this.f8465a;
    }

    public final int hashCode() {
        return this.f8465a.hashCode();
    }

    public final String toString() {
        return d.k(this.f8465a) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
    }
}
