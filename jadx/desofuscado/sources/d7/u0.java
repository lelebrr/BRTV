package d7;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u0 extends o4 {
    public final /* synthetic */ y0 d;

    public u0(y0 y0Var) {
        this.d = y0Var;
    }

    @Override // d7.o4
    public final Set a() {
        return new d(this, 1);
    }

    @Override // d7.o4
    public final Set b() {
        return new g(this, 1);
    }

    @Override // d7.o4
    public final Collection c() {
        return new t0(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.d.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final Collection get(Object obj) {
        y0 y0Var = this.d;
        Collection collection = (Collection) y0Var.f.d().get(obj);
        if (collection == null) {
            return null;
        }
        e0 e0VarO = y0.o(collection, new x0(y0Var, obj));
        if (e0VarO.isEmpty()) {
            return null;
        }
        return e0VarO;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final Collection remove(Object obj) {
        y0 y0Var = this.d;
        Collection collection = (Collection) y0Var.f.d().get(obj);
        if (collection == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (y0Var.f6305g.apply(new r1(obj, next))) {
                it.remove();
                arrayList.add(next);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return y0Var.f instanceof l5 ? Collections.unmodifiableSet(new LinkedHashSet(arrayList)) : Collections.unmodifiableList(arrayList);
    }
}
