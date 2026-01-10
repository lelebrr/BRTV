package d7;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class e implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6124a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Iterator f6125b;

    /* renamed from: c, reason: collision with root package name */
    public Object f6126c;
    public final /* synthetic */ Object d;

    public e(m mVar) {
        this.d = mVar;
        Collection collection = mVar.f6214b;
        this.f6126c = collection;
        this.f6125b = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    public void a() {
        m mVar = (m) this.d;
        mVar.d();
        if (mVar.f6214b != ((Collection) this.f6126c)) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f6124a) {
            case 0:
                break;
            case 1:
                break;
            default:
                a();
                break;
        }
        return this.f6125b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f6124a) {
            case 0:
                Map.Entry entry = (Map.Entry) this.f6125b.next();
                this.f6126c = (Collection) entry.getValue();
                return ((f) this.d).d(entry);
            case 1:
                Map.Entry entry2 = (Map.Entry) this.f6125b.next();
                this.f6126c = entry2;
                return entry2.getKey();
            default:
                a();
                return this.f6125b.next();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f6124a) {
            case 0:
                b7.b.n("no calls to next() since the last call to remove()", ((Collection) this.f6126c) != null);
                this.f6125b.remove();
                ((f) this.d).f6135e.f6258g -= ((Collection) this.f6126c).size();
                ((Collection) this.f6126c).clear();
                this.f6126c = null;
                break;
            case 1:
                b7.b.n("no calls to next() since the last call to remove()", ((Map.Entry) this.f6126c) != null);
                Collection collection = (Collection) ((Map.Entry) this.f6126c).getValue();
                this.f6125b.remove();
                ((s) ((g) this.d).d).f6258g -= collection.size();
                collection.clear();
                this.f6126c = null;
                break;
            default:
                this.f6125b.remove();
                m mVar = (m) this.d;
                s sVar = mVar.f6216e;
                sVar.f6258g--;
                mVar.e();
                break;
        }
    }

    public e(m mVar, Iterator it) {
        this.d = mVar;
        this.f6126c = mVar.f6214b;
        this.f6125b = it;
    }

    public e(g gVar, Iterator it) {
        this.f6125b = it;
        this.d = gVar;
    }

    public e(f fVar) {
        this.d = fVar;
        this.f6125b = fVar.d.entrySet().iterator();
    }
}
