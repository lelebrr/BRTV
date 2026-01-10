package d7;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m4 extends c7.w {

    /* renamed from: c, reason: collision with root package name */
    public final Map f6218c;
    public final Object d;

    public m4(l4 l4Var, Map map, b7.n nVar) {
        super(l4Var);
        this.f6218c = map;
        this.d = nVar;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [b7.n, java.lang.Object] */
    @Override // c7.w, java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        Iterator it = this.f6218c.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (this.d.apply(entry) && b7.b.p(entry.getValue(), obj)) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [b7.n, java.lang.Object] */
    @Override // c7.w, java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        Iterator it = this.f6218c.entrySet().iterator();
        boolean z7 = false;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (this.d.apply(entry) && collection.contains(entry.getValue())) {
                it.remove();
                z7 = true;
            }
        }
        return z7;
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [b7.n, java.lang.Object] */
    @Override // c7.w, java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        Iterator it = this.f6218c.entrySet().iterator();
        boolean z7 = false;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (this.d.apply(entry) && !collection.contains(entry.getValue())) {
                it.remove();
                z7 = true;
            }
        }
        return z7;
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
