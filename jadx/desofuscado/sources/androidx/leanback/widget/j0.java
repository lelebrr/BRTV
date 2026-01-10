package androidx.leanback.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.leanback.widget.PersistentFocusWrapper;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        PersistentFocusWrapper.SavedState savedState = new PersistentFocusWrapper.SavedState(parcel);
        savedState.f1720a = parcel.readInt();
        return savedState;
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i6) {
        return new PersistentFocusWrapper.SavedState[i6];
    }
}
