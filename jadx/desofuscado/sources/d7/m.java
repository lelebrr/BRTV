package d7;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class m extends AbstractCollection {

    /* renamed from: a, reason: collision with root package name */
    public final Object f6213a;

    /* renamed from: b, reason: collision with root package name */
    public Collection f6214b;

    /* renamed from: c, reason: collision with root package name */
    public final m f6215c;
    public final Collection d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ s f6216e;

    public m(s sVar, Object obj, Collection collection, m mVar) {
        this.f6216e = sVar;
        this.f6213a = obj;
        this.f6214b = collection;
        this.f6215c = mVar;
        this.d = mVar == null ? null : mVar.f6214b;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        d();
        boolean zIsEmpty = this.f6214b.isEmpty();
        boolean zAdd = this.f6214b.add(obj);
        if (zAdd) {
            this.f6216e.f6258g++;
            if (zIsEmpty) {
                c();
            }
        }
        return zAdd;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zAddAll = this.f6214b.addAll(collection);
        if (zAddAll) {
            this.f6216e.f6258g += this.f6214b.size() - size;
            if (size == 0) {
                c();
            }
        }
        return zAddAll;
    }

    public final void c() {
        m mVar = this.f6215c;
        if (mVar != null) {
            mVar.c();
        } else {
            this.f6216e.f.put(this.f6213a, this.f6214b);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        int size = size();
        if (size == 0) {
            return;
        }
        this.f6214b.clear();
        this.f6216e.f6258g -= size;
        e();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        d();
        return this.f6214b.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection collection) {
        d();
        return this.f6214b.containsAll(collection);
    }

    public final void d() {
        Collection collection;
        m mVar = this.f6215c;
        if (mVar != null) {
            mVar.d();
            if (mVar.f6214b != this.d) {
                throw new ConcurrentModificationException();
            }
        } else {
            if (!this.f6214b.isEmpty() || (collection = (Collection) this.f6216e.f.get(this.f6213a)) == null) {
                return;
            }
            this.f6214b = collection;
        }
    }

    public final void e() {
        m mVar = this.f6215c;
        if (mVar != null) {
            mVar.e();
        } else if (this.f6214b.isEmpty()) {
            this.f6216e.f.remove(this.f6213a);
        }
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        d();
        return this.f6214b.equals(obj);
    }

    @Override // java.util.Collection
    public final int hashCode() {
        d();
        return this.f6214b.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        d();
        return new e(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        d();
        boolean zRemove = this.f6214b.remove(obj);
        if (zRemove) {
            s sVar = this.f6216e;
            sVar.f6258g--;
            e();
        }
        return zRemove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zRemoveAll = this.f6214b.removeAll(collection);
        if (zRemoveAll) {
            this.f6216e.f6258g += this.f6214b.size() - size;
            e();
        }
        return zRemoveAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        int size = size();
        boolean zRetainAll = this.f6214b.retainAll(collection);
        if (zRetainAll) {
            this.f6216e.f6258g += this.f6214b.size() - size;
            e();
        }
        return zRetainAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        d();
        return this.f6214b.size();
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        d();
        return this.f6214b.toString();
    }
}
