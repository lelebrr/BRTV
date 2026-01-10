package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zax extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zax> CREATOR = new d(10);

    /* renamed from: a, reason: collision with root package name */
    public final int f4018a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4019b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4020c;
    public final Scope[] d;

    public zax(int i6, int i10, int i11, Scope[] scopeArr) {
        this.f4018a = i6;
        this.f4019b = i10;
        this.f4020c = i11;
        this.d = scopeArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.X(parcel, 1, 4);
        parcel.writeInt(this.f4018a);
        o9.d.X(parcel, 2, 4);
        parcel.writeInt(this.f4019b);
        o9.d.X(parcel, 3, 4);
        parcel.writeInt(this.f4020c);
        o9.d.T(parcel, 4, this.d, i6);
        o9.d.W(parcel, iV);
    }
}
