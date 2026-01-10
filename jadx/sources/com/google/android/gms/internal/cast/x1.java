package com.google.android.gms.internal.cast;

import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x1 extends s1 {
    public final transient z1 d;

    /* renamed from: e, reason: collision with root package name */
    public final transient y1 f4461e;

    public x1(z1 z1Var, y1 y1Var) {
        this.d = z1Var;
        this.f4461e = y1Var;
    }

    @Override // com.google.android.gms.internal.cast.n1
    public final int c(Object[] objArr) {
        return this.f4461e.c(objArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.d.get(obj) != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return this.f4461e.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.d.f;
    }
}
