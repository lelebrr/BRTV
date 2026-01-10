package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class w implements Parcelable.Creator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4892a;

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f4892a) {
            case 0:
                return Month.j(parcel.readInt(), parcel.readInt());
            case 1:
                return new DateValidatorPointBackward(parcel.readLong());
            case 2:
                return new DateValidatorPointForward(parcel.readLong());
            case 3:
                RangeDateSelector rangeDateSelector = new RangeDateSelector();
                rangeDateSelector.f4815b = null;
                rangeDateSelector.f4816c = null;
                rangeDateSelector.d = null;
                rangeDateSelector.f4817e = null;
                rangeDateSelector.f4815b = (Long) parcel.readValue(Long.class.getClassLoader());
                rangeDateSelector.f4816c = (Long) parcel.readValue(Long.class.getClassLoader());
                return rangeDateSelector;
            default:
                SingleDateSelector singleDateSelector = new SingleDateSelector();
                singleDateSelector.f4818a = (Long) parcel.readValue(Long.class.getClassLoader());
                return singleDateSelector;
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i6) {
        switch (this.f4892a) {
            case 0:
                return new Month[i6];
            case 1:
                return new DateValidatorPointBackward[i6];
            case 2:
                return new DateValidatorPointForward[i6];
            case 3:
                return new RangeDateSelector[i6];
            default:
                return new SingleDateSelector[i6];
        }
    }
}
