package x8;

import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class h extends f {
    public static final Object[] d = new Object[0];

    /* renamed from: a, reason: collision with root package name */
    public int f11094a;

    /* renamed from: b, reason: collision with root package name */
    public Object[] f11095b = d;

    /* renamed from: c, reason: collision with root package name */
    public int f11096c;

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        addLast(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        j9.i.f(collection, "elements");
        if (collection.isEmpty()) {
            return false;
        }
        k();
        f(collection.size() + c());
        e(j(c() + this.f11094a), collection);
        return true;
    }

    public final void addFirst(Object obj) {
        k();
        f(this.f11096c + 1);
        int length = this.f11094a;
        if (length == 0) {
            Object[] objArr = this.f11095b;
            j9.i.f(objArr, "<this>");
            length = objArr.length;
        }
        int i6 = length - 1;
        this.f11094a = i6;
        this.f11095b[i6] = obj;
        this.f11096c++;
    }

    public final void addLast(Object obj) {
        k();
        f(c() + 1);
        this.f11095b[j(c() + this.f11094a)] = obj;
        this.f11096c = c() + 1;
    }

    @Override // x8.f
    public final int c() {
        return this.f11096c;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        if (!isEmpty()) {
            k();
            i(this.f11094a, j(c() + this.f11094a));
        }
        this.f11094a = 0;
        this.f11096c = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // x8.f
    public final Object d(int i6) {
        b bVar = e.Companion;
        int i10 = this.f11096c;
        bVar.getClass();
        b.a(i6, i10);
        if (i6 == k.O(this)) {
            return removeLast();
        }
        if (i6 == 0) {
            return removeFirst();
        }
        k();
        int iJ = j(this.f11094a + i6);
        Object[] objArr = this.f11095b;
        Object obj = objArr[iJ];
        if (i6 < (this.f11096c >> 1)) {
            int i11 = this.f11094a;
            if (iJ >= i11) {
                i.D(i11 + 1, i11, iJ, objArr, objArr);
            } else {
                i.D(1, 0, iJ, objArr, objArr);
                Object[] objArr2 = this.f11095b;
                objArr2[0] = objArr2[objArr2.length - 1];
                int i12 = this.f11094a;
                i.D(i12 + 1, i12, objArr2.length - 1, objArr2, objArr2);
            }
            Object[] objArr3 = this.f11095b;
            int i13 = this.f11094a;
            objArr3[i13] = null;
            this.f11094a = g(i13);
        } else {
            int iJ2 = j(k.O(this) + this.f11094a);
            if (iJ <= iJ2) {
                Object[] objArr4 = this.f11095b;
                i.D(iJ, iJ + 1, iJ2 + 1, objArr4, objArr4);
            } else {
                Object[] objArr5 = this.f11095b;
                i.D(iJ, iJ + 1, objArr5.length, objArr5, objArr5);
                Object[] objArr6 = this.f11095b;
                objArr6[objArr6.length - 1] = objArr6[0];
                i.D(0, 1, iJ2 + 1, objArr6, objArr6);
            }
            this.f11095b[iJ2] = null;
        }
        this.f11096c--;
        return obj;
    }

    public final void e(int i6, Collection collection) {
        Iterator it = collection.iterator();
        int length = this.f11095b.length;
        while (i6 < length && it.hasNext()) {
            this.f11095b[i6] = it.next();
            i6++;
        }
        int i10 = this.f11094a;
        for (int i11 = 0; i11 < i10 && it.hasNext(); i11++) {
            this.f11095b[i11] = it.next();
        }
        this.f11096c = collection.size() + c();
    }

    public final void f(int i6) {
        if (i6 < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.f11095b;
        if (i6 <= objArr.length) {
            return;
        }
        if (objArr == d) {
            if (i6 < 10) {
                i6 = 10;
            }
            this.f11095b = new Object[i6];
            return;
        }
        b bVar = e.Companion;
        int length = objArr.length;
        bVar.getClass();
        int i10 = length + (length >> 1);
        if (i10 - i6 < 0) {
            i10 = i6;
        }
        if (i10 - 2147483639 > 0) {
            i10 = i6 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
        }
        Object[] objArr2 = new Object[i10];
        Object[] objArr3 = this.f11095b;
        i.D(0, this.f11094a, objArr3.length, objArr3, objArr2);
        Object[] objArr4 = this.f11095b;
        int length2 = objArr4.length;
        int i11 = this.f11094a;
        i.D(length2 - i11, 0, i11, objArr4, objArr2);
        this.f11094a = 0;
        this.f11095b = objArr2;
    }

    public final int g(int i6) {
        j9.i.f(this.f11095b, "<this>");
        if (i6 == r0.length - 1) {
            return 0;
        }
        return i6 + 1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i6) {
        b bVar = e.Companion;
        int i10 = this.f11096c;
        bVar.getClass();
        b.a(i6, i10);
        return this.f11095b[j(this.f11094a + i6)];
    }

    public final int h(int i6) {
        return i6 < 0 ? i6 + this.f11095b.length : i6;
    }

    public final void i(int i6, int i10) {
        if (i6 < i10) {
            i.I(this.f11095b, i6, i10);
            return;
        }
        Object[] objArr = this.f11095b;
        i.I(objArr, i6, objArr.length);
        i.I(this.f11095b, 0, i10);
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i6;
        int iJ = j(c() + this.f11094a);
        int length = this.f11094a;
        if (length < iJ) {
            while (length < iJ) {
                if (j9.i.a(obj, this.f11095b[length])) {
                    i6 = this.f11094a;
                } else {
                    length++;
                }
            }
            return -1;
        }
        if (length < iJ) {
            return -1;
        }
        int length2 = this.f11095b.length;
        while (true) {
            if (length >= length2) {
                for (int i10 = 0; i10 < iJ; i10++) {
                    if (j9.i.a(obj, this.f11095b[i10])) {
                        length = i10 + this.f11095b.length;
                        i6 = this.f11094a;
                    }
                }
                return -1;
            }
            if (j9.i.a(obj, this.f11095b[length])) {
                i6 = this.f11094a;
                break;
            }
            length++;
        }
        return length - i6;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return c() == 0;
    }

    public final int j(int i6) {
        Object[] objArr = this.f11095b;
        return i6 >= objArr.length ? i6 - objArr.length : i6;
    }

    public final void k() {
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int length;
        int i6;
        int iJ = j(this.f11096c + this.f11094a);
        int i10 = this.f11094a;
        if (i10 < iJ) {
            length = iJ - 1;
            if (i10 <= length) {
                while (!j9.i.a(obj, this.f11095b[length])) {
                    if (length != i10) {
                        length--;
                    }
                }
                i6 = this.f11094a;
                return length - i6;
            }
            return -1;
        }
        if (i10 > iJ) {
            int i11 = iJ - 1;
            while (true) {
                if (-1 >= i11) {
                    Object[] objArr = this.f11095b;
                    j9.i.f(objArr, "<this>");
                    length = objArr.length - 1;
                    int i12 = this.f11094a;
                    if (i12 <= length) {
                        while (!j9.i.a(obj, this.f11095b[length])) {
                            if (length != i12) {
                                length--;
                            }
                        }
                        i6 = this.f11094a;
                    }
                } else {
                    if (j9.i.a(obj, this.f11095b[i11])) {
                        length = i11 + this.f11095b.length;
                        i6 = this.f11094a;
                        break;
                    }
                    i11--;
                }
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        d(iIndexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        int iJ;
        j9.i.f(collection, "elements");
        boolean z7 = false;
        z7 = false;
        z7 = false;
        if (!isEmpty() && this.f11095b.length != 0) {
            int iJ2 = j(this.f11096c + this.f11094a);
            int i6 = this.f11094a;
            if (i6 < iJ2) {
                iJ = i6;
                while (i6 < iJ2) {
                    Object obj = this.f11095b[i6];
                    if (collection.contains(obj)) {
                        z7 = true;
                    } else {
                        this.f11095b[iJ] = obj;
                        iJ++;
                    }
                    i6++;
                }
                i.I(this.f11095b, iJ, iJ2);
            } else {
                int length = this.f11095b.length;
                int i10 = i6;
                boolean z10 = false;
                while (i6 < length) {
                    Object[] objArr = this.f11095b;
                    Object obj2 = objArr[i6];
                    objArr[i6] = null;
                    if (collection.contains(obj2)) {
                        z10 = true;
                    } else {
                        this.f11095b[i10] = obj2;
                        i10++;
                    }
                    i6++;
                }
                iJ = j(i10);
                for (int i11 = 0; i11 < iJ2; i11++) {
                    Object[] objArr2 = this.f11095b;
                    Object obj3 = objArr2[i11];
                    objArr2[i11] = null;
                    if (collection.contains(obj3)) {
                        z10 = true;
                    } else {
                        this.f11095b[iJ] = obj3;
                        iJ = g(iJ);
                    }
                }
                z7 = z10;
            }
            if (z7) {
                k();
                this.f11096c = h(iJ - this.f11094a);
            }
        }
        return z7;
    }

    public final Object removeFirst() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        k();
        Object[] objArr = this.f11095b;
        int i6 = this.f11094a;
        Object obj = objArr[i6];
        objArr[i6] = null;
        this.f11094a = g(i6);
        this.f11096c = c() - 1;
        return obj;
    }

    public final Object removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        k();
        int iJ = j(k.O(this) + this.f11094a);
        Object[] objArr = this.f11095b;
        Object obj = objArr[iJ];
        objArr[iJ] = null;
        this.f11096c = c() - 1;
        return obj;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i6, int i10) {
        b bVar = e.Companion;
        int i11 = this.f11096c;
        bVar.getClass();
        b.c(i6, i10, i11);
        int i12 = i10 - i6;
        if (i12 == 0) {
            return;
        }
        if (i12 == this.f11096c) {
            clear();
            return;
        }
        if (i12 == 1) {
            d(i6);
            return;
        }
        k();
        if (i6 < this.f11096c - i10) {
            int iJ = j((i6 - 1) + this.f11094a);
            int iJ2 = j((i10 - 1) + this.f11094a);
            while (i6 > 0) {
                int i13 = iJ + 1;
                int iMin = Math.min(i6, Math.min(i13, iJ2 + 1));
                Object[] objArr = this.f11095b;
                int i14 = iJ2 - iMin;
                int i15 = iJ - iMin;
                i.D(i14 + 1, i15 + 1, i13, objArr, objArr);
                iJ = h(i15);
                iJ2 = h(i14);
                i6 -= iMin;
            }
            int iJ3 = j(this.f11094a + i12);
            i(this.f11094a, iJ3);
            this.f11094a = iJ3;
        } else {
            int iJ4 = j(this.f11094a + i10);
            int iJ5 = j(this.f11094a + i6);
            int i16 = this.f11096c;
            while (true) {
                i16 -= i10;
                if (i16 <= 0) {
                    break;
                }
                Object[] objArr2 = this.f11095b;
                i10 = Math.min(i16, Math.min(objArr2.length - iJ4, objArr2.length - iJ5));
                Object[] objArr3 = this.f11095b;
                int i17 = iJ4 + i10;
                i.D(iJ5, iJ4, i17, objArr3, objArr3);
                iJ4 = j(i17);
                iJ5 = j(iJ5 + i10);
            }
            int iJ6 = j(this.f11096c + this.f11094a);
            i(h(iJ6 - i12), iJ6);
        }
        this.f11096c -= i12;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        int iJ;
        j9.i.f(collection, "elements");
        boolean z7 = false;
        z7 = false;
        z7 = false;
        if (!isEmpty() && this.f11095b.length != 0) {
            int iJ2 = j(this.f11096c + this.f11094a);
            int i6 = this.f11094a;
            if (i6 < iJ2) {
                iJ = i6;
                while (i6 < iJ2) {
                    Object obj = this.f11095b[i6];
                    if (collection.contains(obj)) {
                        this.f11095b[iJ] = obj;
                        iJ++;
                    } else {
                        z7 = true;
                    }
                    i6++;
                }
                i.I(this.f11095b, iJ, iJ2);
            } else {
                int length = this.f11095b.length;
                int i10 = i6;
                boolean z10 = false;
                while (i6 < length) {
                    Object[] objArr = this.f11095b;
                    Object obj2 = objArr[i6];
                    objArr[i6] = null;
                    if (collection.contains(obj2)) {
                        this.f11095b[i10] = obj2;
                        i10++;
                    } else {
                        z10 = true;
                    }
                    i6++;
                }
                iJ = j(i10);
                for (int i11 = 0; i11 < iJ2; i11++) {
                    Object[] objArr2 = this.f11095b;
                    Object obj3 = objArr2[i11];
                    objArr2[i11] = null;
                    if (collection.contains(obj3)) {
                        this.f11095b[iJ] = obj3;
                        iJ = g(iJ);
                    } else {
                        z10 = true;
                    }
                }
                z7 = z10;
            }
            if (z7) {
                k();
                this.f11096c = h(iJ - this.f11094a);
            }
        }
        return z7;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i6, Object obj) {
        b bVar = e.Companion;
        int i10 = this.f11096c;
        bVar.getClass();
        b.a(i6, i10);
        int iJ = j(this.f11094a + i6);
        Object[] objArr = this.f11095b;
        Object obj2 = objArr[iJ];
        objArr[iJ] = obj;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[c()]);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i6, Object obj) {
        int length;
        b bVar = e.Companion;
        int i10 = this.f11096c;
        bVar.getClass();
        b.b(i6, i10);
        if (i6 == this.f11096c) {
            addLast(obj);
            return;
        }
        if (i6 == 0) {
            addFirst(obj);
            return;
        }
        k();
        f(this.f11096c + 1);
        int iJ = j(this.f11094a + i6);
        int i11 = this.f11096c;
        if (i6 < ((i11 + 1) >> 1)) {
            if (iJ == 0) {
                Object[] objArr = this.f11095b;
                j9.i.f(objArr, "<this>");
                iJ = objArr.length;
            }
            int i12 = iJ - 1;
            int i13 = this.f11094a;
            if (i13 == 0) {
                Object[] objArr2 = this.f11095b;
                j9.i.f(objArr2, "<this>");
                length = objArr2.length - 1;
            } else {
                length = i13 - 1;
            }
            int i14 = this.f11094a;
            if (i12 >= i14) {
                Object[] objArr3 = this.f11095b;
                objArr3[length] = objArr3[i14];
                i.D(i14, i14 + 1, i12 + 1, objArr3, objArr3);
            } else {
                Object[] objArr4 = this.f11095b;
                i.D(i14 - 1, i14, objArr4.length, objArr4, objArr4);
                Object[] objArr5 = this.f11095b;
                objArr5[objArr5.length - 1] = objArr5[0];
                i.D(0, 1, i12 + 1, objArr5, objArr5);
            }
            this.f11095b[i12] = obj;
            this.f11094a = length;
        } else {
            int iJ2 = j(i11 + this.f11094a);
            if (iJ < iJ2) {
                Object[] objArr6 = this.f11095b;
                i.D(iJ + 1, iJ, iJ2, objArr6, objArr6);
            } else {
                Object[] objArr7 = this.f11095b;
                i.D(1, 0, iJ2, objArr7, objArr7);
                Object[] objArr8 = this.f11095b;
                objArr8[0] = objArr8[objArr8.length - 1];
                i.D(iJ + 1, iJ, objArr8.length - 1, objArr8, objArr8);
            }
            this.f11095b[iJ] = obj;
        }
        this.f11096c++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) throws NegativeArraySizeException {
        j9.i.f(objArr, "array");
        int length = objArr.length;
        int i6 = this.f11096c;
        if (length < i6) {
            Object objNewInstance = Array.newInstance(objArr.getClass().getComponentType(), i6);
            j9.i.d(objNewInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
            objArr = (Object[]) objNewInstance;
        }
        int iJ = j(this.f11096c + this.f11094a);
        int i10 = this.f11094a;
        if (i10 < iJ) {
            i.F(i10, iJ, 2, this.f11095b, objArr);
        } else if (!isEmpty()) {
            Object[] objArr2 = this.f11095b;
            i.D(0, this.f11094a, objArr2.length, objArr2, objArr);
            Object[] objArr3 = this.f11095b;
            i.D(objArr3.length - this.f11094a, 0, iJ, objArr3, objArr);
        }
        int i11 = this.f11096c;
        if (i11 < objArr.length) {
            objArr[i11] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i6, Collection collection) {
        j9.i.f(collection, "elements");
        b bVar = e.Companion;
        int i10 = this.f11096c;
        bVar.getClass();
        b.b(i6, i10);
        if (collection.isEmpty()) {
            return false;
        }
        if (i6 == this.f11096c) {
            return addAll(collection);
        }
        k();
        f(collection.size() + this.f11096c);
        int iJ = j(this.f11096c + this.f11094a);
        int iJ2 = j(this.f11094a + i6);
        int size = collection.size();
        if (i6 < ((this.f11096c + 1) >> 1)) {
            int i11 = this.f11094a;
            int length = i11 - size;
            if (iJ2 < i11) {
                Object[] objArr = this.f11095b;
                i.D(length, i11, objArr.length, objArr, objArr);
                if (size >= iJ2) {
                    Object[] objArr2 = this.f11095b;
                    i.D(objArr2.length - size, 0, iJ2, objArr2, objArr2);
                } else {
                    Object[] objArr3 = this.f11095b;
                    i.D(objArr3.length - size, 0, size, objArr3, objArr3);
                    Object[] objArr4 = this.f11095b;
                    i.D(0, size, iJ2, objArr4, objArr4);
                }
            } else if (length >= 0) {
                Object[] objArr5 = this.f11095b;
                i.D(length, i11, iJ2, objArr5, objArr5);
            } else {
                Object[] objArr6 = this.f11095b;
                length += objArr6.length;
                int i12 = iJ2 - i11;
                int length2 = objArr6.length - length;
                if (length2 >= i12) {
                    i.D(length, i11, iJ2, objArr6, objArr6);
                } else {
                    i.D(length, i11, i11 + length2, objArr6, objArr6);
                    Object[] objArr7 = this.f11095b;
                    i.D(0, this.f11094a + length2, iJ2, objArr7, objArr7);
                }
            }
            this.f11094a = length;
            e(h(iJ2 - size), collection);
        } else {
            int i13 = iJ2 + size;
            if (iJ2 < iJ) {
                int i14 = size + iJ;
                Object[] objArr8 = this.f11095b;
                if (i14 <= objArr8.length) {
                    i.D(i13, iJ2, iJ, objArr8, objArr8);
                } else if (i13 >= objArr8.length) {
                    i.D(i13 - objArr8.length, iJ2, iJ, objArr8, objArr8);
                } else {
                    int length3 = iJ - (i14 - objArr8.length);
                    i.D(0, length3, iJ, objArr8, objArr8);
                    Object[] objArr9 = this.f11095b;
                    i.D(i13, iJ2, length3, objArr9, objArr9);
                }
            } else {
                Object[] objArr10 = this.f11095b;
                i.D(size, 0, iJ, objArr10, objArr10);
                Object[] objArr11 = this.f11095b;
                if (i13 >= objArr11.length) {
                    i.D(i13 - objArr11.length, iJ2, objArr11.length, objArr11, objArr11);
                } else {
                    i.D(0, objArr11.length - size, objArr11.length, objArr11, objArr11);
                    Object[] objArr12 = this.f11095b;
                    i.D(i13, iJ2, objArr12.length - size, objArr12, objArr12);
                }
            }
            e(iJ2, collection);
        }
        return true;
    }
}
