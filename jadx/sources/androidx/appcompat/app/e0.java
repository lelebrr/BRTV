package androidx.appcompat.app;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e0 implements Parcelable.ClassLoaderCreator {
    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return AppCompatDelegateImpl$PanelFeatureState$SavedState.h(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i6) {
        return new AppCompatDelegateImpl$PanelFeatureState$SavedState[i6];
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return AppCompatDelegateImpl$PanelFeatureState$SavedState.h(parcel, null);
    }
}
