package b5;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.zzk;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o extends com.google.android.gms.internal.cast.s {
    public com.google.android.gms.common.internal.a d;

    /* renamed from: e, reason: collision with root package name */
    public final int f3262e;

    public o(com.google.android.gms.common.internal.a aVar, int i6) {
        super("com.google.android.gms.common.internal.IGmsCallbacks", 1);
        this.d = aVar;
        this.f3262e = i6;
    }

    @Override // com.google.android.gms.internal.cast.s
    public final boolean w(int i6, Parcel parcel, Parcel parcel2) {
        if (i6 == 1) {
            int i10 = parcel.readInt();
            IBinder strongBinder = parcel.readStrongBinder();
            Bundle bundle = (Bundle) r5.a.a(parcel, Bundle.CREATOR);
            r5.a.b(parcel);
            l.f(this.d, "onPostInitComplete can be called only once per call to getRemoteService");
            this.d.u(i10, strongBinder, bundle, this.f3262e);
            this.d = null;
        } else if (i6 == 2) {
            parcel.readInt();
            r5.a.b(parcel);
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        } else {
            if (i6 != 3) {
                return false;
            }
            int i11 = parcel.readInt();
            IBinder strongBinder2 = parcel.readStrongBinder();
            zzk zzkVar = (zzk) r5.a.a(parcel, zzk.CREATOR);
            r5.a.b(parcel);
            com.google.android.gms.common.internal.a aVar = this.d;
            l.f(aVar, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
            l.e(zzkVar);
            aVar.f4008v = zzkVar;
            if (aVar.v()) {
                ConnectionTelemetryConfiguration connectionTelemetryConfiguration = zzkVar.d;
                d dVarB = d.b();
                RootTelemetryConfiguration rootTelemetryConfiguration = connectionTelemetryConfiguration == null ? null : connectionTelemetryConfiguration.f3957a;
                synchronized (dVarB) {
                    if (rootTelemetryConfiguration == null) {
                        rootTelemetryConfiguration = d.f3244c;
                    } else {
                        RootTelemetryConfiguration rootTelemetryConfiguration2 = (RootTelemetryConfiguration) dVarB.f3245a;
                        if (rootTelemetryConfiguration2 == null || rootTelemetryConfiguration2.f3982a < rootTelemetryConfiguration.f3982a) {
                        }
                    }
                    dVarB.f3245a = rootTelemetryConfiguration;
                }
            }
            Bundle bundle2 = zzkVar.f4022a;
            l.f(this.d, "onPostInitComplete can be called only once per call to getRemoteService");
            this.d.u(i11, strongBinder2, bundle2, this.f3262e);
            this.d = null;
        }
        parcel2.writeNoException();
        return true;
    }
}
