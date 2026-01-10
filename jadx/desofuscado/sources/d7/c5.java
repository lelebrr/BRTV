package d7;

import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c5 extends u1 {

    /* renamed from: e, reason: collision with root package name */
    public static final c5 f6115e = new c5(new Object[0], 0);

    /* renamed from: c, reason: collision with root package name */
    public final transient Object[] f6116c;
    public final transient int d;

    public c5(Object[] objArr, int i6) {
        this.f6116c = objArr;
        this.d = i6;
    }

    @Override // d7.u1, d7.q1
    public final int d(Object[] objArr, int i6) {
        Object[] objArr2 = this.f6116c;
        int i10 = this.d;
        System.arraycopy(objArr2, 0, objArr, i6, i10);
        return i6 + i10;
    }

    @Override // d7.q1
    public final Object[] e() {
        return this.f6116c;
    }

    @Override // d7.q1
    public final int f() {
        return this.d;
    }

    @Override // d7.q1
    public final int g() {
        return 0;
    }

    @Override // java.util.List
    public final Object get(int i6) {
        b7.b.h(i6, this.d);
        Object obj = this.f6116c[i6];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // d7.q1
    public final boolean h() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d;
    }
}
