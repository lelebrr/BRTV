package androidx.leanback.widget;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.leanback.widget.GridLayoutManager;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        GridLayoutManager.SavedState savedState = new GridLayoutManager.SavedState();
        savedState.f1651b = Bundle.EMPTY;
        savedState.f1650a = parcel.readInt();
        savedState.f1651b = parcel.readBundle(GridLayoutManager.class.getClassLoader());
        return savedState;
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i6) {
        return new GridLayoutManager.SavedState[i6];
    }
}
