package d7;

import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k4 extends l1 implements Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Map.Entry f6202a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r2 f6203b;

    public k4(r2 r2Var, Map.Entry entry) {
        this.f6202a = entry;
        this.f6203b = r2Var;
    }

    @Override // d7.l1
    public final Object delegate() {
        return this.f6202a;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        return this.f6202a.equals(obj);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f6202a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f6202a.getValue();
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f6202a.hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        l4 l4Var = (l4) ((a1) this.f6203b.f6254c).f6084b;
        Map.Entry entry = this.f6202a;
        b7.b.f(l4Var.d(entry.getKey(), obj));
        return entry.setValue(obj);
    }
}
