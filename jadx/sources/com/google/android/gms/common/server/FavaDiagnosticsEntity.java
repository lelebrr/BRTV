package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class FavaDiagnosticsEntity extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<FavaDiagnosticsEntity> CREATOR = new d(28);

    /* renamed from: a, reason: collision with root package name */
    public final int f4037a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4038b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4039c;

    public FavaDiagnosticsEntity(int i6, int i10, String str) {
        this.f4037a = i6;
        this.f4038b = str;
        this.f4039c = i10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.X(parcel, 1, 4);
        parcel.writeInt(this.f4037a);
        o9.d.R(parcel, 2, this.f4038b);
        o9.d.X(parcel, 3, 4);
        parcel.writeInt(this.f4039c);
        o9.d.W(parcel, iV);
    }
}
