package d7;

import com.google.common.util.concurrent.ClosingFuture;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x2 extends AbstractList implements Serializable, RandomAccess {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6297a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Object f6298b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f6299c;

    public x2(ClosingFuture closingFuture, Object[] objArr) {
        this.f6298b = closingFuture;
        objArr.getClass();
        this.f6299c = objArr;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i6) {
        switch (this.f6297a) {
            case 0:
                b7.b.h(i6, size());
                if (i6 == 0) {
                    return (ClosingFuture) this.f6298b;
                }
                return ((Object[]) this.f6299c)[i6 - 1];
            default:
                return ((b7.i) this.f6299c).apply(((List) this.f6298b).get(i6));
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        switch (this.f6297a) {
            case 1:
                return ((List) this.f6298b).isEmpty();
            default:
                return super.isEmpty();
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator iterator() {
        switch (this.f6297a) {
            case 1:
                return listIterator();
            default:
                return super.iterator();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator listIterator(int i6) {
        switch (this.f6297a) {
            case 1:
                return new y2(this, ((List) this.f6298b).listIterator(i6), 0);
            default:
                return super.listIterator(i6);
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public Object remove(int i6) {
        switch (this.f6297a) {
            case 1:
                return ((b7.i) this.f6299c).apply(((List) this.f6298b).remove(i6));
            default:
                return super.remove(i6);
        }
    }

    @Override // java.util.AbstractList
    public void removeRange(int i6, int i10) {
        switch (this.f6297a) {
            case 1:
                ((List) this.f6298b).subList(i6, i10).clear();
                break;
            default:
                super.removeRange(i6, i10);
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        switch (this.f6297a) {
            case 0:
                return r4.b.K(((Object[]) this.f6299c).length + 1);
            default:
                return ((List) this.f6298b).size();
        }
    }

    public x2(List list, b7.i iVar) {
        list.getClass();
        this.f6298b = list;
        this.f6299c = iVar;
    }
}
