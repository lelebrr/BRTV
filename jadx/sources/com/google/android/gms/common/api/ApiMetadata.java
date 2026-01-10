package com.google.android.gms.common.api;

import a.e;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Objects;
import o9.d;
import y4.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class ApiMetadata extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ApiMetadata> CREATOR = n.f11404b;

    /* renamed from: b, reason: collision with root package name */
    public static final ApiMetadata f3914b = new ApiMetadata(null);

    /* renamed from: a, reason: collision with root package name */
    public final ComplianceOptions f3915a;

    public ApiMetadata(ComplianceOptions complianceOptions) {
        this.f3915a = complianceOptions;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ApiMetadata) {
            return Objects.equals(this.f3915a, ((ApiMetadata) obj).f3915a);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3915a);
    }

    public final String toString() {
        return e.r("ApiMetadata(complianceOptions=", String.valueOf(this.f3915a), ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeInt(-204102970);
        int iV = d.V(parcel, 20293);
        d.Q(parcel, 1, this.f3915a, i6);
        d.W(parcel, iV);
    }
}
