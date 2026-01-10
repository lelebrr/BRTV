package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import o9.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class GoogleSignInOptionsExtensionParcelable extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> CREATOR = new a(9);

    /* renamed from: a, reason: collision with root package name */
    public final int f3622a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3623b;

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f3624c;

    public GoogleSignInOptionsExtensionParcelable(int i6, int i10, Bundle bundle) {
        this.f3622a = i6;
        this.f3623b = i10;
        this.f3624c = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 1, 4);
        parcel.writeInt(this.f3622a);
        d.X(parcel, 2, 4);
        parcel.writeInt(this.f3623b);
        d.M(parcel, 3, this.f3624c);
        d.W(parcel, iV);
    }
}
