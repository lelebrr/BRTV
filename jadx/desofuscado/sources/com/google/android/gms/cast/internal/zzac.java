package com.google.android.gms.cast.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.zzat;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Arrays;
import java.util.Locale;
import o9.d;
import p4.p;
import v4.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zzac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzac> CREATOR = new p(12);

    /* renamed from: a, reason: collision with root package name */
    public double f3893a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3894b;

    /* renamed from: c, reason: collision with root package name */
    public int f3895c;
    public ApplicationMetadata d;

    /* renamed from: e, reason: collision with root package name */
    public int f3896e;
    public zzat f;

    /* renamed from: g, reason: collision with root package name */
    public double f3897g;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzac)) {
            return false;
        }
        zzac zzacVar = (zzac) obj;
        if (this.f3893a == zzacVar.f3893a && this.f3894b == zzacVar.f3894b && this.f3895c == zzacVar.f3895c && a.e(this.d, zzacVar.d) && this.f3896e == zzacVar.f3896e) {
            zzat zzatVar = this.f;
            if (a.e(zzatVar, zzatVar) && this.f3897g == zzacVar.f3897g) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Double.valueOf(this.f3893a), Boolean.valueOf(this.f3894b), Integer.valueOf(this.f3895c), this.d, Integer.valueOf(this.f3896e), this.f, Double.valueOf(this.f3897g)});
    }

    public final String toString() {
        return String.format(Locale.ROOT, "volume=%f", Double.valueOf(this.f3893a));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 2, 8);
        parcel.writeDouble(this.f3893a);
        d.X(parcel, 3, 4);
        parcel.writeInt(this.f3894b ? 1 : 0);
        d.X(parcel, 4, 4);
        parcel.writeInt(this.f3895c);
        d.Q(parcel, 5, this.d, i6);
        d.X(parcel, 6, 4);
        parcel.writeInt(this.f3896e);
        d.Q(parcel, 7, this.f, i6);
        d.X(parcel, 8, 8);
        parcel.writeDouble(this.f3897g);
        d.W(parcel, iV);
    }
}
