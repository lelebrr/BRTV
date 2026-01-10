package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.datepicker.CalendarConstraints;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class DateValidatorPointForward implements CalendarConstraints.DateValidator {
    public static final Parcelable.Creator<DateValidatorPointForward> CREATOR = new w(2);

    /* renamed from: a, reason: collision with root package name */
    public final long f4806a;

    public DateValidatorPointForward(long j10) {
        this.f4806a = j10;
    }

    @Override // com.google.android.material.datepicker.CalendarConstraints.DateValidator
    public final boolean d(long j10) {
        return j10 >= this.f4806a;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DateValidatorPointForward) && this.f4806a == ((DateValidatorPointForward) obj).f4806a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f4806a)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeLong(this.f4806a);
    }
}
