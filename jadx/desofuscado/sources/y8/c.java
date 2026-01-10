package y8;

import j9.i;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import x8.e;
import x8.f;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class c extends f implements RandomAccess, Serializable {
    public static final c d;

    /* renamed from: a, reason: collision with root package name */
    public Object[] f11429a;

    /* renamed from: b, reason: collision with root package name */
    public int f11430b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f11431c;

    static {
        c cVar = new c(0);
        cVar.f11431c = true;
        d = cVar;
    }

    public c(int i6) {
        if (i6 < 0) {
            throw new IllegalArgumentException("capacity must be non-negative.");
        }
        this.f11429a = new Object[i6];
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        h();
        int i6 = this.f11430b;
        ((AbstractList) this).modCount++;
        i(i6, 1);
        this.f11429a[i6] = obj;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        i.f(collection, "elements");
        h();
        int size = collection.size();
        f(this.f11430b, collection, size);
        return size > 0;
    }

    @Override // x8.f
    public final int c() {
        return this.f11430b;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        h();
        k(0, this.f11430b);
    }

    @Override // x8.f
    public final Object d(int i6) {
        h();
        x8.b bVar = e.Companion;
        int i10 = this.f11430b;
        bVar.getClass();
        x8.b.a(i6, i10);
        return j(i6);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof List)) {
                return false;
            }
            if (!o9.e.c(this.f11429a, 0, this.f11430b, (List) obj)) {
                return false;
            }
        }
        return true;
    }

    public final void f(int i6, Collection collection, int i10) {
        ((AbstractList) this).modCount++;
        i(i6, i10);
        Iterator it = collection.iterator();
        for (int i11 = 0; i11 < i10; i11++) {
            this.f11429a[i6 + i11] = it.next();
        }
    }

    public final void g(int i6, Object obj) {
        ((AbstractList) this).modCount++;
        i(i6, 1);
        this.f11429a[i6] = obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i6) {
        x8.b bVar = e.Companion;
        int i10 = this.f11430b;
        bVar.getClass();
        x8.b.a(i6, i10);
        return this.f11429a[i6];
    }

    public final void h() {
        if (this.f11431c) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        Object[] objArr = this.f11429a;
        int i6 = this.f11430b;
        int iHashCode = 1;
        for (int i10 = 0; i10 < i6; i10++) {
            Object obj = objArr[i10];
            iHashCode = (iHashCode * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return iHashCode;
    }

    public final void i(int i6, int i10) {
        int i11 = this.f11430b + i10;
        if (i11 < 0) {
            throw new OutOfMemoryError();
        }
        Object[] objArr = this.f11429a;
        if (i11 > objArr.length) {
            x8.b bVar = e.Companion;
            int length = objArr.length;
            bVar.getClass();
            int i12 = length + (length >> 1);
            if (i12 - i11 < 0) {
                i12 = i11;
            }
            if (i12 - 2147483639 > 0) {
                i12 = i11 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
            }
            Object[] objArr2 = this.f11429a;
            i.f(objArr2, "<this>");
            Object[] objArrCopyOf = Arrays.copyOf(objArr2, i12);
            i.e(objArrCopyOf, "copyOf(...)");
            this.f11429a = objArrCopyOf;
        }
        Object[] objArr3 = this.f11429a;
        x8.i.D(i6 + i10, i6, this.f11430b, objArr3, objArr3);
        this.f11430b += i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        for (int i6 = 0; i6 < this.f11430b; i6++) {
            if (i.a(this.f11429a[i6], obj)) {
                return i6;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.f11430b == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    public final Object j(int i6) {
        ((AbstractList) this).modCount++;
        Object[] objArr = this.f11429a;
        Object obj = objArr[i6];
        x8.i.D(i6, i6 + 1, this.f11430b, objArr, objArr);
        Object[] objArr2 = this.f11429a;
        int i10 = this.f11430b - 1;
        i.f(objArr2, "<this>");
        objArr2[i10] = null;
        this.f11430b--;
        return obj;
    }

    public final void k(int i6, int i10) {
        if (i10 > 0) {
            ((AbstractList) this).modCount++;
        }
        Object[] objArr = this.f11429a;
        x8.i.D(i6, i6 + i10, this.f11430b, objArr, objArr);
        Object[] objArr2 = this.f11429a;
        int i11 = this.f11430b;
        i.f(objArr2, "<this>");
        for (int i12 = i11 - i10; i12 < i11; i12++) {
            objArr2[i12] = null;
        }
        this.f11430b -= i10;
    }

    public final int l(int i6, int i10, Collection collection, boolean z7) {
        int i11 = 0;
        int i12 = 0;
        while (i11 < i10) {
            int i13 = i6 + i11;
            if (collection.contains(this.f11429a[i13]) == z7) {
                Object[] objArr = this.f11429a;
                i11++;
                objArr[i12 + i6] = objArr[i13];
                i12++;
            } else {
                i11++;
            }
        }
        int i14 = i10 - i12;
        Object[] objArr2 = this.f11429a;
        x8.i.D(i6 + i12, i10 + i6, this.f11430b, objArr2, objArr2);
        Object[] objArr3 = this.f11429a;
        int i15 = this.f11430b;
        i.f(objArr3, "<this>");
        for (int i16 = i15 - i14; i16 < i15; i16++) {
            objArr3[i16] = null;
        }
        if (i14 > 0) {
            ((AbstractList) this).modCount++;
        }
        this.f11430b -= i14;
        return i14;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        for (int i6 = this.f11430b - 1; i6 >= 0; i6--) {
            if (i.a(this.f11429a[i6], obj)) {
                return i6;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        h();
        int iIndexOf = indexOf(obj);
        if (iIndexOf >= 0) {
            d(iIndexOf);
        }
        return iIndexOf >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        i.f(collection, "elements");
        h();
        return l(0, this.f11430b, collection, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        i.f(collection, "elements");
        h();
        return l(0, this.f11430b, collection, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i6, Object obj) {
        h();
        x8.b bVar = e.Companion;
        int i10 = this.f11430b;
        bVar.getClass();
        x8.b.a(i6, i10);
        Object[] objArr = this.f11429a;
        Object obj2 = objArr[i6];
        objArr[i6] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i6, int i10) {
        x8.b bVar = e.Companion;
        int i11 = this.f11430b;
        bVar.getClass();
        x8.b.c(i6, i10, i11);
        return new b(this.f11429a, i6, i10 - i6, null, this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        i.f(objArr, "array");
        int length = objArr.length;
        int i6 = this.f11430b;
        if (length < i6) {
            Object[] objArrCopyOfRange = Arrays.copyOfRange(this.f11429a, 0, i6, objArr.getClass());
            i.e(objArrCopyOfRange, "copyOfRange(...)");
            return objArrCopyOfRange;
        }
        x8.i.D(0, 0, i6, this.f11429a, objArr);
        int i10 = this.f11430b;
        if (i10 < objArr.length) {
            objArr[i10] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return o9.e.d(this.f11429a, 0, this.f11430b, this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i6) {
        x8.b bVar = e.Companion;
        int i10 = this.f11430b;
        bVar.getClass();
        x8.b.b(i6, i10);
        return new a(this, i6);
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i6, Collection collection) {
        i.f(collection, "elements");
        h();
        x8.b bVar = e.Companion;
        int i10 = this.f11430b;
        bVar.getClass();
        x8.b.b(i6, i10);
        int size = collection.size();
        f(i6, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i6, Object obj) {
        h();
        x8.b bVar = e.Companion;
        int i10 = this.f11430b;
        bVar.getClass();
        x8.b.b(i6, i10);
        ((AbstractList) this).modCount++;
        i(i6, 1);
        this.f11429a[i6] = obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return x8.i.H(this.f11429a, 0, this.f11430b);
    }
}
