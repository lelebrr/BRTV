package d7;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class u1 extends q1 implements List, RandomAccess {

    /* renamed from: b, reason: collision with root package name */
    public static final g1 f6276b = new g1(c5.f6115e, 0);

    public static c5 j(Object[] objArr, int i6) {
        return i6 == 0 ? c5.f6115e : new c5(objArr, i6);
    }

    public static s1 k() {
        return new s1(4);
    }

    public static s1 l(int i6) {
        d0.d(i6, "expectedSize");
        return new s1(i6);
    }

    public static u1 m(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return n((Collection) iterable);
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return c5.f6115e;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return r(next);
        }
        s1 s1Var = new s1(4);
        s1Var.a(next);
        while (it.hasNext()) {
            s1Var.a(it.next());
        }
        return s1Var.g();
    }

    public static u1 n(Collection collection) {
        if (!(collection instanceof q1)) {
            Object[] array = collection.toArray();
            d0.b(array, array.length);
            return j(array, array.length);
        }
        u1 u1VarC = ((q1) collection).c();
        if (!u1VarC.h()) {
            return u1VarC;
        }
        Object[] array2 = u1VarC.toArray(q1.f6242a);
        return j(array2, array2.length);
    }

    public static c5 o(Object[] objArr) {
        if (objArr.length == 0) {
            return c5.f6115e;
        }
        Object[] objArr2 = (Object[]) objArr.clone();
        d0.b(objArr2, objArr2.length);
        return j(objArr2, objArr2.length);
    }

    public static c5 q() {
        return c5.f6115e;
    }

    public static c5 r(Object obj) {
        Object[] objArr = {obj};
        d0.b(objArr, 1);
        return j(objArr, 1);
    }

    public static c5 s(Object obj, Object obj2) {
        Object[] objArr = {obj, obj2};
        d0.b(objArr, 2);
        return j(objArr, 2);
    }

    public static c5 t(Object obj, Object obj2, Object obj3) {
        Object[] objArr = {obj, obj2, obj3};
        d0.b(objArr, 3);
        return j(objArr, 3);
    }

    public static c5 u(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        Object[] objArr = {obj, obj2, obj3, obj4, obj5};
        d0.b(objArr, 5);
        return j(objArr, 5);
    }

    public static c5 v(b5 b5Var, List list) {
        b5Var.getClass();
        if (!(list instanceof Collection)) {
            list = d0.s(list.iterator());
        }
        Object[] array = list.toArray();
        d0.b(array, array.length);
        Arrays.sort(array, b5Var);
        return j(array, array.length);
    }

    @Override // java.util.List
    public final void add(int i6, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i6, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // d7.q1, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // d7.q1
    public int d(Object[] objArr, int i6) {
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            objArr[i6 + i10] = get(i10);
        }
        return i6 + size;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i6 = 0; i6 < size; i6++) {
                        if (b7.b.p(get(i6), list.get(i6))) {
                        }
                    }
                    return true;
                }
                Iterator it = iterator();
                Iterator it2 = list.iterator();
                while (it.hasNext()) {
                    if (it2.hasNext() && b7.b.p(it.next(), it2.next())) {
                    }
                }
                return !it2.hasNext();
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i6 = 1;
        for (int i10 = 0; i10 < size; i10++) {
            i6 = ~(~(get(i10).hashCode() + (i6 * 31)));
        }
        return i6;
    }

    @Override // d7.q1
    /* renamed from: i */
    public final s5 iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i6 = 0; i6 < size; i6++) {
            if (obj.equals(get(i6))) {
                return i6;
            }
        }
        return -1;
    }

    @Override // d7.q1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public final g1 listIterator(int i6) {
        b7.b.k(i6, size());
        return isEmpty() ? f6276b : new g1(this, i6);
    }

    @Override // java.util.List
    public final Object remove(int i6) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final Object set(int i6, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    /* renamed from: w, reason: merged with bridge method [inline-methods] */
    public u1 subList(int i6, int i10) {
        b7.b.l(i6, i10, size());
        int i11 = i10 - i6;
        return i11 == size() ? this : i11 == 0 ? c5.f6115e : new t1(this, i6, i11);
    }

    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // d7.q1
    public final u1 c() {
        return this;
    }
}
