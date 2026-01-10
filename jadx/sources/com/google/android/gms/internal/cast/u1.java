package com.google.android.gms.internal.cast;

import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u1 extends q1 {

    /* renamed from: e, reason: collision with root package name */
    public static final u1 f4431e = new u1(new Object[0], 0);

    /* renamed from: c, reason: collision with root package name */
    public final transient Object[] f4432c;
    public final transient int d;

    public u1(Object[] objArr, int i6) {
        this.f4432c = objArr;
        this.d = i6;
    }

    @Override // com.google.android.gms.internal.cast.q1, com.google.android.gms.internal.cast.n1
    public final int c(Object[] objArr) {
        Object[] objArr2 = this.f4432c;
        int i6 = this.d;
        System.arraycopy(objArr2, 0, objArr, 0, i6);
        return i6;
    }

    @Override // com.google.android.gms.internal.cast.n1
    public final int d() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.cast.n1
    public final int e() {
        return 0;
    }

    @Override // com.google.android.gms.internal.cast.n1
    public final Object[] f() {
        return this.f4432c;
    }

    @Override // java.util.List
    public final Object get(int i6) {
        z0.h(i6, this.d);
        Object obj = this.f4432c[i6];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d;
    }
}
