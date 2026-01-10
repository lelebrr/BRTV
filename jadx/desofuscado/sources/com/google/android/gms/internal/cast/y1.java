package com.google.android.gms.internal.cast;

import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y1 extends q1 {

    /* renamed from: c, reason: collision with root package name */
    public final transient Object[] f4491c;
    public final transient int d;

    /* renamed from: e, reason: collision with root package name */
    public final transient int f4492e;

    public y1(Object[] objArr, int i6, int i10) {
        this.f4491c = objArr;
        this.d = i6;
        this.f4492e = i10;
    }

    @Override // java.util.List
    public final Object get(int i6) {
        z0.h(i6, this.f4492e);
        Object obj = this.f4491c[i6 + i6 + this.d];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f4492e;
    }
}
