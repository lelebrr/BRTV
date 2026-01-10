package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements Parcelable.Creator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1429a;

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f1429a) {
            case 0:
                return new BackStackState(parcel);
            case 1:
                FragmentManager$LaunchedFragmentInfo fragmentManager$LaunchedFragmentInfo = new FragmentManager$LaunchedFragmentInfo();
                fragmentManager$LaunchedFragmentInfo.f1387a = parcel.readString();
                fragmentManager$LaunchedFragmentInfo.f1388b = parcel.readInt();
                return fragmentManager$LaunchedFragmentInfo;
            case 2:
                FragmentManagerState fragmentManagerState = new FragmentManagerState();
                fragmentManagerState.f1392e = null;
                fragmentManagerState.f = new ArrayList();
                fragmentManagerState.f1393g = new ArrayList();
                fragmentManagerState.f1389a = parcel.createTypedArrayList(FragmentState.CREATOR);
                fragmentManagerState.f1390b = parcel.createStringArrayList();
                fragmentManagerState.f1391c = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
                fragmentManagerState.d = parcel.readInt();
                fragmentManagerState.f1392e = parcel.readString();
                fragmentManagerState.f = parcel.createStringArrayList();
                fragmentManagerState.f1393g = parcel.createTypedArrayList(Bundle.CREATOR);
                fragmentManagerState.f1394h = parcel.createTypedArrayList(FragmentManager$LaunchedFragmentInfo.CREATOR);
                return fragmentManagerState;
            default:
                return new FragmentState(parcel);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i6) {
        switch (this.f1429a) {
            case 0:
                return new BackStackState[i6];
            case 1:
                return new FragmentManager$LaunchedFragmentInfo[i6];
            case 2:
                return new FragmentManagerState[i6];
            default:
                return new FragmentState[i6];
        }
    }
}
