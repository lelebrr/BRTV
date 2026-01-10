package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zav;
import o9.d;
import p4.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zak> CREATOR = new p(17);

    /* renamed from: a, reason: collision with root package name */
    public final int f4533a;

    /* renamed from: b, reason: collision with root package name */
    public final ConnectionResult f4534b;

    /* renamed from: c, reason: collision with root package name */
    public final zav f4535c;

    public zak(int i6, ConnectionResult connectionResult, zav zavVar) {
        this.f4533a = i6;
        this.f4534b = connectionResult;
        this.f4535c = zavVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 1, 4);
        parcel.writeInt(this.f4533a);
        d.Q(parcel, 2, this.f4534b, i6);
        d.Q(parcel, 3, this.f4535c, i6);
        d.W(parcel, iV);
    }
}
