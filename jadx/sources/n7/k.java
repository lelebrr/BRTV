package n7;

import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k implements Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    public k f8487a;

    /* renamed from: b, reason: collision with root package name */
    public k f8488b;

    /* renamed from: c, reason: collision with root package name */
    public k f8489c;
    public k d;

    /* renamed from: e, reason: collision with root package name */
    public k f8490e;
    public final Object f;

    /* renamed from: g, reason: collision with root package name */
    public Object f8491g;

    /* renamed from: h, reason: collision with root package name */
    public int f8492h;

    public k() {
        this.f = null;
        this.f8490e = this;
        this.d = this;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f;
        if (obj2 == null) {
            if (entry.getKey() != null) {
                return false;
            }
        } else if (!obj2.equals(entry.getKey())) {
            return false;
        }
        Object obj3 = this.f8491g;
        if (obj3 == null) {
            if (entry.getValue() != null) {
                return false;
            }
        } else if (!obj3.equals(entry.getValue())) {
            return false;
        }
        return true;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f8491g;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object obj = this.f;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f8491g;
        return (obj2 != null ? obj2.hashCode() : 0) ^ iHashCode;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        Object obj2 = this.f8491g;
        this.f8491g = obj;
        return obj2;
    }

    public final String toString() {
        return this.f + "=" + this.f8491g;
    }

    public k(k kVar, Object obj, k kVar2, k kVar3) {
        this.f8487a = kVar;
        this.f = obj;
        this.f8492h = 1;
        this.d = kVar2;
        this.f8490e = kVar3;
        kVar3.d = this;
        kVar2.f8490e = this;
    }
}
