package d7;

import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g5 extends u1 {

    /* renamed from: c, reason: collision with root package name */
    public final transient Object[] f6150c;
    public final transient int d;

    /* renamed from: e, reason: collision with root package name */
    public final transient int f6151e;

    public g5(Object[] objArr, int i6, int i10) {
        this.f6150c = objArr;
        this.d = i6;
        this.f6151e = i10;
    }

    @Override // java.util.List
    public final Object get(int i6) {
        b7.b.h(i6, this.f6151e);
        Object obj = this.f6150c[(i6 * 2) + this.d];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // d7.q1
    public final boolean h() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f6151e;
    }
}
