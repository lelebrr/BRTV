package com.google.android.material.timepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
class TimeModel implements Parcelable {
    public static final Parcelable.Creator<TimeModel> CREATOR = new f();

    /* renamed from: a, reason: collision with root package name */
    public final int f5401a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5402b;

    /* renamed from: c, reason: collision with root package name */
    public final int f5403c;
    public final int d;

    public TimeModel(Parcel parcel) {
        int i6 = parcel.readInt();
        int i10 = parcel.readInt();
        int i11 = parcel.readInt();
        int i12 = parcel.readInt();
        this.f5402b = i6;
        this.f5403c = i10;
        this.d = i11;
        this.f5401a = i12;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TimeModel)) {
            return false;
        }
        TimeModel timeModel = (TimeModel) obj;
        return this.f5402b == timeModel.f5402b && this.f5403c == timeModel.f5403c && this.f5401a == timeModel.f5401a && this.d == timeModel.d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f5401a), Integer.valueOf(this.f5402b), Integer.valueOf(this.f5403c), Integer.valueOf(this.d)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeInt(this.f5402b);
        parcel.writeInt(this.f5403c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.f5401a);
    }
}
