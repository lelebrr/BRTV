package x8;

import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class j extends p {
    public static Object T(Collection collection) {
        j9.i.f(collection, "<this>");
        if (collection instanceof List) {
            return U((List) collection);
        }
        Iterator it = collection.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static Object U(List list) {
        j9.i.f(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(0);
    }

    public static Object V(List list) {
        j9.i.f(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static final void W(Collection collection, StringBuilder sb, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i6, CharSequence charSequence4, i9.l lVar) {
        j9.i.f(charSequence, "separator");
        j9.i.f(charSequence2, "prefix");
        j9.i.f(charSequence3, "postfix");
        j9.i.f(charSequence4, "truncated");
        sb.append(charSequence2);
        int i10 = 0;
        for (Object obj : collection) {
            i10++;
            if (i10 > 1) {
                sb.append(charSequence);
            }
            if (i6 >= 0 && i10 > i6) {
                break;
            } else {
                o9.e.g(sb, obj, lVar);
            }
        }
        if (i6 >= 0 && i10 > i6) {
            sb.append(charSequence4);
        }
        sb.append(charSequence3);
    }

    public static String X(Collection collection, String str, String str2, String str3, qa.b bVar, int i6) {
        String str4 = (i6 & 2) != 0 ? "" : str2;
        String str5 = (i6 & 4) != 0 ? "" : str3;
        if ((i6 & 32) != 0) {
            bVar = null;
        }
        j9.i.f(str4, "prefix");
        j9.i.f(str5, "postfix");
        StringBuilder sb = new StringBuilder();
        W(collection, sb, str, str4, str5, -1, "...", bVar);
        return sb.toString();
    }

    public static Object Y(List list) {
        j9.i.f(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(k.O(list));
    }

    public static ArrayList Z(Collection collection, Iterable iterable) {
        j9.i.f(collection, "<this>");
        j9.i.f(iterable, "elements");
        if (!(iterable instanceof Collection)) {
            ArrayList arrayList = new ArrayList(collection);
            p.S(arrayList, iterable);
            return arrayList;
        }
        Collection collection2 = (Collection) iterable;
        ArrayList arrayList2 = new ArrayList(collection2.size() + collection.size());
        arrayList2.addAll(collection);
        arrayList2.addAll(collection2);
        return arrayList2;
    }

    public static ArrayList a0(List list, Object obj) {
        j9.i.f(list, "<this>");
        ArrayList arrayList = new ArrayList(list.size() + 1);
        arrayList.addAll(list);
        arrayList.add(obj);
        return arrayList;
    }

    public static final void b0(Iterable iterable, AbstractCollection abstractCollection) {
        j9.i.f(iterable, "<this>");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            abstractCollection.add(it.next());
        }
    }

    public static List c0(Iterable iterable) {
        ArrayList arrayListD0;
        j9.i.f(iterable, "<this>");
        boolean z7 = iterable instanceof Collection;
        r rVar = r.f11098a;
        if (z7) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size == 0) {
                return rVar;
            }
            if (size != 1) {
                return d0(collection);
            }
            return a2.a.F(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
        }
        if (z7) {
            arrayListD0 = d0((Collection) iterable);
        } else {
            ArrayList arrayList = new ArrayList();
            b0(iterable, arrayList);
            arrayListD0 = arrayList;
        }
        int size2 = arrayListD0.size();
        return size2 != 0 ? size2 != 1 ? arrayListD0 : a2.a.F(arrayListD0.get(0)) : rVar;
    }

    public static ArrayList d0(Collection collection) {
        j9.i.f(collection, "<this>");
        return new ArrayList(collection);
    }
}
