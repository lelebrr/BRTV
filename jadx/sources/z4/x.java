package z4;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class x extends q {

    /* renamed from: b, reason: collision with root package name */
    public final w5.d f11650b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f11651c;
    public final Object d;

    public x(int i6, w5.d dVar) {
        super(i6);
        this.f11650b = dVar;
    }

    @Override // z4.q
    public final boolean a(n nVar) {
        switch (this.f11651c) {
            case 0:
                ((u) this.d).f11641a.getClass();
                return true;
            default:
                return ((u) nVar.f11620h.get((g) this.d)) != null;
        }
    }

    @Override // z4.q
    public final Feature[] b(n nVar) {
        switch (this.f11651c) {
            case 0:
                return (Feature[]) ((u) this.d).f11641a.f9689c;
            default:
                u uVar = (u) nVar.f11620h.get((g) this.d);
                if (uVar == null) {
                    return null;
                }
                return (Feature[]) uVar.f11641a.f9689c;
        }
    }

    @Override // z4.q
    public final void c(Status status) {
        this.f11650b.c(new y4.e(status));
    }

    @Override // z4.q
    public final void d(RuntimeException runtimeException) {
        this.f11650b.c(runtimeException);
    }

    @Override // z4.q
    public final void e(n nVar) throws DeadObjectException {
        try {
            h(nVar);
        } catch (DeadObjectException e5) {
            c(q.g(e5));
            throw e5;
        } catch (RemoteException e10) {
            c(q.g(e10));
        } catch (RuntimeException e11) {
            this.f11650b.c(e11);
        }
    }

    @Override // z4.q
    public final /* bridge */ /* synthetic */ void f(l6.h hVar, boolean z7) {
        int i6 = this.f11651c;
    }

    public final void h(n nVar) {
        switch (this.f11651c) {
            case 0:
                s.g gVar = ((u) this.d).f11641a;
                ((j) gVar.d).f11612a.r(nVar.d, this.f11650b);
                g gVar2 = ((h) ((u) this.d).f11641a.f9688b).f11611a;
                if (gVar2 != null) {
                    nVar.f11620h.put(gVar2, (u) this.d);
                    break;
                }
                break;
            default:
                u uVar = (u) nVar.f11620h.remove((g) this.d);
                if (uVar == null) {
                    this.f11650b.d(Boolean.FALSE);
                    break;
                } else {
                    ((j) uVar.f11642b.f9745b).f11613b.r(nVar.d, this.f11650b);
                    ((h) uVar.f11641a.f9688b).f11611a = null;
                    break;
                }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public x(g gVar, w5.d dVar) {
        this(4, dVar);
        this.f11651c = 1;
        this.d = gVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public x(u uVar, w5.d dVar) {
        this(3, dVar);
        this.f11651c = 0;
        this.d = uVar;
    }

    private final /* bridge */ /* synthetic */ void i(l6.h hVar, boolean z7) {
    }

    private final /* bridge */ /* synthetic */ void j(l6.h hVar, boolean z7) {
    }
}
