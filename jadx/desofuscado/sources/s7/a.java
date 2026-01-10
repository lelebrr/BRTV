package s7;

import java.lang.reflect.Type;
import n7.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final Class f9827a;

    /* renamed from: b, reason: collision with root package name */
    public final Type f9828b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9829c;

    public a(Type type) {
        type.getClass();
        Type typeB = d.b(type);
        this.f9828b = typeB;
        this.f9827a = d.h(typeB);
        this.f9829c = typeB.hashCode();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof a) {
            if (d.f(this.f9828b, ((a) obj).f9828b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f9829c;
    }

    public final String toString() {
        return d.k(this.f9828b);
    }
}
