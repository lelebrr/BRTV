package d7;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a1 extends n1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6083a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f6084b;

    public /* synthetic */ a1(int i6, Object obj) {
        this.f6083a = i6;
        this.f6084b = obj;
    }

    @Override // d7.i1, java.util.Collection, java.util.Set
    public boolean add(Object obj) {
        switch (this.f6083a) {
            case 0:
                throw new IllegalArgumentException("Key does not satisfy predicate: " + this.f6084b);
            default:
                return super.add(obj);
        }
    }

    @Override // d7.i1, java.util.Collection, java.util.Set
    public boolean addAll(Collection collection) {
        switch (this.f6083a) {
            case 0:
                collection.getClass();
                throw new IllegalArgumentException("Key does not satisfy predicate: " + this.f6084b);
            default:
                return super.addAll(collection);
        }
    }

    @Override // d7.n1
    public final Set c() {
        switch (this.f6083a) {
            case 0:
                return Collections.emptySet();
            default:
                return (n5) ((l4) this.f6084b).f6212g;
        }
    }

    @Override // d7.i1, d7.l1
    public final Object delegate() {
        switch (this.f6083a) {
            case 0:
                return Collections.emptySet();
            default:
                return (n5) ((l4) this.f6084b).f6212g;
        }
    }

    @Override // d7.i1, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        switch (this.f6083a) {
            case 1:
                return new r2(this, ((n5) ((l4) this.f6084b).f6212g).iterator());
            default:
                return super.iterator();
        }
    }

    @Override // d7.i1, d7.l1
    public final Collection delegate() {
        switch (this.f6083a) {
            case 0:
                return Collections.emptySet();
            default:
                return (n5) ((l4) this.f6084b).f6212g;
        }
    }
}
