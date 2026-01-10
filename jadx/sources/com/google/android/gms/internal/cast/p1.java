package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p1 extends q1 {

    /* renamed from: c, reason: collision with root package name */
    public final transient int f4374c;
    public final transient int d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ q1 f4375e;

    public p1(q1 q1Var, int i6, int i10) {
        this.f4375e = q1Var;
        this.f4374c = i6;
        this.d = i10;
    }

    @Override // com.google.android.gms.internal.cast.n1
    public final int d() {
        return this.f4375e.e() + this.f4374c + this.d;
    }

    @Override // com.google.android.gms.internal.cast.n1
    public final int e() {
        return this.f4375e.e() + this.f4374c;
    }

    @Override // com.google.android.gms.internal.cast.n1
    public final Object[] f() {
        return this.f4375e.f();
    }

    @Override // com.google.android.gms.internal.cast.q1, java.util.List
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public final q1 subList(int i6, int i10) {
        z0.m(i6, i10, this.d);
        int i11 = this.f4374c;
        return this.f4375e.subList(i6 + i11, i10 + i11);
    }

    @Override // java.util.List
    public final Object get(int i6) {
        z0.h(i6, this.d);
        return this.f4375e.get(i6 + this.f4374c);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d;
    }
}
