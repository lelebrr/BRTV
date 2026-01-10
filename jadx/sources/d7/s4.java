package d7;

import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s4 extends s implements l5 {

    /* renamed from: h, reason: collision with root package name */
    public transient q4 f6265h;

    @Override // d7.w, d7.p4
    public final Collection a() {
        return (Set) super.a();
    }

    @Override // d7.s, d7.p4
    public final Collection get(Object obj) {
        return (Set) super.get(obj);
    }

    @Override // d7.s, d7.w
    public final Map i() {
        return p();
    }

    @Override // d7.s, d7.w
    public final Set k() {
        return q();
    }

    @Override // d7.s
    public final Collection o() {
        return k0.d(this.f6265h.f6246b);
    }

    @Override // d7.s
    public final Collection r(Collection collection) {
        return collection instanceof NavigableSet ? d0.I((NavigableSet) collection) : collection instanceof SortedSet ? Collections.unmodifiableSortedSet((SortedSet) collection) : Collections.unmodifiableSet((Set) collection);
    }

    @Override // d7.s
    public final Collection s(Collection collection, Object obj) {
        return collection instanceof NavigableSet ? new p(this, obj, (NavigableSet) collection, null) : collection instanceof SortedSet ? new r(this, obj, (SortedSet) collection, null) : new q(this, obj, (Set) collection);
    }

    @Override // d7.w, d7.p4
    public final Set a() {
        return (Set) super.a();
    }

    @Override // d7.s, d7.p4
    public final Set get(Object obj) {
        return (Set) super.get(obj);
    }
}
