package d7;

import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q5 extends o1 implements NavigableSet, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final NavigableSet f6247a;

    /* renamed from: b, reason: collision with root package name */
    public final SortedSet f6248b;

    /* renamed from: c, reason: collision with root package name */
    public transient q5 f6249c;

    public q5(NavigableSet navigableSet) {
        navigableSet.getClass();
        this.f6247a = navigableSet;
        this.f6248b = Collections.unmodifiableSortedSet(navigableSet);
    }

    @Override // d7.n1
    public final Set c() {
        return this.f6248b;
    }

    @Override // java.util.NavigableSet
    public final Object ceiling(Object obj) {
        return this.f6247a.ceiling(obj);
    }

    @Override // d7.i1, d7.l1
    public final Object delegate() {
        return this.f6248b;
    }

    @Override // java.util.NavigableSet
    public final Iterator descendingIterator() {
        Iterator itDescendingIterator = this.f6247a.descendingIterator();
        itDescendingIterator.getClass();
        return itDescendingIterator instanceof s5 ? (s5) itDescendingIterator : new q2(itDescendingIterator);
    }

    @Override // java.util.NavigableSet
    public final NavigableSet descendingSet() {
        q5 q5Var = this.f6249c;
        if (q5Var != null) {
            return q5Var;
        }
        q5 q5Var2 = new q5(this.f6247a.descendingSet());
        this.f6249c = q5Var2;
        q5Var2.f6249c = this;
        return q5Var2;
    }

    @Override // java.util.NavigableSet
    public final Object floor(Object obj) {
        return this.f6247a.floor(obj);
    }

    @Override // java.util.NavigableSet
    public final NavigableSet headSet(Object obj, boolean z7) {
        return d0.I(this.f6247a.headSet(obj, z7));
    }

    @Override // java.util.NavigableSet
    public final Object higher(Object obj) {
        return this.f6247a.higher(obj);
    }

    @Override // java.util.NavigableSet
    public final Object lower(Object obj) {
        return this.f6247a.lower(obj);
    }

    @Override // java.util.NavigableSet
    public final Object pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    public final Object pollLast() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    public final NavigableSet subSet(Object obj, boolean z7, Object obj2, boolean z10) {
        return d0.I(this.f6247a.subSet(obj, z7, obj2, z10));
    }

    @Override // java.util.NavigableSet
    public final NavigableSet tailSet(Object obj, boolean z7) {
        return d0.I(this.f6247a.tailSet(obj, z7));
    }

    @Override // d7.i1, d7.l1
    public final Collection delegate() {
        return this.f6248b;
    }
}
