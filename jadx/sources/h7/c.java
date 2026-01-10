package h7;

import java.util.Collections;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final String f7271a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f7272b;

    public c(String str, Map map) {
        this.f7271a = str;
        this.f7272b = map;
    }

    public static c a(String str) {
        return new c(str, Collections.emptyMap());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f7271a.equals(cVar.f7271a) && this.f7272b.equals(cVar.f7272b);
    }

    public final int hashCode() {
        return this.f7272b.hashCode() + (this.f7271a.hashCode() * 31);
    }

    public final String toString() {
        return "FieldDescriptor{name=" + this.f7271a + ", properties=" + this.f7272b.values() + "}";
    }
}
