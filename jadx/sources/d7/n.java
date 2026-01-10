package d7;

import java.util.List;
import java.util.ListIterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n extends e implements ListIterator {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ o f6221e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(o oVar) {
        super(oVar);
        this.f6221e = oVar;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        o oVar = this.f6221e;
        boolean zIsEmpty = oVar.isEmpty();
        b().add(obj);
        oVar.f.f6258g++;
        if (zIsEmpty) {
            oVar.c();
        }
    }

    public final ListIterator b() {
        a();
        return (ListIterator) this.f6125b;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return b().hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return b().nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        return b().previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return b().previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        b().set(obj);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(o oVar, int i6) {
        super(oVar, ((List) oVar.f6214b).listIterator(i6));
        this.f6221e = oVar;
    }
}
