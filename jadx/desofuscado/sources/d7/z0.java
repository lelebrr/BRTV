package d7;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class z0 extends i1 implements List {

    /* renamed from: a, reason: collision with root package name */
    public final Object f6314a;

    public z0(Object obj) {
        this.f6314a = obj;
    }

    @Override // d7.i1, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        add(0, obj);
        throw null;
    }

    @Override // d7.i1, java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        addAll(0, collection);
        throw null;
    }

    @Override // d7.i1, d7.l1
    public final Object delegate() {
        return Collections.emptyList();
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        return obj == this || Collections.emptyList().equals(obj);
    }

    @Override // java.util.List
    public final Object get(int i6) {
        return Collections.emptyList().get(i6);
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        return Collections.emptyList().hashCode();
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        return Collections.emptyList().indexOf(obj);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        return Collections.emptyList().lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return Collections.emptyList().listIterator();
    }

    @Override // java.util.List
    public final Object remove(int i6) {
        return Collections.emptyList().remove(i6);
    }

    @Override // java.util.List
    public final Object set(int i6, Object obj) {
        return Collections.emptyList().set(i6, obj);
    }

    @Override // java.util.List
    public final List subList(int i6, int i10) {
        return Collections.emptyList().subList(i6, i10);
    }

    @Override // java.util.List
    public final void add(int i6, Object obj) {
        b7.b.k(i6, 0);
        throw new IllegalArgumentException("Key does not satisfy predicate: " + this.f6314a);
    }

    @Override // java.util.List
    public final boolean addAll(int i6, Collection collection) {
        collection.getClass();
        b7.b.k(i6, 0);
        throw new IllegalArgumentException("Key does not satisfy predicate: " + this.f6314a);
    }

    @Override // d7.i1, d7.l1
    public final Collection delegate() {
        return Collections.emptyList();
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i6) {
        return Collections.emptyList().listIterator(i6);
    }
}
