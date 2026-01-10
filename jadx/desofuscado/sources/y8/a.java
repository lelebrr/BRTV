package y8;

import j9.i;
import java.util.AbstractList;
import java.util.ConcurrentModificationException;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import x8.f;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a implements ListIterator, k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11421a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f11422b;

    /* renamed from: c, reason: collision with root package name */
    public int f11423c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public final f f11424e;

    public a(c cVar, int i6) {
        i.f(cVar, "list");
        this.f11424e = cVar;
        this.f11422b = i6;
        this.f11423c = -1;
        this.d = ((AbstractList) cVar).modCount;
    }

    public void a() {
        if (((AbstractList) ((b) this.f11424e).f11428e).modCount != this.d) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        switch (this.f11421a) {
            case 0:
                a();
                int i6 = this.f11422b;
                this.f11422b = i6 + 1;
                b bVar = (b) this.f11424e;
                bVar.add(i6, obj);
                this.f11423c = -1;
                this.d = ((AbstractList) bVar).modCount;
                break;
            default:
                b();
                int i10 = this.f11422b;
                this.f11422b = i10 + 1;
                c cVar = (c) this.f11424e;
                cVar.add(i10, obj);
                this.f11423c = -1;
                this.d = ((AbstractList) cVar).modCount;
                break;
        }
    }

    public void b() {
        if (((AbstractList) ((c) this.f11424e)).modCount != this.d) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        switch (this.f11421a) {
            case 0:
                if (this.f11422b < ((b) this.f11424e).f11427c) {
                }
                break;
            default:
                if (this.f11422b < ((c) this.f11424e).f11430b) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        switch (this.f11421a) {
            case 0:
                if (this.f11422b > 0) {
                }
                break;
            default:
                if (this.f11422b > 0) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        switch (this.f11421a) {
            case 0:
                a();
                int i6 = this.f11422b;
                b bVar = (b) this.f11424e;
                if (i6 >= bVar.f11427c) {
                    throw new NoSuchElementException();
                }
                this.f11422b = i6 + 1;
                this.f11423c = i6;
                return bVar.f11425a[bVar.f11426b + i6];
            default:
                b();
                int i10 = this.f11422b;
                c cVar = (c) this.f11424e;
                if (i10 >= cVar.f11430b) {
                    throw new NoSuchElementException();
                }
                this.f11422b = i10 + 1;
                this.f11423c = i10;
                return cVar.f11429a[i10];
        }
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        switch (this.f11421a) {
        }
        return this.f11422b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        switch (this.f11421a) {
            case 0:
                a();
                int i6 = this.f11422b;
                if (i6 <= 0) {
                    throw new NoSuchElementException();
                }
                int i10 = i6 - 1;
                this.f11422b = i10;
                this.f11423c = i10;
                b bVar = (b) this.f11424e;
                return bVar.f11425a[bVar.f11426b + i10];
            default:
                b();
                int i11 = this.f11422b;
                if (i11 <= 0) {
                    throw new NoSuchElementException();
                }
                int i12 = i11 - 1;
                this.f11422b = i12;
                this.f11423c = i12;
                return ((c) this.f11424e).f11429a[i12];
        }
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        switch (this.f11421a) {
        }
        return this.f11422b - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        switch (this.f11421a) {
            case 0:
                a();
                int i6 = this.f11423c;
                if (i6 == -1) {
                    throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
                }
                b bVar = (b) this.f11424e;
                bVar.d(i6);
                this.f11422b = this.f11423c;
                this.f11423c = -1;
                this.d = ((AbstractList) bVar).modCount;
                return;
            default:
                b();
                int i10 = this.f11423c;
                if (i10 == -1) {
                    throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
                }
                c cVar = (c) this.f11424e;
                cVar.d(i10);
                this.f11422b = this.f11423c;
                this.f11423c = -1;
                this.d = ((AbstractList) cVar).modCount;
                return;
        }
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        switch (this.f11421a) {
            case 0:
                a();
                int i6 = this.f11423c;
                if (i6 == -1) {
                    throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
                }
                ((b) this.f11424e).set(i6, obj);
                return;
            default:
                b();
                int i10 = this.f11423c;
                if (i10 == -1) {
                    throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
                }
                ((c) this.f11424e).set(i10, obj);
                return;
        }
    }

    public a(b bVar, int i6) {
        i.f(bVar, "list");
        this.f11424e = bVar;
        this.f11422b = i6;
        this.f11423c = -1;
        this.d = ((AbstractList) bVar).modCount;
    }
}
