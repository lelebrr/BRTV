package com.google.android.gms.internal.cast;

import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t1 extends c2 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f4418a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f4419b;

    public t1(Object obj) {
        this.f4418a = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f4419b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f4419b) {
            throw new NoSuchElementException();
        }
        this.f4419b = true;
        return this.f4418a;
    }
}
