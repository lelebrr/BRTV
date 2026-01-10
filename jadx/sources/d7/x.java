package d7;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class x extends p5 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6290a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Object f6291b;

    public x(Map map) {
        map.getClass();
        this.f6291b = map;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        switch (this.f6290a) {
            case 0:
                ((z) this.f6291b).clear();
                break;
            default:
                ((Map) this.f6291b).clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        switch (this.f6290a) {
            case 0:
                return ((z) this.f6291b).contains(obj);
            default:
                return ((Map) this.f6291b).containsKey(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection collection) {
        switch (this.f6290a) {
            case 0:
                return ((z) this.f6291b).containsAll(collection);
            default:
                return super.containsAll(collection);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        switch (this.f6290a) {
            case 0:
                return ((z) this.f6291b).isEmpty();
            default:
                return ((Map) this.f6291b).isEmpty();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        switch (this.f6290a) {
            case 0:
                ((z) this.f6291b).f();
                throw null;
            default:
                return new f4(((Map) this.f6291b).entrySet().iterator(), 0);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        switch (this.f6290a) {
            case 0:
                return ((z) this.f6291b).b(Integer.MAX_VALUE, obj) > 0;
            default:
                Map map = (Map) this.f6291b;
                if (!map.containsKey(obj)) {
                    return false;
                }
                map.remove(obj);
                return true;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        switch (this.f6290a) {
            case 0:
                return ((z) this.f6291b).entrySet().size();
            default:
                return ((Map) this.f6291b).size();
        }
    }

    public x(z zVar) {
        this.f6291b = zVar;
    }
}
