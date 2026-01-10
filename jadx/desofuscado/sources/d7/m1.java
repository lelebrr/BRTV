package d7;

import java.util.NoSuchElementException;
import java.util.Queue;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class m1 extends i1 implements Queue {
    @Override // d7.i1, d7.l1
    public abstract Queue delegate();

    @Override // java.util.Queue
    public Object element() {
        return delegate().element();
    }

    @Override // java.util.Queue
    public boolean offer(Object obj) {
        return delegate().offer(obj);
    }

    @Override // java.util.Queue
    public Object peek() {
        return delegate().peek();
    }

    @Override // java.util.Queue
    public Object poll() {
        return delegate().poll();
    }

    @Override // java.util.Queue
    public Object remove() {
        return delegate().remove();
    }

    public boolean standardOffer(Object obj) {
        try {
            return add(obj);
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    public Object standardPeek() {
        try {
            return element();
        } catch (NoSuchElementException unused) {
            return null;
        }
    }

    public Object standardPoll() {
        try {
            return remove();
        } catch (NoSuchElementException unused) {
            return null;
        }
    }
}
