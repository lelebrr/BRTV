package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.Arrays;
import o9.d;
import v4.b;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AdBreakStatus extends AbstractSafeParcelable {

    /* renamed from: a, reason: collision with root package name */
    public final long f3640a;

    /* renamed from: b, reason: collision with root package name */
    public final long f3641b;

    /* renamed from: c, reason: collision with root package name */
    public final String f3642c;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public final long f3643e;
    public static final b f = new b("AdBreakStatus", null);
    public static final Parcelable.Creator<AdBreakStatus> CREATOR = new a(20);

    public AdBreakStatus(long j10, long j11, String str, String str2, long j12) {
        this.f3640a = j10;
        this.f3641b = j11;
        this.f3642c = str;
        this.d = str2;
        this.f3643e = j12;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdBreakStatus)) {
            return false;
        }
        AdBreakStatus adBreakStatus = (AdBreakStatus) obj;
        return this.f3640a == adBreakStatus.f3640a && this.f3641b == adBreakStatus.f3641b && v4.a.e(this.f3642c, adBreakStatus.f3642c) && v4.a.e(this.d, adBreakStatus.d) && this.f3643e == adBreakStatus.f3643e;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f3640a), Long.valueOf(this.f3641b), this.f3642c, this.d, Long.valueOf(this.f3643e)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 2, 8);
        parcel.writeLong(this.f3640a);
        d.X(parcel, 3, 8);
        parcel.writeLong(this.f3641b);
        d.R(parcel, 4, this.f3642c);
        d.R(parcel, 5, this.d);
        d.X(parcel, 6, 8);
        parcel.writeLong(this.f3643e);
        d.W(parcel, iV);
    }
}
