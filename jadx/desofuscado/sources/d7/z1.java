package d7;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class z1 implements Map, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public transient e5 f6315a;

    /* renamed from: b, reason: collision with root package name */
    public transient f5 f6316b;

    /* renamed from: c, reason: collision with root package name */
    public transient g5 f6317c;

    public static y1 a() {
        return new y1(4);
    }

    public static z1 b(Map map) {
        if (!(map instanceof z1) || (map instanceof SortedMap)) {
            return c(map.entrySet());
        }
        z1 z1Var = (z1) map;
        z1Var.getClass();
        return z1Var;
    }

    public static h5 c(Collection collection) {
        boolean z7 = collection instanceof Collection;
        y1 y1Var = new y1(z7 ? collection.size() : 4);
        if (z7) {
            int size = collection.size() * 2;
            Object[] objArr = y1Var.f6306a;
            if (size > objArr.length) {
                y1Var.f6306a = Arrays.copyOf(objArr, p1.f(objArr.length, size));
            }
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            y1Var.b(entry.getKey(), entry.getValue());
        }
        return y1Var.a();
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final k2 entrySet() {
        e5 e5Var = this.f6315a;
        if (e5Var != null) {
            return e5Var;
        }
        h5 h5Var = (h5) this;
        e5 e5Var2 = new e5(h5Var, h5Var.f6166e, h5Var.f);
        this.f6315a = e5Var2;
        return e5Var2;
    }

    @Override // java.util.Map
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final k2 keySet() {
        f5 f5Var = this.f6316b;
        if (f5Var != null) {
            return f5Var;
        }
        h5 h5Var = (h5) this;
        f5 f5Var2 = new f5(h5Var, new g5(h5Var.f6166e, 0, h5Var.f));
        this.f6316b = f5Var2;
        return f5Var2;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return d0.i(this, obj);
    }

    @Override // java.util.Map
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public final q1 values() {
        g5 g5Var = this.f6317c;
        if (g5Var != null) {
            return g5Var;
        }
        h5 h5Var = (h5) this;
        g5 g5Var2 = new g5(h5Var.f6166e, 1, h5Var.f);
        this.f6317c = g5Var2;
        return g5Var2;
    }

    @Override // java.util.Map
    public abstract Object get(Object obj);

    @Override // java.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return d0.p(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return ((h5) this).size() == 0;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        return d0.G(this);
    }
}
