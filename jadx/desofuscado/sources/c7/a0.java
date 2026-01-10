package c7;

import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a0 implements Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final Object f3395a;

    /* renamed from: b, reason: collision with root package name */
    public Object f3396b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b0 f3397c;

    public a0(b0 b0Var, Object obj, Object obj2) {
        this.f3397c = b0Var;
        this.f3395a = obj;
        this.f3396b = obj2;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return this.f3395a.equals(entry.getKey()) && this.f3396b.equals(entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f3395a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f3396b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f3395a.hashCode() ^ this.f3396b.hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        Object objPut = this.f3397c.put(this.f3395a, obj);
        this.f3396b = obj;
        return objPut;
    }

    public final String toString() {
        return this.f3395a + "=" + this.f3396b;
    }
}
