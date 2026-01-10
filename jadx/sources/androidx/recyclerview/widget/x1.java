package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        StaggeredGridLayoutManager.SavedState savedState = new StaggeredGridLayoutManager.SavedState();
        savedState.f2790a = parcel.readInt();
        savedState.f2791b = parcel.readInt();
        int i6 = parcel.readInt();
        savedState.f2792c = i6;
        if (i6 > 0) {
            int[] iArr = new int[i6];
            savedState.d = iArr;
            parcel.readIntArray(iArr);
        }
        int i10 = parcel.readInt();
        savedState.f2793e = i10;
        if (i10 > 0) {
            int[] iArr2 = new int[i10];
            savedState.f = iArr2;
            parcel.readIntArray(iArr2);
        }
        savedState.f2795h = parcel.readInt() == 1;
        savedState.f2796i = parcel.readInt() == 1;
        savedState.f2797j = parcel.readInt() == 1;
        savedState.f2794g = parcel.readArrayList(StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.class.getClassLoader());
        return savedState;
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i6) {
        return new StaggeredGridLayoutManager.SavedState[i6];
    }
}
