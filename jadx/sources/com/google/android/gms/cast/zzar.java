package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.Arrays;
import o9.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zzar extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzar> CREATOR = new a(12);

    /* renamed from: a, reason: collision with root package name */
    public final float f3898a;

    /* renamed from: b, reason: collision with root package name */
    public final float f3899b;

    /* renamed from: c, reason: collision with root package name */
    public final float f3900c;

    public zzar(float f, float f3, float f4) {
        this.f3898a = f;
        this.f3899b = f3;
        this.f3900c = f4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzar)) {
            return false;
        }
        zzar zzarVar = (zzar) obj;
        return this.f3898a == zzarVar.f3898a && this.f3899b == zzarVar.f3899b && this.f3900c == zzarVar.f3900c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f3898a), Float.valueOf(this.f3899b), Float.valueOf(this.f3900c)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 2, 4);
        parcel.writeFloat(this.f3898a);
        d.X(parcel, 3, 4);
        parcel.writeFloat(this.f3899b);
        d.X(parcel, 4, 4);
        parcel.writeFloat(this.f3900c);
        d.W(parcel, iV);
    }
}
