package d7;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends j4 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6117b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbstractMap f6118c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ d(AbstractMap abstractMap, int i6) {
        super(0);
        this.f6117b = i6;
        this.f6118c = abstractMap;
    }

    @Override // d7.j4
    public final Map c() {
        switch (this.f6117b) {
            case 0:
                return (f) this.f6118c;
            case 1:
                return (u0) this.f6118c;
            default:
                return (n4) this.f6118c;
        }
    }

    @Override // d7.j4, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        switch (this.f6117b) {
            case 0:
                Set setEntrySet = ((f) this.f6118c).d.entrySet();
                setEntrySet.getClass();
                try {
                    return setEntrySet.contains(obj);
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            default:
                return super.contains(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        switch (this.f6117b) {
            case 0:
                return new e((f) this.f6118c);
            case 1:
                return new s0(this);
            default:
                n4 n4Var = (n4) this.f6118c;
                Iterator it = n4Var.f6225a.entrySet().iterator();
                a0.b bVar = n4Var.f6226b;
                bVar.getClass();
                return new r2(it, new e4(bVar));
        }
    }

    @Override // d7.j4, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        Object objRemove;
        switch (this.f6117b) {
            case 0:
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                s sVar = ((f) this.f6118c).f6135e;
                Object key = entry.getKey();
                Map map = sVar.f;
                map.getClass();
                try {
                    objRemove = map.remove(key);
                } catch (ClassCastException | NullPointerException unused) {
                    objRemove = null;
                }
                Collection collection = (Collection) objRemove;
                if (collection != null) {
                    int size = collection.size();
                    collection.clear();
                    sVar.f6258g -= size;
                }
                return true;
            default:
                return super.remove(obj);
        }
    }

    @Override // d7.j4, d7.p5, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(Collection collection) {
        switch (this.f6117b) {
            case 1:
                return ((u0) this.f6118c).d.p(new b7.q(collection));
            default:
                return super.removeAll(collection);
        }
    }

    @Override // d7.j4, d7.p5, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(Collection collection) {
        switch (this.f6117b) {
            case 1:
                return ((u0) this.f6118c).d.p(new b7.t(new b7.q(collection)));
            default:
                return super.retainAll(collection);
        }
    }

    @Override // d7.j4, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        switch (this.f6117b) {
            case 1:
                s0 s0Var = new s0(this);
                long j10 = 0;
                while (s0Var.hasNext()) {
                    s0Var.next();
                    j10++;
                }
                return r4.b.K(j10);
            default:
                return super.size();
        }
    }
}
