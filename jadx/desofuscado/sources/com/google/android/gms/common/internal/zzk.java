package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zzk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzk> CREATOR = new d(14);

    /* renamed from: a, reason: collision with root package name */
    public Bundle f4022a;

    /* renamed from: b, reason: collision with root package name */
    public Feature[] f4023b;

    /* renamed from: c, reason: collision with root package name */
    public int f4024c;
    public ConnectionTelemetryConfiguration d;

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.M(parcel, 1, this.f4022a);
        o9.d.T(parcel, 2, this.f4023b, i6);
        o9.d.X(parcel, 3, 4);
        parcel.writeInt(this.f4024c);
        o9.d.Q(parcel, 4, this.d, i6);
        o9.d.W(parcel, iV);
    }
}
