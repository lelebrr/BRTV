package com.google.android.gms.common.moduleinstall;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ModuleAvailabilityResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ModuleAvailabilityResponse> CREATOR = new d(23);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f4025a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4026b;

    public ModuleAvailabilityResponse(boolean z7, int i6) {
        this.f4025a = z7;
        this.f4026b = i6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.X(parcel, 1, 4);
        parcel.writeInt(this.f4025a ? 1 : 0);
        o9.d.X(parcel, 2, 4);
        parcel.writeInt(this.f4026b);
        o9.d.W(parcel, iV);
    }
}
