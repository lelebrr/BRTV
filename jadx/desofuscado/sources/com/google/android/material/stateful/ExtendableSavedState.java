package com.google.android.material.stateful;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.customview.view.AbsSavedState;
import androidx.customview.view.a;
import p.l;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ExtendableSavedState extends AbsSavedState {
    public static final Parcelable.Creator<ExtendableSavedState> CREATOR = new a(2);

    /* renamed from: c, reason: collision with root package name */
    public final l f5221c;

    public ExtendableSavedState(Parcelable parcelable) {
        super(parcelable);
        this.f5221c = new l(0);
    }

    public final String toString() {
        return "ExtendableSavedState{" + Integer.toHexString(System.identityHashCode(this)) + " states=" + this.f5221c + "}";
    }

    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        super.writeToParcel(parcel, i6);
        l lVar = this.f5221c;
        int i10 = lVar.f8858c;
        parcel.writeInt(i10);
        String[] strArr = new String[i10];
        Bundle[] bundleArr = new Bundle[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            strArr[i11] = (String) lVar.f(i11);
            bundleArr[i11] = (Bundle) lVar.j(i11);
        }
        parcel.writeStringArray(strArr);
        parcel.writeTypedArray(bundleArr, 0);
    }

    public ExtendableSavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int i6 = parcel.readInt();
        String[] strArr = new String[i6];
        parcel.readStringArray(strArr);
        Bundle[] bundleArr = new Bundle[i6];
        parcel.readTypedArray(bundleArr, Bundle.CREATOR);
        this.f5221c = new l(i6);
        for (int i10 = 0; i10 < i6; i10++) {
            this.f5221c.put(strArr[i10], bundleArr[i10]);
        }
    }
}
