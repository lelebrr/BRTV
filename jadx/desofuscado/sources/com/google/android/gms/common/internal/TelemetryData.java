package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class TelemetryData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<TelemetryData> CREATOR = new d(6);

    /* renamed from: a, reason: collision with root package name */
    public final int f3986a;

    /* renamed from: b, reason: collision with root package name */
    public List f3987b;

    public TelemetryData(int i6, List list) {
        this.f3986a = i6;
        this.f3987b = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.X(parcel, 1, 4);
        parcel.writeInt(this.f3986a);
        o9.d.U(parcel, 2, this.f3987b);
        o9.d.W(parcel, iV);
    }
}
