package p;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements Iterator, k9.a {

    /* renamed from: a, reason: collision with root package name */
    public int f8828a;

    /* renamed from: b, reason: collision with root package name */
    public int f8829b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8830c;
    public final /* synthetic */ int d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f8831e;

    public a(int i6) {
        this.f8828a = i6;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8829b < this.f8828a;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object objF;
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i6 = this.f8829b;
        switch (this.d) {
            case 0:
                objF = ((e) this.f8831e).f(i6);
                break;
            case 1:
                objF = ((e) this.f8831e).j(i6);
                break;
            default:
                objF = ((f) this.f8831e).f8839b[i6];
                break;
        }
        this.f8829b++;
        this.f8830c = true;
        return objF;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f8830c) {
            throw new IllegalStateException("Call next() before removing an element.");
        }
        int i6 = this.f8829b - 1;
        this.f8829b = i6;
        switch (this.d) {
            case 0:
                ((e) this.f8831e).h(i6);
                break;
            case 1:
                ((e) this.f8831e).h(i6);
                break;
            default:
                ((f) this.f8831e).c(i6);
                break;
        }
        this.f8828a--;
        this.f8830c = false;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(f fVar) {
        this(fVar.f8840c);
        this.d = 2;
        this.f8831e = fVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(e eVar, int i6) {
        this(eVar.f8858c);
        this.d = i6;
        switch (i6) {
            case 1:
                this.f8831e = eVar;
                this(eVar.f8858c);
                break;
            default:
                this.f8831e = eVar;
                break;
        }
    }
}
