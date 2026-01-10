package com.google.android.gms.cast.framework.media;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import m5.a;
import o9.d;
import p4.p;
import r4.j;
import v4.b;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class CastMediaOptions extends AbstractSafeParcelable {

    /* renamed from: a, reason: collision with root package name */
    public final String f3815a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3816b;

    /* renamed from: c, reason: collision with root package name */
    public final j f3817c;
    public final NotificationOptions d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f3818e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public static final b f3814g = new b("CastMediaOptions", null);
    public static final Parcelable.Creator<CastMediaOptions> CREATOR = new p(7);

    public CastMediaOptions(String str, String str2, IBinder iBinder, NotificationOptions notificationOptions, boolean z7, boolean z10) {
        j jVar;
        this.f3815a = str;
        this.f3816b = str2;
        if (iBinder == null) {
            jVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.IImagePicker");
            jVar = iInterfaceQueryLocalInterface instanceof j ? (j) iInterfaceQueryLocalInterface : new j(iBinder, "com.google.android.gms.cast.framework.media.IImagePicker", 0);
        }
        this.f3817c = jVar;
        this.d = notificationOptions;
        this.f3818e = z7;
        this.f = z10;
    }

    public final void j() {
        j jVar = this.f3817c;
        if (jVar != null) {
            try {
                Parcel parcelW = jVar.w(jVar.l(), 2);
                a aVarX = m5.b.x(parcelW.readStrongBinder());
                parcelW.recycle();
                if (m5.b.y(aVarX) == null) {
                } else {
                    throw new ClassCastException();
                }
            } catch (RemoteException e5) {
                f3814g.a(e5, "Unable to call %s on %s.", "getWrappedClientObject", j.class.getSimpleName());
            }
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.R(parcel, 2, this.f3815a);
        d.R(parcel, 3, this.f3816b);
        j jVar = this.f3817c;
        d.N(parcel, 4, jVar == null ? null : jVar.d);
        d.Q(parcel, 5, this.d, i6);
        d.X(parcel, 6, 4);
        parcel.writeInt(this.f3818e ? 1 : 0);
        d.X(parcel, 7, 4);
        parcel.writeInt(this.f ? 1 : 0);
        d.W(parcel, iV);
    }
}
