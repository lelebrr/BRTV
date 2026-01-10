package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import o9.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zam> CREATOR = new a(2);

    /* renamed from: a, reason: collision with root package name */
    public final int f4065a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4066b;

    /* renamed from: c, reason: collision with root package name */
    public final FastJsonResponse$Field f4067c;

    public zam(int i6, String str, FastJsonResponse$Field fastJsonResponse$Field) {
        this.f4065a = i6;
        this.f4066b = str;
        this.f4067c = fastJsonResponse$Field;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 1, 4);
        parcel.writeInt(this.f4065a);
        d.R(parcel, 2, this.f4066b);
        d.Q(parcel, 3, this.f4067c, i6);
        d.W(parcel, iV);
    }

    public zam(String str, FastJsonResponse$Field fastJsonResponse$Field) {
        this.f4065a = 1;
        this.f4066b = str;
        this.f4067c = fastJsonResponse$Field;
    }
}
