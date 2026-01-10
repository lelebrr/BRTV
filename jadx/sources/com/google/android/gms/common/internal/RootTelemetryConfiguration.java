package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class RootTelemetryConfiguration extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RootTelemetryConfiguration> CREATOR = new d(11);

    /* renamed from: a, reason: collision with root package name */
    public final int f3982a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f3983b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3984c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final int f3985e;

    public RootTelemetryConfiguration(int i6, boolean z7, boolean z10, int i10, int i11) {
        this.f3982a = i6;
        this.f3983b = z7;
        this.f3984c = z10;
        this.d = i10;
        this.f3985e = i11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.X(parcel, 1, 4);
        parcel.writeInt(this.f3982a);
        o9.d.X(parcel, 2, 4);
        parcel.writeInt(this.f3983b ? 1 : 0);
        o9.d.X(parcel, 3, 4);
        parcel.writeInt(this.f3984c ? 1 : 0);
        o9.d.X(parcel, 4, 4);
        parcel.writeInt(this.d);
        o9.d.X(parcel, 5, 4);
        parcel.writeInt(this.f3985e);
        o9.d.W(parcel, iV);
    }
}
