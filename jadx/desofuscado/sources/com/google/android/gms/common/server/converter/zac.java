package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import o9.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zac> CREATOR = new a(1);

    /* renamed from: a, reason: collision with root package name */
    public final int f4045a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4046b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4047c;

    public zac(int i6, int i10, String str) {
        this.f4045a = i6;
        this.f4046b = str;
        this.f4047c = i10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 1, 4);
        parcel.writeInt(this.f4045a);
        d.R(parcel, 2, this.f4046b);
        d.X(parcel, 3, 4);
        parcel.writeInt(this.f4047c);
        d.W(parcel, iV);
    }

    public zac(String str, int i6) {
        this.f4045a = 1;
        this.f4046b = str;
        this.f4047c = i6;
    }
}
