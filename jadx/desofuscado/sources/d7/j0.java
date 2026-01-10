package d7;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j0 implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public int f6183a;

    /* renamed from: b, reason: collision with root package name */
    public int f6184b;

    /* renamed from: c, reason: collision with root package name */
    public int f6185c = -1;
    public final /* synthetic */ k0 d;

    public j0(k0 k0Var) {
        this.d = k0Var;
        this.f6183a = k0Var.d;
        this.f6184b = k0Var.f6195h;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f6184b >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        k0 k0Var = this.d;
        if (k0Var.d != this.f6183a) {
            throw new ConcurrentModificationException();
        }
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i6 = this.f6184b;
        this.f6185c = i6;
        Object obj = k0Var.g()[i6];
        int i10 = this.f6184b;
        Objects.requireNonNull(k0Var.f6194g);
        this.f6184b = r0[i10] - 1;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        k0 k0Var = this.d;
        if (k0Var.d != this.f6183a) {
            throw new ConcurrentModificationException();
        }
        b7.b.n("no calls to next() since the last call to remove()", this.f6185c >= 0);
        this.f6183a += 32;
        k0Var.remove(k0Var.g()[this.f6185c]);
        int i6 = this.f6184b;
        int i10 = this.f6185c;
        if (i6 >= k0Var.size()) {
            i6 = i10;
        }
        this.f6184b = i6;
        this.f6185c = -1;
    }
}
