package d7;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class e0 extends AbstractCollection {

    /* renamed from: a, reason: collision with root package name */
    public final Collection f6127a;

    /* renamed from: b, reason: collision with root package name */
    public final b7.n f6128b;

    public e0(Collection collection, b7.n nVar) {
        this.f6127a = collection;
        this.f6128b = nVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        b7.b.f(this.f6128b.apply(obj));
        return this.f6127a.add(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            b7.b.f(this.f6128b.apply(it.next()));
        }
        return this.f6127a.addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        d0.y(this.f6127a, this.f6128b);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        boolean zContains;
        Collection collection = this.f6127a;
        collection.getClass();
        try {
            zContains = collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            zContains = false;
        }
        if (zContains) {
            return this.f6128b.apply(obj);
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        Iterator it = this.f6127a.iterator();
        b7.n nVar = this.f6128b;
        b7.b.j(nVar, "predicate");
        int i6 = 0;
        while (true) {
            if (!it.hasNext()) {
                i6 = -1;
                break;
            }
            if (nVar.apply(it.next())) {
                break;
            }
            i6++;
        }
        return true ^ (i6 != -1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        Iterator it = this.f6127a.iterator();
        it.getClass();
        b7.n nVar = this.f6128b;
        nVar.getClass();
        return new s0(it, nVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        return contains(obj) && this.f6127a.remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        Iterator it = this.f6127a.iterator();
        boolean z7 = false;
        while (it.hasNext()) {
            Object next = it.next();
            if (this.f6128b.apply(next) && collection.contains(next)) {
                it.remove();
                z7 = true;
            }
        }
        return z7;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        Iterator it = this.f6127a.iterator();
        boolean z7 = false;
        while (it.hasNext()) {
            Object next = it.next();
            if (this.f6128b.apply(next) && !collection.contains(next)) {
                it.remove();
                z7 = true;
            }
        }
        return z7;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        Iterator it = this.f6127a.iterator();
        int i6 = 0;
        while (it.hasNext()) {
            if (this.f6128b.apply(it.next())) {
                i6++;
            }
        }
        return i6;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return d0.s(iterator()).toArray();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return d0.s(iterator()).toArray(objArr);
    }
}
