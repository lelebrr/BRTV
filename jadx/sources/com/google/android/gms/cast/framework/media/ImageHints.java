package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import o9.d;
import p4.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ImageHints extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ImageHints> CREATOR = new p(8);

    /* renamed from: a, reason: collision with root package name */
    public final int f3819a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3820b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3821c;

    public ImageHints(int i6, int i10, int i11) {
        this.f3819a = i6;
        this.f3820b = i10;
        this.f3821c = i11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 2, 4);
        parcel.writeInt(this.f3819a);
        d.X(parcel, 3, 4);
        parcel.writeInt(this.f3820b);
        d.X(parcel, 4, 4);
        parcel.writeInt(this.f3821c);
        d.W(parcel, iV);
    }
}
