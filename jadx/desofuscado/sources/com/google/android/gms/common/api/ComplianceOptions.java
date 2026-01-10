package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Arrays;
import o9.d;
import y4.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class ComplianceOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ComplianceOptions> CREATOR = new n(1);

    /* renamed from: a, reason: collision with root package name */
    public final int f3916a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3917b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3918c;
    public final boolean d;

    public ComplianceOptions(int i6, int i10, int i11, boolean z7) {
        this.f3916a = i6;
        this.f3917b = i10;
        this.f3918c = i11;
        this.d = z7;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ComplianceOptions)) {
            return false;
        }
        ComplianceOptions complianceOptions = (ComplianceOptions) obj;
        return this.f3916a == complianceOptions.f3916a && this.f3917b == complianceOptions.f3917b && this.f3918c == complianceOptions.f3918c && this.d == complianceOptions.d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3916a), Integer.valueOf(this.f3917b), Integer.valueOf(this.f3918c), Boolean.valueOf(this.d)});
    }

    public final String toString() {
        return "ComplianceOptions{callerProductId=" + this.f3916a + ", dataOwnerProductId=" + this.f3917b + ", processingReason=" + this.f3918c + ", isUserData=" + this.d + "}";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 1, 4);
        parcel.writeInt(this.f3916a);
        d.X(parcel, 2, 4);
        parcel.writeInt(this.f3917b);
        d.X(parcel, 3, 4);
        parcel.writeInt(this.f3918c);
        d.X(parcel, 4, 4);
        parcel.writeInt(this.d ? 1 : 0);
        d.W(parcel, iV);
    }
}
