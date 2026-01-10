package androidx.lifecycle;

import java.lang.reflect.Method;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final int f1942a;

    /* renamed from: b, reason: collision with root package name */
    public final Method f1943b;

    public c(Method method, int i6) throws SecurityException {
        this.f1942a = i6;
        this.f1943b = method;
        method.setAccessible(true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f1942a == cVar.f1942a && this.f1943b.getName().equals(cVar.f1943b.getName());
    }

    public final int hashCode() {
        return this.f1943b.getName().hashCode() + (this.f1942a * 31);
    }
}
