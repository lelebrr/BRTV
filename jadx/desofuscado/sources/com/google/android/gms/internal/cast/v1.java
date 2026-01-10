package com.google.android.gms.internal.cast;

import java.util.AbstractMap;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v1 extends q1 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ w1 f4442c;

    public v1(w1 w1Var) {
        this.f4442c = w1Var;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i6) {
        w1 w1Var = this.f4442c;
        z0.h(i6, w1Var.f);
        int i10 = i6 + i6;
        Object[] objArr = w1Var.f4449e;
        Object obj = objArr[i10];
        Objects.requireNonNull(obj);
        Object obj2 = objArr[i10 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f4442c.f;
    }
}
