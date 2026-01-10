package com.google.android.gms.cast;

import a.e;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.Arrays;
import o9.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zzbs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbs> CREATOR = new a(15);

    /* renamed from: a, reason: collision with root package name */
    public final int f3903a;

    public zzbs(int i6) {
        this.f3903a = i6;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof zzbs) && this.f3903a == ((zzbs) obj).f3903a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3903a)});
    }

    public final String toString() {
        int i6 = this.f3903a;
        return e.r("joinOptions(connectionType=", i6 != 0 ? i6 != 2 ? "UNKNOWN" : "INVISIBLE" : "STRONG", ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 2, 4);
        parcel.writeInt(this.f3903a);
        d.W(parcel, iV);
    }
}
