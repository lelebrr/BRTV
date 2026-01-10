package v4;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.zzat;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.ComplianceOptions;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.internal.cast.d0;
import com.google.android.gms.internal.cast.j0;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class v extends com.google.android.gms.common.internal.a {
    public static final b S = new b("CastClientImpl", null);
    public static final Object T = new Object();
    public static final Object U = new Object();
    public final CastDevice A;
    public final j0 B;
    public final HashMap C;
    public final long D;
    public final Bundle E;
    public u F;
    public String G;
    public boolean H;
    public boolean I;
    public boolean J;
    public double K;
    public zzat L;
    public int M;
    public int N;
    public String O;
    public String P;
    public Bundle Q;
    public final HashMap R;

    /* renamed from: z, reason: collision with root package name */
    public ApplicationMetadata f10716z;

    public v(Context context, Looper looper, a4.h hVar, CastDevice castDevice, long j10, j0 j0Var, Bundle bundle, z4.n nVar, z4.n nVar2) {
        super(context, looper, 10, hVar, nVar, nVar2);
        this.A = castDevice;
        this.B = j0Var;
        this.D = j10;
        this.E = bundle;
        this.C = new HashMap();
        new AtomicLong(0L);
        this.R = new HashMap();
        this.M = -1;
        this.N = -1;
        this.f10716z = null;
        this.G = null;
        this.K = 0.0d;
        B();
        this.H = false;
        this.L = null;
        B();
    }

    public static void z(v vVar, long j10) {
        HashMap map = vVar.R;
        synchronized (map) {
            try {
                if (map.remove(Long.valueOf(j10)) != null) {
                    throw new ClassCastException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void A() {
        S.b("removing all MessageReceivedCallbacks", new Object[0]);
        HashMap map = this.C;
        synchronized (map) {
            map.clear();
        }
    }

    public final void B() {
        CastDevice castDevice = this.A;
        b5.l.f(castDevice, "device should not be null");
        androidx.leanback.widget.o oVar = castDevice.f3658i;
        if (oVar.a(2048) || !oVar.a(4) || oVar.a(1)) {
            return;
        }
        "Chromecast Audio".equals(castDevice.f3655e);
    }

    @Override // y4.c
    public final int d() {
        return 12800000;
    }

    @Override // com.google.android.gms.common.internal.a, y4.c
    public final void disconnect() {
        Object[] objArr = {this.F, Boolean.valueOf(isConnected())};
        b bVar = S;
        bVar.b("disconnect(); ServiceListener=%s, isConnected=%b", objArr);
        u uVar = this.F;
        v vVar = null;
        this.F = null;
        if (uVar != null) {
            v vVar2 = (v) uVar.d.getAndSet(null);
            if (vVar2 != null) {
                vVar2.M = -1;
                vVar2.N = -1;
                vVar2.f10716z = null;
                vVar2.G = null;
                vVar2.K = 0.0d;
                vVar2.B();
                vVar2.H = false;
                vVar2.L = null;
                vVar = vVar2;
            }
            if (vVar != null) {
                A();
                try {
                    try {
                        d dVar = (d) p();
                        ApiMetadata apiMetadata = new ApiMetadata(new ComplianceOptions(-1, -1, 0, true));
                        Parcel parcelL = dVar.l();
                        d0.c(parcelL, apiMetadata);
                        dVar.y(parcelL, 1);
                    } catch (RemoteException | IllegalStateException e5) {
                        bVar.a(e5, "Error while disconnecting the controller interface", new Object[0]);
                    }
                    return;
                } finally {
                    super.disconnect();
                }
            }
        }
        bVar.b("already disposed, so short-circuiting", new Object[0]);
    }

    @Override // com.google.android.gms.common.internal.a
    public final /* synthetic */ IInterface l(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.internal.ICastDeviceController");
        return iInterfaceQueryLocalInterface instanceof d ? (d) iInterfaceQueryLocalInterface : new d(iBinder);
    }

    @Override // com.google.android.gms.common.internal.a
    public final Bundle n() {
        Bundle bundle = this.Q;
        if (bundle == null) {
            return null;
        }
        this.Q = null;
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.a
    public final Bundle o() {
        Bundle bundle = new Bundle();
        S.b("getRemoteService(): mLastApplicationId=%s, mLastSessionId=%s", this.O, this.P);
        CastDevice castDevice = this.A;
        castDevice.getClass();
        bundle.putParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE", castDevice);
        bundle.putLong("com.google.android.gms.cast.EXTRA_CAST_FLAGS", this.D);
        Bundle bundle2 = this.E;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        u uVar = new u(this);
        this.F = uVar;
        bundle.putParcelable("listener", new BinderWrapper(uVar));
        String str = this.O;
        if (str != null) {
            bundle.putString("last_application_id", str);
            String str2 = this.P;
            if (str2 != null) {
                bundle.putString("last_session_id", str2);
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.a
    public final String q() {
        return "com.google.android.gms.cast.internal.ICastDeviceController";
    }

    @Override // com.google.android.gms.common.internal.a
    public final String r() {
        return "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE";
    }

    @Override // com.google.android.gms.common.internal.a
    public final void t(ConnectionResult connectionResult) {
        super.t(connectionResult);
        A();
    }

    @Override // com.google.android.gms.common.internal.a
    public final void u(int i6, IBinder iBinder, Bundle bundle, int i10) {
        S.b("in onPostInitHandler; statusCode=%d", Integer.valueOf(i6));
        if (i6 == 0 || i6 == 2300) {
            this.I = true;
            this.J = true;
        }
        if (i6 == 2300) {
            Bundle bundle2 = new Bundle();
            this.Q = bundle2;
            bundle2.putBoolean("com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING", true);
            i6 = 0;
        }
        super.u(i6, iBinder, bundle, i10);
    }
}
