package d7;

import java.util.Collection;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o2 extends u1 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i2 f6230c;

    public o2(i2 i2Var) {
        this.f6230c = i2Var;
    }

    @Override // java.util.List
    public final Object get(int i6) {
        Map.Entry entry = (Map.Entry) this.f6230c.d.d.f.entrySet().c().get(i6);
        return new z4(((Collection) entry.getValue()).size(), entry.getKey());
    }

    @Override // d7.q1
    public final boolean h() {
        return this.f6230c.h();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f6230c.size();
    }
}
