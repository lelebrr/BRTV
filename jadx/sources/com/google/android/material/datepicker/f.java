package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.datepicker.CalendarConstraints;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        ArrayList arrayList = parcel.readArrayList(CalendarConstraints.DateValidator.class.getClassLoader());
        int i6 = parcel.readInt();
        g gVar = CompositeDateValidator.d;
        if (i6 != 2 && i6 == 1) {
            gVar = CompositeDateValidator.f4802c;
        }
        arrayList.getClass();
        return new CompositeDateValidator(arrayList, gVar);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i6) {
        return new CompositeDateValidator[i6];
    }
}
