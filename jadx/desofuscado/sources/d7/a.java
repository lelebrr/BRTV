package d7;

import java.util.ListIterator;
import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a extends s5 implements ListIterator {

    /* renamed from: a, reason: collision with root package name */
    public final int f6080a;

    /* renamed from: b, reason: collision with root package name */
    public int f6081b;

    public a(int i6, int i10) {
        b7.b.k(i10, i6);
        this.f6080a = i6;
        this.f6081b = i10;
    }

    public abstract Object a(int i6);

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f6081b < this.f6080a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f6081b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i6 = this.f6081b;
        this.f6081b = i6 + 1;
        return a(i6);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f6081b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i6 = this.f6081b - 1;
        this.f6081b = i6;
        return a(i6);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f6081b - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
