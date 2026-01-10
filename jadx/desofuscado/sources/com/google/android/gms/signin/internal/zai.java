package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zat;
import o9.d;
import p4.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zai extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zai> CREATOR = new p(16);

    /* renamed from: a, reason: collision with root package name */
    public final int f4531a;

    /* renamed from: b, reason: collision with root package name */
    public final zat f4532b;

    public zai(int i6, zat zatVar) {
        this.f4531a = i6;
        this.f4532b = zatVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 1, 4);
        parcel.writeInt(this.f4531a);
        d.Q(parcel, 2, this.f4532b, i6);
        d.W(parcel, iV);
    }
}
