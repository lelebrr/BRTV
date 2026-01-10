package d7;

import java.util.AbstractMap;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d5 extends u1 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e5 f6123c;

    public d5(e5 e5Var) {
        this.f6123c = e5Var;
    }

    @Override // java.util.List
    public final Object get(int i6) {
        e5 e5Var = this.f6123c;
        b7.b.h(i6, e5Var.f);
        int i10 = i6 * 2;
        Object[] objArr = e5Var.f6134e;
        Object obj = objArr[i10];
        Objects.requireNonNull(obj);
        Object obj2 = objArr[i10 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // d7.q1
    public final boolean h() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f6123c.f;
    }
}
