package com.google.android.gms.cast.framework;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import b5.l;
import com.google.android.gms.internal.cast.d0;
import com.google.android.gms.internal.cast.i;
import com.google.android.gms.internal.cast.k;
import m5.a;
import q4.c;
import q4.f;
import q4.h;
import q4.o;
import q4.p;
import q4.r;
import q4.v;
import v4.b;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ReconnectionService extends Service {

    /* renamed from: b, reason: collision with root package name */
    public static final b f3806b = new b("ReconnectionService", null);

    /* renamed from: a, reason: collision with root package name */
    public r f3807a;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        r rVar = this.f3807a;
        if (rVar != null) {
            try {
                p pVar = (p) rVar;
                Parcel parcelL = pVar.l();
                d0.c(parcelL, intent);
                Parcel parcelW = pVar.w(parcelL, 3);
                IBinder strongBinder = parcelW.readStrongBinder();
                parcelW.recycle();
                return strongBinder;
            } catch (RemoteException e5) {
                f3806b.a(e5, "Unable to call %s on %s.", "onBind", r.class.getSimpleName());
            }
        }
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        a aVarX;
        a aVarX2;
        q4.a aVarB = q4.a.b(this);
        f fVarA = aVarB.a();
        fVarA.getClass();
        r rVarA = null;
        try {
            v vVar = fVarA.f9226a;
            Parcel parcelW = vVar.w(vVar.l(), 7);
            aVarX = m5.b.x(parcelW.readStrongBinder());
            parcelW.recycle();
        } catch (RemoteException e5) {
            f.f9225c.a(e5, "Unable to call %s on %s.", "getWrappedThis", v.class.getSimpleName());
            aVarX = null;
        }
        l.b("Must be called from the main thread.");
        h hVar = aVarB.f9205c;
        hVar.getClass();
        try {
            o oVar = hVar.f9229a;
            Parcel parcelW2 = oVar.w(oVar.l(), 5);
            aVarX2 = m5.b.x(parcelW2.readStrongBinder());
            parcelW2.recycle();
        } catch (RemoteException e10) {
            h.f9228b.a(e10, "Unable to call %s on %s.", "getWrappedThis", o.class.getSimpleName());
            aVarX2 = null;
        }
        b bVar = i.f4216a;
        if (aVarX != null && aVarX2 != null) {
            try {
                rVarA = i.b(getApplicationContext()).A(new m5.b(this), aVarX, aVarX2);
            } catch (RemoteException | c e11) {
                i.f4216a.a(e11, "Unable to call %s on %s.", "newReconnectionServiceImpl", k.class.getSimpleName());
            }
        }
        this.f3807a = rVarA;
        if (rVarA != null) {
            try {
                p pVar = (p) rVarA;
                pVar.x(pVar.l(), 1);
            } catch (RemoteException e12) {
                f3806b.a(e12, "Unable to call %s on %s.", "onCreate", r.class.getSimpleName());
            }
            super.onCreate();
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        r rVar = this.f3807a;
        if (rVar != null) {
            try {
                p pVar = (p) rVar;
                pVar.x(pVar.l(), 4);
            } catch (RemoteException e5) {
                f3806b.a(e5, "Unable to call %s on %s.", "onDestroy", r.class.getSimpleName());
            }
            super.onDestroy();
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i6, int i10) {
        r rVar = this.f3807a;
        if (rVar != null) {
            try {
                p pVar = (p) rVar;
                Parcel parcelL = pVar.l();
                d0.c(parcelL, intent);
                parcelL.writeInt(i6);
                parcelL.writeInt(i10);
                Parcel parcelW = pVar.w(parcelL, 2);
                int i11 = parcelW.readInt();
                parcelW.recycle();
                return i11;
            } catch (RemoteException e5) {
                f3806b.a(e5, "Unable to call %s on %s.", "onStartCommand", r.class.getSimpleName());
            }
        }
        return 2;
    }
}
