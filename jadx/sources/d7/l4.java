package d7;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l4 extends o4 {
    public final Map d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f6211e;
    public final /* synthetic */ int f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f6212g;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public l4(Map map, b7.n nVar, b7.p pVar) {
        this(map, pVar);
        this.f = 1;
        this.f6212g = nVar;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [b7.n, java.lang.Object] */
    @Override // d7.o4
    public final Set a() {
        switch (this.f) {
            case 0:
                return new a1(1, this);
            default:
                return d0.l(this.d.entrySet(), this.f6211e);
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [b7.n, java.lang.Object] */
    @Override // d7.o4
    public final Set b() {
        switch (this.f) {
            case 0:
                return new g(this, 2);
            default:
                return d0.l(this.d.keySet(), this.f6212g);
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [b7.n, java.lang.Object] */
    @Override // d7.o4
    public final Collection c() {
        return new m4(this, this.d, this.f6211e);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [b7.n, java.lang.Object] */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        switch (this.f) {
            case 1:
                return this.d.containsKey(obj) && this.f6212g.apply(obj);
            default:
                return e(obj);
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [b7.n, java.lang.Object] */
    public final boolean d(Object obj, Object obj2) {
        return this.f6211e.apply(new r1(obj, obj2));
    }

    public final boolean e(Object obj) {
        Map map = this.d;
        return map.containsKey(obj) && d(obj, map.get(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Object obj2 = this.d.get(obj);
        if (obj2 == null || !d(obj, obj2)) {
            return null;
        }
        return obj2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return entrySet().isEmpty();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        b7.b.f(d(obj, obj2));
        return this.d.put(obj, obj2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void putAll(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            b7.b.f(d(entry.getKey(), entry.getValue()));
        }
        this.d.putAll(map);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        if (containsKey(obj)) {
            return this.d.remove(obj);
        }
        return null;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r3v1, types: [b7.n, java.lang.Object] */
    public l4(Map map, b7.o oVar) {
        this(map, (b7.n) oVar);
        this.f = 0;
        this.f6212g = d0.l(map.entrySet(), this.f6211e);
    }

    public l4(Map map, b7.n nVar) {
        this.d = map;
        this.f6211e = nVar;
    }
}
