package c7;

import d7.c4;
import d7.d1;
import d7.d3;
import d7.f0;
import d7.f4;
import d7.i0;
import d7.i4;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class w extends AbstractCollection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3470a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f3471b;

    public /* synthetic */ w(AbstractMap abstractMap, int i6) {
        this.f3470a = i6;
        this.f3471b = abstractMap;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        switch (this.f3470a) {
            case 0:
                ((b0) this.f3471b).clear();
                break;
            case 1:
                ((i0) this.f3471b).clear();
                break;
            case 2:
                ((d7.w) this.f3471b).clear();
                break;
            case 3:
                ((c4) this.f3471b).clear();
                break;
            default:
                ((AbstractMap) this.f3471b).clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        switch (this.f3470a) {
            case 0:
                return ((b0) this.f3471b).containsValue(obj);
            case 1:
            default:
                return super.contains(obj);
            case 2:
                return ((d7.w) this.f3471b).h(obj);
            case 3:
                return ((c4) this.f3471b).containsValue(obj);
            case 4:
                return ((AbstractMap) this.f3471b).containsValue(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        switch (this.f3470a) {
            case 0:
                return ((b0) this.f3471b).isEmpty();
            case 1:
            case 2:
            default:
                return super.isEmpty();
            case 3:
                return ((c4) this.f3471b).isEmpty();
            case 4:
                return ((AbstractMap) this.f3471b).isEmpty();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        switch (this.f3470a) {
            case 0:
                return new l((b0) this.f3471b, 2);
            case 1:
                i0 i0Var = (i0) this.f3471b;
                Map mapC = i0Var.c();
                return mapC != null ? mapC.values().iterator() : new f0(i0Var, 2);
            case 2:
                return new f4(((d7.w) this.f3471b).a().iterator(), 1);
            case 3:
                return new d3((c4) this.f3471b, 2);
            default:
                return new f4(((AbstractMap) this.f3471b).entrySet().iterator(), 1);
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [d7.d1, d7.w] */
    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        switch (this.f3470a) {
            case 2:
                ?? r02 = (d7.w) this.f3471b;
                b7.n nVarC = r02.c();
                Iterator it = r02.e().a().iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    if (nVarC.apply(entry) && b7.b.p(entry.getValue(), obj)) {
                        it.remove();
                        return true;
                    }
                }
                return false;
            case 3:
            default:
                return super.remove(obj);
            case 4:
                try {
                    return super.remove(obj);
                } catch (UnsupportedOperationException unused) {
                    AbstractMap abstractMap = (AbstractMap) this.f3471b;
                    for (Map.Entry entry2 : abstractMap.entrySet()) {
                        if (b7.b.p(obj, entry2.getValue())) {
                            abstractMap.remove(entry2.getKey());
                            return true;
                        }
                    }
                    return false;
                }
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [d7.d1, d7.w] */
    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection collection) {
        switch (this.f3470a) {
            case 2:
                ?? r02 = (d7.w) this.f3471b;
                return d7.d0.y(r02.e().a(), b7.b.a(r02.c(), new b7.p(new b7.q(collection), i4.f6176b)));
            case 3:
            default:
                return super.removeAll(collection);
            case 4:
                try {
                    collection.getClass();
                    return super.removeAll(collection);
                } catch (UnsupportedOperationException unused) {
                    HashSet hashSet = new HashSet();
                    AbstractMap abstractMap = (AbstractMap) this.f3471b;
                    for (Map.Entry entry : abstractMap.entrySet()) {
                        if (collection.contains(entry.getValue())) {
                            hashSet.add(entry.getKey());
                        }
                    }
                    return abstractMap.keySet().removeAll(hashSet);
                }
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [d7.d1, d7.w] */
    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(Collection collection) {
        switch (this.f3470a) {
            case 2:
                ?? r02 = (d7.w) this.f3471b;
                return d7.d0.y(r02.e().a(), b7.b.a(r02.c(), new b7.p(new b7.t(new b7.q(collection)), i4.f6176b)));
            case 3:
            default:
                return super.retainAll(collection);
            case 4:
                try {
                    collection.getClass();
                    return super.retainAll(collection);
                } catch (UnsupportedOperationException unused) {
                    HashSet hashSet = new HashSet();
                    AbstractMap abstractMap = (AbstractMap) this.f3471b;
                    for (Map.Entry entry : abstractMap.entrySet()) {
                        if (collection.contains(entry.getValue())) {
                            hashSet.add(entry.getKey());
                        }
                    }
                    return abstractMap.keySet().retainAll(hashSet);
                }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        switch (this.f3470a) {
            case 0:
                return ((b0) this.f3471b).size();
            case 1:
                return ((i0) this.f3471b).size();
            case 2:
                return ((d7.w) this.f3471b).size();
            case 3:
                return ((c4) this.f3471b).size();
            default:
                return ((AbstractMap) this.f3471b).size();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public w(d1 d1Var) {
        this.f3470a = 2;
        this.f3471b = (d7.w) d1Var;
    }

    public w(AbstractMap abstractMap) {
        this.f3470a = 4;
        abstractMap.getClass();
        this.f3471b = abstractMap;
    }
}
