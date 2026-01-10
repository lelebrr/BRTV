package com.google.android.material.slider;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.slider.BaseSlider;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        BaseSlider.SliderState sliderState = new BaseSlider.SliderState(parcel);
        sliderState.f5200a = parcel.readFloat();
        sliderState.f5201b = parcel.readFloat();
        ArrayList arrayList = new ArrayList();
        sliderState.f5202c = arrayList;
        parcel.readList(arrayList, Float.class.getClassLoader());
        sliderState.d = parcel.readFloat();
        sliderState.f5203e = parcel.createBooleanArray()[0];
        return sliderState;
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i6) {
        return new BaseSlider.SliderState[i6];
    }
}
