package d7;

import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p extends r implements NavigableSet {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ s4 f6234g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(s4 s4Var, Object obj, NavigableSet navigableSet, m mVar) {
        super(s4Var, obj, navigableSet, mVar);
        this.f6234g = s4Var;
    }

    @Override // java.util.NavigableSet
    public final Object ceiling(Object obj) {
        return f().ceiling(obj);
    }

    @Override // java.util.NavigableSet
    public final Iterator descendingIterator() {
        return new e(this, f().descendingIterator());
    }

    @Override // java.util.NavigableSet
    public final NavigableSet descendingSet() {
        return h(f().descendingSet());
    }

    @Override // java.util.NavigableSet
    public final Object floor(Object obj) {
        return f().floor(obj);
    }

    @Override // d7.r
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public final NavigableSet f() {
        return (NavigableSet) ((SortedSet) this.f6214b);
    }

    public final p h(NavigableSet navigableSet) {
        m mVar = this.f6215c;
        if (mVar == null) {
            mVar = this;
        }
        return new p(this.f6234g, this.f6213a, navigableSet, mVar);
    }

    @Override // java.util.NavigableSet
    public final NavigableSet headSet(Object obj, boolean z7) {
        return h(f().headSet(obj, z7));
    }

    @Override // java.util.NavigableSet
    public final Object higher(Object obj) {
        return f().higher(obj);
    }

    @Override // java.util.NavigableSet
    public final Object lower(Object obj) {
        return f().lower(obj);
    }

    @Override // java.util.NavigableSet
    public final Object pollFirst() {
        return d0.v(iterator());
    }

    @Override // java.util.NavigableSet
    public final Object pollLast() {
        return d0.v(descendingIterator());
    }

    @Override // java.util.NavigableSet
    public final NavigableSet subSet(Object obj, boolean z7, Object obj2, boolean z10) {
        return h(f().subSet(obj, z7, obj2, z10));
    }

    @Override // java.util.NavigableSet
    public final NavigableSet tailSet(Object obj, boolean z7) {
        return h(f().tailSet(obj, z7));
    }
}
