package d7;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class w implements p4 {

    /* renamed from: a, reason: collision with root package name */
    public transient Collection f6285a;

    /* renamed from: b, reason: collision with root package name */
    public transient Set f6286b;

    /* renamed from: c, reason: collision with root package name */
    public transient v4 f6287c;
    public transient Collection d;

    /* renamed from: e, reason: collision with root package name */
    public transient Map f6288e;

    @Override // d7.p4
    public Collection a() {
        Collection collection = this.f6285a;
        if (collection != null) {
            return collection;
        }
        Collection collectionJ = j();
        this.f6285a = collectionJ;
        return collectionJ;
    }

    @Override // d7.p4
    public Map d() {
        Map map = this.f6288e;
        if (map != null) {
            return map;
        }
        Map mapI = i();
        this.f6288e = mapI;
        return mapI;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof p4) {
            return d().equals(((p4) obj).d());
        }
        return false;
    }

    @Override // d7.p4
    public v4 f() {
        v4 v4Var = this.f6287c;
        if (v4Var != null) {
            return v4Var;
        }
        v4 v4VarL = l();
        this.f6287c = v4VarL;
        return v4VarL;
    }

    public final boolean g(Object obj, Object obj2) {
        Collection collection = (Collection) d().get(obj);
        return collection != null && collection.contains(obj2);
    }

    public boolean h(Object obj) {
        Iterator it = d().values().iterator();
        while (it.hasNext()) {
            if (((Collection) it.next()).contains(obj)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return d().hashCode();
    }

    public abstract Map i();

    public abstract Collection j();

    public abstract Set k();

    @Override // d7.p4
    public Set keySet() {
        Set set = this.f6286b;
        if (set != null) {
            return set;
        }
        Set setK = k();
        this.f6286b = setK;
        return setK;
    }

    public abstract v4 l();

    public abstract Collection m();

    public boolean n(Collection collection, Object obj) {
        collection.getClass();
        return !collection.isEmpty() && get(obj).addAll(collection);
    }

    @Override // d7.p4
    public boolean put(Object obj, Object obj2) {
        return get(obj).add(obj2);
    }

    @Override // d7.p4
    public boolean remove(Object obj, Object obj2) {
        Collection collection = (Collection) d().get(obj);
        return collection != null && collection.remove(obj2);
    }

    public final String toString() {
        return d().toString();
    }

    @Override // d7.p4
    public Collection values() {
        Collection collection = this.d;
        if (collection != null) {
            return collection;
        }
        Collection collectionM = m();
        this.d = collectionM;
        return collectionM;
    }
}
