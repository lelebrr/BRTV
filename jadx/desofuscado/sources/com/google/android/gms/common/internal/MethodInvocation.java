package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MethodInvocation extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MethodInvocation> CREATOR = new d(7);

    /* renamed from: a, reason: collision with root package name */
    public final int f3975a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3976b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3977c;
    public final long d;

    /* renamed from: e, reason: collision with root package name */
    public final long f3978e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f3979g;

    /* renamed from: h, reason: collision with root package name */
    public final int f3980h;

    /* renamed from: i, reason: collision with root package name */
    public final int f3981i;

    public MethodInvocation(int i6, int i10, int i11, long j10, long j11, String str, String str2, int i12, int i13) {
        this.f3975a = i6;
        this.f3976b = i10;
        this.f3977c = i11;
        this.d = j10;
        this.f3978e = j11;
        this.f = str;
        this.f3979g = str2;
        this.f3980h = i12;
        this.f3981i = i13;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.X(parcel, 1, 4);
        parcel.writeInt(this.f3975a);
        o9.d.X(parcel, 2, 4);
        parcel.writeInt(this.f3976b);
        o9.d.X(parcel, 3, 4);
        parcel.writeInt(this.f3977c);
        o9.d.X(parcel, 4, 8);
        parcel.writeLong(this.d);
        o9.d.X(parcel, 5, 8);
        parcel.writeLong(this.f3978e);
        o9.d.R(parcel, 6, this.f);
        o9.d.R(parcel, 7, this.f3979g);
        o9.d.X(parcel, 8, 4);
        parcel.writeInt(this.f3980h);
        o9.d.X(parcel, 9, 4);
        parcel.writeInt(this.f3981i);
        o9.d.W(parcel, iV);
    }
}
