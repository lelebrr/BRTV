package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import o9.d;
import p4.p;
import y4.l;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zaa extends AbstractSafeParcelable implements l {
    public static final Parcelable.Creator<zaa> CREATOR = new p(14);

    /* renamed from: a, reason: collision with root package name */
    public final int f4526a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4527b;

    /* renamed from: c, reason: collision with root package name */
    public final Intent f4528c;

    public zaa(int i6, int i10, Intent intent) {
        this.f4526a = i6;
        this.f4527b = i10;
        this.f4528c = intent;
    }

    @Override // y4.l
    public final Status h() {
        return this.f4527b == 0 ? Status.f3923e : Status.f3924g;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 1, 4);
        parcel.writeInt(this.f4526a);
        d.X(parcel, 2, 4);
        parcel.writeInt(this.f4527b);
        d.Q(parcel, 3, this.f4528c, i6);
        d.W(parcel, iV);
    }
}
