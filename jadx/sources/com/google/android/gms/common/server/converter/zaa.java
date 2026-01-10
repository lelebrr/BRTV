package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaa> CREATOR = new d(29);

    /* renamed from: a, reason: collision with root package name */
    public final int f4043a;

    /* renamed from: b, reason: collision with root package name */
    public final StringToIntConverter f4044b;

    public zaa(int i6, StringToIntConverter stringToIntConverter) {
        this.f4043a = i6;
        this.f4044b = stringToIntConverter;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.X(parcel, 1, 4);
        parcel.writeInt(this.f4043a);
        o9.d.Q(parcel, 2, this.f4044b, i6);
        o9.d.W(parcel, iV);
    }

    public zaa(StringToIntConverter stringToIntConverter) {
        this.f4043a = 1;
        this.f4044b = stringToIntConverter;
    }
}
