package z4;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class y extends q {

    /* renamed from: b, reason: collision with root package name */
    public final c6.c f11652b;

    /* renamed from: c, reason: collision with root package name */
    public final w5.d f11653c;
    public final a d;

    public y(int i6, c6.c cVar, w5.d dVar, a aVar) {
        super(i6);
        this.f11653c = dVar;
        this.f11652b = cVar;
        this.d = aVar;
        if (i6 == 2 && cVar.f3393b) {
            throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
        }
    }

    @Override // z4.q
    public final boolean a(n nVar) {
        return this.f11652b.f3393b;
    }

    @Override // z4.q
    public final Feature[] b(n nVar) {
        return (Feature[]) this.f11652b.f3394c;
    }

    @Override // z4.q
    public final void c(Status status) {
        this.d.getClass();
        this.f11653c.c(status.f3927c != null ? new y4.k(status) : new y4.e(status));
    }

    @Override // z4.q
    public final void d(RuntimeException runtimeException) {
        this.f11653c.c(runtimeException);
    }

    @Override // z4.q
    public final void e(n nVar) throws DeadObjectException {
        w5.d dVar = this.f11653c;
        try {
            c6.c cVar = this.f11652b;
            ((k) ((c6.c) cVar.d).f3394c).r(nVar.d, dVar);
        } catch (DeadObjectException e5) {
            throw e5;
        } catch (RemoteException e10) {
            c(q.g(e10));
        } catch (RuntimeException e11) {
            dVar.c(e11);
        }
    }

    @Override // z4.q
    public final void f(l6.h hVar, boolean z7) {
        Boolean boolValueOf = Boolean.valueOf(z7);
        Map map = (Map) hVar.f8017c;
        w5.d dVar = this.f11653c;
        map.put(dVar, boolValueOf);
        dVar.f10815a.a(new l6.h(hVar, 16, dVar));
    }
}
