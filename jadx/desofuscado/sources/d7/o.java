package d7;

import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class o extends m implements List {
    public final /* synthetic */ s f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(s sVar, Object obj, List list, m mVar) {
        super(sVar, obj, list, mVar);
        this.f = sVar;
    }

    @Override // java.util.List
    public final void add(int i6, Object obj) {
        d();
        boolean zIsEmpty = this.f6214b.isEmpty();
        ((List) this.f6214b).add(i6, obj);
        this.f.f6258g++;
        if (zIsEmpty) {
            c();
        }
    }

    @Override // java.util.List
    public final boolean addAll(int i6, Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zAddAll = ((List) this.f6214b).addAll(i6, collection);
        if (zAddAll) {
            this.f.f6258g += this.f6214b.size() - size;
            if (size == 0) {
                c();
            }
        }
        return zAddAll;
    }

    @Override // java.util.List
    public final Object get(int i6) {
        d();
        return ((List) this.f6214b).get(i6);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        d();
        return ((List) this.f6214b).indexOf(obj);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        d();
        return ((List) this.f6214b).lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        d();
        return new n(this);
    }

    @Override // java.util.List
    public final Object remove(int i6) {
        d();
        Object objRemove = ((List) this.f6214b).remove(i6);
        s sVar = this.f;
        sVar.f6258g--;
        e();
        return objRemove;
    }

    @Override // java.util.List
    public final Object set(int i6, Object obj) {
        d();
        return ((List) this.f6214b).set(i6, obj);
    }

    @Override // java.util.List
    public final List subList(int i6, int i10) {
        d();
        List listSubList = ((List) this.f6214b).subList(i6, i10);
        m mVar = this.f6215c;
        if (mVar == null) {
            mVar = this;
        }
        s sVar = this.f;
        sVar.getClass();
        boolean z7 = listSubList instanceof RandomAccess;
        Object obj = this.f6213a;
        return z7 ? new j(sVar, obj, listSubList, mVar) : new o(sVar, obj, listSubList, mVar);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i6) {
        d();
        return new n(this, i6);
    }
}
