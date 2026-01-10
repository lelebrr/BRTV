package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import v4.u;
import w0.d;

/* compiled from: MyApplication */
@KeepName
/* loaded from: classes.dex */
public final class BinderWrapper implements Parcelable {
    public static final Parcelable.Creator<BinderWrapper> CREATOR = new d(13);

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f3954a;

    public BinderWrapper(u uVar) {
        this.f3954a = uVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeStrongBinder(this.f3954a);
    }

    public /* synthetic */ BinderWrapper(Parcel parcel) {
        this.f3954a = parcel.readStrongBinder();
    }
}
