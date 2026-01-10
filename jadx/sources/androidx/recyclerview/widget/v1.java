package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = new StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem();
        staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.f2787a = parcel.readInt();
        staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.f2788b = parcel.readInt();
        staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.d = parcel.readInt() == 1;
        int i6 = parcel.readInt();
        if (i6 > 0) {
            int[] iArr = new int[i6];
            staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.f2789c = iArr;
            parcel.readIntArray(iArr);
        }
        return staggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i6) {
        return new StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem[i6];
    }
}
