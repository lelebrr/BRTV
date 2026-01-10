package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ConnectionTelemetryConfiguration extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ConnectionTelemetryConfiguration> CREATOR = new d(15);

    /* renamed from: a, reason: collision with root package name */
    public final RootTelemetryConfiguration f3957a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f3958b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3959c;
    public final int[] d;

    /* renamed from: e, reason: collision with root package name */
    public final int f3960e;
    public final int[] f;

    public ConnectionTelemetryConfiguration(RootTelemetryConfiguration rootTelemetryConfiguration, boolean z7, boolean z10, int[] iArr, int i6, int[] iArr2) {
        this.f3957a = rootTelemetryConfiguration;
        this.f3958b = z7;
        this.f3959c = z10;
        this.d = iArr;
        this.f3960e = i6;
        this.f = iArr2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.Q(parcel, 1, this.f3957a, i6);
        o9.d.X(parcel, 2, 4);
        parcel.writeInt(this.f3958b ? 1 : 0);
        o9.d.X(parcel, 3, 4);
        parcel.writeInt(this.f3959c ? 1 : 0);
        o9.d.O(parcel, 4, this.d);
        o9.d.X(parcel, 5, 4);
        parcel.writeInt(this.f3960e);
        o9.d.O(parcel, 6, this.f);
        o9.d.W(parcel, iV);
    }
}
