package o9;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g implements Iterator, k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final int f8654a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8655b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8656c;
    public int d;

    public g(int i6, int i10, int i11) {
        this.f8654a = i11;
        this.f8655b = i10;
        boolean z7 = false;
        if (i11 <= 0 ? i6 >= i10 : i6 <= i10) {
            z7 = true;
        }
        this.f8656c = z7;
        this.d = z7 ? i6 : i10;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8656c;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i6 = this.d;
        if (i6 != this.f8655b) {
            this.d = this.f8654a + i6;
        } else {
            if (!this.f8656c) {
                throw new NoSuchElementException();
            }
            this.f8656c = false;
        }
        return Integer.valueOf(i6);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
