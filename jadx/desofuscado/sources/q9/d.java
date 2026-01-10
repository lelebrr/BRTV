package q9;

import java.util.Iterator;
import java.util.NoSuchElementException;
import w8.l;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends e implements Iterator, a9.d, k9.a {

    /* renamed from: a, reason: collision with root package name */
    public int f9368a;

    /* renamed from: b, reason: collision with root package name */
    public Object f9369b;

    /* renamed from: c, reason: collision with root package name */
    public Iterator f9370c;
    public a9.d d;

    public final RuntimeException a() {
        int i6 = this.f9368a;
        if (i6 == 4) {
            return new NoSuchElementException();
        }
        if (i6 == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f9368a);
    }

    @Override // a9.d
    public final a9.i getContext() {
        return a9.j.f179a;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        while (true) {
            int i6 = this.f9368a;
            if (i6 != 0) {
                if (i6 != 1) {
                    if (i6 == 2 || i6 == 3) {
                        return true;
                    }
                    if (i6 == 4) {
                        return false;
                    }
                    throw a();
                }
                Iterator it = this.f9370c;
                j9.i.c(it);
                if (it.hasNext()) {
                    this.f9368a = 2;
                    return true;
                }
                this.f9370c = null;
            }
            this.f9368a = 5;
            a9.d dVar = this.d;
            j9.i.c(dVar);
            this.d = null;
            dVar.resumeWith(l.f10832a);
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i6 = this.f9368a;
        if (i6 == 0 || i6 == 1) {
            if (hasNext()) {
                return next();
            }
            throw new NoSuchElementException();
        }
        if (i6 == 2) {
            this.f9368a = 1;
            Iterator it = this.f9370c;
            j9.i.c(it);
            return it.next();
        }
        if (i6 != 3) {
            throw a();
        }
        this.f9368a = 0;
        Object obj = this.f9369b;
        this.f9369b = null;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // a9.d
    public final void resumeWith(Object obj) {
        o9.d.I(obj);
        this.f9368a = 4;
    }
}
