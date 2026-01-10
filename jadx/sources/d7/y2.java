package d7;

import java.util.AbstractList;
import java.util.ListIterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y2 extends r5 implements ListIterator {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6309b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbstractList f6310c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ y2(AbstractList abstractList, ListIterator listIterator, int i6) {
        super(listIterator);
        this.f6309b = i6;
        this.f6310c = abstractList;
    }

    @Override // d7.r5
    public final Object a(Object obj) {
        switch (this.f6309b) {
            case 0:
                return ((b7.i) ((x2) this.f6310c).f6299c).apply(obj);
            default:
                return ((z2) this.f6310c).f6319b.apply(obj);
        }
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return ((ListIterator) this.f6257a).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return ((ListIterator) this.f6257a).nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        return a(((ListIterator) this.f6257a).previous());
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return ((ListIterator) this.f6257a).previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
