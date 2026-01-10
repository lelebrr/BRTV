package d7;

import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class r5 implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public final Iterator f6257a;

    public r5(Iterator it) {
        it.getClass();
        this.f6257a = it;
    }

    public abstract Object a(Object obj);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f6257a.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return a(this.f6257a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f6257a.remove();
    }
}
