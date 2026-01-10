package com.google.android.gms.internal.cast;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.cast.framework.CastOptions;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k extends a {
    public final q4.r A(m5.b bVar, m5.a aVar, m5.a aVar2) {
        q4.r pVar;
        Parcel parcelL = l();
        d0.d(parcelL, bVar);
        d0.d(parcelL, aVar);
        d0.d(parcelL, aVar2);
        Parcel parcelW = w(parcelL, 5);
        IBinder strongBinder = parcelW.readStrongBinder();
        int i6 = q4.q.d;
        if (strongBinder == null) {
            pVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.IReconnectionService");
            pVar = iInterfaceQueryLocalInterface instanceof q4.r ? (q4.r) iInterfaceQueryLocalInterface : new q4.p(strongBinder, "com.google.android.gms.cast.framework.IReconnectionService", 0);
        }
        parcelW.recycle();
        return pVar;
    }

    public final q4.u B(String str, String str2, q4.w wVar) {
        q4.u sVar;
        Parcel parcelL = l();
        parcelL.writeString(str);
        parcelL.writeString(str2);
        d0.d(parcelL, wVar);
        Parcel parcelW = w(parcelL, 2);
        IBinder strongBinder = parcelW.readStrongBinder();
        int i6 = q4.t.d;
        if (strongBinder == null) {
            sVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.ISession");
            sVar = iInterfaceQueryLocalInterface instanceof q4.u ? (q4.u) iInterfaceQueryLocalInterface : new q4.s(strongBinder, "com.google.android.gms.cast.framework.ISession", 0);
        }
        parcelW.recycle();
        return sVar;
    }

    public final s4.e C(m5.b bVar, q4.w wVar, int i6, int i10) {
        s4.e cVar;
        Parcel parcelL = l();
        d0.d(parcelL, bVar);
        d0.d(parcelL, wVar);
        parcelL.writeInt(i6);
        parcelL.writeInt(i10);
        parcelL.writeInt(0);
        parcelL.writeLong(PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE);
        parcelL.writeInt(5);
        parcelL.writeInt(333);
        parcelL.writeInt(10000);
        Parcel parcelW = w(parcelL, 6);
        IBinder strongBinder = parcelW.readStrongBinder();
        int i11 = s4.d.d;
        if (strongBinder == null) {
            cVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.internal.IFetchBitmapTask");
            cVar = iInterfaceQueryLocalInterface instanceof s4.e ? (s4.e) iInterfaceQueryLocalInterface : new s4.c(strongBinder, "com.google.android.gms.cast.framework.media.internal.IFetchBitmapTask", 0);
        }
        parcelW.recycle();
        return cVar;
    }

    public final s4.e D(m5.b bVar, m5.b bVar2, q4.w wVar, int i6, int i10) {
        s4.e cVar;
        Parcel parcelL = l();
        d0.d(parcelL, bVar);
        d0.d(parcelL, bVar2);
        d0.d(parcelL, wVar);
        parcelL.writeInt(i6);
        parcelL.writeInt(i10);
        parcelL.writeInt(0);
        parcelL.writeLong(PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE);
        parcelL.writeInt(5);
        parcelL.writeInt(333);
        parcelL.writeInt(10000);
        Parcel parcelW = w(parcelL, 7);
        IBinder strongBinder = parcelW.readStrongBinder();
        int i11 = s4.d.d;
        if (strongBinder == null) {
            cVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.internal.IFetchBitmapTask");
            cVar = iInterfaceQueryLocalInterface instanceof s4.e ? (s4.e) iInterfaceQueryLocalInterface : new s4.c(strongBinder, "com.google.android.gms.cast.framework.media.internal.IFetchBitmapTask", 0);
        }
        parcelW.recycle();
        return cVar;
    }

    public final q4.n z(CastOptions castOptions, m5.a aVar, q4.w wVar) {
        q4.n lVar;
        Parcel parcelL = l();
        d0.c(parcelL, castOptions);
        d0.d(parcelL, aVar);
        d0.d(parcelL, wVar);
        Parcel parcelW = w(parcelL, 3);
        IBinder strongBinder = parcelW.readStrongBinder();
        int i6 = q4.m.d;
        if (strongBinder == null) {
            lVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.ICastSession");
            lVar = iInterfaceQueryLocalInterface instanceof q4.n ? (q4.n) iInterfaceQueryLocalInterface : new q4.l(strongBinder, "com.google.android.gms.cast.framework.ICastSession", 0);
        }
        parcelW.recycle();
        return lVar;
    }
}
