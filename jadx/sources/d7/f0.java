package d7;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f0 implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public int f6136a;

    /* renamed from: b, reason: collision with root package name */
    public int f6137b;

    /* renamed from: c, reason: collision with root package name */
    public int f6138c;
    public final /* synthetic */ i0 d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f6139e;
    public final /* synthetic */ i0 f;

    public f0(i0 i0Var, int i6) {
        this.f6139e = i6;
        this.f = i0Var;
        this.d = i0Var;
        this.f6136a = i0Var.f6171e;
        this.f6137b = i0Var.isEmpty() ? -1 : 0;
        this.f6138c = -1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f6137b >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object h0Var;
        i0 i0Var = this.d;
        if (i0Var.f6171e != this.f6136a) {
            throw new ConcurrentModificationException();
        }
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i6 = this.f6137b;
        this.f6138c = i6;
        switch (this.f6139e) {
            case 0:
                h0Var = this.f.j()[i6];
                break;
            case 1:
                h0Var = new h0(this.f, i6);
                break;
            default:
                h0Var = this.f.k()[i6];
                break;
        }
        int i10 = this.f6137b + 1;
        if (i10 >= i0Var.f) {
            i10 = -1;
        }
        this.f6137b = i10;
        return h0Var;
    }

    @Override // java.util.Iterator
    public final void remove() {
        i0 i0Var = this.d;
        if (i0Var.f6171e != this.f6136a) {
            throw new ConcurrentModificationException();
        }
        b7.b.n("no calls to next() since the last call to remove()", this.f6138c >= 0);
        this.f6136a += 32;
        i0Var.remove(i0Var.j()[this.f6138c]);
        this.f6137b--;
        this.f6138c = -1;
    }
}
