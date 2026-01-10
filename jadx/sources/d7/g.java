package d7;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class g extends x {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6145c;
    public final /* synthetic */ Object d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ g(o4 o4Var, int i6) {
        super(o4Var);
        this.f6145c = i6;
        this.d = o4Var;
    }

    @Override // d7.x, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        switch (this.f6145c) {
            case 0:
                d0.e(iterator());
                break;
            default:
                super.clear();
                break;
        }
    }

    @Override // d7.x, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection collection) {
        switch (this.f6145c) {
            case 0:
                return ((Map) this.f6291b).keySet().containsAll(collection);
            default:
                return super.containsAll(collection);
        }
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        switch (this.f6145c) {
            case 0:
                return this == obj || ((Map) this.f6291b).keySet().equals(obj);
            default:
                return super.equals(obj);
        }
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public int hashCode() {
        switch (this.f6145c) {
            case 0:
                return ((Map) this.f6291b).keySet().hashCode();
            default:
                return super.hashCode();
        }
    }

    @Override // d7.x, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        switch (this.f6145c) {
            case 0:
                return new e(this, ((Map) this.f6291b).entrySet().iterator());
            default:
                return super.iterator();
        }
    }

    @Override // d7.x, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int size;
        switch (this.f6145c) {
            case 0:
                Collection collection = (Collection) ((Map) this.f6291b).remove(obj);
                if (collection != null) {
                    size = collection.size();
                    collection.clear();
                    ((s) this.d).f6258g -= size;
                } else {
                    size = 0;
                }
                return size > 0;
            case 1:
                return ((u0) this.d).remove(obj) != null;
            default:
                l4 l4Var = (l4) this.d;
                if (!l4Var.containsKey(obj)) {
                    return false;
                }
                l4Var.d.remove(obj);
                return true;
        }
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [b7.n, java.lang.Object] */
    @Override // d7.p5, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(Collection collection) {
        switch (this.f6145c) {
            case 1:
                return ((u0) this.d).d.p(new b7.p(new b7.q(collection), i4.f6175a));
            case 2:
                l4 l4Var = (l4) this.d;
                Map map = l4Var.d;
                ?? r02 = l4Var.f6211e;
                Iterator it = map.entrySet().iterator();
                boolean z7 = false;
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    if (r02.apply(entry) && collection.contains(entry.getKey())) {
                        it.remove();
                        z7 = true;
                    }
                }
                return z7;
            default:
                return super.removeAll(collection);
        }
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [b7.n, java.lang.Object] */
    @Override // d7.p5, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(Collection collection) {
        switch (this.f6145c) {
            case 1:
                return ((u0) this.d).d.p(new b7.p(new b7.t(new b7.q(collection)), i4.f6175a));
            case 2:
                l4 l4Var = (l4) this.d;
                Map map = l4Var.d;
                ?? r02 = l4Var.f6211e;
                Iterator it = map.entrySet().iterator();
                boolean z7 = false;
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    if (r02.apply(entry) && !collection.contains(entry.getKey())) {
                        it.remove();
                        z7 = true;
                    }
                }
                return z7;
            default:
                return super.retainAll(collection);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        switch (this.f6145c) {
            case 2:
                return d0.s(iterator()).toArray();
            default:
                return super.toArray();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(s sVar, Map map) {
        super(map);
        this.f6145c = 0;
        this.d = sVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray(Object[] objArr) {
        switch (this.f6145c) {
            case 2:
                return d0.s(iterator()).toArray(objArr);
            default:
                return super.toArray(objArr);
        }
    }
}
