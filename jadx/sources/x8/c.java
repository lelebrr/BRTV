package x8;

import java.util.ListIterator;
import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class c extends j9.a implements ListIterator {
    public final /* synthetic */ e d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(e eVar, int i6) {
        super(3, eVar);
        this.d = eVar;
        b bVar = e.Companion;
        int size = eVar.size();
        bVar.getClass();
        b.b(i6, size);
        this.f7460b = i6;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f7460b > 0;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f7460b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i6 = this.f7460b - 1;
        this.f7460b = i6;
        return this.d.get(i6);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f7460b - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
