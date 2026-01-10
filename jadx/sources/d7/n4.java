package d7;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n4 extends AbstractMap {

    /* renamed from: a, reason: collision with root package name */
    public final Map f6225a;

    /* renamed from: b, reason: collision with root package name */
    public final a0.b f6226b;

    public n4(Map map, a0.b bVar) {
        map.getClass();
        this.f6225a = map;
        this.f6226b = bVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f6225a.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return this.f6225a.containsKey(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        return new d(this, 2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Map map = this.f6225a;
        Object obj2 = map.get(obj);
        if (obj2 != null || map.containsKey(obj)) {
            return ((b7.i) this.f6226b.f32b).apply(obj2);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        return this.f6225a.keySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        Map map = this.f6225a;
        if (!map.containsKey(obj)) {
            return null;
        }
        return ((b7.i) this.f6226b.f32b).apply(map.remove(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f6225a.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        return new c7.w(this);
    }
}
