package d7;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Set;
import java.util.SortedMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class s extends w implements Serializable {
    public final transient Map f;

    /* renamed from: g, reason: collision with root package name */
    public transient int f6258g;

    public s(Map map) {
        b7.b.f(map.isEmpty());
        this.f = map;
    }

    @Override // d7.p4
    public final void clear() {
        Map map = this.f;
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        map.clear();
        this.f6258g = 0;
    }

    @Override // d7.p4
    public final boolean containsKey(Object obj) {
        return this.f.containsKey(obj);
    }

    @Override // d7.p4
    public Collection get(Object obj) {
        Collection collectionO = (Collection) this.f.get(obj);
        if (collectionO == null) {
            collectionO = o();
        }
        return s(collectionO, obj);
    }

    @Override // d7.w
    public Map i() {
        return new f(this, this.f);
    }

    @Override // d7.w
    public final Collection j() {
        return this instanceof l5 ? new v(this, 0) : new u(this, 0);
    }

    @Override // d7.w
    public Set k() {
        return new g(this, this.f);
    }

    @Override // d7.w
    public final v4 l() {
        return new u4(this);
    }

    @Override // d7.w
    public final Collection m() {
        return new u(this, 1);
    }

    public abstract Collection o();

    public final f p() {
        Map map = this.f;
        return map instanceof NavigableMap ? new h(this, (NavigableMap) map) : map instanceof SortedMap ? new k(this, (SortedMap) map) : new f(this, map);
    }

    @Override // d7.w, d7.p4
    public boolean put(Object obj, Object obj2) {
        Map map = this.f;
        Collection collection = (Collection) map.get(obj);
        if (collection != null) {
            if (!collection.add(obj2)) {
                return false;
            }
            this.f6258g++;
            return true;
        }
        Collection collectionO = o();
        if (!collectionO.add(obj2)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.f6258g++;
        map.put(obj, collectionO);
        return true;
    }

    public final g q() {
        Map map = this.f;
        return map instanceof NavigableMap ? new i(this, (NavigableMap) map) : map instanceof SortedMap ? new l(this, (SortedMap) map) : new g(this, map);
    }

    public abstract Collection r(Collection collection);

    public abstract Collection s(Collection collection, Object obj);

    @Override // d7.p4
    public final int size() {
        return this.f6258g;
    }
}
