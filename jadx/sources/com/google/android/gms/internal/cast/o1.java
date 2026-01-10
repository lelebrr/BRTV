package com.google.android.gms.internal.cast;

import java.util.ListIterator;
import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o1 extends c2 implements ListIterator {

    /* renamed from: a, reason: collision with root package name */
    public final int f4367a;

    /* renamed from: b, reason: collision with root package name */
    public int f4368b;

    /* renamed from: c, reason: collision with root package name */
    public final q1 f4369c;

    public o1(q1 q1Var, int i6) {
        int size = q1Var.size();
        z0.k(i6, size);
        this.f4367a = size;
        this.f4368b = i6;
        this.f4369c = q1Var;
    }

    public final Object a(int i6) {
        return this.f4369c.get(i6);
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f4368b < this.f4367a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f4368b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i6 = this.f4368b;
        this.f4368b = i6 + 1;
        return a(i6);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f4368b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i6 = this.f4368b - 1;
        this.f4368b = i6;
        return a(i6);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f4368b - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
