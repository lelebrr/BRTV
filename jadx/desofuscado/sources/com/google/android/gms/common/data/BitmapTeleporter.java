package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import b5.l;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class BitmapTeleporter extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new d(2);

    /* renamed from: a, reason: collision with root package name */
    public final int f3941a;

    /* renamed from: b, reason: collision with root package name */
    public ParcelFileDescriptor f3942b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3943c;

    public BitmapTeleporter(int i6, ParcelFileDescriptor parcelFileDescriptor, int i10) {
        this.f3941a = i6;
        this.f3942b = parcelFileDescriptor;
        this.f3943c = i10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        if (this.f3942b == null) {
            l.e(null);
            throw null;
        }
        int iV = o9.d.V(parcel, 20293);
        o9.d.X(parcel, 1, 4);
        parcel.writeInt(this.f3941a);
        o9.d.Q(parcel, 2, this.f3942b, i6 | 1);
        o9.d.X(parcel, 3, 4);
        parcel.writeInt(this.f3943c);
        o9.d.W(parcel, iV);
        this.f3942b = null;
    }
}
