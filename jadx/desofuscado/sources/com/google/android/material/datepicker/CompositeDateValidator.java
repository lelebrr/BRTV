package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.datepicker.CalendarConstraints;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class CompositeDateValidator implements CalendarConstraints.DateValidator {

    /* renamed from: a, reason: collision with root package name */
    public final g f4803a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f4804b;

    /* renamed from: c, reason: collision with root package name */
    public static final d f4802c = new d();
    public static final e d = new e();
    public static final Parcelable.Creator<CompositeDateValidator> CREATOR = new f();

    public CompositeDateValidator(ArrayList arrayList, g gVar) {
        this.f4804b = arrayList;
        this.f4803a = gVar;
    }

    @Override // com.google.android.material.datepicker.CalendarConstraints.DateValidator
    public final boolean d(long j10) {
        return this.f4803a.a(this.f4804b, j10);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CompositeDateValidator)) {
            return false;
        }
        CompositeDateValidator compositeDateValidator = (CompositeDateValidator) obj;
        return this.f4804b.equals(compositeDateValidator.f4804b) && this.f4803a.getId() == compositeDateValidator.f4803a.getId();
    }

    public final int hashCode() {
        return this.f4804b.hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeList(this.f4804b);
        parcel.writeInt(this.f4803a.getId());
    }
}
