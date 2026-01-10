package q9;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements c {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f9365a;

    public a(g gVar) {
        this.f9365a = new AtomicReference(gVar);
    }

    @Override // q9.c
    public final Iterator iterator() {
        c cVar = (c) this.f9365a.getAndSet(null);
        if (cVar != null) {
            return cVar.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
