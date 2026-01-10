package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import b5.l;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.Arrays;
import o9.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class CredentialsData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CredentialsData> CREATOR = new a(11);

    /* renamed from: a, reason: collision with root package name */
    public final String f3674a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3675b;

    public CredentialsData(String str, String str2) {
        this.f3674a = str;
        this.f3675b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CredentialsData)) {
            return false;
        }
        CredentialsData credentialsData = (CredentialsData) obj;
        return l.h(this.f3674a, credentialsData.f3674a) && l.h(this.f3675b, credentialsData.f3675b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3674a, this.f3675b});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.R(parcel, 1, this.f3674a);
        d.R(parcel, 2, this.f3675b);
        d.W(parcel, iV);
    }
}
