package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.Arrays;
import o9.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AdBreakInfo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AdBreakInfo> CREATOR = new a(14);

    /* renamed from: a, reason: collision with root package name */
    public final long f3635a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3636b;

    /* renamed from: c, reason: collision with root package name */
    public final long f3637c;
    public final boolean d;

    /* renamed from: e, reason: collision with root package name */
    public final String[] f3638e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f3639g;

    public AdBreakInfo(long j10, String str, long j11, boolean z7, String[] strArr, boolean z10, boolean z11) {
        this.f3635a = j10;
        this.f3636b = str;
        this.f3637c = j11;
        this.d = z7;
        this.f3638e = strArr;
        this.f = z10;
        this.f3639g = z11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdBreakInfo)) {
            return false;
        }
        AdBreakInfo adBreakInfo = (AdBreakInfo) obj;
        return v4.a.e(this.f3636b, adBreakInfo.f3636b) && this.f3635a == adBreakInfo.f3635a && this.f3637c == adBreakInfo.f3637c && this.d == adBreakInfo.d && Arrays.equals(this.f3638e, adBreakInfo.f3638e) && this.f == adBreakInfo.f && this.f3639g == adBreakInfo.f3639g;
    }

    public final int hashCode() {
        return this.f3636b.hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 2, 8);
        parcel.writeLong(this.f3635a);
        d.R(parcel, 3, this.f3636b);
        d.X(parcel, 4, 8);
        parcel.writeLong(this.f3637c);
        d.X(parcel, 5, 4);
        parcel.writeInt(this.d ? 1 : 0);
        String[] strArr = this.f3638e;
        if (strArr != null) {
            int iV2 = d.V(parcel, 6);
            parcel.writeStringArray(strArr);
            d.W(parcel, iV2);
        }
        d.X(parcel, 7, 4);
        parcel.writeInt(this.f ? 1 : 0);
        d.X(parcel, 8, 4);
        parcel.writeInt(this.f3639g ? 1 : 0);
        d.W(parcel, iV);
    }
}
