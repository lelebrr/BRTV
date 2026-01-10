package p;

import d7.g0;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class e extends l implements Map {
    public g0 d;

    /* renamed from: e, reason: collision with root package name */
    public b f8837e;
    public d f;

    public e(e eVar) {
        super(0);
        g(eVar);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        g0 g0Var = this.d;
        if (g0Var != null) {
            return g0Var;
        }
        g0 g0Var2 = new g0(this, 2);
        this.d = g0Var2;
        return g0Var2;
    }

    public final boolean k(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!super.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Map
    public final Set keySet() {
        b bVar = this.f8837e;
        if (bVar != null) {
            return bVar;
        }
        b bVar2 = new b(this);
        this.f8837e = bVar2;
        return bVar2;
    }

    public final boolean l(Collection collection) {
        int i6 = this.f8858c;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            super.remove(it.next());
        }
        return i6 != this.f8858c;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        b(map.size() + this.f8858c);
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final Collection values() {
        d dVar = this.f;
        if (dVar != null) {
            return dVar;
        }
        d dVar2 = new d(this);
        this.f = dVar2;
        return dVar2;
    }
}
