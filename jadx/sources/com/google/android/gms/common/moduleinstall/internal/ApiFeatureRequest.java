package com.google.android.gms.common.moduleinstall.internal;

import android.os.Parcel;
import android.os.Parcelable;
import b5.l;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ApiFeatureRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ApiFeatureRequest> CREATOR = new d(27);

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f4034a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f4035b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4036c;
    public final String d;

    public ApiFeatureRequest(ArrayList arrayList, boolean z7, String str, String str2) {
        l.e(arrayList);
        this.f4034a = arrayList;
        this.f4035b = z7;
        this.f4036c = str;
        this.d = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof ApiFeatureRequest)) {
            return false;
        }
        ApiFeatureRequest apiFeatureRequest = (ApiFeatureRequest) obj;
        return this.f4035b == apiFeatureRequest.f4035b && l.h(this.f4034a, apiFeatureRequest.f4034a) && l.h(this.f4036c, apiFeatureRequest.f4036c) && l.h(this.d, apiFeatureRequest.d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.f4035b), this.f4034a, this.f4036c, this.d});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.U(parcel, 1, this.f4034a);
        o9.d.X(parcel, 2, 4);
        parcel.writeInt(this.f4035b ? 1 : 0);
        o9.d.R(parcel, 3, this.f4036c);
        o9.d.R(parcel, 4, this.d);
        o9.d.W(parcel, iV);
    }
}
