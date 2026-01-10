package y8;

import j9.i;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import x8.e;
import x8.f;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class b extends f implements RandomAccess, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public Object[] f11425a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11426b;

    /* renamed from: c, reason: collision with root package name */
    public int f11427c;
    public final b d;

    /* renamed from: e, reason: collision with root package name */
    public final c f11428e;

    public b(Object[] objArr, int i6, int i10, b bVar, c cVar) {
        i.f(objArr, "backing");
        i.f(cVar, "root");
        this.f11425a = objArr;
        this.f11426b = i6;
        this.f11427c = i10;
        this.d = bVar;
        this.f11428e = cVar;
        ((AbstractList) this).modCount = ((AbstractList) cVar).modCount;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        i();
        h();
        g(this.f11426b + this.f11427c, obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        i.f(collection, "elements");
        i();
        h();
        int size = collection.size();
        f(this.f11426b + this.f11427c, collection, size);
        return size > 0;
    }

    @Override // x8.f
    public final int c() {
        h();
        return this.f11427c;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        i();
        h();
        k(this.f11426b, this.f11427c);
    }

    @Override // x8.f
    public final Object d(int i6) {
        i();
        h();
        x8.b bVar = e.Companion;
        int i10 = this.f11427c;
        bVar.getClass();
        x8.b.a(i6, i10);
        return j(this.f11426b + i6);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        h();
        if (obj != this) {
            if (obj instanceof List) {
                if (o9.e.c(this.f11425a, this.f11426b, this.f11427c, (List) obj)) {
                }
            }
            return false;
        }
        return true;
    }

    public final void f(int i6, Collection collection, int i10) {
        ((AbstractList) this).modCount++;
        c cVar = this.f11428e;
        b bVar = this.d;
        if (bVar != null) {
            bVar.f(i6, collection, i10);
        } else {
            c cVar2 = c.d;
            cVar.f(i6, collection, i10);
        }
        this.f11425a = cVar.f11429a;
        this.f11427c += i10;
    }

    public final void g(int i6, Object obj) {
        ((AbstractList) this).modCount++;
        c cVar = this.f11428e;
        b bVar = this.d;
        if (bVar != null) {
            bVar.g(i6, obj);
        } else {
            c cVar2 = c.d;
            cVar.g(i6, obj);
        }
        this.f11425a = cVar.f11429a;
        this.f11427c++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i6) {
        h();
        x8.b bVar = e.Companion;
        int i10 = this.f11427c;
        bVar.getClass();
        x8.b.a(i6, i10);
        return this.f11425a[this.f11426b + i6];
    }

    public final void h() {
        if (((AbstractList) this.f11428e).modCount != ((AbstractList) this).modCount) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        h();
        Object[] objArr = this.f11425a;
        int i6 = this.f11427c;
        int iHashCode = 1;
        for (int i10 = 0; i10 < i6; i10++) {
            Object obj = objArr[this.f11426b + i10];
            iHashCode = (iHashCode * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return iHashCode;
    }

    public final void i() {
        if (this.f11428e.f11431c) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        h();
        for (int i6 = 0; i6 < this.f11427c; i6++) {
            if (i.a(this.f11425a[this.f11426b + i6], obj)) {
                return i6;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        h();
        return this.f11427c == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    public final Object j(int i6) {
        Object objJ;
        ((AbstractList) this).modCount++;
        b bVar = this.d;
        if (bVar != null) {
            objJ = bVar.j(i6);
        } else {
            c cVar = c.d;
            objJ = this.f11428e.j(i6);
        }
        this.f11427c--;
        return objJ;
    }

    public final void k(int i6, int i10) {
        if (i10 > 0) {
            ((AbstractList) this).modCount++;
        }
        b bVar = this.d;
        if (bVar != null) {
            bVar.k(i6, i10);
        } else {
            c cVar = c.d;
            this.f11428e.k(i6, i10);
        }
        this.f11427c -= i10;
    }

    public final int l(int i6, int i10, Collection collection, boolean z7) {
        int iL;
        b bVar = this.d;
        if (bVar != null) {
            iL = bVar.l(i6, i10, collection, z7);
        } else {
            c cVar = c.d;
            iL = this.f11428e.l(i6, i10, collection, z7);
        }
        if (iL > 0) {
            ((AbstractList) this).modCount++;
        }
        this.f11427c -= iL;
        return iL;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        h();
        for (int i6 = this.f11427c - 1; i6 >= 0; i6--) {
            if (i.a(this.f11425a[this.f11426b + i6], obj)) {
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
        i();
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
        i();
        h();
        return l(this.f11426b, this.f11427c, collection, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        i.f(collection, "elements");
        i();
        h();
        return l(this.f11426b, this.f11427c, collection, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i6, Object obj) {
        i();
        h();
        x8.b bVar = e.Companion;
        int i10 = this.f11427c;
        bVar.getClass();
        x8.b.a(i6, i10);
        Object[] objArr = this.f11425a;
        int i11 = this.f11426b + i6;
        Object obj2 = objArr[i11];
        objArr[i11] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i6, int i10) {
        x8.b bVar = e.Companion;
        int i11 = this.f11427c;
        bVar.getClass();
        x8.b.c(i6, i10, i11);
        return new b(this.f11425a, this.f11426b + i6, i10 - i6, this, this.f11428e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        i.f(objArr, "array");
        h();
        int length = objArr.length;
        int i6 = this.f11427c;
        int i10 = this.f11426b;
        if (length < i6) {
            Object[] objArrCopyOfRange = Arrays.copyOfRange(this.f11425a, i10, i6 + i10, objArr.getClass());
            i.e(objArrCopyOfRange, "copyOfRange(...)");
            return objArrCopyOfRange;
        }
        x8.i.D(0, i10, i6 + i10, this.f11425a, objArr);
        int i11 = this.f11427c;
        if (i11 < objArr.length) {
            objArr[i11] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        h();
        return o9.e.d(this.f11425a, this.f11426b, this.f11427c, this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i6) {
        h();
        x8.b bVar = e.Companion;
        int i10 = this.f11427c;
        bVar.getClass();
        x8.b.b(i6, i10);
        return new a(this, i6);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i6, Object obj) {
        i();
        h();
        x8.b bVar = e.Companion;
        int i10 = this.f11427c;
        bVar.getClass();
        x8.b.b(i6, i10);
        g(this.f11426b + i6, obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i6, Collection collection) {
        i.f(collection, "elements");
        i();
        h();
        x8.b bVar = e.Companion;
        int i10 = this.f11427c;
        bVar.getClass();
        x8.b.b(i6, i10);
        int size = collection.size();
        f(this.f11426b + i6, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        h();
        Object[] objArr = this.f11425a;
        int i6 = this.f11427c;
        int i10 = this.f11426b;
        return x8.i.H(objArr, i10, i6 + i10);
    }
}
