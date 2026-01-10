package com.google.android.gms.common;

import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import m5.b;
import o9.d;
import p4.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zzo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzo> CREATOR = new p(28);

    /* renamed from: a, reason: collision with root package name */
    public final String f4084a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f4085b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4086c;
    public final Context d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f4087e;
    public final boolean f;

    public zzo(String str, boolean z7, boolean z10, IBinder iBinder, boolean z11, boolean z12) {
        this.f4084a = str;
        this.f4085b = z7;
        this.f4086c = z10;
        this.d = (Context) b.y(b.x(iBinder));
        this.f4087e = z11;
        this.f = z12;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.R(parcel, 1, this.f4084a);
        d.X(parcel, 2, 4);
        parcel.writeInt(this.f4085b ? 1 : 0);
        d.X(parcel, 3, 4);
        parcel.writeInt(this.f4086c ? 1 : 0);
        d.N(parcel, 4, new b(this.d));
        d.X(parcel, 5, 4);
        parcel.writeInt(this.f4087e ? 1 : 0);
        d.X(parcel, 6, 4);
        parcel.writeInt(this.f ? 1 : 0);
        d.W(parcel, iV);
    }
}
