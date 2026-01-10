package com.google.android.gms.internal.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zzey extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzey> CREATOR = new y0(2);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f4517a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4518b;

    public zzey(boolean z7, int i6) {
        this.f4517a = z7;
        this.f4518b = i6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.X(parcel, 2, 4);
        parcel.writeInt(this.f4517a ? 1 : 0);
        o9.d.X(parcel, 3, 4);
        parcel.writeInt(this.f4518b);
        o9.d.W(parcel, iV);
    }
}
