package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.Arrays;
import o9.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zzat extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzat> CREATOR = new a(13);

    /* renamed from: a, reason: collision with root package name */
    public final zzar f3901a;

    /* renamed from: b, reason: collision with root package name */
    public final zzar f3902b;

    public zzat(zzar zzarVar, zzar zzarVar2) {
        this.f3901a = zzarVar;
        this.f3902b = zzarVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzat)) {
            return false;
        }
        zzat zzatVar = (zzat) obj;
        return v4.a.e(this.f3901a, zzatVar.f3901a) && v4.a.e(this.f3902b, zzatVar.f3902b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3901a, this.f3902b});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.Q(parcel, 2, this.f3901a, i6);
        d.Q(parcel, 3, this.f3902b, i6);
        d.W(parcel, iV);
    }
}
