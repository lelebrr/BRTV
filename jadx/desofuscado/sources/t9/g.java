package t9;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class g extends s0 {

    /* renamed from: e, reason: collision with root package name */
    public final e f10191e;

    public g(e eVar) {
        this.f10191e = eVar;
    }

    @Override // i9.l
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        j((Throwable) obj);
        return w8.l.f10832a;
    }

    @Override // t9.u0
    public final void j(Throwable th) {
        y0 y0VarI = i();
        e eVar = this.f10191e;
        eVar.getClass();
        CancellationException cancellationExceptionQ = y0VarI.q();
        if (eVar.r()) {
            a9.d dVar = eVar.d;
            j9.i.d(dVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            x9.g gVar = (x9.g) dVar;
            loop0: while (true) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = x9.g.f11111h;
                Object obj = atomicReferenceFieldUpdater.get(gVar);
                u7.b bVar = x9.a.d;
                if (!j9.i.a(obj, bVar)) {
                    if (!(obj instanceof Throwable)) {
                        while (!atomicReferenceFieldUpdater.compareAndSet(gVar, obj, null)) {
                            if (atomicReferenceFieldUpdater.get(gVar) != obj) {
                                break;
                            }
                        }
                        break loop0;
                    }
                    return;
                }
                while (!atomicReferenceFieldUpdater.compareAndSet(gVar, bVar, cancellationExceptionQ)) {
                    if (atomicReferenceFieldUpdater.get(gVar) != bVar) {
                        break;
                    }
                }
                return;
            }
        }
        eVar.j(cancellationExceptionQ);
        if (eVar.r()) {
            return;
        }
        eVar.k();
    }
}
