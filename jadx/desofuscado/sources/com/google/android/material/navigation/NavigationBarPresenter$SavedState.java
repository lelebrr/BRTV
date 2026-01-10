package com.google.android.material.navigation;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.internal.ParcelableSparseArray;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
class NavigationBarPresenter$SavedState implements Parcelable {
    public static final Parcelable.Creator<NavigationBarPresenter$SavedState> CREATOR = new g();

    /* renamed from: a, reason: collision with root package name */
    public int f5085a;

    /* renamed from: b, reason: collision with root package name */
    public ParcelableSparseArray f5086b;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeInt(this.f5085a);
        parcel.writeParcelable(this.f5086b, 0);
    }
}
