package v4;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.ComplianceOptions;
import com.google.android.gms.internal.cast.d0;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class w extends com.google.android.gms.common.internal.a {
    public static final b D = new b("CastClientImplCxless", null);
    public final long A;
    public final Bundle B;
    public final String C;

    /* renamed from: z, reason: collision with root package name */
    public final CastDevice f10717z;

    public w(Context context, Looper looper, a4.h hVar, CastDevice castDevice, long j10, Bundle bundle, String str, z4.n nVar, z4.n nVar2) {
        super(context, looper, 10, hVar, nVar, nVar2);
        this.f10717z = castDevice;
        this.A = j10;
        this.B = bundle;
        this.C = str;
    }

    @Override // y4.c
    public final int d() {
        return 19390000;
    }

    @Override // com.google.android.gms.common.internal.a, y4.c
    public final void disconnect() {
        try {
            try {
                d dVar = (d) p();
                ApiMetadata apiMetadata = new ApiMetadata(new ComplianceOptions(-1, -1, 0, true));
                Parcel parcelL = dVar.l();
                d0.c(parcelL, apiMetadata);
                dVar.y(parcelL, 1);
            } catch (RemoteException | IllegalStateException e5) {
                D.a(e5, "Error while disconnecting the controller interface", new Object[0]);
            }
        } finally {
            super.disconnect();
        }
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
    public final Feature[] m() {
        return p4.j.f8881e;
    }

    @Override // com.google.android.gms.common.internal.a
    public final Bundle o() {
        Bundle bundle = new Bundle();
        D.b("getRemoteService()", new Object[0]);
        CastDevice castDevice = this.f10717z;
        castDevice.getClass();
        bundle.putParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE", castDevice);
        bundle.putLong("com.google.android.gms.cast.EXTRA_CAST_FLAGS", this.A);
        bundle.putString("connectionless_client_record_id", this.C);
        Bundle bundle2 = this.B;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
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
    public final boolean v() {
        return true;
    }
}
