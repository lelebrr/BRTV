package d7;

import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b4 extends t {

    /* renamed from: a, reason: collision with root package name */
    public final Object f6095a;

    /* renamed from: b, reason: collision with root package name */
    public Object f6096b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c4 f6097c;

    public b4(c4 c4Var, Object obj, Object obj2) {
        this.f6097c = c4Var;
        this.f6095a = obj;
        this.f6096b = obj2;
    }

    @Override // d7.t, java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return this.f6095a.equals(entry.getKey()) && this.f6096b.equals(entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f6095a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f6096b;
    }

    @Override // d7.t, java.util.Map.Entry
    public final int hashCode() {
        return this.f6095a.hashCode() ^ this.f6096b.hashCode();
    }

    @Override // d7.t, java.util.Map.Entry
    public final Object setValue(Object obj) {
        Object objPut = this.f6097c.put(this.f6095a, obj);
        this.f6096b = obj;
        return objPut;
    }
}
