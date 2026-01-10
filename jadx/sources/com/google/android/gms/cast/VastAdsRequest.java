package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Arrays;
import o9.d;
import p4.p;
import v4.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class VastAdsRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<VastAdsRequest> CREATOR = new p(1);

    /* renamed from: a, reason: collision with root package name */
    public final String f3782a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3783b;

    public VastAdsRequest(String str, String str2) {
        this.f3782a = str;
        this.f3783b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VastAdsRequest)) {
            return false;
        }
        VastAdsRequest vastAdsRequest = (VastAdsRequest) obj;
        return a.e(this.f3782a, vastAdsRequest.f3782a) && a.e(this.f3783b, vastAdsRequest.f3783b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3782a, this.f3783b});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.R(parcel, 2, this.f3782a);
        d.R(parcel, 3, this.f3783b);
        d.W(parcel, iV);
    }
}
