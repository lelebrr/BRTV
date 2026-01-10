package d7;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class o4 extends AbstractMap {

    /* renamed from: a, reason: collision with root package name */
    public transient Set f6231a;

    /* renamed from: b, reason: collision with root package name */
    public transient Set f6232b;

    /* renamed from: c, reason: collision with root package name */
    public transient Collection f6233c;

    public abstract Set a();

    public Set b() {
        return new x(this);
    }

    public Collection c() {
        return new c7.w(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        Set set = this.f6231a;
        if (set != null) {
            return set;
        }
        Set setA = a();
        this.f6231a = setA;
        return setA;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set keySet() {
        Set set = this.f6232b;
        if (set != null) {
            return set;
        }
        Set setB = b();
        this.f6232b = setB;
        return setB;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        Collection collection = this.f6233c;
        if (collection != null) {
            return collection;
        }
        Collection collectionC = c();
        this.f6233c = collectionC;
        return collectionC;
    }
}
