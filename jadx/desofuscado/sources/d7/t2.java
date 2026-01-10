package d7;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t2 implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public Iterator f6269a;

    /* renamed from: b, reason: collision with root package name */
    public Iterator f6270b;

    /* renamed from: c, reason: collision with root package name */
    public Iterator f6271c;
    public ArrayDeque d;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        Iterator it;
        while (true) {
            Iterator it2 = this.f6270b;
            it2.getClass();
            if (it2.hasNext()) {
                return true;
            }
            while (true) {
                Iterator it3 = this.f6271c;
                if (it3 != null && it3.hasNext()) {
                    it = this.f6271c;
                    break;
                }
                ArrayDeque arrayDeque = this.d;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    break;
                }
                this.f6271c = (Iterator) this.d.removeFirst();
            }
            it = null;
            this.f6271c = it;
            if (it == null) {
                return false;
            }
            Iterator it4 = (Iterator) it.next();
            this.f6270b = it4;
            if (it4 instanceof t2) {
                t2 t2Var = (t2) it4;
                this.f6270b = t2Var.f6270b;
                if (this.d == null) {
                    this.d = new ArrayDeque();
                }
                this.d.addFirst(this.f6271c);
                if (t2Var.d != null) {
                    while (!t2Var.d.isEmpty()) {
                        this.d.addFirst((Iterator) t2Var.d.removeLast());
                    }
                }
                this.f6271c = t2Var.f6271c;
            }
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Iterator it = this.f6270b;
        this.f6269a = it;
        return it.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        Iterator it = this.f6269a;
        if (it == null) {
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
        it.remove();
        this.f6269a = null;
    }
}
