package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class CalendarConstraints implements Parcelable {
    public static final Parcelable.Creator<CalendarConstraints> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final Month f4798a;

    /* renamed from: b, reason: collision with root package name */
    public final Month f4799b;

    /* renamed from: c, reason: collision with root package name */
    public final DateValidator f4800c;
    public final Month d;

    /* renamed from: e, reason: collision with root package name */
    public final int f4801e;
    public final int f;

    /* compiled from: MyApplication */
    public interface DateValidator extends Parcelable {
        boolean d(long j10);
    }

    public CalendarConstraints(Month month, Month month2, DateValidator dateValidator, Month month3) {
        this.f4798a = month;
        this.f4799b = month2;
        this.d = month3;
        this.f4800c = dateValidator;
        if (month3 != null && month.f4809a.compareTo(month3.f4809a) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (month3 != null && month3.compareTo(month2) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        this.f = month.p(month2) + 1;
        this.f4801e = (month2.f4811c - month.f4811c) + 1;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarConstraints)) {
            return false;
        }
        CalendarConstraints calendarConstraints = (CalendarConstraints) obj;
        return this.f4798a.equals(calendarConstraints.f4798a) && this.f4799b.equals(calendarConstraints.f4799b) && Objects.equals(this.d, calendarConstraints.d) && this.f4800c.equals(calendarConstraints.f4800c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4798a, this.f4799b, this.d, this.f4800c});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeParcelable(this.f4798a, 0);
        parcel.writeParcelable(this.f4799b, 0);
        parcel.writeParcelable(this.d, 0);
        parcel.writeParcelable(this.f4800c, 0);
    }
}
