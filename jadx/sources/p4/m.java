package p4;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.cast.d0;
import java.util.Iterator;
import q4.b0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8888a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n f8889b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f8890c;

    public /* synthetic */ m(n nVar, int i6, int i10) {
        this.f8888a = i10;
        this.f8889b = nVar;
        this.f8890c = i6;
    }

    private final void a() {
        n nVar = this.f8889b;
        o oVar = nVar.d;
        oVar.f8904w = -1;
        oVar.f8905x = -1;
        oVar.f8900s = null;
        oVar.f8901t = null;
        oVar.f8902u = 0.0d;
        oVar.k();
        oVar.f8903v = false;
        oVar.f8906y = null;
        oVar.E = 1;
        int i6 = this.f8890c;
        synchronized (oVar.D) {
            try {
                Iterator it = oVar.D.iterator();
                while (it.hasNext()) {
                    q4.n nVar2 = ((b0) it.next()).f9221a.f9214e;
                    if (nVar2 != null) {
                        try {
                            ConnectionResult connectionResult = new ConnectionResult(i6);
                            q4.l lVar = (q4.l) nVar2;
                            Parcel parcelL = lVar.l();
                            d0.c(parcelL, connectionResult);
                            lVar.x(parcelL, 3);
                        } catch (RemoteException e5) {
                            q4.b.f9212m.a(e5, "Unable to call %s on %s.", "onDisconnected", q4.n.class.getSimpleName());
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        o oVar2 = nVar.d;
        oVar2.g();
        oVar2.f(oVar2.f8891j);
    }

    private final void b() {
        Iterator it;
        n nVar = this.f8889b;
        int i6 = this.f8890c;
        if (i6 == 0) {
            o oVar = nVar.d;
            oVar.E = 3;
            oVar.f8893l = true;
            oVar.f8894m = true;
            synchronized (oVar.D) {
                try {
                    Iterator it2 = oVar.D.iterator();
                    while (it2.hasNext()) {
                        ((b0) it2.next()).a();
                    }
                } finally {
                }
            }
            return;
        }
        o oVar2 = nVar.d;
        oVar2.E = 1;
        synchronized (oVar2.D) {
            try {
                it = oVar2.D.iterator();
            } catch (RemoteException e5) {
                q4.b.f9212m.a(e5, "Unable to call %s on %s.", "onConnectionFailed", q4.n.class.getSimpleName());
            } finally {
            }
            while (it.hasNext()) {
                q4.n nVar2 = ((b0) it.next()).f9221a.f9214e;
                if (nVar2 != null) {
                    ConnectionResult connectionResult = new ConnectionResult(i6);
                    q4.l lVar = (q4.l) nVar2;
                    Parcel parcelL = lVar.l();
                    d0.c(parcelL, connectionResult);
                    lVar.x(parcelL, 3);
                }
            }
        }
        nVar.d.g();
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f8888a) {
            case 0:
                a();
                return;
            case 1:
                b();
                return;
            case 2:
                this.f8889b.d.C.c(this.f8890c);
                return;
            default:
                o oVar = this.f8889b.d;
                oVar.E = 4;
                int i6 = this.f8890c;
                synchronized (oVar.D) {
                    try {
                        Iterator it = oVar.D.iterator();
                        while (it.hasNext()) {
                            q4.n nVar = ((b0) it.next()).f9221a.f9214e;
                            if (nVar != null) {
                                try {
                                    q4.l lVar = (q4.l) nVar;
                                    Parcel parcelL = lVar.l();
                                    parcelL.writeInt(i6);
                                    lVar.x(parcelL, 2);
                                } catch (RemoteException e5) {
                                    q4.b.f9212m.a(e5, "Unable to call %s on %s.", "onConnectionSuspended", q4.n.class.getSimpleName());
                                }
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }
}
