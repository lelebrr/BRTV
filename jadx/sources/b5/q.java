package b5;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q extends i {

    /* renamed from: g, reason: collision with root package name */
    public final IBinder f3265g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.common.internal.a f3266h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(com.google.android.gms.common.internal.a aVar, int i6, IBinder iBinder, Bundle bundle) {
        super(aVar, i6, bundle);
        this.f3266h = aVar;
        this.f3265g = iBinder;
    }

    @Override // b5.i
    public final void a(ConnectionResult connectionResult) {
        com.google.android.gms.common.internal.a aVar = this.f3266h;
        d dVar = aVar.f4002p;
        if (dVar != null) {
            ((y4.i) dVar.f3245a).l(connectionResult);
        }
        aVar.t(connectionResult);
    }

    @Override // b5.i
    public final boolean b() throws RemoteException {
        IBinder iBinder = this.f3265g;
        try {
            l.e(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            com.google.android.gms.common.internal.a aVar = this.f3266h;
            if (!aVar.q().equals(interfaceDescriptor)) {
                Log.w("GmsClient", "service descriptor mismatch: " + aVar.q() + " vs. " + interfaceDescriptor);
                return false;
            }
            IInterface iInterfaceL = aVar.l(iBinder);
            if (iInterfaceL == null || !(com.google.android.gms.common.internal.a.x(aVar, 2, 4, iInterfaceL) || com.google.android.gms.common.internal.a.x(aVar, 3, 4, iInterfaceL))) {
                return false;
            }
            aVar.f4006t = null;
            aVar.n();
            d dVar = aVar.f4001o;
            if (dVar == null) {
                return true;
            }
            ((y4.h) dVar.f3245a).onConnected();
            return true;
        } catch (RemoteException unused) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }
}
