package d7;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class z extends AbstractCollection implements v4 {

    /* renamed from: a, reason: collision with root package name */
    public transient Set f6312a;

    /* renamed from: b, reason: collision with root package name */
    public transient Set f6313b;

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        add(1, obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        collection.getClass();
        if (!(collection instanceof v4)) {
            if (collection.isEmpty()) {
                return false;
            }
            return d0.a(this, collection.iterator());
        }
        v4 v4Var = (v4) collection;
        if (v4Var.isEmpty()) {
            return false;
        }
        for (w4 w4Var : v4Var.entrySet()) {
            add(w4Var.a(), w4Var.b());
        }
        return true;
    }

    public Set c() {
        return new x(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return count(obj) > 0;
    }

    public Set d() {
        return new y(this, 0);
    }

    public abstract int e();

    public Set elementSet() {
        Set set = this.f6312a;
        if (set != null) {
            return set;
        }
        Set setC = c();
        this.f6312a = setC;
        return setC;
    }

    public Set entrySet() {
        Set set = this.f6313b;
        if (set != null) {
            return set;
        }
        Set setD = d();
        this.f6313b = setD;
        return setD;
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        return d0.h(this, obj);
    }

    public abstract Iterator f();

    public abstract Iterator g();

    @Override // java.util.Collection
    public final int hashCode() {
        return entrySet().hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return entrySet().isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        return b(1, obj) > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        if (collection instanceof v4) {
            collection = ((v4) collection).elementSet();
        }
        return elementSet().removeAll(collection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        if (collection instanceof v4) {
            collection = ((v4) collection).elementSet();
        }
        return elementSet().retainAll(collection);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return entrySet().toString();
    }

    public int add(int i6, Object obj) {
        throw new UnsupportedOperationException();
    }
}
