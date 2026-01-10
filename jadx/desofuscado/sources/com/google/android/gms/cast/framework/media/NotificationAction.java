package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import o9.d;
import p4.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class NotificationAction extends AbstractSafeParcelable {
    public static final Parcelable.Creator<NotificationAction> CREATOR = new p(9);

    /* renamed from: a, reason: collision with root package name */
    public final String f3822a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3823b;

    /* renamed from: c, reason: collision with root package name */
    public final String f3824c;

    public NotificationAction(String str, int i6, String str2) {
        this.f3822a = str;
        this.f3823b = i6;
        this.f3824c = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.R(parcel, 2, this.f3822a);
        d.X(parcel, 3, 4);
        parcel.writeInt(this.f3823b);
        d.R(parcel, 4, this.f3824c);
        d.W(parcel, iV);
    }
}
