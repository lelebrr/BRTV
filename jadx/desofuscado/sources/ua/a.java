package ua;

import a.q;
import android.os.IBinder;
import android.os.IInterface;
import android.util.Log;
import b5.x;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.internal.zza;
import com.google.android.gms.cast.internal.zzac;
import com.google.android.gms.cast.zzat;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zav;
import com.google.android.gms.internal.cast.j0;
import com.google.android.gms.signin.internal.zak;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Set;
import javax.net.ssl.HttpsURLConnection;
import t9.p;
import t9.u;
import v4.v;
import z4.w;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10460a;

    /* renamed from: b, reason: collision with root package name */
    public Object f10461b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f10462c;

    public /* synthetic */ a(int i6, Object obj, Object obj2, boolean z7) {
        this.f10460a = i6;
        this.f10462c = obj;
        this.f10461b = obj2;
    }

    private final void a() {
        synchronized (((w5.f) this.f10462c).f10818b) {
            w5.b bVar = (w5.b) ((w5.f) this.f10462c).d;
            Exception excC = ((w5.g) this.f10461b).c();
            b5.l.e(excC);
            bVar.a(excC);
        }
    }

    private final void b() {
        synchronized (((w5.f) this.f10462c).f10818b) {
            ((w5.c) ((w5.f) this.f10462c).d).onSuccess(((w5.g) this.f10461b).d());
        }
    }

    @Override // java.lang.Runnable
    public final void run() throws IOException {
        boolean z7;
        boolean z10;
        boolean z11;
        boolean z12;
        b5.c cVar;
        Set set;
        b5.c xVar = null;
        switch (this.f10460a) {
            case 0:
                i iVarM = ((l6.h) this.f10461b).m();
                if (iVarM == null) {
                    throw new IllegalStateException("No pending post available");
                }
                ((e) this.f10462c).c(iVarM);
                return;
            case 1:
                v4.b bVar = v.S;
                zzac zzacVar = (zzac) this.f10462c;
                ApplicationMetadata applicationMetadata = zzacVar.d;
                v vVar = (v) this.f10461b;
                boolean zE = v4.a.e(applicationMetadata, vVar.f10716z);
                j0 j0Var = vVar.B;
                if (!zE) {
                    vVar.f10716z = applicationMetadata;
                    j0Var.e(applicationMetadata);
                }
                double d = zzacVar.f3893a;
                if (Double.isNaN(d) || Math.abs(d - vVar.K) <= 1.0E-7d) {
                    z7 = false;
                } else {
                    vVar.K = d;
                    z7 = true;
                }
                boolean z13 = vVar.H;
                boolean z14 = zzacVar.f3894b;
                if (z14 != z13) {
                    vVar.H = z14;
                    z7 = true;
                }
                Double.isNaN(zzacVar.f3897g);
                Object[] objArr = {Boolean.valueOf(z7), Boolean.valueOf(vVar.J)};
                v4.b bVar2 = v.S;
                bVar2.b("hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b", objArr);
                if (j0Var != null && (z7 || vVar.J)) {
                    j0Var.l();
                }
                int i6 = vVar.M;
                int i10 = zzacVar.f3895c;
                if (i10 != i6) {
                    vVar.M = i10;
                    z10 = true;
                } else {
                    z10 = false;
                }
                bVar2.b("hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z10), Boolean.valueOf(vVar.J));
                if (j0Var != null && (z10 || vVar.J)) {
                    j0Var.a(vVar.M);
                }
                int i11 = vVar.N;
                int i12 = zzacVar.f3896e;
                if (i12 != i11) {
                    vVar.N = i12;
                    z11 = true;
                } else {
                    z11 = false;
                }
                bVar2.b("hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z11), Boolean.valueOf(vVar.J));
                if (j0Var != null && (z11 || vVar.J)) {
                    j0Var.j(vVar.N);
                }
                zzat zzatVar = vVar.L;
                zzat zzatVar2 = zzacVar.f;
                if (!v4.a.e(zzatVar, zzatVar2)) {
                    vVar.L = zzatVar2;
                }
                vVar.J = false;
                return;
            case 2:
                v4.b bVar3 = v.S;
                String str = ((zza) this.f10462c).f3885a;
                v vVar2 = (v) this.f10461b;
                if (v4.a.e(str, vVar2.G)) {
                    z12 = false;
                } else {
                    vVar2.G = str;
                    z12 = true;
                }
                v.S.b("hasChanged=%b, mFirstApplicationStatusUpdate=%b", Boolean.valueOf(z12), Boolean.valueOf(vVar2.I));
                j0 j0Var2 = vVar2.B;
                if (j0Var2 != null && (z12 || vVar2.I)) {
                    j0Var2.g();
                }
                vVar2.I = false;
                return;
            case 3:
                try {
                    ((HttpsURLConnection) this.f10461b).disconnect();
                } catch (Exception unused) {
                }
                try {
                    ((DataOutputStream) this.f10462c).close();
                    return;
                } catch (IOException unused2) {
                    return;
                }
            case 4:
                synchronized (((w5.f) this.f10462c).f10818b) {
                    ((w5.a) ((w5.f) this.f10462c).d).e((w5.g) this.f10461b);
                }
                return;
            case 5:
                a();
                return;
            case 6:
                b();
                return;
            case 7:
                break;
            case 8:
                q qVar = (q) this.f10462c;
                z4.n nVar = (z4.n) ((z4.e) qVar.f).f11605j.get((z4.b) qVar.f29c);
                if (nVar == null) {
                    return;
                }
                ConnectionResult connectionResult = (ConnectionResult) this.f10461b;
                if ((connectionResult.f3906b == 0 ? 1 : 0) == 0) {
                    nVar.o(connectionResult, null);
                    return;
                }
                qVar.f27a = true;
                y4.c cVar2 = (y4.c) qVar.f28b;
                if (cVar2.k()) {
                    if (!qVar.f27a || (cVar = (b5.c) qVar.d) == null) {
                        return;
                    }
                    cVar2.b(cVar, (Set) qVar.f30e);
                    return;
                }
                try {
                    cVar2.b(null, cVar2.a());
                    return;
                } catch (SecurityException e5) {
                    Log.e("GoogleApiManager", "Failed to get service from broker. ", e5);
                    cVar2.c("Failed to get service from broker.");
                    nVar.o(new ConnectionResult(10), null);
                    return;
                }
            default:
                zak zakVar = (zak) this.f10461b;
                ConnectionResult connectionResult2 = zakVar.f4534b;
                i = connectionResult2.f3906b == 0 ? 1 : 0;
                w wVar = (w) this.f10462c;
                if (i != 0) {
                    zav zavVar = zakVar.f4535c;
                    b5.l.e(zavVar);
                    ConnectionResult connectionResult3 = zavVar.f4016c;
                    if (connectionResult3.f3906b != 0) {
                        Log.wtf("SignInCoordinator", "Sign-in succeeded with resolve account failure: ".concat(String.valueOf(connectionResult3)), new Exception());
                        wVar.f11649j.e(connectionResult3);
                        wVar.f11648i.disconnect();
                        return;
                    }
                    q qVar2 = wVar.f11649j;
                    IBinder iBinder = zavVar.f4015b;
                    if (iBinder != null) {
                        int i13 = b5.a.d;
                        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                        xVar = iInterfaceQueryLocalInterface instanceof b5.c ? (b5.c) iInterfaceQueryLocalInterface : new x(iBinder, "com.google.android.gms.common.internal.IAccountAccessor", 2);
                    }
                    qVar2.getClass();
                    if (xVar == null || (set = wVar.f11646g) == null) {
                        Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                        qVar2.e(new ConnectionResult(4));
                    } else {
                        qVar2.d = xVar;
                        qVar2.f30e = set;
                        if (qVar2.f27a) {
                            ((y4.c) qVar2.f28b).b(xVar, set);
                        }
                    }
                } else {
                    wVar.f11649j.e(connectionResult2);
                }
                wVar.f11648i.disconnect();
                return;
        }
        while (true) {
            try {
                ((Runnable) this.f10461b).run();
            } catch (Throwable th) {
                u.h(a9.j.f179a, th);
            }
            x9.h hVar = (x9.h) this.f10462c;
            Runnable runnableH = hVar.h();
            if (runnableH == null) {
                return;
            }
            this.f10461b = runnableH;
            i++;
            if (i >= 16) {
                p pVar = hVar.f11115c;
                if (pVar.g()) {
                    pVar.d(hVar, this);
                    return;
                }
            }
        }
    }

    public /* synthetic */ a(Object obj, int i6, Object obj2) {
        this.f10460a = i6;
        this.f10461b = obj;
        this.f10462c = obj2;
    }

    public a(e eVar) {
        this.f10460a = 0;
        this.f10462c = eVar;
        this.f10461b = new l6.h(10);
    }
}
