package com.google.android.gms.internal.cast;

import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b2 extends s1 {
    public final transient Object d;

    public b2(Object obj) {
        this.d = obj;
    }

    @Override // com.google.android.gms.internal.cast.n1
    public final int c(Object[] objArr) {
        objArr[0] = this.d;
        return 1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.d.equals(obj);
    }

    @Override // com.google.android.gms.internal.cast.s1, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.d.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return new t1(this.d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return a.e.r("[", this.d.toString(), "]");
    }
}
