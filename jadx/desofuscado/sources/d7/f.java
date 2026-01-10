package d7;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class f extends o4 {
    public final transient Map d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ s f6135e;

    public f(s sVar, Map map) {
        this.f6135e = sVar;
        this.d = map;
    }

    @Override // d7.o4
    public final Set a() {
        return new d(this, 0);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        s sVar = this.f6135e;
        if (this.d == sVar.f) {
            sVar.clear();
        } else {
            d0.e(new e(this));
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map map = this.d;
        map.getClass();
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public final r1 d(Map.Entry entry) {
        Object key = entry.getKey();
        return new r1(key, this.f6135e.s((Collection) entry.getValue(), key));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        return this == obj || this.d.equals(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        Map map = this.d;
        map.getClass();
        try {
            obj2 = map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection == null) {
            return null;
        }
        return this.f6135e.s(collection, obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return this.d.hashCode();
    }

    @Override // d7.o4, java.util.AbstractMap, java.util.Map
    public Set keySet() {
        return this.f6135e.keySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        Collection collection = (Collection) this.d.remove(obj);
        if (collection == null) {
            return null;
        }
        s sVar = this.f6135e;
        Collection collectionO = sVar.o();
        collectionO.addAll(collection);
        sVar.f6258g -= collection.size();
        collection.clear();
        return collectionO;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.d.size();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        return this.d.toString();
    }
}
