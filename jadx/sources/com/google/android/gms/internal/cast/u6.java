package com.google.android.gms.internal.cast;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u6 implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public int f4434a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final int f4435b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ w6 f4436c;

    public u6(w6 w6Var) {
        this.f4436c = w6Var;
        this.f4435b = w6Var.e();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f4434a < this.f4435b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i6 = this.f4434a;
        if (i6 >= this.f4435b) {
            throw new NoSuchElementException();
        }
        this.f4434a = i6 + 1;
        return Byte.valueOf(this.f4436c.d(i6));
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
