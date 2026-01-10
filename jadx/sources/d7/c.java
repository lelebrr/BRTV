package d7;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public final Iterator f6098a;

    /* renamed from: b, reason: collision with root package name */
    public Object f6099b = null;

    /* renamed from: c, reason: collision with root package name */
    public Collection f6100c = null;
    public Iterator d = u2.f6277a;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ s f6101e;
    public final /* synthetic */ int f;

    public c(s sVar, int i6) {
        this.f = i6;
        this.f6101e = sVar;
        this.f6098a = sVar.f.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f6098a.hasNext() || this.d.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.d.hasNext()) {
            Map.Entry entry = (Map.Entry) this.f6098a.next();
            this.f6099b = entry.getKey();
            Collection collection = (Collection) entry.getValue();
            this.f6100c = collection;
            this.d = collection.iterator();
        }
        Object obj = this.f6099b;
        Object next = this.d.next();
        switch (this.f) {
            case 0:
                return next;
            default:
                return new r1(obj, next);
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.d.remove();
        Collection collection = this.f6100c;
        Objects.requireNonNull(collection);
        if (collection.isEmpty()) {
            this.f6098a.remove();
        }
        s sVar = this.f6101e;
        sVar.f6258g--;
    }
}
