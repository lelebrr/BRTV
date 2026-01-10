package o9;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements Iterator, k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final int f8636a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8637b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8638c;
    public int d;

    public b(char c5, int i6) {
        this.f8636a = i6;
        this.f8637b = c5;
        boolean z7 = false;
        if (i6 <= 0 ? j9.i.h(1, c5) >= 0 : j9.i.h(1, c5) <= 0) {
            z7 = true;
        }
        this.f8638c = z7;
        this.d = z7 ? (char) 1 : c5;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8638c;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i6 = this.d;
        if (i6 != this.f8637b) {
            this.d = this.f8636a + i6;
        } else {
            if (!this.f8638c) {
                throw new NoSuchElementException();
            }
            this.f8638c = false;
        }
        return Character.valueOf((char) i6);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
