package d7;

import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q2 extends s5 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Iterator f6243a;

    public q2(Iterator it) {
        this.f6243a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f6243a.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return this.f6243a.next();
    }
}
