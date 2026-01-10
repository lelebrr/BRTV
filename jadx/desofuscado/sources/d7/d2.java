package d7;

import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d2 extends q1 {

    /* renamed from: b, reason: collision with root package name */
    public final g2 f6119b;

    public d2(g2 g2Var) {
        this.f6119b = g2Var;
    }

    @Override // d7.q1, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return this.f6119b.g(entry.getKey(), entry.getValue());
    }

    @Override // d7.q1
    /* renamed from: i */
    public final s5 iterator() {
        g2 g2Var = this.f6119b;
        g2Var.getClass();
        return new a2(g2Var);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.f6119b.f6149g;
    }
}
