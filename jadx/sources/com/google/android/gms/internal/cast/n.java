package com.google.android.gms.internal.cast;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n extends q1.m0 {
    public static final v4.b d = new v4.b("MediaRouterCallback", null);

    /* renamed from: a, reason: collision with root package name */
    public final m f4355a;

    /* renamed from: b, reason: collision with root package name */
    public final u f4356b;

    /* renamed from: c, reason: collision with root package name */
    public final x f4357c;

    public n(m mVar, u uVar, x xVar) {
        b5.l.e(mVar);
        this.f4355a = mVar;
        this.f4356b = uVar;
        this.f4357c = xVar;
    }

    @Override // q1.m0
    public final void d(q1.u0 u0Var, q1.s0 s0Var) {
        try {
            m mVar = this.f4355a;
            String str = s0Var.f9131c;
            Bundle bundle = s0Var.f9145s;
            Parcel parcelL = mVar.l();
            parcelL.writeString(str);
            d0.c(parcelL, bundle);
            mVar.x(parcelL, 1);
        } catch (RemoteException e5) {
            d.a(e5, "Unable to call %s on %s.", "onRouteAdded", m.class.getSimpleName());
        }
        o(u0Var);
    }

    @Override // q1.m0
    public final void e(q1.u0 u0Var, q1.s0 s0Var) {
        if (s0Var.g()) {
            try {
                m mVar = this.f4355a;
                String str = s0Var.f9131c;
                Bundle bundle = s0Var.f9145s;
                Parcel parcelL = mVar.l();
                parcelL.writeString(str);
                d0.c(parcelL, bundle);
                mVar.x(parcelL, 2);
            } catch (RemoteException e5) {
                d.a(e5, "Unable to call %s on %s.", "onRouteChanged", m.class.getSimpleName());
            }
            o(u0Var);
        }
    }

    @Override // q1.m0
    public final void f(q1.s0 s0Var, q1.s0 s0Var2) {
        int i6 = s0Var.f9138l;
        v4.b bVar = d;
        String str = s0Var.f9131c;
        if (i6 != 1) {
            Log.i(bVar.f10671a, bVar.d("ignore onRouteConnected for non-remote connected routeId: %s", str));
            return;
        }
        Log.i(bVar.f10671a, bVar.d("onRouteConnected with connectedRouteId = %s", str));
        this.f4356b.f4430k = true;
        try {
            m mVar = this.f4355a;
            Parcel parcelW = mVar.w(mVar.l(), 7);
            int i10 = parcelW.readInt();
            parcelW.recycle();
            String str2 = s0Var2.f9131c;
            if (i10 >= 251600000) {
                Bundle bundle = s0Var.f9145s;
                Parcel parcelL = mVar.l();
                parcelL.writeString(str2);
                parcelL.writeString(str);
                d0.c(parcelL, bundle);
                mVar.x(parcelL, 9);
                return;
            }
            Bundle bundle2 = s0Var.f9145s;
            Parcel parcelL2 = mVar.l();
            parcelL2.writeString(str2);
            parcelL2.writeString(str);
            d0.c(parcelL2, bundle2);
            mVar.x(parcelL2, 8);
        } catch (RemoteException e5) {
            bVar.a(e5, "Unable to call %s on %s.", "onRouteConnected", m.class.getSimpleName());
        }
    }

    @Override // q1.m0
    public final void g(q1.s0 s0Var, q1.s0 s0Var2, int i6) {
        v4.b bVar = d;
        if (s0Var == null || s0Var.f9138l != 1) {
            Log.i(bVar.f10671a, bVar.d("ignore onRouteDisconnected for invalid or non-remote disconnected route", new Object[0]));
            return;
        }
        Integer numValueOf = Integer.valueOf(i6);
        String str = s0Var.f9131c;
        String str2 = s0Var2.f9131c;
        Log.i(bVar.f10671a, bVar.d("onRouteDisconnected with disconnectedRouteId = %s, requestedRouteId = %s, reason = %d", str, str2, numValueOf));
        this.f4356b.f4430k = false;
        try {
            m mVar = this.f4355a;
            Parcel parcelW = mVar.w(mVar.l(), 7);
            int i10 = parcelW.readInt();
            parcelW.recycle();
            if (i10 < 251600000) {
                Bundle bundle = s0Var.f9145s;
                Parcel parcelL = mVar.l();
                parcelL.writeString(str);
                d0.c(parcelL, bundle);
                parcelL.writeInt(i6);
                mVar.x(parcelL, 6);
                return;
            }
            Bundle bundle2 = s0Var.f9145s;
            Parcel parcelL2 = mVar.l();
            parcelL2.writeString(str2);
            parcelL2.writeString(str);
            d0.c(parcelL2, bundle2);
            parcelL2.writeInt(i6);
            mVar.x(parcelL2, 10);
        } catch (RemoteException e5) {
            bVar.a(e5, "Unable to call %s on %s.", "onRouteDisconnected", m.class.getSimpleName());
        }
    }

    @Override // q1.m0
    public final void h(q1.u0 u0Var, q1.s0 s0Var) {
        try {
            m mVar = this.f4355a;
            String str = s0Var.f9131c;
            Bundle bundle = s0Var.f9145s;
            Parcel parcelL = mVar.l();
            parcelL.writeString(str);
            d0.c(parcelL, bundle);
            mVar.x(parcelL, 3);
        } catch (RemoteException e5) {
            d.a(e5, "Unable to call %s on %s.", "onRouteRemoved", m.class.getSimpleName());
        }
        o(u0Var);
    }

    @Override // q1.m0
    public final void j(q1.u0 u0Var, q1.s0 s0Var, int i6, q1.s0 s0Var2) {
        int i10 = s0Var.f9138l;
        v4.b bVar = d;
        String str = s0Var.f9131c;
        if (i10 != 1) {
            Log.i(bVar.f10671a, bVar.d("ignore onRouteSelected for non-remote selected routeId: %s", str));
            return;
        }
        Log.i(bVar.f10671a, bVar.d("onRouteSelected with reason = %d, routeId = %s", Integer.valueOf(i6), str));
        try {
            m mVar = this.f4355a;
            Parcel parcelW = mVar.w(mVar.l(), 7);
            int i11 = parcelW.readInt();
            parcelW.recycle();
            if (i11 >= 220400000) {
                String str2 = s0Var2.f9131c;
                Bundle bundle = s0Var.f9145s;
                Parcel parcelL = mVar.l();
                parcelL.writeString(str2);
                parcelL.writeString(str);
                d0.c(parcelL, bundle);
                mVar.x(parcelL, 8);
            } else {
                String str3 = s0Var2.f9131c;
                Bundle bundle2 = s0Var.f9145s;
                Parcel parcelL2 = mVar.l();
                parcelL2.writeString(str3);
                d0.c(parcelL2, bundle2);
                mVar.x(parcelL2, 4);
            }
        } catch (RemoteException e5) {
            bVar.a(e5, "Unable to call %s on %s.", "onRouteSelected", m.class.getSimpleName());
        }
        o(u0Var);
    }

    @Override // q1.m0
    public final void l(q1.u0 u0Var, q1.s0 s0Var, int i6) {
        int i10 = s0Var.f9138l;
        v4.b bVar = d;
        String str = s0Var.f9131c;
        if (i10 != 1) {
            Log.i(bVar.f10671a, bVar.d("ignore onRouteUnselected for non-remote routeId: %s", str));
            return;
        }
        Log.i(bVar.f10671a, bVar.d("onRouteUnselected with reason = %d, routeId = %s", Integer.valueOf(i6), str));
        try {
            m mVar = this.f4355a;
            Bundle bundle = s0Var.f9145s;
            Parcel parcelL = mVar.l();
            parcelL.writeString(str);
            d0.c(parcelL, bundle);
            parcelL.writeInt(i6);
            mVar.x(parcelL, 6);
        } catch (RemoteException e5) {
            bVar.a(e5, "Unable to call %s on %s.", "onRouteUnselected", m.class.getSimpleName());
        }
        o(u0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0099  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void o(q1.u0 r9) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.n.o(q1.u0):void");
    }
}
