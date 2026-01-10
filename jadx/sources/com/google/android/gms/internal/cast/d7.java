package com.google.android.gms.internal.cast;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d7 extends s6 implements RandomAccess, e7 {
    public static final int[] d;

    /* renamed from: e, reason: collision with root package name */
    public static final d7 f4135e;

    /* renamed from: b, reason: collision with root package name */
    public int[] f4136b;

    /* renamed from: c, reason: collision with root package name */
    public int f4137c;

    static {
        int[] iArr = new int[0];
        d = iArr;
        f4135e = new d7(0, false, iArr);
    }

    public d7(int i6, boolean z7, int[] iArr) {
        super(z7);
        this.f4136b = iArr;
        this.f4137c = i6;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i6, Object obj) {
        int i10;
        int iIntValue = ((Integer) obj).intValue();
        c();
        if (i6 < 0 || i6 > (i10 = this.f4137c)) {
            throw new IndexOutOfBoundsException(a.e.m(i6, this.f4137c, "Index:", ", Size:"));
        }
        int i11 = i6 + 1;
        int[] iArr = this.f4136b;
        int length = iArr.length;
        if (i10 < length) {
            System.arraycopy(iArr, i6, iArr, i11, i10 - i6);
        } else {
            int[] iArr2 = new int[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f4136b, 0, iArr2, 0, i6);
            System.arraycopy(this.f4136b, i6, iArr2, i11, this.f4137c - i6);
            this.f4136b = iArr2;
        }
        this.f4136b[i6] = iIntValue;
        this.f4137c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.cast.s6, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        c();
        Charset charset = h7.f4214a;
        collection.getClass();
        if (!(collection instanceof d7)) {
            return super.addAll(collection);
        }
        d7 d7Var = (d7) collection;
        int i6 = d7Var.f4137c;
        if (i6 == 0) {
            return false;
        }
        int i10 = this.f4137c;
        if (Integer.MAX_VALUE - i10 < i6) {
            throw new OutOfMemoryError();
        }
        int i11 = i10 + i6;
        int[] iArr = this.f4136b;
        if (i11 > iArr.length) {
            this.f4136b = Arrays.copyOf(iArr, i11);
        }
        System.arraycopy(d7Var.f4136b, 0, this.f4136b, this.f4137c, d7Var.f4137c);
        this.f4137c = i11;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final int e(int i6) {
        h(i6);
        return this.f4136b[i6];
    }

    @Override // com.google.android.gms.internal.cast.s6, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d7)) {
            return super.equals(obj);
        }
        d7 d7Var = (d7) obj;
        if (this.f4137c != d7Var.f4137c) {
            return false;
        }
        int[] iArr = d7Var.f4136b;
        for (int i6 = 0; i6 < this.f4137c; i6++) {
            if (this.f4136b[i6] != iArr[i6]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.cast.g7
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public final d7 a(int i6) {
        if (i6 >= this.f4137c) {
            return new d7(this.f4137c, true, i6 == 0 ? d : Arrays.copyOf(this.f4136b, i6));
        }
        throw new IllegalArgumentException();
    }

    public final void g(int i6) {
        c();
        int i10 = this.f4137c;
        int length = this.f4136b.length;
        if (i10 == length) {
            int[] iArr = new int[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f4136b, 0, iArr, 0, this.f4137c);
            this.f4136b = iArr;
        }
        int[] iArr2 = this.f4136b;
        int i11 = this.f4137c;
        this.f4137c = i11 + 1;
        iArr2[i11] = i6;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i6) {
        h(i6);
        return Integer.valueOf(this.f4136b[i6]);
    }

    public final void h(int i6) {
        if (i6 < 0 || i6 >= this.f4137c) {
            throw new IndexOutOfBoundsException(a.e.m(i6, this.f4137c, "Index:", ", Size:"));
        }
    }

    @Override // com.google.android.gms.internal.cast.s6, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i6 = 1;
        for (int i10 = 0; i10 < this.f4137c; i10++) {
            i6 = (i6 * 31) + this.f4136b[i10];
        }
        return i6;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int i6 = this.f4137c;
        for (int i10 = 0; i10 < i6; i10++) {
            if (this.f4136b[i10] == iIntValue) {
                return i10;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.cast.s6, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i6) {
        c();
        h(i6);
        int[] iArr = this.f4136b;
        int i10 = iArr[i6];
        if (i6 < this.f4137c - 1) {
            System.arraycopy(iArr, i6 + 1, iArr, i6, (r2 - i6) - 1);
        }
        this.f4137c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i10);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i6, int i10) {
        c();
        if (i10 < i6) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f4136b;
        System.arraycopy(iArr, i10, iArr, i6, this.f4137c - i10);
        this.f4137c -= i10 - i6;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i6, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        c();
        h(i6);
        int[] iArr = this.f4136b;
        int i10 = iArr[i6];
        iArr[i6] = iIntValue;
        return Integer.valueOf(i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f4137c;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        g(((Integer) obj).intValue());
        return true;
    }
}
