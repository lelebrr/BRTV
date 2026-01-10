package com.google.android.gms.internal.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zzff extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzff> CREATOR = new y0(3);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f4519a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f4520b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4521c;

    public zzff(int i6, boolean z7, boolean z10) {
        this.f4519a = z7;
        this.f4520b = z10;
        this.f4521c = i6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.X(parcel, 2, 4);
        parcel.writeInt(this.f4519a ? 1 : 0);
        o9.d.X(parcel, 3, 4);
        parcel.writeInt(this.f4520b ? 1 : 0);
        o9.d.X(parcel, 4, 4);
        parcel.writeInt(this.f4521c);
        o9.d.W(parcel, iV);
    }
}
