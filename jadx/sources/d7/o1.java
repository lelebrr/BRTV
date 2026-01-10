package d7;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class o1 extends n1 implements SortedSet {
    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return ((q5) this).f6248b.comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        return ((q5) this).f6248b.first();
    }

    @Override // java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        return ((q5) this).f6248b.headSet(obj);
    }

    @Override // java.util.SortedSet
    public final Object last() {
        return ((q5) this).f6248b.last();
    }

    @Override // d7.i1
    public final boolean standardContains(Object obj) {
        try {
            Object objFirst = tailSet(obj).first();
            Comparator comparator = comparator();
            return (comparator == null ? ((Comparable) objFirst).compareTo(obj) : comparator.compare(objFirst, obj)) == 0;
        } catch (ClassCastException | NullPointerException | NoSuchElementException unused) {
            return false;
        }
    }

    @Override // d7.i1
    public final boolean standardRemove(Object obj) {
        try {
            Iterator it = tailSet(obj).iterator();
            if (it.hasNext()) {
                Object next = it.next();
                Comparator comparator = comparator();
                if ((comparator == null ? ((Comparable) next).compareTo(obj) : comparator.compare(next, obj)) == 0) {
                    it.remove();
                    return true;
                }
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    @Override // java.util.SortedSet
    public final SortedSet subSet(Object obj, Object obj2) {
        return ((q5) this).f6248b.subSet(obj, obj2);
    }

    @Override // java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        return ((q5) this).f6248b.tailSet(obj);
    }
}
