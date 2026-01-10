package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.format.DateUtils;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class Month implements Comparable<Month>, Parcelable {
    public static final Parcelable.Creator<Month> CREATOR = new w(0);

    /* renamed from: a, reason: collision with root package name */
    public final Calendar f4809a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4810b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4811c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final int f4812e;
    public final long f;

    /* renamed from: g, reason: collision with root package name */
    public String f4813g;

    public Month(Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarC = g0.c(calendar);
        this.f4809a = calendarC;
        this.f4810b = calendarC.get(2);
        this.f4811c = calendarC.get(1);
        this.d = calendarC.getMaximum(7);
        this.f4812e = calendarC.getActualMaximum(5);
        this.f = calendarC.getTimeInMillis();
    }

    public static Month j(int i6, int i10) {
        Calendar calendarH = g0.h(null);
        calendarH.set(1, i6);
        calendarH.set(2, i10);
        return new Month(calendarH);
    }

    public static Month l(long j10) {
        Calendar calendarH = g0.h(null);
        calendarH.setTimeInMillis(j10);
        return new Month(calendarH);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Month)) {
            return false;
        }
        Month month = (Month) obj;
        return this.f4810b == month.f4810b && this.f4811c == month.f4811c;
    }

    @Override // java.lang.Comparable
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public final int compareTo(Month month) {
        return this.f4809a.compareTo(month.f4809a);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f4810b), Integer.valueOf(this.f4811c)});
    }

    public final int m() {
        Calendar calendar = this.f4809a;
        int firstDayOfWeek = calendar.get(7) - calendar.getFirstDayOfWeek();
        return firstDayOfWeek < 0 ? firstDayOfWeek + this.d : firstDayOfWeek;
    }

    public final long n(int i6) {
        Calendar calendarC = g0.c(this.f4809a);
        calendarC.set(5, i6);
        return calendarC.getTimeInMillis();
    }

    public final String o() {
        if (this.f4813g == null) {
            this.f4813g = DateUtils.formatDateTime(null, this.f4809a.getTimeInMillis(), 8228);
        }
        return this.f4813g;
    }

    public final int p(Month month) {
        if (!(this.f4809a instanceof GregorianCalendar)) {
            throw new IllegalArgumentException("Only Gregorian calendars are supported.");
        }
        return (month.f4810b - this.f4810b) + ((month.f4811c - this.f4811c) * 12);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeInt(this.f4811c);
        parcel.writeInt(this.f4810b);
    }
}
