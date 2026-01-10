package d7;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class j4 extends p5 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6187a;

    public /* synthetic */ j4(int i6) {
        this.f6187a = i6;
    }

    public abstract Map c();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        switch (this.f6187a) {
            case 0:
                c().clear();
                break;
            default:
                d().clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        Object obj2;
        switch (this.f6187a) {
            case 0:
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    Object key = entry.getKey();
                    Map mapC = c();
                    mapC.getClass();
                    try {
                        obj2 = mapC.get(key);
                    } catch (ClassCastException | NullPointerException unused) {
                        obj2 = null;
                    }
                    if (b7.b.p(obj2, entry.getValue())) {
                        if (obj2 != null || c().containsKey(key)) {
                        }
                    }
                }
                break;
            default:
                if (obj instanceof w4) {
                    w4 w4Var = (w4) obj;
                    if (w4Var.a() > 0 && d().count(w4Var.b()) == w4Var.a()) {
                    }
                }
                break;
        }
        return false;
    }

    public abstract v4 d();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        switch (this.f6187a) {
            case 0:
                return c().isEmpty();
            default:
                return super.isEmpty();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        switch (this.f6187a) {
            case 0:
                if (contains(obj) && (obj instanceof Map.Entry)) {
                    break;
                }
                break;
            default:
                if (obj instanceof w4) {
                    w4 w4Var = (w4) obj;
                    Object objB = w4Var.b();
                    int iA = w4Var.a();
                    if (iA != 0) {
                        z zVar = (z) d();
                        zVar.getClass();
                        d0.d(iA, "oldCount");
                        d0.d(0, "newCount");
                        if (zVar.count(objB) == iA) {
                            d0.d(0, "count");
                            int iCount = 0 - zVar.count(objB);
                            if (iCount <= 0) {
                                if (iCount < 0) {
                                    zVar.b(-iCount, objB);
                                    break;
                                }
                            } else {
                                zVar.add(iCount, objB);
                                break;
                            }
                        }
                    }
                }
                break;
        }
        return false;
    }

    @Override // d7.p5, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(Collection collection) {
        switch (this.f6187a) {
            case 0:
                try {
                    collection.getClass();
                    return d0.x(this, collection);
                } catch (UnsupportedOperationException unused) {
                    Iterator it = collection.iterator();
                    boolean zRemove = false;
                    while (it.hasNext()) {
                        zRemove |= remove(it.next());
                    }
                    return zRemove;
                }
            default:
                return super.removeAll(collection);
        }
    }

    @Override // d7.p5, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(Collection collection) {
        int iCeil;
        switch (this.f6187a) {
            case 0:
                try {
                    collection.getClass();
                    return super.retainAll(collection);
                } catch (UnsupportedOperationException unused) {
                    int size = collection.size();
                    if (size < 3) {
                        d0.d(size, "expectedSize");
                        iCeil = size + 1;
                    } else {
                        iCeil = size < 1073741824 ? (int) Math.ceil(size / 0.75d) : Integer.MAX_VALUE;
                    }
                    HashSet hashSet = new HashSet(iCeil);
                    for (Object obj : collection) {
                        if (contains(obj) && (obj instanceof Map.Entry)) {
                            hashSet.add(((Map.Entry) obj).getKey());
                        }
                    }
                    return c().keySet().retainAll(hashSet);
                }
            default:
                return super.retainAll(collection);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return c().size();
    }
}
