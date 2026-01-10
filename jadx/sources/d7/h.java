package d7;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends k implements NavigableMap {

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ s f6152h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(s sVar, NavigableMap navigableMap) {
        super(sVar, navigableMap);
        this.f6152h = sVar;
    }

    @Override // d7.k, d7.o4
    public final Set b() {
        return new i(this.f6152h, g());
    }

    @Override // java.util.NavigableMap
    public final Map.Entry ceilingEntry(Object obj) {
        Map.Entry entryCeilingEntry = g().ceilingEntry(obj);
        if (entryCeilingEntry == null) {
            return null;
        }
        return d(entryCeilingEntry);
    }

    @Override // java.util.NavigableMap
    public final Object ceilingKey(Object obj) {
        return g().ceilingKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableSet descendingKeySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final NavigableMap descendingMap() {
        return new h(this.f6152h, g().descendingMap());
    }

    @Override // d7.k
    /* renamed from: e */
    public final SortedSet b() {
        return new i(this.f6152h, g());
    }

    @Override // d7.k
    /* renamed from: f */
    public final SortedSet keySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry firstEntry() {
        Map.Entry entryFirstEntry = g().firstEntry();
        if (entryFirstEntry == null) {
            return null;
        }
        return d(entryFirstEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry floorEntry(Object obj) {
        Map.Entry entryFloorEntry = g().floorEntry(obj);
        if (entryFloorEntry == null) {
            return null;
        }
        return d(entryFloorEntry);
    }

    @Override // java.util.NavigableMap
    public final Object floorKey(Object obj) {
        return g().floorKey(obj);
    }

    public final r1 h(Iterator it) {
        if (!it.hasNext()) {
            return null;
        }
        Map.Entry entry = (Map.Entry) it.next();
        s sVar = this.f6152h;
        Collection collectionO = sVar.o();
        collectionO.addAll((Collection) entry.getValue());
        it.remove();
        return new r1(entry.getKey(), sVar.r(collectionO));
    }

    @Override // d7.k, java.util.SortedMap, java.util.NavigableMap
    public final SortedMap headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry higherEntry(Object obj) {
        Map.Entry entryHigherEntry = g().higherEntry(obj);
        if (entryHigherEntry == null) {
            return null;
        }
        return d(entryHigherEntry);
    }

    @Override // java.util.NavigableMap
    public final Object higherKey(Object obj) {
        return g().higherKey(obj);
    }

    @Override // d7.k
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public final NavigableMap g() {
        return (NavigableMap) ((SortedMap) this.d);
    }

    @Override // d7.k, d7.f, d7.o4, java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lastEntry() {
        Map.Entry entryLastEntry = g().lastEntry();
        if (entryLastEntry == null) {
            return null;
        }
        return d(entryLastEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lowerEntry(Object obj) {
        Map.Entry entryLowerEntry = g().lowerEntry(obj);
        if (entryLowerEntry == null) {
            return null;
        }
        return d(entryLowerEntry);
    }

    @Override // java.util.NavigableMap
    public final Object lowerKey(Object obj) {
        return g().lowerKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableSet navigableKeySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollFirstEntry() {
        return h(entrySet().iterator());
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollLastEntry() {
        return h(((o4) descendingMap()).entrySet().iterator());
    }

    @Override // d7.k, java.util.SortedMap, java.util.NavigableMap
    public final SortedMap subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    @Override // d7.k, java.util.SortedMap, java.util.NavigableMap
    public final SortedMap tailMap(Object obj) {
        return tailMap(obj, true);
    }

    @Override // java.util.NavigableMap
    public final NavigableMap headMap(Object obj, boolean z7) {
        return new h(this.f6152h, g().headMap(obj, z7));
    }

    @Override // java.util.NavigableMap
    public final NavigableMap subMap(Object obj, boolean z7, Object obj2, boolean z10) {
        return new h(this.f6152h, g().subMap(obj, z7, obj2, z10));
    }

    @Override // java.util.NavigableMap
    public final NavigableMap tailMap(Object obj, boolean z7) {
        return new h(this.f6152h, g().tailMap(obj, z7));
    }
}
