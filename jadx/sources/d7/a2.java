package d7;

import java.util.Map;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a2 extends s5 {

    /* renamed from: a, reason: collision with root package name */
    public final s5 f6085a;

    /* renamed from: b, reason: collision with root package name */
    public Object f6086b = null;

    /* renamed from: c, reason: collision with root package name */
    public s5 f6087c = s2.d;

    public a2(g2 g2Var) {
        this.f6085a = g2Var.f.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f6087c.hasNext() || this.f6085a.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f6087c.hasNext()) {
            Map.Entry entry = (Map.Entry) this.f6085a.next();
            this.f6086b = entry.getKey();
            this.f6087c = ((q1) entry.getValue()).iterator();
        }
        Object obj = this.f6086b;
        Objects.requireNonNull(obj);
        return new r1(obj, this.f6087c.next());
    }
}
