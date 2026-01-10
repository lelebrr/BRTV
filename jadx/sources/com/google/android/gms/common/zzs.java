package com.google.android.gms.common;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import b5.y;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import m5.a;
import m5.b;
import o9.d;
import x4.i;
import x4.j;
import x4.m;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new m(0);

    /* renamed from: a, reason: collision with root package name */
    public final String f4091a;

    /* renamed from: b, reason: collision with root package name */
    public final j f4092b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4093c;
    public final boolean d;

    public zzs(String str, IBinder iBinder, boolean z7, boolean z10) {
        this.f4091a = str;
        j jVar = null;
        if (iBinder != null) {
            try {
                int i6 = i.f11012e;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
                a aVarF = (iInterfaceQueryLocalInterface instanceof b5.j ? (b5.j) iInterfaceQueryLocalInterface : new y(iBinder, "com.google.android.gms.common.internal.ICertData", 2)).f();
                byte[] bArr = aVarF == null ? null : (byte[]) b.y(aVarF);
                if (bArr != null) {
                    jVar = new j(bArr);
                } else {
                    Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
                }
            } catch (RemoteException e5) {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e5);
            }
        }
        this.f4092b = jVar;
        this.f4093c = z7;
        this.d = z10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.R(parcel, 1, this.f4091a);
        j jVar = this.f4092b;
        if (jVar == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            jVar = null;
        }
        d.N(parcel, 2, jVar);
        d.X(parcel, 3, 4);
        parcel.writeInt(this.f4093c ? 1 : 0);
        d.X(parcel, 4, 4);
        parcel.writeInt(this.d ? 1 : 0);
        d.W(parcel, iV);
    }
}
