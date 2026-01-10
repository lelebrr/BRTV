package d7;

import java.util.Iterator;
import java.util.ListIterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t1 extends u1 {

    /* renamed from: c, reason: collision with root package name */
    public final transient int f6267c;
    public final transient int d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ u1 f6268e;

    public t1(u1 u1Var, int i6, int i10) {
        this.f6268e = u1Var;
        this.f6267c = i6;
        this.d = i10;
    }

    @Override // d7.q1
    public final Object[] e() {
        return this.f6268e.e();
    }

    @Override // d7.q1
    public final int f() {
        return this.f6268e.g() + this.f6267c + this.d;
    }

    @Override // d7.q1
    public final int g() {
        return this.f6268e.g() + this.f6267c;
    }

    @Override // java.util.List
    public final Object get(int i6) {
        b7.b.h(i6, this.d);
        return this.f6268e.get(i6 + this.f6267c);
    }

    @Override // d7.q1
    public final boolean h() {
        return true;
    }

    @Override // d7.u1, d7.q1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // d7.u1, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d;
    }

    @Override // d7.u1, java.util.List
    /* renamed from: w */
    public final u1 subList(int i6, int i10) {
        b7.b.l(i6, i10, this.d);
        int i11 = this.f6267c;
        return this.f6268e.subList(i6 + i11, i10 + i11);
    }

    @Override // d7.u1, java.util.List
    public final /* bridge */ /* synthetic */ ListIterator listIterator(int i6) {
        return listIterator(i6);
    }
}
