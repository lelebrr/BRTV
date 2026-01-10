package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import b5.c;
import b5.l;
import b5.x;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zav extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zav> CREATOR = new d(9);

    /* renamed from: a, reason: collision with root package name */
    public final int f4014a;

    /* renamed from: b, reason: collision with root package name */
    public final IBinder f4015b;

    /* renamed from: c, reason: collision with root package name */
    public final ConnectionResult f4016c;
    public final boolean d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f4017e;

    public zav(int i6, IBinder iBinder, ConnectionResult connectionResult, boolean z7, boolean z10) {
        this.f4014a = i6;
        this.f4015b = iBinder;
        this.f4016c = connectionResult;
        this.d = z7;
        this.f4017e = z10;
    }

    public final boolean equals(Object obj) {
        Object xVar;
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zav)) {
            return false;
        }
        zav zavVar = (zav) obj;
        if (this.f4016c.equals(zavVar.f4016c)) {
            Object xVar2 = null;
            IBinder iBinder = this.f4015b;
            if (iBinder == null) {
                xVar = null;
            } else {
                int i6 = b5.a.d;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                xVar = iInterfaceQueryLocalInterface instanceof c ? (c) iInterfaceQueryLocalInterface : new x(iBinder, "com.google.android.gms.common.internal.IAccountAccessor", 2);
            }
            IBinder iBinder2 = zavVar.f4015b;
            if (iBinder2 != null) {
                int i10 = b5.a.d;
                IInterface iInterfaceQueryLocalInterface2 = iBinder2.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                xVar2 = iInterfaceQueryLocalInterface2 instanceof c ? (c) iInterfaceQueryLocalInterface2 : new x(iBinder2, "com.google.android.gms.common.internal.IAccountAccessor", 2);
            }
            if (l.h(xVar, xVar2)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.X(parcel, 1, 4);
        parcel.writeInt(this.f4014a);
        o9.d.N(parcel, 2, this.f4015b);
        o9.d.Q(parcel, 3, this.f4016c, i6);
        o9.d.X(parcel, 4, 4);
        parcel.writeInt(this.d ? 1 : 0);
        o9.d.X(parcel, 5, 4);
        parcel.writeInt(this.f4017e ? 1 : 0);
        o9.d.W(parcel, iV);
    }
}
