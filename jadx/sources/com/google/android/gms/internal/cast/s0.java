package com.google.android.gms.internal.cast;

import android.os.Parcel;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s0 extends s {
    @Override // com.google.android.gms.internal.cast.s
    public final boolean w(int i6, Parcel parcel, Parcel parcel2) {
        if (i6 != 1) {
            return false;
        }
        parcel.readInt();
        d0.b(parcel);
        t0.f4417a.b("onRemoteDisplayEnded", new Object[0]);
        return true;
    }
}
