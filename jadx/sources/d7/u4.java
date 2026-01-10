package d7;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class u4 extends z {

    /* renamed from: c, reason: collision with root package name */
    public final w f6280c;

    public u4(w wVar) {
        this.f6280c = wVar;
    }

    @Override // d7.v4
    public int b(int i6, Object obj) {
        Object obj2;
        d0.d(i6, "occurrences");
        if (i6 == 0) {
            return count(obj);
        }
        Map mapD = this.f6280c.d();
        mapD.getClass();
        try {
            obj2 = mapD.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection == null) {
            return 0;
        }
        int size = collection.size();
        if (i6 >= size) {
            collection.clear();
        } else {
            Iterator it = collection.iterator();
            for (int i10 = 0; i10 < i6; i10++) {
                it.next();
                it.remove();
            }
        }
        return size;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.f6280c.clear();
    }

    @Override // d7.z, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f6280c.containsKey(obj);
    }

    @Override // d7.v4
    public final int count(Object obj) {
        Object obj2;
        Map mapD = this.f6280c.d();
        mapD.getClass();
        try {
            obj2 = mapD.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection == null) {
            return 0;
        }
        return collection.size();
    }

    @Override // d7.z
    public final int e() {
        return this.f6280c.d().size();
    }

    @Override // d7.z, d7.v4
    public final Set elementSet() {
        return this.f6280c.keySet();
    }

    @Override // d7.z
    public final Iterator f() {
        throw new AssertionError("should never be called");
    }

    @Override // d7.z
    public final Iterator g() {
        return new f4(this.f6280c.d().entrySet().iterator(), 2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new f4(this.f6280c.a().iterator(), 0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.f6280c.size();
    }
}
