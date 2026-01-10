package d7;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class d0 {
    public static int A(int i6) {
        return (int) (Integer.rotateLeft((int) (i6 * (-862048943)), 15) * 461845907);
    }

    public static int B(Object obj) {
        return A(obj == null ? 0 : obj.hashCode());
    }

    public static int C(int i6, Object obj) {
        return obj instanceof byte[] ? ((byte[]) obj)[i6] & 255 : obj instanceof short[] ? ((short[]) obj)[i6] & 65535 : ((int[]) obj)[i6];
    }

    public static void D(int i6, int i10, Object obj) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i6] = (byte) i10;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i6] = (short) i10;
        } else {
            ((int[]) obj)[i6] = i10;
        }
    }

    public static int E(int i6) {
        int iMax = Math.max(i6 + 1, 2);
        int iHighestOneBit = Integer.highestOneBit(iMax);
        if (iMax > ((int) (1.0d * iHighestOneBit))) {
            int i10 = iHighestOneBit << 1;
            iHighestOneBit = i10 > 0 ? i10 : 1073741824;
        }
        return Math.max(4, iHighestOneBit);
    }

    public static String F(Iterable iterable) {
        Iterator it = iterable.iterator();
        StringBuilder sb = new StringBuilder("[");
        boolean z7 = true;
        while (it.hasNext()) {
            if (!z7) {
                sb.append(", ");
            }
            sb.append(it.next());
            z7 = false;
        }
        sb.append(']');
        return sb.toString();
    }

    public static String G(Map map) {
        int size = map.size();
        d(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(size * 8, 1073741824L));
        sb.append('{');
        boolean z7 = true;
        for (Map.Entry entry : map.entrySet()) {
            if (!z7) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z7 = false;
        }
        sb.append('}');
        return sb.toString();
    }

    public static AbstractList H(List list, b7.i iVar) {
        return list instanceof RandomAccess ? new x2(list, iVar) : new z2(list, iVar);
    }

    public static NavigableSet I(NavigableSet navigableSet) {
        return ((navigableSet instanceof q1) || (navigableSet instanceof q5)) ? navigableSet : new q5(navigableSet);
    }

    public static boolean a(Collection collection, Iterator it) {
        collection.getClass();
        it.getClass();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= collection.add(it.next());
        }
        return zAdd;
    }

    public static void b(Object[] objArr, int i6) {
        for (int i10 = 0; i10 < i6; i10++) {
            if (objArr[i10] == null) {
                throw new NullPointerException(a.e.n(i10, "at index "));
            }
        }
    }

    public static void c(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException(ea.q.g(obj2, "null key in entry: null="));
        }
        if (obj2 != null) {
            return;
        }
        throw new NullPointerException("null value in entry: " + obj + "=null");
    }

    public static void d(int i6, String str) {
        if (i6 >= 0) {
            return;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i6);
    }

    public static void e(Iterator it) {
        it.getClass();
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    public static boolean f(Iterator it, Object obj) {
        if (obj == null) {
            while (it.hasNext()) {
                if (it.next() == null) {
                    return true;
                }
            }
            return false;
        }
        while (it.hasNext()) {
            if (obj.equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static Object g(int i6) {
        if (i6 < 2 || i6 > 1073741824 || Integer.highestOneBit(i6) != i6) {
            throw new IllegalArgumentException(a.e.n(i6, "must be power of 2 between 2^1 and 2^30: "));
        }
        return i6 <= 256 ? new byte[i6] : i6 <= 65536 ? new short[i6] : new int[i6];
    }

    public static boolean h(v4 v4Var, Object obj) {
        if (obj == v4Var) {
            return true;
        }
        if (obj instanceof v4) {
            v4 v4Var2 = (v4) obj;
            if (v4Var.size() == v4Var2.size() && v4Var.entrySet().size() == v4Var2.entrySet().size()) {
                for (w4 w4Var : v4Var2.entrySet()) {
                    if (v4Var.count(w4Var.b()) != w4Var.a()) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static boolean i(Map map, Object obj) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    public static boolean j(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static e0 k(Collection collection, b7.n nVar) {
        if (!(collection instanceof e0)) {
            collection.getClass();
            return new e0(collection, nVar);
        }
        e0 e0Var = (e0) collection;
        return new e0(e0Var.f6127a, b7.b.a(e0Var.f6128b, nVar));
    }

    public static n5 l(Set set, b7.n nVar) {
        if (!(set instanceof SortedSet)) {
            if (set instanceof n5) {
                n5 n5Var = (n5) set;
                return new n5((Set) n5Var.f6127a, b7.b.a(n5Var.f6128b, nVar));
            }
            set.getClass();
            nVar.getClass();
            return new n5(set, nVar);
        }
        Collection collection = (SortedSet) set;
        if (collection instanceof n5) {
            n5 n5Var2 = (n5) collection;
            return new o5((SortedSet) n5Var2.f6127a, b7.b.a(n5Var2.f6128b, nVar));
        }
        collection.getClass();
        nVar.getClass();
        return new o5(collection, nVar);
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [b7.n, java.lang.Object] */
    public static l5 m(l5 l5Var, b7.n nVar) {
        if (l5Var instanceof c1) {
            c1 c1Var = (c1) l5Var;
            return new c1(c1Var.f, b7.b.a(c1Var.f6104g, nVar));
        }
        if (!(l5Var instanceof e1)) {
            return new c1(l5Var, nVar);
        }
        e1 e1Var = (e1) l5Var;
        return new y0(e1Var.b(), b7.b.a(e1Var.c(), new b7.p(nVar, i4.f6175a)));
    }

    public static Object n(Iterable iterable) {
        Object next;
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                throw new NoSuchElementException();
            }
            return list.get(list.size() - 1);
        }
        Iterator it = iterable.iterator();
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    public static Object o(Iterable iterable) {
        Object next = null;
        if (iterable instanceof Collection) {
            if (((Collection) iterable).isEmpty()) {
                return null;
            }
            if (iterable instanceof List) {
                return ((List) iterable).get(r2.size() - 1);
            }
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            do {
                next = it.next();
            } while (it.hasNext());
        }
        return next;
    }

    public static int p(Set set) {
        Iterator it = set.iterator();
        int i6 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i6 = ~(~(i6 + (next != null ? next.hashCode() : 0)));
        }
        return i6;
    }

    public static m5 q(k2 k2Var, k2 k2Var2) {
        b7.b.j(k2Var, "set1");
        b7.b.j(k2Var2, "set2");
        return new m5(k2Var, k2Var2);
    }

    public static int r(int i6, int i10, int i11) {
        return (i6 & (~i11)) | (i10 & i11);
    }

    public static ArrayList s(Iterator it) {
        ArrayList arrayList = new ArrayList();
        a(arrayList, it);
        return arrayList;
    }

    public static ArrayList t(int i6) {
        d(i6, "initialArraySize");
        return new ArrayList(i6);
    }

    public static int u(int i6) {
        return (i6 + 1) * (i6 < 32 ? 4 : 2);
    }

    public static Object v(Iterator it) {
        if (!it.hasNext()) {
            return null;
        }
        Object next = it.next();
        it.remove();
        return next;
    }

    public static int w(Object obj, Object obj2, int i6, Object obj3, int[] iArr, Object[] objArr, Object[] objArr2) {
        int i10;
        int i11;
        int iB = B(obj);
        int i12 = iB & i6;
        int iC = C(i12, obj3);
        if (iC == 0) {
            return -1;
        }
        int i13 = ~i6;
        int i14 = iB & i13;
        int i15 = -1;
        while (true) {
            i10 = iC - 1;
            i11 = iArr[i10];
            if ((i11 & i13) == i14 && b7.b.p(obj, objArr[i10]) && (objArr2 == null || b7.b.p(obj2, objArr2[i10]))) {
                break;
            }
            int i16 = i11 & i6;
            if (i16 == 0) {
                return -1;
            }
            i15 = i10;
            iC = i16;
        }
        int i17 = i11 & i6;
        if (i15 == -1) {
            D(i12, i17, obj3);
        } else {
            iArr[i15] = r(iArr[i15], i17, i6);
        }
        return i10;
    }

    public static boolean x(Set set, Collection collection) {
        collection.getClass();
        if (collection instanceof v4) {
            collection = ((v4) collection).elementSet();
        }
        boolean zRemove = false;
        if (!(collection instanceof Set) || collection.size() <= set.size()) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                zRemove |= set.remove(it.next());
            }
            return zRemove;
        }
        Iterator it2 = set.iterator();
        collection.getClass();
        while (it2.hasNext()) {
            if (collection.contains(it2.next())) {
                it2.remove();
                zRemove = true;
            }
        }
        return zRemove;
    }

    public static boolean y(Iterable iterable, b7.n nVar) {
        if (!(iterable instanceof RandomAccess) || !(iterable instanceof List)) {
            Iterator it = iterable.iterator();
            nVar.getClass();
            while (it.hasNext()) {
                if (nVar.apply(it.next())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }
        List list = (List) iterable;
        nVar.getClass();
        int i6 = 0;
        int i10 = 0;
        while (i6 < list.size()) {
            Object obj = list.get(i6);
            if (!nVar.apply(obj)) {
                if (i6 > i10) {
                    try {
                        list.set(i10, obj);
                    } catch (IllegalArgumentException unused) {
                        z(list, nVar, i10, i6);
                        return true;
                    } catch (UnsupportedOperationException unused2) {
                        z(list, nVar, i10, i6);
                        return true;
                    }
                }
                i10++;
            }
            i6++;
        }
        list.subList(i10, list.size()).clear();
        return i6 != i10;
    }

    public static void z(List list, b7.n nVar, int i6, int i10) {
        for (int size = list.size() - 1; size > i10; size--) {
            if (nVar.apply(list.get(size))) {
                list.remove(size);
            }
        }
        for (int i11 = i10 - 1; i11 >= i6; i11--) {
            list.remove(i11);
        }
    }
}
