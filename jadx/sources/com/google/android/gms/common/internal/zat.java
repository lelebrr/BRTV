package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zat extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zat> CREATOR = new d(8);

    /* renamed from: a, reason: collision with root package name */
    public final int f4011a;

    /* renamed from: b, reason: collision with root package name */
    public final Account f4012b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4013c;
    public final GoogleSignInAccount d;

    public zat(int i6, Account account, int i10, GoogleSignInAccount googleSignInAccount) {
        this.f4011a = i6;
        this.f4012b = account;
        this.f4013c = i10;
        this.d = googleSignInAccount;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.X(parcel, 1, 4);
        parcel.writeInt(this.f4011a);
        o9.d.Q(parcel, 2, this.f4012b, i6);
        o9.d.X(parcel, 3, 4);
        parcel.writeInt(this.f4013c);
        o9.d.Q(parcel, 4, this.d, i6);
        o9.d.W(parcel, iV);
    }
}
