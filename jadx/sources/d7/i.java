package d7;

import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.SortedMap;
import java.util.SortedSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i extends l implements NavigableSet {
    public final /* synthetic */ s f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(s sVar, NavigableMap navigableMap) {
        super(sVar, navigableMap);
        this.f = sVar;
    }

    @Override // java.util.NavigableSet
    public final Object ceiling(Object obj) {
        return c().ceilingKey(obj);
    }

    @Override // d7.l
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final NavigableMap c() {
        return (NavigableMap) ((SortedMap) ((Map) this.f6291b));
    }

    @Override // java.util.NavigableSet
    public final Iterator descendingIterator() {
        return ((g) descendingSet()).iterator();
    }

    @Override // java.util.NavigableSet
    public final NavigableSet descendingSet() {
        return new i(this.f, c().descendingMap());
    }

    @Override // java.util.NavigableSet
    public final Object floor(Object obj) {
        return c().floorKey(obj);
    }

    @Override // d7.l, java.util.SortedSet, java.util.NavigableSet
    public final SortedSet headSet(Object obj) {
        return headSet(obj, false);
    }

    @Override // java.util.NavigableSet
    public final Object higher(Object obj) {
        return c().higherKey(obj);
    }

    @Override // java.util.NavigableSet
    public final Object lower(Object obj) {
        return c().lowerKey(obj);
    }

    @Override // java.util.NavigableSet
    public final Object pollFirst() {
        return d0.v(iterator());
    }

    @Override // java.util.NavigableSet
    public final Object pollLast() {
        return d0.v(descendingIterator());
    }

    @Override // d7.l, java.util.SortedSet, java.util.NavigableSet
    public final SortedSet subSet(Object obj, Object obj2) {
        return subSet(obj, true, obj2, false);
    }

    @Override // d7.l, java.util.SortedSet, java.util.NavigableSet
    public final SortedSet tailSet(Object obj) {
        return tailSet(obj, true);
    }

    @Override // java.util.NavigableSet
    public final NavigableSet headSet(Object obj, boolean z7) {
        return new i(this.f, c().headMap(obj, z7));
    }

    @Override // java.util.NavigableSet
    public final NavigableSet subSet(Object obj, boolean z7, Object obj2, boolean z10) {
        return new i(this.f, c().subMap(obj, z7, obj2, z10));
    }

    @Override // java.util.NavigableSet
    public final NavigableSet tailSet(Object obj, boolean z7) {
        return new i(this.f, c().tailMap(obj, z7));
    }
}
