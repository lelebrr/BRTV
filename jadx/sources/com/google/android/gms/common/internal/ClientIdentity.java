package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import b5.l;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ClientIdentity extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ClientIdentity> CREATOR = new d(5);

    /* renamed from: a, reason: collision with root package name */
    public final int f3955a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3956b;

    public ClientIdentity(int i6, String str) {
        this.f3955a = i6;
        this.f3956b = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClientIdentity)) {
            return false;
        }
        ClientIdentity clientIdentity = (ClientIdentity) obj;
        return clientIdentity.f3955a == this.f3955a && l.h(clientIdentity.f3956b, this.f3956b);
    }

    public final int hashCode() {
        return this.f3955a;
    }

    public final String toString() {
        return this.f3955a + ":" + this.f3956b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.X(parcel, 1, 4);
        parcel.writeInt(this.f3955a);
        o9.d.R(parcel, 2, this.f3956b);
        o9.d.W(parcel, iV);
    }
}
