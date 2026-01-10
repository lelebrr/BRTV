package com.google.android.gms.internal.cast;

import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a2 extends s1 {

    /* renamed from: i, reason: collision with root package name */
    public static final Object[] f4100i;

    /* renamed from: j, reason: collision with root package name */
    public static final a2 f4101j;
    public final transient Object[] d;

    /* renamed from: e, reason: collision with root package name */
    public final transient int f4102e;
    public final transient Object[] f;

    /* renamed from: g, reason: collision with root package name */
    public final transient int f4103g;

    /* renamed from: h, reason: collision with root package name */
    public final transient int f4104h;

    static {
        Object[] objArr = new Object[0];
        f4100i = objArr;
        f4101j = new a2(0, 0, 0, objArr, objArr);
    }

    public a2(int i6, int i10, int i11, Object[] objArr, Object[] objArr2) {
        this.d = objArr;
        this.f4102e = i6;
        this.f = objArr2;
        this.f4103g = i10;
        this.f4104h = i11;
    }

    @Override // com.google.android.gms.internal.cast.n1
    public final int c(Object[] objArr) {
        Object[] objArr2 = this.d;
        int i6 = this.f4104h;
        System.arraycopy(objArr2, 0, objArr, 0, i6);
        return i6;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.f;
            if (objArr.length != 0) {
                int iA = z0.a(obj.hashCode());
                while (true) {
                    int i6 = iA & this.f4103g;
                    Object obj2 = objArr[i6];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    iA = i6 + 1;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.cast.n1
    public final int d() {
        return this.f4104h;
    }

    @Override // com.google.android.gms.internal.cast.n1
    public final int e() {
        return 0;
    }

    @Override // com.google.android.gms.internal.cast.n1
    public final Object[] f() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.cast.s1, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f4102e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        q1 q1VarH = this.f4410b;
        if (q1VarH == null) {
            q1VarH = q1.h(this.d, this.f4104h);
            this.f4410b = q1VarH;
        }
        return q1VarH.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f4104h;
    }
}
