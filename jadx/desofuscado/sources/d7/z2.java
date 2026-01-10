package d7;

import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;
import java.util.ListIterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class z2 extends AbstractSequentialList implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final List f6318a;

    /* renamed from: b, reason: collision with root package name */
    public final b7.i f6319b;

    public z2(List list, b7.i iVar) {
        list.getClass();
        this.f6318a = list;
        this.f6319b = iVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.f6318a.isEmpty();
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i6) {
        return new y2(this, this.f6318a.listIterator(i6), 1);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i6, int i10) {
        this.f6318a.subList(i6, i10).clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f6318a.size();
    }
}
