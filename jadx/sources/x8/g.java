package x8;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class g implements Collection, k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f11092a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f11093b;

    public g(Object[] objArr, boolean z7) {
        j9.i.f(objArr, "values");
        this.f11092a = objArr;
        this.f11093b = z7;
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        return i.B(this.f11092a, obj);
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        j9.i.f(collection, "elements");
        if (collection.isEmpty()) {
            return true;
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!i.B(this.f11092a, it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.f11092a.length == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        Object[] objArr = this.f11092a;
        j9.i.f(objArr, "array");
        return new j9.a(objArr);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f11092a.length;
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        Object[] objArr = this.f11092a;
        j9.i.f(objArr, "<this>");
        if (this.f11093b && objArr.getClass().equals(Object[].class)) {
            return objArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length, Object[].class);
        j9.i.e(objArrCopyOf, "copyOf(...)");
        return objArrCopyOf;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        j9.i.f(objArr, "array");
        return j9.i.n(this, objArr);
    }
}
