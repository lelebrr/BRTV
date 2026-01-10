package m;

import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final Object f8102a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f8103b;

    /* renamed from: c, reason: collision with root package name */
    public c f8104c;
    public c d;

    public c(Object obj, Object obj2) {
        this.f8102a = obj;
        this.f8103b = obj2;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f8102a.equals(cVar.f8102a) && this.f8103b.equals(cVar.f8103b);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f8102a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f8103b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f8102a.hashCode() ^ this.f8103b.hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException("An entry modification is not supported");
    }

    public final String toString() {
        return this.f8102a + "=" + this.f8103b;
    }
}
