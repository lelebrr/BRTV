package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import o9.d;
import p4.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new p(4);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f3883a;

    public zzj(boolean z7) {
        this.f3883a = z7;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 2, 4);
        parcel.writeInt(this.f3883a ? 1 : 0);
        d.W(parcel, iV);
    }
}
