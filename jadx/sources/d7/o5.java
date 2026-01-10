package d7;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o5 extends n5 implements SortedSet {
    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return ((SortedSet) this.f6127a).comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        Iterator it = this.f6127a.iterator();
        it.getClass();
        b7.n nVar = this.f6128b;
        nVar.getClass();
        while (it.hasNext()) {
            Object next = it.next();
            if (nVar.apply(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        return new o5(((SortedSet) this.f6127a).headSet(obj), this.f6128b);
    }

    @Override // java.util.SortedSet
    public final Object last() {
        SortedSet sortedSetHeadSet = (SortedSet) this.f6127a;
        while (true) {
            Object objLast = sortedSetHeadSet.last();
            if (this.f6128b.apply(objLast)) {
                return objLast;
            }
            sortedSetHeadSet = sortedSetHeadSet.headSet(objLast);
        }
    }

    @Override // java.util.SortedSet
    public final SortedSet subSet(Object obj, Object obj2) {
        return new o5(((SortedSet) this.f6127a).subSet(obj, obj2), this.f6128b);
    }

    @Override // java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        return new o5(((SortedSet) this.f6127a).tailSet(obj), this.f6128b);
    }
}
