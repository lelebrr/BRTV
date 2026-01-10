package c9;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import t9.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class c extends a {
    private final a9.i _context;
    private transient a9.d<Object> intercepted;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(a9.d dVar) {
        super(dVar);
        a9.i context = dVar != null ? dVar.getContext() : null;
        this._context = context;
    }

    @Override // a9.d
    public a9.i getContext() {
        a9.i iVar = this._context;
        j9.i.c(iVar);
        return iVar;
    }

    public final a9.d<Object> intercepted() {
        a9.d<Object> gVar = this.intercepted;
        if (gVar == null) {
            a9.f fVar = (a9.f) getContext().e(a9.e.f178a);
            gVar = fVar != null ? new x9.g((p) fVar, this) : this;
            this.intercepted = gVar;
        }
        return gVar;
    }

    @Override // c9.a
    public void releaseIntercepted() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        a9.d<Object> dVar = this.intercepted;
        if (dVar != null && dVar != this) {
            a9.g gVarE = getContext().e(a9.e.f178a);
            j9.i.c(gVarE);
            x9.g gVar = (x9.g) dVar;
            do {
                atomicReferenceFieldUpdater = x9.g.f11111h;
            } while (atomicReferenceFieldUpdater.get(gVar) == x9.a.d);
            Object obj = atomicReferenceFieldUpdater.get(gVar);
            t9.e eVar = obj instanceof t9.e ? (t9.e) obj : null;
            if (eVar != null) {
                eVar.k();
            }
        }
        this.intercepted = b.f3481a;
    }
}
