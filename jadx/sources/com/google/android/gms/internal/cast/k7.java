package com.google.android.gms.internal.cast;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k7 extends s6 implements RandomAccess, f7 {
    public static final long[] d;

    /* renamed from: e, reason: collision with root package name */
    public static final k7 f4293e;

    /* renamed from: b, reason: collision with root package name */
    public long[] f4294b;

    /* renamed from: c, reason: collision with root package name */
    public int f4295c;

    static {
        long[] jArr = new long[0];
        d = jArr;
        f4293e = new k7(jArr, 0, false);
    }

    public k7(long[] jArr, int i6, boolean z7) {
        super(z7);
        this.f4294b = jArr;
        this.f4295c = i6;
    }

    @Override // com.google.android.gms.internal.cast.g7
    public final /* bridge */ /* synthetic */ g7 a(int i6) {
        if (i6 >= this.f4295c) {
            return new k7(i6 == 0 ? d : Arrays.copyOf(this.f4294b, i6), this.f4295c, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i6, Object obj) {
        int i10;
        long jLongValue = ((Long) obj).longValue();
        c();
        if (i6 < 0 || i6 > (i10 = this.f4295c)) {
            throw new IndexOutOfBoundsException(a.e.m(i6, this.f4295c, "Index:", ", Size:"));
        }
        int i11 = i6 + 1;
        long[] jArr = this.f4294b;
        int length = jArr.length;
        if (i10 < length) {
            System.arraycopy(jArr, i6, jArr, i11, i10 - i6);
        } else {
            long[] jArr2 = new long[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f4294b, 0, jArr2, 0, i6);
            System.arraycopy(this.f4294b, i6, jArr2, i11, this.f4295c - i6);
            this.f4294b = jArr2;
        }
        this.f4294b[i6] = jLongValue;
        this.f4295c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.cast.s6, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        c();
        Charset charset = h7.f4214a;
        collection.getClass();
        if (!(collection instanceof k7)) {
            return super.addAll(collection);
        }
        k7 k7Var = (k7) collection;
        int i6 = k7Var.f4295c;
        if (i6 == 0) {
            return false;
        }
        int i10 = this.f4295c;
        if (Integer.MAX_VALUE - i10 < i6) {
            throw new OutOfMemoryError();
        }
        int i11 = i10 + i6;
        long[] jArr = this.f4294b;
        if (i11 > jArr.length) {
            this.f4294b = Arrays.copyOf(jArr, i11);
        }
        System.arraycopy(k7Var.f4294b, 0, this.f4294b, this.f4295c, k7Var.f4295c);
        this.f4295c = i11;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final long e(int i6) {
        f(i6);
        return this.f4294b[i6];
    }

    @Override // com.google.android.gms.internal.cast.s6, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k7)) {
            return super.equals(obj);
        }
        k7 k7Var = (k7) obj;
        if (this.f4295c != k7Var.f4295c) {
            return false;
        }
        long[] jArr = k7Var.f4294b;
        for (int i6 = 0; i6 < this.f4295c; i6++) {
            if (this.f4294b[i6] != jArr[i6]) {
                return false;
            }
        }
        return true;
    }

    public final void f(int i6) {
        if (i6 < 0 || i6 >= this.f4295c) {
            throw new IndexOutOfBoundsException(a.e.m(i6, this.f4295c, "Index:", ", Size:"));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i6) {
        f(i6);
        return Long.valueOf(this.f4294b[i6]);
    }

    @Override // com.google.android.gms.internal.cast.s6, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i6 = 1;
        for (int i10 = 0; i10 < this.f4295c; i10++) {
            long j10 = this.f4294b[i10];
            Charset charset = h7.f4214a;
            i6 = (i6 * 31) + ((int) (j10 ^ (j10 >>> 32)));
        }
        return i6;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int i6 = this.f4295c;
        for (int i10 = 0; i10 < i6; i10++) {
            if (this.f4294b[i10] == jLongValue) {
                return i10;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.cast.s6, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i6) {
        c();
        f(i6);
        long[] jArr = this.f4294b;
        long j10 = jArr[i6];
        if (i6 < this.f4295c - 1) {
            System.arraycopy(jArr, i6 + 1, jArr, i6, (r3 - i6) - 1);
        }
        this.f4295c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i6, int i10) {
        c();
        if (i10 < i6) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f4294b;
        System.arraycopy(jArr, i10, jArr, i6, this.f4295c - i10);
        this.f4295c -= i10 - i6;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i6, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        c();
        f(i6);
        long[] jArr = this.f4294b;
        long j10 = jArr[i6];
        jArr[i6] = jLongValue;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f4295c;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        long jLongValue = ((Long) obj).longValue();
        c();
        int i6 = this.f4295c;
        int length = this.f4294b.length;
        if (i6 == length) {
            long[] jArr = new long[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f4294b, 0, jArr, 0, this.f4295c);
            this.f4294b = jArr;
        }
        long[] jArr2 = this.f4294b;
        int i10 = this.f4295c;
        this.f4295c = i10 + 1;
        jArr2[i10] = jLongValue;
        return true;
    }
}
