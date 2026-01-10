package com.google.android.gms.internal.cast;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t7 extends s6 implements RandomAccess {
    public static final Object[] d;

    /* renamed from: e, reason: collision with root package name */
    public static final t7 f4421e;

    /* renamed from: b, reason: collision with root package name */
    public Object[] f4422b;

    /* renamed from: c, reason: collision with root package name */
    public int f4423c;

    static {
        Object[] objArr = new Object[0];
        d = objArr;
        f4421e = new t7(objArr, 0, false);
    }

    public t7(Object[] objArr, int i6, boolean z7) {
        super(z7);
        this.f4422b = objArr;
        this.f4423c = i6;
    }

    @Override // com.google.android.gms.internal.cast.g7
    public final /* bridge */ /* synthetic */ g7 a(int i6) {
        if (i6 >= this.f4423c) {
            return new t7(i6 == 0 ? d : Arrays.copyOf(this.f4422b, i6), this.f4423c, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i6, Object obj) {
        int i10;
        c();
        if (i6 < 0 || i6 > (i10 = this.f4423c)) {
            throw new IndexOutOfBoundsException(a.e.m(i6, this.f4423c, "Index:", ", Size:"));
        }
        int i11 = i6 + 1;
        Object[] objArr = this.f4422b;
        int length = objArr.length;
        if (i10 < length) {
            System.arraycopy(objArr, i6, objArr, i11, i10 - i6);
        } else {
            Object[] objArr2 = new Object[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f4422b, 0, objArr2, 0, i6);
            System.arraycopy(this.f4422b, i6, objArr2, i11, this.f4423c - i6);
            this.f4422b = objArr2;
        }
        this.f4422b[i6] = obj;
        this.f4423c++;
        ((AbstractList) this).modCount++;
    }

    public final void e(int i6) {
        if (i6 < 0 || i6 >= this.f4423c) {
            throw new IndexOutOfBoundsException(a.e.m(i6, this.f4423c, "Index:", ", Size:"));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i6) {
        e(i6);
        return this.f4422b[i6];
    }

    @Override // com.google.android.gms.internal.cast.s6, java.util.AbstractList, java.util.List
    public final Object remove(int i6) {
        c();
        e(i6);
        Object[] objArr = this.f4422b;
        Object obj = objArr[i6];
        if (i6 < this.f4423c - 1) {
            System.arraycopy(objArr, i6 + 1, objArr, i6, (r2 - i6) - 1);
        }
        this.f4423c--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i6, Object obj) {
        c();
        e(i6);
        Object[] objArr = this.f4422b;
        Object obj2 = objArr[i6];
        objArr[i6] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f4423c;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        c();
        int i6 = this.f4423c;
        int length = this.f4422b.length;
        if (i6 == length) {
            this.f4422b = Arrays.copyOf(this.f4422b, Math.max(((length * 3) / 2) + 1, 10));
        }
        Object[] objArr = this.f4422b;
        int i10 = this.f4423c;
        this.f4423c = i10 + 1;
        objArr[i10] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
